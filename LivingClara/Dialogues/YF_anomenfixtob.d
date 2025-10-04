
APPEND ANOME25J // Anomen Romance Fix
IF WEIGHT #-1 ~Global("YF_AnomenRomanceFix","GLOBAL",2)~ THEN  YF_AnomenRomanceFix1
	SAY @0 /*My Lady, I fear we might have had a misunderstanding. I wish to continue as before. Can you forgive me?*/
	++ @1 /*No Anomen, I just want us to be friends.*/ DO ~SetGlobal("YF_AnomenRomanceFix","GLOBAL",3)~ EXIT
	++ @2 /*Of course, Anomen. All is forgiven.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2) SetGlobal("YF_AnomenRomanceFix","GLOBAL",0)~ EXIT
	END
END

//Conversation to let you choose his past
CHAIN IF WEIGHT #-5 ~Global("YF_ChooseAnomen","GLOBAL",0) Alignment("Anomen",LAWFUL_NEUTRAL) Global("YF_ChooseAnomenFix","GLOBAL",1)~ THEN ANOME25J YF_AnomenDidWhat
@3 /*<CHARNAME>, please tell me of our time together in Athkatla. Did I pass my test? Am I a knight of the Order of the Radiant Heart?*/
DO ~SetGlobal("YF_ChooseAnomen","GLOBAL",1) SetGlobal("YF_ChooseAnomenFix","GLOBAL",2)~
END
	++ @4 /*Yes, you did. You are a knight.. Your father disowned you though.*/ DO ~SetGlobal("AnomenIsKnight","GLOBAL",1) ChangeStat("Anomen",WIS,4,ADD) ChangeAlignment("Anomen",LAWFUL_GOOD)~ + YF_GoodAnomen1
	++ @5 /*No, you did not. You were cast from the Order.*/ DO ~SetGlobal("AnomenIsNotKnight","GLOBAL",1) ChangeAlignment("Anomen",CHAOTIC_NEUTRAL)~ + YF_BadAnomen1
	++ @6 /*You have not yet taken the test. We barely traveled together in Amn.*/ EXIT
	 
CHAIN ANOME25J YF_GoodAnomen1
@7 /*I see. Was I romantically involved?*/
END
	+ ~Gender(Player1,FEMALE)~ + @8 /*Yes, with me.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~ + YF_GoodAnomen2
	++ @9 /*Well, you tried to romance Clara, but she left you for your father.*/ DO ~SetGlobal("YF_LadyDelryn","GLOBAL",1)~ + YF_GoodAnomen3 
	++ @10 /*No, you were not.*/ EXIT
	
CHAIN ANOME25J YF_GoodAnomen2
@15 /*Then what happened, my love?*/
END
	++ @11 /*We professed our love to each other. Saerk was found to be responsible for your sister's murder and your father went to confront him and was also killed. We confronted Saerk as well, but decided to leave peacefully and let the city's justice prevail.*/ + YF_GoodAnomen3

CHAIN ANOME25J YF_GoodAnomen3
@12 /*Well that is depressing, but at least I achieved my life's dream of joining the Order.*/
= @13 /*Let us continue.*/
EXIT

CHAIN ANOME25J YF_BadAnomen1
@7 /*I see. Was I romantically involved?*/
END
	+ ~Gender(Player1,FEMALE)~ + @8 /*Yes, with me.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~ + YF_BadAnomen2
	++ @14 /*Yes, with Clara.*/ DO ~SetGlobal("YF_LordAndLadyDelryn","GLOBAL",5) SetGlobal("YF_ClaraRingTOB","GLOBAL",1) SetGlobal("YF_AnomenClaraRomance","GLOBAL",2)~ + YF_BadAnomen3 
	++ @10 /*No, you were not.*/ EXIT
	
CHAIN ANOME25J YF_BadAnomen2
@15 /*Then what happened, my love?*/
END
	++ @16 /*We professed our love to each other, but your father tried to disown you so we killed him.*/ DO ~SetGlobal("YF_DarksideAnomen","GLOBAL",2)~ + YF_BadAnomen2A
	++ @1600 /*We professed our love to each other, but then the Athkatlan authorities reported that Saerk was not responsible for your sister's death. Your father disowned you so you went to confront him. Together we decided to spare his life.*/ + YF_BadAnomen2B

CHAIN ANOME25J YF_BadAnomen2A
	@1601 /*The old drunk finally got what was coming to him. And then?*/
END
	++ @1602 /*Then we framed brigands for the murder, and you became Lord Delryn. We paid a cowled wizard to investigate the murder of Saerk and clear your name. Saerk is officially a villain and we are officially heroes.*/ + YF_BadAnomen4

CHAIN ANOME25J YF_BadAnomen2B
	@1603 /*So I lost the Order, my family, and my home. All I have is you, my love.*/
	DO ~ChangeStat("Anomen",WIS,2,ADD)~
EXIT
	
CHAIN ANOME25J YF_BadAnomen3
@20 /*Then what happened?*/
END
	++ @21 /*You and Clara professed your love to each other and were married. Your father tried to disown you so we killed him and framed brigands for the murder so that you and Clara became Lord and Lady Delryn. Then we paid a cowled wizard to investigate the murder of Saerk and clear your name. Saerk is officially a villian and we are all officially heroes.*/ DO ~SetGlobal("YF_AnomenIsAntipaladin","GLOBAL",1) ReallyForceSpell("Anomen",GAIN_ONE_CHA_PERMANENT) ChangeStat("Anomen",CON,1,ADD) ChangeStat("Anomen",STR,1,ADD) ChangeAlignment("Anomen",LAWFUL_EVIL) ChangeClass("Anomen",PALADIN) ActionOverride("Anomen",AddKit(Blackguard))~ + YF_BadAnomen4	
CHAIN ANOME25J YF_BadAnomen4
@17 /*That is most excellent. I always knew we were. Anything else?*/
END
	+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @18 /*We also wiped out the Shadow Thieves. Aran Linvale was secretly on the Council of Six under another name and you were offered the open seat, provided you are one of the richest lords in Amn when the Council meets some months from now.*/ + YF_BadAnomen5
	+ ~Global("YF_LordAndLadyDelryn","GLOBAL",5)~ + @18 /*We also wiped out the Shadow Thieves. Aran Linvale was secretly on the Council of Six under another name and you were offered the open seat, provided you are one of the richest lords in Amn when the Council meets some months from now.*/ + YF_BadAnomen7
	
CHAIN ANOME25J YF_BadAnomen5
@19 /*I have been busy. Let us continue, my love.*/
DO ~ChangeStat("Anomen",STR,1,ADD) ApplySpellRES("YF_REP","Anomen")~
EXIT

CHAIN ANOME25J YF_BadAnomen7
@22 /*I have been busy. Let us continue.*/
DO ~ChangeStat("Anomen",CON,1,ADD) ApplySpellRES("YF_REP","Anomen")~
EXIT

//Romance Banter DSA Fix 1
INTERJECT BANOME25 69 YF_AnomenToBRomance1 /*I prayed we might find a brief respite from the fighting and enjoy each other's company in a time of peace, my love. But it seems the fates have decreed otherwise.*/
== ANOMENJ IF ~Global("YF_DarksideAnomen","GLOBAL",2)~ THEN @23 /*When you aided me against my father, you taught me that bloodshed can be necessary for the greater good. Yet there must be also be some time when we pause our search for conflict and enjoy our lives as well.*/
END BANOME25 70 /*Forgive my mood. I did not mean to trouble you with this. Regret is a luxury of the weak. Simply know that I love you, <CHARNAME>, and I will always be by your side... in peace and battle. Come, my lady, let us continue on our journey and speak of this no more.*/
	

