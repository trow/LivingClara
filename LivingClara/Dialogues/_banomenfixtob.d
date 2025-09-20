
APPEND ANOME25J // Anomen Romance Fix
IF WEIGHT #-1 ~Global("_bAnomenRomanceFix","GLOBAL",2)~ THEN  _bAnomenRomanceFix1
	SAY @0 /*My Lady, I fear we might have had a misunderstanding. I wish to continue as before. Can you forgive me?*/
	++ @1 /*No Anomen, I just want us to be friends.*/ DO ~SetGlobal("_bAnomenRomanceFix","GLOBAL",3)~ EXIT
	++ @2 /*Of course, Anomen. All is forgiven.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2) SetGlobal("_bAnomenRomanceFix","GLOBAL",0)~ EXIT
	END
END

//Conversation to let you choose his past
CHAIN IF WEIGHT #-5 ~Global("_bChooseAnomen","GLOBAL",0) Alignment("Anomen",LAWFUL_NEUTRAL) Global("_bChooseAnomenFix","GLOBAL",1)~ THEN ANOME25J _bAnomenDidWhat
@3 /*<CHARNAME>, please tell me of our time together in Athkatla. Did I pass my test? Am I a knight of the Order of the Radiant Heart?*/
DO ~SetGlobal("_bChooseAnomen","GLOBAL",1) SetGlobal("_bChooseAnomenFix","GLOBAL",2)~
END
	++ @4 /*Yes, you did. You are a knight.. Your father disowned you though.*/ DO ~SetGlobal("AnomenIsKnight","GLOBAL",1) ChangeStat("Anomen",WIS,4,ADD) ChangeAlignment("Anomen",LAWFUL_GOOD)~ + _bGoodAnomen1
	++ @5 /*No, you did not. You were cast from the Order.*/ DO ~SetGlobal("AnomenIsNotKnight","GLOBAL",1) ChangeAlignment("Anomen",CHAOTIC_NEUTRAL)~ + _bBadAnomen1
	++ @6 /*You have not yet taken the test. We barely traveled together in Amn.*/ EXIT
	 
CHAIN ANOME25J _bGoodAnomen1
@7 /*I see. Was I romantically involved?*/
END
	+ ~Gender(Player1,FEMALE)~ + @8 /*Yes, with me.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~ + _bGoodAnomen2
	++ @9 /*Well, you tried to romance Clara, but she left you for your father.*/ DO ~SetGlobal("_bLadyDelryn","GLOBAL",1)~ + _bGoodAnomen3 
	++ @10 /*No, you were not.*/ EXIT
	
CHAIN ANOME25J _bGoodAnomen2
@15 /*Then what happened, my love?*/
END
	++ @11 /*We professed our love to each other. Saerk was found to be responsible for your sister's murder and your father went to confront him and was also killed. We confronted Saerk as well, but decided to leave peacefully and let the city's justice prevail.*/ + _bGoodAnomen3

CHAIN ANOME25J _bGoodAnomen3
@12 /*Well that is depressing, but at least I achieved my life's dream of joining the Order.*/
= @13 /*Let us continue.*/
EXIT

CHAIN ANOME25J _bBadAnomen1
@7 /*I see. Was I romantically involved?*/
END
	+ ~Gender(Player1,FEMALE)~ + @8 /*Yes, with me.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~ + _bBadAnomen2
	++ @14 /*Yes, with Clara.*/ DO ~SetGlobal("_bLordAndLadyDelryn","GLOBAL",5) SetGlobal("_bClaraRingTOB","GLOBAL",1) SetGlobal("_bAnomenClaraRomance","GLOBAL",2)~ + _bBadAnomen3 
	++ @10 /*No, you were not.*/ EXIT
	
CHAIN ANOME25J _bBadAnomen2
@15 /*Then what happened, my love?*/
END
	++ @16 /*We professed our love to each other, but your father tried to disown you so we killed him.*/ DO ~SetGlobal("_bDarksideAnomen","GLOBAL",2)~ + _bBadAnomen2A
	++ @1600 /*We professed our love to each other, but then the Athkatlan authorities reported that Saerk was not responsible for your sister's death. Your father disowned you so you went to confront him. Together we decided to spare his life.*/ + _bBadAnomen2B

CHAIN ANOME25J _bBadAnomen2A
	@1601 /*The old drunk finally got what was coming to him. And then?*/
END
	++ @1602 /*Then we framed brigands for the murder, and you became Lord Delryn. We paid a cowled wizard to investigate the murder of Saerk and clear your name. Saerk is officially a villain and we are officially heroes.*/ + _bBadAnomen4

CHAIN ANOME25J _bBadAnomen2B
	@1603 /*So I lost the Order, my family, and my home. All I have is you, my love.*/
	DO ~ChangeStat("Anomen",WIS,4,ADD)~
EXIT
	
CHAIN ANOME25J _bBadAnomen3
@20 /*Then what happened?*/
END
	++ @21 /*You and Clara professed your love to each other and were married. Your father tried to disown you so we killed him and framed brigands for the murder so that you and Clara became Lord and Lady Delryn. Then we paid a cowled wizard to investigate the murder of Saerk and clear your name. Saerk is officially a villian and we are all officially heroes.*/ + _bBadAnomen4
	
CHAIN ANOME25J _bBadAnomen4
@17 /*That is most excellent. I always knew we were. Anything else?*/
END
	+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @18 /*We also wiped out the Shadow Thieves. Aran Linvale was secretly on the Council of Six under another name and you were offered the open seat, provided you are one of the richest lords in Amn when the Council meets some months from now.*/ + _bBadAnomen5
	+ ~Global("_bLordAndLadyDelryn","GLOBAL",5)~ + @18 /*We also wiped out the Shadow Thieves. Aran Linvale was secretly on the Council of Six under another name and you were offered the open seat, provided you are one of the richest lords in Amn when the Council meets some months from now.*/ + _bBadAnomen7
	
CHAIN ANOME25J _bBadAnomen5
@19 /*I have been busy. Let us continue, my love.*/
DO ~ChangeStat("Anomen",WIS,4,ADD) ApplySpellRES("_bREP","Anomen")~
EXIT

CHAIN ANOME25J _bBadAnomen7
@22 /*I have been busy. Let us continue.*/
DO ~ChangeStat("Anomen",WIS,4,ADD) ApplySpellRES("_bREP","Anomen")~
EXIT

//Romance Banter DSA Fix 1
INTERJECT BANOME25 69 _bAnomenToBRomance1 /*I prayed we might find a brief respite from the fighting and enjoy each other's company in a time of peace, my love. But it seems the fates have decreed otherwise.*/
== ANOMENJ IF ~Global("_bDarksideAnomen","GLOBAL",2)~ THEN @23 /*When you aided me against my father, you taught me that bloodshed can be necessary for the greater good. Yet there must be also be some time when we pause our search for conflict and enjoy our lives as well.*/
END BANOME25 70 /*Forgive my mood. I did not mean to trouble you with this. Regret is a luxury of the weak. Simply know that I love you, <CHARNAME>, and I will always be by your side... in peace and battle. Come, my lady, let us continue on our journey and speak of this no more.*/
	

