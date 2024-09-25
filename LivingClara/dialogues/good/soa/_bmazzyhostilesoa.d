APPEND MAZZYP // Just in case the low-rep leave is somehow triggered.
IF WEIGHT #-3 ~HappinessLT(Myself,-299)~ THEN  _bmahosa2
	SAY @0 /*My conscience can allow me to be idle no longer. In the name of all that is good, I accuse you of willfully committing acts of evil.*/
	= @1 /*By Arvoreen, I swear that you shall go no further. Stand and fight, if you have the courage.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyHostile","GLOBAL",2)~ GOTO _bmahosa1
	END
END

APPEND MAZZYJ // If Mazzy is in the party. 
IF WEIGHT #-3 ~Global("_bMazzyHostile","GLOBAL",3)~ THEN  _bmahosa3
	SAY @0 /*My conscience can allow me to be idle no longer. In the name of all that is good, I accuse you of willfully committing acts of evil.*/
	= @1 /*By Arvoreen, I swear that you shall go no further. Stand and fight, if you have the courage.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyHostile","GLOBAL",1)~ GOTO _bmahosa0
	END
END

CHAIN //If Mazzy is in the party.
IF ~Global("_bMazzyHostile","GLOBAL",1)~ THEN MAZZYJ _bmahosa0
@2 /*For Arvoreen!*/
DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",2) SetGlobal("_bMazzyHostile","GLOBAL",4) SetGlobal("NPCFight","LOCALS",1) ChangeAIScript("mazzyx",SPECIFICS) ChangeAIScript("useitem",GENERAL) Enemy()~
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) !Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @3 /*Now she turns on us as I knew she would! Sanctimonious halfling, it is time for you to die!*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~
THEN @301 /*I will... not choose between you. Battle it out if you must, but I will stand to the side.*/
== KORGANJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1)~
THEN @4 /*I said me axe was yers, Mazzy, an’ I meant it. Ready yerself, <CHARNAME>, fer today is th' day ye die!*/
== KORGANJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",0)~
THEN @5 /*Har, har, no one tells me what t' do. Time t' take me axe, girl.*/
== KELDORJ IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @6 /*<CHARNAME>, I know that you bring with you a troubled past and a painful heritage, but for all the friendship that has formed between us, I cannot turn from such transgressions forever.*/
= @7 /*I cannot allow you to do this, and if that means ending your life then so be it.*/
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) !Global("NeeraRomanceActive","GLOBAL",2)~ 
THEN @19 /*Now you're fighting? But who do I help? I know! I will decide to refuse to decide. You two do what you're going to do and I'll go with the winner when you're done.*/
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) Global("NeeraRomanceActive","GLOBAL",2)~
THEN @20 /*I will not let you hurt <CHARNAME>! <PRO_HESHE> has made mistakes but <PRO_HESHE> does not deserve to die.*/
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) OR(2) !CheckStatGT(Player1,14,CHR) Global("_bMinscNeera","GLOBAL",2)~ 
THEN @8 /*When making a glorious egg dish of goodness, I understand some eggs must be broken. But actions such as this are... simply deplorable!*/
= @9 /*You have fallen to evil while I watched, but no more! Now is the time for justice! Boo will have your eyes!*/
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) CheckStatGT(Player1,14,CHR) !Global("_bMinscNeera","GLOBAL",2)~
THEN @10 /*No more words, <CHARNAME>. I thought we were friends but your pretty lies have blinded me to evil for too long. Boo will have your eyes when next me meet.*/ 
== AERIEJ IF ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN @11 /*How—how could you do this, <CHARNAME>? I trusted you. Everyone trusted you!*/
= @12 /**sobs* I was a stupid little girl, but no longer. I will fight you!*/
== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) IsValidForPartyDialog("Aerie") !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2)~
THEN @13 /*Ahh, my awakened mourning dove, you sing truly about <CHARNAME>. <PRO_HESHE> is a monster, but fear not! Your sparrow will help you bring <PRO_HIMHER> down.*/
== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !IsValidForPartyDialog("Aerie") !Global("HaerDalisRomanceActive","GLOBAL",2) Global("LS_HaerDalisRomanceActive","GLOBAL",2)~
THEN @14 /*What bitter betrayals and twisted friendships, what songs this day will sing. Fight and we shall carve in blood a villain’s destiny!*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1) !Global("AnomenRomanceActive","GLOBAL",2)~
THEN @15 /*You are not on the side of the righteous, <CHARNAME>, and it is my duty to stop you.*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~
THEN @16 /*I was beguiled by your charms, <CHARNAME>, but no longer! Your actions have proved the darkness of your heart and I will defeat you.*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~
THEN @17 /*Finally, a chance to test my mettle against the 'great' Mazzy Fentan. Now we shall see who is the superior warrior.*/
== VALYGARJ IF ~InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) CheckStatGT(Player1,14,CHR) !GlobalGT("MazzyValygar","GLOBAL",1)~ 
THEN @21 /*I'll not stand about and participate in your degenerate activities any longer, <CHARNAME>. I'll find my own way and leave you to yours.*/
== VALYGARJ IF ~InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(2) !CheckStatGT(Player1,14,CHR) GlobalGT("MazzyValygar","GLOBAL",1)~
THEN @22 /*If you choose to fight, Mazzy, then I will fight <CHARNAME> at your side.*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) CheckStatGT(Player1,14,CHR) Global("JaheiraRomanceActive","GLOBAL",2)~ 
THEN @23 /*I would have expected better from you, <CHARNAME>! You have let yourself fall too far and I will accompany you no further. We will not meet again.*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !Global("JaheiraRomanceActive","GLOBAL",2) !CheckStatGT(Player1,14,CHR)~ 
THEN @24 /*You were my friend, <CHARNAME>, but I no longer know you. You will find no quarter here! Justice take you!*/
== CERNDJ IF ~InMyArea("Cernd") InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @25 /*When two wolves fight for dominance, the pack does not intervene. I shall stand aside.*/
== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) !Global("RasaadRomanceActive","GLOBAL",2) !CheckStatGT(Player1,14,CHR)~
THEN @26 /*Selûne guide our hands! I have witnessed <CHARNAME>'s evil for too long and done nothing.*/
== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) OR(2) CheckStatGT(Player1,14,CHR) Global("RasaadRomanceActive","GLOBAL",2)~ 
THEN @27 /*<CHARNAME>, I must have words with you! This is not you. It cannot be.*/
= @28 /*I thought you were a light within the darkness I must walk and I cannot believe that I was wrong. I will not help you fight, but neither will I abandon you. If you win, we will continue our travels.*/
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) !Global("PGNaliaRomanceActive","GLOBAL",2) !Global("PCKeepOwner","GLOBAL",1)~ 
THEN @29 /*I can't believe you would do this, <CHARNAME>! We're supposed to be helping people!*/
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) Global("PGNaliaRomanceActive","GLOBAL",2) Global("PCKeepOwner","GLOBAL",1)~ 
THEN @30 /*I don't understand this. I thought you were a hero, <CHARNAME>. You were my hero.... I am leaving, <CHARNAME>. Goodbye.*/
== IMOEN2J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~
THEN @33 /*All right, fine. If that's the way you wanna be, go ahead and be pigheaded. I'll be at that bar... the Copper Coronet. You can find me there, I suppose, if you ever want to.*/
== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @34 /*This will be good practice. My weapon thirsts for blood.*/
== IF_FILE_EXISTS HEXXATJ IF ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ 
THEN @35 /*I am with you, <CHARNAME>. It is time to feast.*/
== IF_FILE_EXISTS OHHFAK IF ~InMyArea("OHHFAK") InParty("OHHFAK") !StateCheck("OHHFAK",CD_STATE_NOTVALID)~ 
THEN @36 /*All who stop us... from reaching Dragomir's Tomb must... die.*/
== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) !Global("YoshimoRomanceActive","GLOBAL",2)~ 
THEN @37 /*I will aid you, <CHARNAME>. I must.*/
== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) Global("YoshimoRomanceActive","GLOBAL",2)~
THEN @38 /*The world is not black and white and we all have our places. I will not let you hurt <CHARNAME> just because you disagree.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @39 /*(Yes, at last. A chance to improve my company.) Fools, meet your obliteration!*/
== IF_FILE_EXISTS _BCLARAJ IF ~InMyArea("_bClara") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @40 /*I don't really like fighting. I'm just going to wait over here until you're done.*/
== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @41 /*Well now here is a pickle. Not an actual pickle mind you, but a pickle meaning a problem, and not a problem relating to pickles like the one that befell my cousin Plooty. This was before he became a famous flesh-golem eater of course...*/
EXIT

CHAIN // If Mazzy goes hostile and is now outside your party.
IF WEIGHT #-2 ~Global("_bMazzyHostile","GLOBAL",2) !Global("_bMazHexDie","GLOBAL",1)~ THEN MAZZYP _bmahosa1
@2 /*For Arvoreen!*/
DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",2) SetGlobal("_bMazzyHostile","GLOBAL",4) SetGlobal("NPCFight","LOCALS",1) ChangeAIScript("mazzyx",SPECIFICS) ChangeAIScript("useitem",GENERAL) Enemy()~
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) !Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @3 /*Now she turns on us as I knew she would! Sanctimonious halfling, it is time for you to die!*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~
THEN @301 /*I will... not choose between you. Battle it out if you must, but I will stand to the side.*/
== KORGANJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",1)~
THEN @4 /*I said me axe was yers, Mazzy, an’ I meant it. Ready yerself, <CHARNAME>, fer today is th' day ye die!*/
== KORGANJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("_BMazzyKilledKorgan","GLOBAL",0)~
THEN @5 /*Har, har, no one tells me what t' do. Time t' take me axe, girl.*/
== KELDORJ IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @6 /*<CHARNAME>, I know that you bring with you a troubled past and a painful heritage, but for all the friendship that has formed between us, I cannot turn from such transgressions forever.*/
= @7 /*I cannot allow you to do this, and if that means ending your life then so be it.*/
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) !Global("NeeraRomanceActive","GLOBAL",2)~ 
THEN @19 /*Now you're fighting? But who do I help? I know! I will decide to refuse to decide. You two do what you're going to do and I'll go with the winner when you're done.*/
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) Global("NeeraRomanceActive","GLOBAL",2)~
THEN @20 /*I will not let you hurt <CHARNAME>! <PRO_HESHE> has made mistakes but <PRO_HESHE> does not deserve to die.*/
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) OR(2) !CheckStatGT(Player1,14,CHR) Global("_bMinscNeera","GLOBAL",2)~ 
THEN @8 /*When making a glorious egg dish of goodness, I understand some eggs must be broken. But actions such as this are... simply deplorable!*/
= @9 /*You have fallen to evil while I watched, but no more! Now is the time for justice! Boo will have your eyes!*/
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) CheckStatGT(Player1,14,CHR) !Global("_bMinscNeera","GLOBAL",2)~
THEN @10 /*No more words, <CHARNAME>. I thought we were friends but your pretty lies have blinded me to evil for too long. Boo will have your eyes when next me meet.*/ 
== AERIEJ IF ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN @11 /*How—how could you do this, <CHARNAME>? I trusted you. Everyone trusted you!*/
= @12 /**sobs* I was a stupid little girl, but no longer. I will fight you!*/
== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) !IsValidForPartyDialog("Aerie") !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2)~
THEN @13 /*Ahh, my awakened mourning dove, you sing truly about <CHARNAME>. <PRO_HESHE> is a monster, but fear not! Your sparrow will help you bring <PRO_HIMHER> down*/
== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !IsValidForPartyDialog("Aerie") Global("LS_HaerDalisRomanceActive","GLOBAL",2) !Global("HaerDalisRomanceActive","GLOBAL",2)~
THEN @14 /*What bitter betrayals and twisted friendships, what songs this day will sing. Fight and we shall carve in blood a villain’s destiny!*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1) !Global("AnomenRomanceActive","GLOBAL",2)~
THEN @15 /*You are not on the side of the righteous, <CHARNAME>, and it is my duty to stop you.*/
== ANOMENJ IF ~InMyArea("Anomen")InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~
THEN @16 /*I was beguiled by your charms, <CHARNAME>, but no longer! Your actions have proved the darkness of your heart and I will defeat you.*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~
THEN @17 /*Finally, a chance to test my mettle against the 'great' Mazzy Fentan. Now we shall see who is the superior warrior.*/
== VALYGARJ IF ~InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) CheckStatGT(Player1,14,CHR) !GlobalGT("MazzyValygar","GLOBAL",1)~ 
THEN @21 /*I'll not stand about and participate in your degenerate activities any longer, <CHARNAME>. I'll find my own way and leave you to yours.*/
== VALYGARJ IF ~InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(2) !CheckStatGT(Player1,14,CHR) GlobalGT("MazzyValygar","GLOBAL",1)~
THEN @22 /*If you choose to fight, Mazzy, then I will fight <CHARNAME> at your side.*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) CheckStatGT(Player1,14,CHR) Global("JaheiraRomanceActive","GLOBAL",2)~ 
THEN @23 /*I would have expected better from you, <CHARNAME>! You have let yourself fall too far and I will accompany you no further. We will not meet again.*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !Global("JaheiraRomanceActive","GLOBAL",2) !CheckStatGT(Player1,14,CHR)~ 
THEN @24 /*You were my friend, <CHARNAME>, but I no longer know you. You will find no quarter here! Justice take you!*/
== CERNDJ IF ~InMyArea("Cernd") InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @25 /*When two wolves fight for dominance, the pack does not intervene. I shall stand aside.*/
== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) !Global("RasaadRomanceActive","GLOBAL",2) !CheckStatGT(Player1,14,CHR)~
THEN @26 /*Selûne guide our hands! I have witnessed <CHARNAME>'s evil for too long and done nothing.*/
== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) OR(2) CheckStatGT(Player1,14,CHR) Global("RasaadRomanceActive","GLOBAL",2)~ 
THEN @27 /*<CHARNAME>, I must have words with you! This is not you. It cannot be.*/
= @28 /*I thought you were a light within the darkness I must walk and I cannot believe that I was wrong. I will not help you fight, but neither will I abandon you. If you win, we will continue our travels.*/
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) !Global("PGNaliaRomanceActive","GLOBAL",2) !Global("PCKeepOwner","GLOBAL",1)~ 
THEN @29 /*I can't believe you would do this, <CHARNAME>! We're supposed to be helping people!*/
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) Global("PGNaliaRomanceActive","GLOBAL",2) Global("PCKeepOwner","GLOBAL",1)~ 
THEN @30 /*I don't understand this. I thought you were a hero, <CHARNAME>. You were my hero.... I am leaving, <CHARNAME>. Goodbye.*/
== IMOEN2J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~
THEN @33 /*All right, fine. If that's the way you wanna be, go ahead and be pigheaded. I'll be at that bar... the Copper Coronet. You can find me there, I suppose, if you ever want to.*/
== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @34 /*This will be good practice. My weapon thirsts for blood.*/
== IF_FILE_EXISTS HEXXATJ IF ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ 
THEN @35 /*I am with you, <CHARNAME>. It is time to feast.*/
== IF_FILE_EXISTS OHHFAK IF ~InMyArea("OHHFAK") InParty("OHHFAK") !StateCheck("OHHFAK",CD_STATE_NOTVALID)~ 
THEN @36 /*All who stop us... from reaching Dragomir's Tomb must... die.*/
== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) !Global("YoshimoRomanceActive","GLOBAL",2)~ 
THEN @37 /*I will aid you, <CHARNAME>. I must.*/
== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) Global("YoshimoRomanceActive","GLOBAL",2)~
THEN @38 /*The world is not black and white and we all have our places. I will not let you hurt <CHARNAME> just because you disagree.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @39 /*(Yes, at last. A chance to improve my company.) Fools, meet your obliteration!*/
== IF_FILE_EXISTS _BCLARAJ IF ~InMyArea("_bClara") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @40 /*I don't really like fighting. I'm just going to wait over here until you're done.*/
== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @41 /*Well now here is a pickle. Not an actual pickle mind you, but a pickle meaning a problem, and not a problem relating to pickles like the one that befell my cousin Plooty. This was before he became a famous flesh-golem eater of course...*/
EXIT

APPEND JANJ IF ~Global("_bmahojanfight","GLOBAL",1)~ THEN _bmahojan0
	SAY @42 /*...and by the time he was done arguing with the orc general, the entire orc army had already died of old age; orcs don't live that long you know. Now what was it you were all shouting about?*/
	IF ~~ THEN DO ~SetGlobal("_bmahojanfight","GLOBAL",2)~ EXIT
	END
END

APPEND KORGANJ IF ~Global("_bmahokorganfight","GLOBAL",2)~ THEN _bmahokorgan0
	SAY @43 /*Well, that be that. No hard feelings, <CHARNAME>. Let us raise a mug an' drink t' Mazzy, the most fearsome halfling what ever lived.*/
	IF ~~ THEN DO ~SetGlobal("_bmahokorganfight","GLOBAL",3) SetGlobal("KickedOut","LOCALS",0)~ EXIT
	END
END

//If you are an enemy of the Order of the Radiant Heart
APPEND MAZZYP IF WEIGHT #-1 ~Global("TempleShout0903","GLOBAL",1)~ THEN  _bmaorderenemy1
	SAY @44 /*<CHARNAME> you are a villain, an enemy of the Order of the Radiant Heart. Do not show your face around here again.*/
	IF ~~ THEN EXIT
	END
END

//If you are an enemy of the Order of the Radiant Heart
APPEND MAZZY IF WEIGHT #-1 ~Global("TempleShout0903","GLOBAL",1) AreaCheck("AR2002")~ THEN  _bmaorderenemy2
	SAY @44 /*<CHARNAME> you are a villain, an enemy of the Order of the Radiant Heart. Do not show your face around here again.*/
	IF ~~ THEN EXIT
	END
END

//Neera Line if she joins Minsc
CHAIN IF WEIGHT #-1 ~Global("_bNeeraJoinsAngryMinsc","GLOBAL",1)~ THEN NEERAJ _bNeeraFights
@46 /*Wait, we're fighting <CHARNAME> now? Minsc, you need to warn me when you're going to do something like this!*/
DO ~ChangeAIScript("ohbgerr2",SPECIFICS) SetGlobal("_bNeeraJoinsAngryMinsc","GLOBAL",2) ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",2) ChangeAIScript("useitem",GENERAL) Enemy()~
EXIT

//Minsc Line if he joins Neera
CHAIN IF WEIGHT #-1 ~Global("_bMinscJoinsAngryNeera","GLOBAL",1)~ THEN MINSCJ _bMinscFights
@45 /*<CHARNAME> fights with the pretty witch? Then <CHARNAME> shall feel our boot!*/
DO ~SetGlobal("_bMinscJoinsAngryNeera","GLOBAL",2) ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",2) ChangeAIScript("useitem",GENERAL) Enemy()~
EXIT
