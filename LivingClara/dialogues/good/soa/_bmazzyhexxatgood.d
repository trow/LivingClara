//After meeting Hexxat if ForTheGood installed - seems to work

CHAIN IF ~Global("OHH_hexmove","OH7000",1) Global("_bDieHexxatDie","GLOBAL",2) !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN Player1 _bHexMustDie
@0 /**You watch the vampire leave and wonder if you've made the right decision. From what you know of these creatures, you would need to kill Hexxat permanently in order to raise her former thrall.**/
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN 
@1 /*There is no escape, vampire. My arrows will stop you!*/
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
@2 /*She's on the run! Kill her!*/
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN
@3 /*Come back here, monster! Face my turnipy vengeance and burn as you deserve!*/
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
@4 /*Boo says that if we kill the vampire then the girl can be saved! We will stop her!*/
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
@5 /*Stop running and face us!*/
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
@6 /*You cannot flee from your crimes!*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
@7 /*No! We cannot miss our chance!*/
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
@8 /*She's getting away! Stop her!*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
@9 /*Do something, <CHARNAME>! We can't let a murderer go free!*/
== HEXXAT IF ~Global("OHH_hexmove","OH7000",1) Global("_bDieHexxatDie","GLOBAL",2)~ THEN
@10 /*No, I do not want to fight! Just let me go!*/
DO ~SetGlobal("_bDieHexxatDie","GLOBAL",3)~
END
	++ @11 /*Sorry, Hexxat. I need them more than you.*/ EXTERN HEXXAT _bHexDie2
	++ @12 /*I've changed my mind, vampire. We shall cleanse your evil now.*/ EXTERN HEXXAT _bHexDie2
	++ @13 /*No one hurts Hexxat! Touch her and you die!*/ EXTERN HEXXAT _bHexDie3
	++ @14 /*Enough! Stop this everyone! I will not kill someone who offers me no harm.*/ EXTERN HEXXAT _bHexDie3
	

CHAIN HEXXAT _bHexDie2
@15 /*Then I will feast upon your blood.*/
DO ~SetGlobal("OHH_cloakmissing","OH7000",5) SetGlobal("_bHexFight","GLOBAL",1) SetQuestDone(84953)~ //stops her from asking about her cloak while you're trying to kill her and turns off her quest.
EXIT

CHAIN HEXXAT _bHexDie3
@16 /*Thank you, <CHARNAME>.*/
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
	THEN @17 /*Very well. Side with the vampire and share her fate, <CHARNAME>.*/
	DO ~SetGlobal("_bKelHexDie","GLOBAL",1)~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @18 /*You protect her? Then you are beyond redemption.*/
	DO ~SetGlobal("_bMazHexDie","GLOBAL",1)~
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
	THEN @19 /*You saved my life and it pains me that our friendship must end here, but I will not let this monster flee.*/
	DO ~SetGlobal("_bValHexDie","GLOBAL",1)~
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Valygar")~ 
	THEN @20 /*So we let the girl die and we do nothing? Minsc is confused and Boo is saddened.*/
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) OR(3) IsValidForPartyDialogue("Mazzy") IsValidForPartyDialogue("Keldorn") IsValidForPartyDialogue("Valygar")~ 
	THEN @21 /*I am sorry it had to end this way, <CHARNAME>. Boo is sorry too, but he will have your eyes!*/
	DO ~SetGlobal("_bMinHexDie","GLOBAL",1)~
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) OR(3) IsValidForPartyDialogue("Mazzy") IsValidForPartyDialogue("Keldorn") IsValidForPartyDialogue("Valygar")~
	THEN @22 /*I will not be stopped! For my niece! For my sister!*/
	DO ~SetGlobal("_bJanHexDie","GLOBAL",1)~
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Valygar")~ 
	THEN @23 /*She killed my niece and you do nothing? We are finished, <CHARNAME>! Good *day*!*/
	DO ~SetGlobal("_bJanLeavesForever","GLOBAL",1)~
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(3) IsValidForPartyDialogue("Mazzy") IsValidForPartyDialogue("Keldorn") IsValidForPartyDialogue("Valygar")~
	THEN @24 /*Gorion would be ashamed of you! I do not wish to fight against you, but this has gone too far!*/
	DO ~SetGlobal("_bJaheHexDie","GLOBAL",1)~
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Valygar")~
	THEN @25 /*I do not like this <CHARNAME>, but I will abide by your decision... for now.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1) OR(3) IsValidForPartyDialogue("Mazzy") IsValidForPartyDialogue("Keldorn") IsValidForPartyDialogue("Valygar")~
	THEN @26 /*The Order will not stand for this! Draw steel, <CHARNAME>! The vampire must die.*/
	DO ~SetGlobal("_bAnoHexDie","GLOBAL",1)~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Valygar")~
	THEN @27 /*This temptress is an unnatural creature, <CHARNAME>, and I will not travel with her. If you tire of her company, come find me later on.*/
	DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobal("KickedOut","LOCALS",1) LeaveParty() SetGlobal("_bAHH","GLOBAL",1) EscapeAreaMove("AR0406",1522,1662,0)~
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) IsValidForPartyDialogue("Mazzy") IsValidForPartyDialogue("Keldorn") IsValidForPartyDialogue("Valygar")~
	THEN @28 /*No! If she gets away then she'll kill dozens more. Maybe hundreds! Even your life is not worth that, <CHARNAME>!*/
	DO ~SetGlobal("_bNalHexDie","GLOBAL",1)~
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Valygar")~
	THEN @29 /*She kills innocent people and you just allow it? I am leaving, <CHARNAME>. If you come to your senses, I will be waiting at the Copper Coronet.*/
	DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobal("KickedOut","LOCALS",1) LeaveParty() SetGlobal("_bNHH","GLOBAL",1) MoveGlobal("AR0406","Nalia",[658.1462])~
== RASAADJ IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) OR(3) IsValidForPartyDialogue("Mazzy") IsValidForPartyDialogue("Keldorn") IsValidForPartyDialogue("Valygar")~
	THEN @30 /*I have been plagued with doubts but in this Selûne shines brightly. I am sorry, <CHARNAME>, but the vampire must die.*/
	DO ~SetGlobal("_bRasHexDie","GLOBAL",1)~
== RASAADJ IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Valygar")~
	THEN @31 /*I have walked dark paths in search of my brother's killer, but no longer. You have opened my eyes, <CHARNAME>. The ends do not justify the means and you will not see me again.*/
	DO ~SetGlobal("_bRasLeavesForever","GLOBAL",1)~
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @32 /*I do not like this, <CHARNAME> I will not fight Mazzy but neither will I fight you. You two resolve this on your own, I will wait outside.*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Valygar")~
	THEN @33 /*She– she killed that woman and you are going to do nothing. I don't understand <CHARNAME>. W– why?*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(3) IsValidForPartyDialogue("Mazzy") IsValidForPartyDialogue("Keldorn") IsValidForPartyDialogue("Valygar")~
	THEN @34 /*The vampire killed that woman and yet you protect her over your own friends? I– I will not stand for that <CHARNAME>. I am not a little girl! I will fight you!*/
	DO ~SetGlobal("_bAerHexDie","GLOBAL",1)~
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) IsValidForPartyDialog("Aerie") !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2) OR(3) IsValidForPartyDialogue("Mazzy") IsValidForPartyDialogue("Keldorn") IsValidForPartyDialogue("Valygar")~
	THEN @35 /*Nothing personal, <CHARNAME>. But if my dove attacks then so must I.*/
	DO ~SetGlobal("_bHaerHexDie","GLOBAL",1)~
EXIT


//Anomen won't travel with Hexxat after this unless he killed his father w CN (Clara dead)
APPEND ANOMENP IF WEIGHT #-5 ~Global("KickedOut","LOCALS",1) !Global("AnomenIsNotKnight","GLOBAL",1) Global("_bAHH","GLOBAL",1) InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN _bAHHex1
	SAY @36 /*I see that the vampire is still with you, <CHARNAME>. Begone.*/ 
	IF ~~ THEN EXIT
	END
END

APPEND ANOMENJ IF WEIGHT #-5 ~Global("_bAHH","GLOBAL",1) !Global("AnomenIsNotKnight","GLOBAL",1) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) InParty("HEXXAT")~ THEN _bAHHex2
	SAY @37 /*I told you that I would not travel with the vampire, <CHARNAME>. I am leaving.*/ 
	IF ~~ THEN DO ~ChangeAIScript("",DEFAULT) SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeAreaMove("AR0406",1522,1662,0)~ EXIT
	END
END

//Nalia won't travel with HEXXAT after this
APPEND NALIAP IF WEIGHT #-5 ~Global("KickedOut","LOCALS",1) Global("_bNHH","GLOBAL",1) InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN _bNHHex1
	SAY @38 /*How can you keep traveling with Hexxat after what she did? Just leave me alone.*/ 
	IF ~~ THEN EXIT
	END
END

APPEND NALIAJ IF WEIGHT #-5 ~Global("_bNHH","GLOBAL",1) InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("HEXXAT")~ THEN _bNHHex2
	SAY @39 /*I cannot stay with this monster, <CHARNAME>. Goodbye.*/ 
	IF ~~ THEN DO ~ChangeAIScript("",DEFAULT) SetGlobal("KickedOut","LOCALS",1) LeaveParty() MoveGlobal("AR0406","Nalia",[658.1462])~ EXIT
	END
END


//Hexxat-Mazzy conversation
CHAIN IF WEIGHT #-1 ~Global("_bMazHexConflict","GLOBAL",2)~ THEN HEXXATJ _bMazHexFight1
@40 /*Well, what is it, halfling? You've been staring at me since we awoke. I mean you no harm.*/
DO ~Setglobal("_bMazHexConflict","GLOBAL",3)~
== MAZZYJ @41 /*Where did you go last night, vampire? You left as soon as you thought the rest of us had fallen asleep.*/
== HEXXATJ @42 /*I thought wrong, it seems. There is a house near here. I went inside and found a girl and drank her blood while her father slept in the other room. The girl tasted of loss, but also of happiness and joy. She was cared for and loved and at peace. She remained asleep the whole time and when I finished, I lay there basking in her emotions and her memories; they were so warm and beautiful. I'm trying to hold onto those feelings, but they are already slipping away.*/
== MAZZYJ @43 /*You murdered a girl...*/
== HEXXATJ @44 /*Yes.*/
== MAZZYJ @45 /*...who was happy and loved...*/
== HEXXATJ @46 /*Yes.*/
== MAZZYJ @47 /*...and you felt it?*/
== HEXXATJ @48 /*Feeding is the only time that I feel anything. I do not remember what it was like to truly have emotions, but when I satisfy my hunger I can experience those of my prey for a little while if they stay asleep until the end. Often they wake up while I am drinking and then it is ruined because their blood just tastes like fear.*/
== MAZZYJ @49 /*Draw your weapon and fight me, spawn of evil!*/
== HEXXATJ @50 /*I am not your enemy, Mazzy. I would like to be your friend. Why do you wish to fight?*/
== MAZZYJ @51 /*For the girl. For her father who woke up today and found his daughter dead. For every innocent you've killed or will kill if I let you live!*/
== HEXXATJ @52 /*I am sorry to hear that. There is no malice in me, child. I am only death. I take the evil and the good, the vile and the innocent, the righteous and the wicked. Everyone must die, Mazzy, and I need to drink in order to survive.*/
== MAZZYJ @53 /*Then I will end your life where you stand. Are you with me, <CHARNAME>? I do not wish to kill you too, but I will if you try to stop me.*/
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",0) Global("_bMazzySavesViconia","GLOBAL",0)~ 
THEN @54 /*As satisfying as it would be to teach the sanctimonious halfling a lesson, I will stand by your decision <CHARNAME>.*/
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",0) !Global("_bMazzySavesViconia","GLOBAL",0)~
THEN @55 /*I... do not know what to do. Make your decision, <CHARNAME>. I will follow you.*/
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) !Global("_bMazzyVicFriends","GLOBAL",0)~
THEN @56 /*I do not understand your anger, Mazzy, but you are my friend and I will fight by your side against this vampire. Please do not harm <CHARNAME> though, as I owe <PRO_HIMHER> my life.*/
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~
THEN @57 /*(I wonder which side is more likely to survive. I want Hexxat's cloak, but I also need <CHARNAME> alive. Maybe I'll get lucky and <PRO_HESHE> will choose to kill the vampire...) I am with you <CHARNAME>. You can always count on me!*/
== DORNJ IF ~InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~
THEN @58 /*Good, another battle. Pick your side <CHARNAME> so I know who to strike down.*/
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1) !Global("_bKorganHexxatFriends","GLOBAL",1)~
THEN @59 /*Me axe is yers, halfling lass, just say th' word.*/
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1) Global("_bKorganHexxatFriends","GLOBAL",1)~
THEN @60 /*I'm sorry, vampire, but I swore me axe to the halfling lass. Ye better run unless ye think that ye kin kill us both.*/
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) !Global("_BMazzyKilledKorgan","GLOBAL",1) Global("_bKorganHexxatFriends","GLOBAL",1)~
THEN @61 /*Th' vampire is me friend, Mazzy, an' I always stand by me friends. Well, at least me friends that I nae be killing meself.*/
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) !Global("_BMazzyKilledKorgan","GLOBAL",1) !Global("_bKorganHexxatFriends","GLOBAL",1)~
THEN @62 /*I have nothing against ye, vampire, but th' halfling lass is a force to behold an' I will stand beside her.*/
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
THEN @63 /*Whatever you choose to do, <CHARNAME>, I must stand by your decision.*/
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
THEN @64 /*Boo will stand behind you, tiny paladin, and Minsc will stand behind Boo! For goodness!*/
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~
THEN @65 /*You are correct, Mazzy; we must cleanse this abomination from the world.*/
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ 
THEN @66 /*Do we have to fight? There's been so much killing already.*/
== NEERAJ IF ~InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~
THEN @67 /*I understand about losing control. I've hurt people too by accident. If <CHARNAME> thinks that you're worth saving, Hexxat, then I will do my best to help.*/
== RASAADJ IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @68 /*<CHARNAME>, Mazzy, I do not know what is right and I do not wish to fight you.*/
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) Global("OHH_jan","GLOBAL",1)~ 
THEN @69 /*It's about time! Let us kill the vampire, Mazzy, and my niece will be avenged.*/
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) !Global("OHH_jan","GLOBAL",1)~ 
THEN @70 /*Well now, this be a tricky one. My old nan always said never to trust a vampire, but then she never trusted halflings either. Several of them insulted her best turnip stew.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~
THEN @71 /*Yes! I may not like you, Mazzy, but the Order of the Radiant Heart has sworn to wipe out such evil from the world. Perhaps you are not as stupid as I thought.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~
THEN @72 /*What does it matter? Peasants die. We should focus our energies on more important things.*/
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @73 /*Mazzy, if you choose to fight then I am on your side.*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN @74 /*This is terrible. We must help Mazzy, <CHARNAME>. We cannot let such death go on.*/
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !IsValidForPartyDialog("Aerie") Global("LS_HaerDalisRomanceActive","GLOBAL",2) !Global("HaerDalisRomanceActive","GLOBAL",2)~
THEN @75 /*What fierce conundrum, what vile tragedy to break up this band of heroes. And what lucky sparrow, here to chronicle the fight. Make your choice, <CHARNAME>, and I shall battle at your side.*/
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) IsValidForPartyDialog("Aerie") !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2)~
THEN @76 /*My mourning dove cries evil and this sparrow must sing along. My blades will dance for blood tonight.*/
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @77 /*I do not like this, <CHARNAME>. We are supposed to defend the less fortunate, not allow them to be eaten in their beds.*/
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @78 /*All things in nature must eat to live. This vampire is not a part of nature, but in this she is no different. We cannot judge her for her hunger any more than we would judge a wolf for eating a rabbit; although I mourn that father's pain.*/
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @79 /*Make the right decision, <CHARNAME>. I will not kill Mazzy in order to save the vampire.*/
END
	++ @80 /*Mazzy is right, Hexxat. I do not hate you but I cannot let a murderer walk free.*/ GOTO _bMazHexFight2
	++ @81 /*Die, vampire! If I can only rid the world of one evil, then it will be you tonight.*/ GOTO _bMazHexFight2
	++ @82 /*No, Mazzy. I will not condemn Hexxat for her nature. You will have to go through me.*/ EXTERN MAZZYJ _bMazHexFight3
	++ @83 /*Hexxat's skills are worth the loss of a peasant here or there. I need her more than you, Mazzy.*/ EXTERN MAZZYJ _bMazHexFight3
	++ @84 /*I do not wish to take sides in this fight. You two need to resolve this on your own.*/ GOTO _bMazHexFight4
	
APPEND HEXXATJ IF ~~ THEN _bMazHexFight2
SAY @85 /*No, I will not fight you. I am leaving and none of you will ever see me again.*/
	IF ~~ THEN DO ~SetGlobal("_bHexxatLeavesForever","GLOBAL",1)~ EXIT
	END
END

CHAIN MAZZYJ _bMazHexFight3
@86 /*Then draw steel, <CHARNAME>! The vampire must die!*/
	== HEXXATJ @87 /*I will not fight. I will be at the Copper Coronet, <CHARNAME>, if you decide that you still want me. Mazzy, do not bother coming. You will not find me there.*/
	DO ~TakePartyItem("OHHCLOAK") SetGlobal("OHH_hexxatjoined","LOCALS",0) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0406",600,1045,S)~
	== MAZZYJ @88 /*You have shown your true colours, <CHARNAME>, I will not stay by your side a moment longer.*/
	DO ~SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~
	== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~
	THEN @89 /*Hold a moment, Mazzy, I am coming with you. You are small and young, but you have potential and you are a leader worth following.*/
	DO ~SetGlobal("_bKeldLeavesForever","GLOBAL",1)~
	== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~
	THEN @90 /*Goodbye, <CHARNAME>. It is clear now that you cannot help me uphold the Order's cause. I will follow my own path from now on.*/
	DO ~SetGlobal("_bAnoLeavesForever","GLOBAL",1)~
	== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~
	THEN @91 /*I can't believe I thought that you were a good person, <CHARNAME>. You will not see me again. Mazzy, wait for me.*/
	DO ~SetGlobal("_bAerieLeavesForever","GLOBAL",1)~
	== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) IsValidForPartyDialog("Aerie") !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2)~
	THEN @92 /*Aerie, my mourning dove, I will leave <CHARNAME> as well. This sparrow will always fly by your side.*/
	DO ~SetGlobal("_bHDLeavesForever","GLOBAL",1)~
	== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
	THEN @93 /*Boo says you are evil, <CHARNAME>, and we must fight for goodness. Lead on, tiny warrior. Boo and I shall follow.*/
	DO ~SetGlobal("_bMinscLeavesForever","GLOBAL",1)~
	== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",3)~ 
	THEN @94 /*I am sorry, <CHARNAME>. We've been through so much together, but I do not wish to follow you down this path any longer. I will always care for you, but I am leaving with Mazzy.*/
	DO ~SetGlobal("_bImoenLeavesForever","GLOBAL",1)~
	== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1)~
	THEN @95 /*I will follow ye, Mazzy. My axe will always be yers.*/
	== MAZZYJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1)~
	THEN @96 /*No, Korgan, I release you from your vow. Stay with <CHARNAME>. Maybe you will kill <PRO_HIMHER> in your rage and rid the world of <PRO_HISHER> darkness.*/
	== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1)~
	THEN @97 /*Well if ye say so, lass, but I will remember ye.*/
	== RASAADJ IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
	THEN @98 /*<CHARNAME>, I still consider you a friend but I do not know if I can continue to follow you. I will return to Trademeet and think on my next move.*/
	DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeAreaMove("AR2000",1673,1503,S)~
	== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) !Global("_bMazzyVicFriends","GLOBAL",0)~
	THEN @99 /*I am... going to stay with <CHARNAME>, Mazzy, for <PRO_HESHE> has been my friend a long time and I owe <PRO_HIMHER > my life. Farewell my abbil, my tiny little paladin. Do try to keep yourself alive.*/
	== MAZZYJ @100 /*Goodbye, <CHARNAME>. May we never meet again.*/
EXIT
	
CHAIN HEXXATJ _bMazHexFight4
	@101 /*I will not fight you, Mazzy. I am leaving and none of you will ever see me again.*/
	DO ~SetGlobal("_bHexxatLeavesForever","GLOBAL",1)~
	== MAZZYJ @102 /*You did nothing to stop her, <CHARNAME>! How could you? You must continue your quest without me. I will not rest until I have hunted Hexxat down.*/
	== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~
	THEN @103 /*Hold a moment, Mazzy, I am coming with you. This is a worthy mission.*/
	DO ~ChangeAIScript("",DEFAULT) SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeAreaMove("AR2002",306,426,3)~
	== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~
	THEN @104 /*Now this is a cause worthy of the Order. Follow me, Mazzy, and we will find that vampire's lair.*/
	DO ~ChangeAIScript("",DEFAULT) SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeAreaMove("AR2002",362,424,9)~
	== MAZZYJ @105 /*Once this task is complete, you may find me at my home.*/
	DO ~SetGlobal("_bHexxatHunt","GLOBAL",1) ChangeAIScript("",DEFAULT) SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeAreaMove("AR2002",341,400,6)~
EXIT
	
	
//At Mazzy's house later
APPEND ANOMENP IF WEIGHT #-9 ~Global("KickedOut","LOCALS",1) Global("_bHexxatHunt","GLOBAL",1)~ THEN _bHexHunt1
	SAY @106 /*Join in the celebration, <CHARNAME>! Mazzy's mother makes the most delicious pies.*/ 
	IF ~~ THEN EXIT
	END
END

APPEND KELDORP IF WEIGHT #-9 ~Global("KickedOut","LOCALS",1) Global("_bHexxatHunt","GLOBAL",1)~ THEN _bHexHunt2
	SAY @107 /*It is good you came, <CHARNAME>. I was just about to return home after a satisfying and successful mission. The vampire gave us a good hunt, but the gods were on our side and she could not escape.*/ 
	IF ~~ THEN EXIT
	END
END


APPEND MAZZYP IF WEIGHT #-9 ~Global("KickedOut","LOCALS",1) Global("_bHexxatHunt","GLOBAL",1) !Global("_bEdwinVaraCloak","GLOBAL",1) !Global("_bHouseParty","GLOBAL",1)~ THEN _bHexHunt3
	SAY @108 /*Hello, <CHARNAME>! I was wondering when you would arrive. The vampire is dead. I put a stake through her heart and then burned the bag that held her casket down to ashes. Her cloak and casque I gave to my mother to study. She has always had an interest in such things.*/
	IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) !Global("_bEdwinTalksVara","GLOBAL",1)~ THEN EXTERN EDWINJ _bHexHunt4
	IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Global("_bEdwinTalksVara","GLOBAL",1)~ THEN EXTERN EDWINJ _bHexHunt5
	IF ~OR(3) !InMyArea("Edwin") !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN VARA1 _bHexHunt6
	END
END

CHAIN EDWINJ _bHexHunt4
@109 /*Excuse me, old halfling woman, those items you have would be useful in my studies. Give them to me.*/
== VARA1 @110 /*"Old halfling woman?" You have forgotten your manners, child. You are Edwin Odesseiron of Thay, are you not? Did you know that there are people looking for you?*/
== EDWINJ @111 /*(Manners, right. I must placate the old woman.) Yes, my lady, I am Edwin, and yes some of those people have found me, to their misfortune (others I have hidden from).*/
= @112 /*My apologies for my earlier rudeness, but if I may just borrow those items you possess...*/
== VARA1 @113 /*You may not borrow the casque, child, but the cloak you may have if you give me something in return.*/
== EDWINJ @114 /*Of course, I have money...*/
== VARA1 @115 /*You must let me copy your spellbooks, wizard, both the obvious one and the one you are trying to conceal inside your robes. If you agree, I'll have a team of master scribes here within the hour, though it will still take us the better part of a whole day.*/
== EDWINJ @116 /*(Their secrets are beyond even your best scribes, foolish mage.) Yes, of course, I accept. Now the cloak! Let me have the cloak!*/
= @117 /*I mean, my lady, may I please have the cloak.*/
== VARA1 @118 /*Of course, I am a woman of my word. But this will take a while.*/
= @119 /*Join the celebration, wizard. Tomorrow you will have what you asked for.*/
DO ~SetGlobal("_bEdwinVaraCloak","GLOBAL",1) SetGlobal("MazzyHappy","GLOBAL",1) SetGlobal("_bEdwinTalksVara","GLOBAL",1) RestParty()~
EXIT

CHAIN EDWINJ _bHexHunt5
@1091 /*My lady, Madam Fentan, if you remember I am Edwin Odesseiron... (the batty old woman has most likely already forgotten me)*/
== VARA1 @1092 /*How could I forget? Welcome back, Edwin.*/
== EDWINJ @1093 /*Well, my lady, if I may just borrow the cloak and casque for my studies... (Give them to me hag, or I shall take them off your corpse.)*/
== VARA1 @113 /*You may not borrow the casque, child, but the cloak you may have if you give me something in return.*/
== EDWINJ @114 /*Of course, I have money...*/
== VARA1 @115 /*You must let me copy your spellbooks, wizard, both the obvious one and the one you are trying to conceal inside your robes. If you agree, I'll have a team of master scribes here within the hour, though it will still take us the better part of a whole day.*/
== EDWINJ @116 /*(Their secrets are beyond even your best scribes, foolish mage.) Yes, of course, I accept. Now the cloak! Let me have the cloak!*/
= @117 /*I mean, my lady, may I please have the cloak.*/
== VARA1 @118 /*Of course, I am a woman of my word. But this will take a while.*/
= @119 /*Join the celebration, wizard. Tomorrow you will have what you asked for.*/
DO ~SetGlobal("_bEdwinVaraCloak","GLOBAL",1) SetGlobal("MazzyHappy","GLOBAL",1) RestParty()~
EXIT

APPEND MAZZYP IF WEIGHT #-5 ~Global("_bEdwinVaraCloak","GLOBAL",1)~ THEN _bHexHunt7 
	SAY @1190 /*Good morning, <CHARNAME>. I hope that you slept well. Once the wizard collects his prize, let us travel on once more.*/
	IF ~~ THEN EXTERN VARA1 _bHexHunt8
	END
END

CHAIN VARA1 _bHexHunt8
@120 /*Here, wizard. The cloak, as promised. My scribes worked throughout the night.*/
== EDWINJ @121 /*(Yes, yess!  The power shall be mine.) Thank you, old woman. You have proved useful after all.*/
== VARA1 @122 /*As have you, Edwin Oddesseiron. I hope you were not disappointed by our hospitality.*/
== EDWINJ @123 /*(That smile is unnerving. But some old halfling wench could not outfox me, I am sure.)*/
DO ~GiveItemCreate("OHHCLOAK","Edwin",0,0,0) SetGlobal("_bEdwinVaraCloak","GLOBAL",2) SetGlobal("_bHexxatHunt","GLOBAL",2) ActionOverride("Mazzy",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Mazzy",JoinParty()) ActionOverride("Keldorn",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Keldorn",JoinParty()) ActionOverride("Anomen",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Anomen",JoinParty())~
EXIT

CHAIN VARA1 _bHexHunt6
@124 /*<CHARNAME>, everyone, please sit and be welcome. There is food and drink for all and if we run out, we will get more.*/
= @125 /*Today we celebrate my daughter's victory.*/
DO ~SetGlobal("_bHouseParty","GLOBAL",1) RestParty()~
EXIT

APPEND MAZZYP IF WEIGHT #-5 ~Global("_bHouseParty","GLOBAL",1)~ THEN _bHexHunt9
	SAY @126 /*Good morning, <CHARNAME>. I hope that you slept well. Shall we travel on as a company once more?*/
	IF ~~ THEN DO ~SetGlobal("_bHexxatHunt","GLOBAL",2) SetGlobal("_bHouseParty","GLOBAL",2) SetGlobal("KickedOut","LOCALS",0) ActionOverride("Mazzy",JoinParty()) ActionOverride("Keldorn",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Keldorn",JoinParty()) ActionOverride("Anomen",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Anomen",JoinParty())~ EXIT
	END
END



//TOB version of Hexxat/Mazzy conflict - essentially the same except for Vara scenes
CHAIN IF WEIGHT #-1 ~Global("_bMazHexConflict","GLOBAL",2)~ THEN HEXXA25J _bMazHexFight1
@40 /*Well, what is it, halfling? You've been staring at me since we awoke. I mean you no harm.*/
DO ~SetGlobal("_bMazHexConflict","GLOBAL",3)~
== MAZZY25J @41 /*Where did you go last night, Hexxat? You left as soon as you thought the rest of us had fallen asleep.*/
== HEXXA25J @42 /*I thought wrong, it seems. There is a house near here. I went inside and found a girl and drank her blood while her father slept in the other room. The girl tasted of loss, but also of happiness and joy. She was cared for and loved and at peace. She remained asleep the whole time and when I finished, I lay there basking in her emotions and her memories; they were so warm and beautiful. I'm trying to hold onto those feelings, but they are already slipping away.*/
== MAZZY25J @43 /*You murdered a girl...*/
== HEXXA25J @44 /*Yes.*/
== MAZZY25J @45 /*...who was happy and loved...*/
== HEXXA25J @46 /*Yes.*/
== MAZZY25J @47 /*...and you felt it?*/
== HEXXA25J @48 /*Feeding is the only time that I feel anything. I do not remember what it was like to truly have emotions, but when I satisfy my hunger I can experience those of my prey for a little while if they stay asleep until the end. Often they wake up while I am drinking and then it is ruined because their blood just tastes like fear.*/
== MAZZY25J @49 /*Draw your weapon and fight me, spawn of evil!*/
== HEXXA25J @50 /*I am not your enemy, Mazzy. I would like to be your friend. Why do you wish to fight?*/
== MAZZY25J @51 /*For the girl. For her father who woke up today and found his daughter dead. For every innocent you've killed or will kill if I let you live!*/
== HEXXA25J @52 /*I am sorry to hear that. There is no malice in me, child. I am only death. I take the evil and the good, the vile and the innocent, the righteous and the wicked. Everyone must die, Mazzy, and I need to drink in order to survive.*/
== MAZZY25J @53 /*Then I will end your life where you stand. Are you with me, <CHARNAME>? I do not wish to kill you too, but I will if you try to stop me.*/
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",0) Global("_bMazzySavesViconia","GLOBAL",0)~ 
THEN @54 /*As satisfying as it would be to teach the sanctimonious halfling a lesson, I will stand by your decision <CHARNAME>.*/
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",0) !Global("_bMazzySavesViconia","GLOBAL",0)~
THEN @55 /*I... do not know what to do. Make your decision, <CHARNAME>. I will follow you.*/
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) !Global("_bMazzyVicFriends","GLOBAL",0)~
THEN @56 /*I do not understand your anger, Mazzy, but you are my friend and I will fight by your side against this vampire. Please do not harm <CHARNAME> though, as I owe <PRO_HIMHER> my life.*/
== EDWIN25J IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~
THEN @57 /*(I wonder which side is more likely to survive. I want Hexxat's cloak, but I also need <CHARNAME> alive. Maybe I'll get lucky and <PRO_HESHE> will choose to kill the vampire...) I am with you <CHARNAME>. You can always count on me!*/
== DORN25J IF ~InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~
THEN @58 /*Good, another battle. Pick your side <CHARNAME> so I know who to strike down.*/
== KORGA25J IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1) !Global("_bKorganHexxatFriends","GLOBAL",1)~
THEN @59 /*Me axe is yers, halfling lass, just say th' word.*/
== KORGA25J IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1) Global("_bKorganHexxatFriends","GLOBAL",1)~
THEN @60 /*I'm sorry, vampire, but I swore me axe to the halfling lass. Ye better run unless ye think that ye kin kill us both.*/
== KORGA25J IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) !Global("_BMazzyKilledKorgan","GLOBAL",1) Global("_bKorganHexxatFriends","GLOBAL",1)~
THEN @61 /*Th' vampire is me friend, Mazzy, an' I always stand by me friends. Well, at least me friends that I nae be killing meself.*/
== KORGA25J IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) !Global("_BMazzyKilledKorgan","GLOBAL",1) !Global("_bKorganHexxatFriends","GLOBAL",1)~
THEN @62 /*I have nothing against ye, vampire, but th' halfling lass is a force to behold an' I will stand beside her.*/
== MINSC25J IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
THEN @64 /*Boo will stand behind you, tiny paladin, and Minsc will stand behind Boo! For goodness!*/
== KELDO25J IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~
THEN @65 /*You are correct, Mazzy; we must cleanse this abomination from the world.*/
== IMOEN25J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ 
THEN @66 /*Do we have to fight? There's been so much killing already.*/
== SAREV25J IF ~InParty("Sarevok") !StateCheck("Sarevok",CD_STATE_NOTVALID)~
THEN @127 /*The vampire could have been a powerful ally. But I will not shy from a fight.*/
== NEERA25J IF ~InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~
THEN @67 /*I understand about losing control. I've hurt people too by accident. If <CHARNAME> thinks that you're worth saving, Hexxat, then I will do my best to help.*/
== RASAA25J IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @68 /*<CHARNAME>, Mazzy, I do not know what is right and I do not wish to fight you.*/
== JAN25J IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) Global("OHH_jan","GLOBAL",1)~ 
THEN @69 /*It's about time! Let us kill the vampire, Mazzy, and my niece will be avenged.*/
== JAN25J IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) !Global("OHH_jan","GLOBAL",1)~ 
THEN @70 /*Well now, this be a tricky one. My old nan always said never to trust a vampire, but then she never trusted halflings either. Several of them insulted her best turnip stew.*/
== ANOME25J IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~
THEN @71 /*Yes! I may not like you, Mazzy, but the Order of the Radiant Heart has sworn to wipe out such evil from the world. Perhaps you are not as stupid as I thought.*/
== ANOME25J IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~
THEN @72 /*What does it matter? Peasants die. We should focus our energies on more important things.*/
== VALYG25J IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @73 /*Mazzy, if you choose to fight then I am on your side.*/
== AERIE25J IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN @74 /*This is terrible. We must help Mazzy, <CHARNAME>. We cannot let such death go on.*/
== HAERD25J IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !IsValidForPartyDialog("Aerie") Global("LS_HaerDalisRomanceActive","GLOBAL",2) !Global("HaerDalisRomanceActive","GLOBAL",2)~
THEN @75 /*What fierce conundrum, what vile tragedy to break up this band of heroes. And what lucky sparrow, here to chronicle the fight. Make your choice, <CHARNAME>, and I shall battle at your side.*/
== HAERD25J IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) IsValidForPartyDialog("Aerie") !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2)~
THEN @76 /*My mourning dove cries evil and this sparrow must sing along. My blades will dance for blood tonight.*/
== NALIA25J IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @77 /*I do not like this, <CHARNAME>. We are supposed to defend the less fortunate, not allow them to be eaten in their beds.*/
== CERND25J IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @78 /*All things in nature must eat to live. This vampire is not a part of nature, but in this she is no different. We cannot judge her for her hunger any more than we would judge a wolf for eating a rabbit; although I mourn that father's pain.*/
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @79 /*Make the right decision, <CHARNAME>. I will not kill Mazzy in order to save the vampire.*/
END
	++ @80 /*Mazzy is right, Hexxat. I do not hate you but I cannot let a murderer walk free.*/ GOTO _bMazHexFight2
	++ @81 /*Die, vampire! If I can only rid the world of one evil, then it will be you tonight.*/ GOTO _bMazHexFight2
	++ @82 /*No, Mazzy. I will not condemn Hexxat for her nature. You will have to go through me.*/ EXTERN MAZZY25J _bMazHexFight3
	++ @83 /*Hexxat's skills are worth the loss of a peasant here or there. I need her more than you, Mazzy.*/ EXTERN MAZZY25J _bMazHexFight3
	++ @84 /*I do not wish to take sides in this fight. You two need to resolve this on your own.*/ GOTO _bMazHexFight4
	
APPEND HEXXA25J IF ~~ THEN _bMazHexFight2
SAY @85 /*No, I will not fight you. I am leaving and none of you will ever see me again.*/
	IF ~~ THEN DO ~SetGlobal("_bHexxatLeavesForever","GLOBAL",1)~ EXIT
	END
END

CHAIN MAZZY25J _bMazHexFight3
@86 /*Then draw steel, <CHARNAME>! The vampire must die!*/
	== HEXXA25J @129 /*I will not fight. Send me to your pocket plane, <CHARNAME>. Mazzy will not find me there.*/
	DO ~TakePartyItem("OHHCLOAK") SetGlobal("OHH_hexxatjoined","LOCALS",0) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) CreateVisualEffectObject("spdimndr",Myself) MoveBetweenAreas("AR4500",[1788.1148],SE)~
	== MAZZY25J @88 /*You have shown your true colours, <CHARNAME>, I will not stay by your side a moment longer.*/
	DO ~SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~
	== KELDO25J IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~
	THEN @89 /*Hold a moment, Mazzy, I am coming with you. You are small and young, but you have potential and you are a leader worth following.*/
	DO ~SetGlobal("_bKeldLeavesForever","GLOBAL",1)~
	== ANOME25J IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~
	THEN @90 /*Goodbye, <CHARNAME>. It is clear now that you cannot help me uphold the Order's cause. I will follow my own path from now on.*/
	DO ~SetGlobal("_bAnoLeavesForever","GLOBAL",1)~
	== AERIE25J IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~
	THEN @91 /*I can't believe I thought that you were a good person, <CHARNAME>. You will not see me again. Mazzy, wait for me.*/
	DO ~SetGlobal("_bAerieLeavesForever","GLOBAL",1)~
	== HAERD25J IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) IsValidForPartyDialog("Aerie") !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2)~
	THEN @92 /*Aerie, my mourning dove, I will leave <CHARNAME> as well. This sparrow will always fly by your side.*/
	DO ~SetGlobal("_bHDLeavesForever","GLOBAL",1)~
	== MINSC25J IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
	THEN @93 /*Boo says you are evil, <CHARNAME>, and we must fight for goodness. Lead on, tiny warrior. Boo and I shall follow.*/
	DO ~SetGlobal("_bMinscLeavesForever","GLOBAL",1)~
	== IMOEN25J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ 
	THEN @94 /*I am sorry, <CHARNAME>. We've been through so much together, but I do not wish to follow you down this path any longer. I will always care for you, but I am leaving with Mazzy.*/
	DO ~SetGlobal("_bImoenLeavesForever","GLOBAL",1)~
	== KORGA25J IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1)~
	THEN @95 /*I will follow ye, Mazzy. My axe will always be yers.*/
	== MAZZY25J IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1)~
	THEN @96 /*No, Korgan, I release you from your vow. Stay with <CHARNAME>. Maybe you will kill <PRO_HIMHER> in your rage and rid the world of <PRO_HISHER> darkness.*/
	== KORGA25J IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1)~
	THEN @97 /*Well if ye say so, lass, but I will remember ye.*/
	== RASAA25J IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
	THEN @98 /*<CHARNAME>, I still consider you a friend but I do not know if I can continue to follow you. I will return to Trademeet and think on my next move.*/
	DO ~SetGlobal("_bRasLeavesForever","GLOBAL",1)~
	== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) !Global("_bMazzyVicFriends","GLOBAL",0)~
	THEN @99 /*I am... going to stay with <CHARNAME>, Mazzy, for <PRO_HESHE> has been my friend a long time and I owe <PRO_HIMHER > my life. Farewell my abbil, my tiny little paladin. Do try to keep yourself alive.*/
	== MAZZY25J @100 /*Goodbye, <CHARNAME>. May we never meet again.*/
EXIT
	
CHAIN HEXXA25J _bMazHexFight4
	@101 /*I will not fight you, Mazzy. I am leaving and none of you will ever see me again.*/
	DO ~SetGlobal("_bHexxatLeavesForever","GLOBAL",1)~
	== MAZZY25J @102 /*You did nothing to stop her, <CHARNAME>! How could you? You must continue your quest without me. I will not rest until I have hunted Hexxat down.*/
	== KELDO25J IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~
	THEN @103 /*Hold a moment, Mazzy, I am coming with you. This is a worthy mission.*/
	DO ~SetGlobal("_bKeldLeavesForever","GLOBAL",1)~
	== ANOME25J IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~
	THEN @104 /*Now this is a cause worthy of the Order. Follow me, Mazzy, and we will find that vampire's lair.*/
	DO ~SetGlobal("_bAnoLeavesForever","GLOBAL",1)~
	== MAZZY25J @128 /*Perhaps we will meet again someday.*/
	DO ~SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~
EXIT


//Anomen still won't travel with Hexxat if the SOA version triggered - even in TOB
APPEND ANOME25P IF WEIGHT #-5 ~Global("KickedOut","LOCALS",1) Global("_bAHH","GLOBAL",1) InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN _bAHHex1
	SAY @36 /*I see that the vampire is still with you, <CHARNAME>. Begone.*/ 
	IF ~~ THEN EXIT
	END
END

APPEND ANOME25J IF WEIGHT #-5 ~Global("_bAHH","GLOBAL",1) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) InParty("HEXXAT")~ THEN _bAHHex2
	SAY @37 /*I told you that I would not travel with the vampire, <CHARNAME>. I am leaving.*/ 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) LeaveParty() MoveBetweenAreas("AR4500",[1470.1400],0)~ EXIT
	END
END

//Nalia still won't travel with Hexxat if the SOA scene triggered - even in TOB
APPEND NALIA25P IF WEIGHT #-5 ~Global("KickedOut","LOCALS",1) Global("_bNHH","GLOBAL",1) InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN _bNHHex1
	SAY @38 /*How can you keep traveling with Hexxat after what she did? Just leave me alone.*/ 
	IF ~~ THEN EXIT
	END
END

APPEND NALIA25J IF WEIGHT #-5 ~Global("_bNHH","GLOBAL",1) InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("HEXXAT")~ THEN _bNHHex2
	SAY @39 /*I cannot stay with this monster, <CHARNAME>. Goodbye.*/ 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) LeaveParty() MoveBetweenAreas("AR4500",[1483.1540],0)~ EXIT
	END
END
