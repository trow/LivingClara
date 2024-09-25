//Extra Courtesan Options- DHARLOT1 (Pirate Courtesan in Spellhold Island Inn)

//Male Options
EXTEND_TOP DHARLOT1 0 /*Oy! Ye're lookin' fer a good time, mayhap, aye?*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR(4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke1
END

EXTEND_TOP DHARLOT1 1 /*Don't mind the scars, darlin'... I've skill enough t' please any man!*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR(4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke1
END

EXTEND_TOP DHARLOT1 2 /*Ye'll not find the guards anywhere in the docks, me dear. The Shadow Thieves run this part o' the city, they does.*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR(4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke1
END

EXTEND_TOP DHARLOT1 3 /*I'm better than any o' the other girls in the docks... and you can tells 'em I says so!*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR(4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke1
END

EXTEND_TOP DHARLOT1 5 /*I pities the girls that works for Mae'Var, I does. He's a sadistic man, he is. I wouldn't put up with that.*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR(4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke1
END

EXTEND_TOP DHARLOT1 6 /*I never bothers with those Harpers. They don't pay well, an' they don't let us come near their precious base, neither.*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR(4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke1
END

EXTEND_TOP DHARLOT1 7 /*Hmmm... you seen some sailors around here, aye?*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR(4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke1
END

CHAIN DHARLOT1 _bDHARLOT1ManPoke1
@32 /*I'm not just lookin' to make small talk, darlin'. Does what ye see please ye?*/
	END
	++ @36 /*No thank you.*/ DO ~SetGlobal("_bDHARLOT1ManPoke1","GLOBAL",0)~ EXIT
	+ ~!Global("JaheiraRomanceActive","GLOBAL",2) OR(2) !Global("ViconiaRomanceActive","GLOBAL",2) !InParty("Viconia")~ + @37 /*It does. How much?*/ + _bDHARLOT1pokeprice
	+ ~Global("JaheiraRomanceActive","GLOBAL",2) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @38 /*Sure, sounds good.*/ EXTERN JAHEIRAJ _bDHARLOT1jaheiranopoke
	+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @37 /*It does. How much?*/ EXTERN VICONIJ _bDHARLOT1viconiascary
	
CHAIN JAHEIRAJ _bDHARLOT1jaheiranopoke
@39 /*<CHARNAME>, we are not sharing our bed with a courtesan.*/
= @40 /*Good lady, here is your gold, but you must find yourself another customer.*/
DO ~TakePartyGold(30) SetGlobal("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",1)~
EXIT

CHAIN VICONIJ _bDHARLOT1viconiascary
@41 /*You, the common, diseased, rivvin filth who opens her legs to any male with coin. Do you fear me?*/
== DHARLOT1 @42 /*You're a drow, m'lady. Please don't kill me.*/
== VICONIJ @43 /*Hah! This male is mine and I own him. He is not for you to use, or touch, or please in any way, and if you try, you will both die slowly and painfully by my hand.*/
= @44 /*I will burn you alive... or perhaps skin you first, healing you throughout to prolong your agony.*/
= @45 /*And when death finally comes, you will greet it as a welcome friend, but even death will not release you from your anguish. I will raise you from the dead and repeat the process, again and again, until my thirst for blood is satiated.*/
= @46 /*Am I making myself clear?*/
== DHARLOT1 @47 /*Yes m'lady. G'day m'lady.*/
DO ~SetGlobal("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",1)~
EXIT
	
CHAIN DHARLOT1 _bDHARLOT1pokeprice
@48 /*30 gold fer a few hours o' me time. In a nearby room, o' course.*/
= @49 /*The room be clean and so be I.*/
== JAHEIRAJ IF ~Global("JaheiraRomanceActive","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
@50 /*I cannot believe that you would sleep with this woman. Clearly I was mistaken about you.*/
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
== AERIEJ IF ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~
THEN @51 /*I... I... I think I was wrong about you, <CHARNAME>. I don't think you should be doing this... and I don't think you are the kind of man that I should care for.*/
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) OR(2) Global("NeeraRomanceActive","GLOBAL",1) Global("NeeraRomanceActive","GLOBAL",2)~ 
THEN @52 /*This is certainly an unpleasant surprise, <CHARNAME>. I thought you were going to be different. Consider us finished from now on.*/
DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)~
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~
THEN @53 /*We clearly have different ideas of what it means to be in a relationship, <CHARNAME>. You had best enjoy your courtesan since you'll have me no longer.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3)~ 
THEN @54 /*She's only pretending to like us in order to lighten our purse. Take her if you want, <CHARNAME>, but I want no part of this.*/
== DHARLOT1 @55 /*Does that be suitin' ye, darlin'?*/
END
	+ ~PartyGoldGT(29)~ + @58 /*It does. Lead the way.*/ + _bDHARLOT1LongPoke
	++ @59 /*I have changed my mind. Perhaps another time.*/ EXIT

CHAIN DHARLOT1 _bDHARLOT1LongPoke 
@63 /*Right this way then. Yer in for a night t' remember.*/
DO ~SetGlobal("_bDHARLOT1LongPokeFade","GLOBAL",1) SetGlobal("_bDHARLOT1ProstPostCN","GLOBAL",1) TakePartyGold(30)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bDHARLOT1LongPokeFade","GLOBAL",2) Global("_bDHARLOT1ProstPostCN","GLOBAL",1)~ THEN PLAYER1 _bDHARLOT1AfterLongPoke
@65 /*Four Hours Later...*/
DO ~SetGlobal("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) SetGlobal("_bDHARLOT1ProstPostCN","GLOBAL",2)~
== DHARLOT1 @66 /*Mmm, ye sure knows t' make a girl feels good. Come back anytime. I waits for ye.*/
EXIT


EXTEND_TOP DHARLOT1 0 /*Oy! Ye're lookin' fer a good time, mayhap, aye?*/
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",1)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke3
END

EXTEND_TOP DHARLOT1 1 /*Don't mind the scars, darlin'... I've skill enough t' please any man!*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",1)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke3
END

EXTEND_TOP DHARLOT1 2 /*Ye'll not find the guards anywhere in the docks, me dear. The Shadow Thieves run this part o' the city, they does.*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",1)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke3
END

EXTEND_TOP DHARLOT1 3 /*I'm better than any o' the other girls in the docks... and you can tells 'em I says so!*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",1)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke3
END

EXTEND_TOP DHARLOT1 5 /*I pities the girls that works for Mae'Var, I does. He's a sadistic man, he is. I wouldn't put up with that.*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",1)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke3
END

EXTEND_TOP DHARLOT1 6 /*I never bothers with those Harpers. They don't pay well, an' they don't let us come near their precious base, neither.*/
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",1)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke3
END

EXTEND_TOP DHARLOT1 7 /*Hmmm... you seen some sailors around here, aye?*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",1)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke3
END

CHAIN DHARLOT1 _bDHARLOT1ManPoke3
@33 /*Ye must find ye another girl, darlin'. That drow'll kill me!*/
END
	++ @67 /*Viconia? Don't worry about her, she's all bluster.*/ + _bDHARLOT1viconiatooscary
	+ ~Global("ViconiaRomanceActive","GLOBAL",3)~ + @68 /*It's okay, we're not together anymore.*/ + _bDHARLOT1viconiatooscary
	+ ~OR(2) !InParty("Viconia") !InMyArea("Viconia")~ + @69 /*But Viconia's not even here.*/ + _bDHARLOT1viconiatooscary
	+ ~Dead("Viconia")~ + @70 /*Don't worry about it. The drow is dead.*/ + _bDHARLOT1viconiatooscary
	
CHAIN DHARLOT1 _bDHARLOT1viconiatooscary
@71 /*I didn't live this long by taken me chances, m'lord. Ye'll have to find ye someone else.*/
EXIT
	
	
EXTEND_TOP DHARLOT1 0 /*Oy! Ye're lookin' fer a good time, mayhap, aye?*/
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke5
END

EXTEND_TOP DHARLOT1 1 /*Don't mind the scars, darlin'... I've skill enough t' please any man!*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke5
END

EXTEND_TOP DHARLOT1 2 /*Ye'll not find the guards anywhere in the docks, me dear. The Shadow Thieves run this part o' the city, they does.*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke5
END

EXTEND_TOP DHARLOT1 3 /*I'm better than any o' the other girls in the docks... and you can tells 'em I says so!*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke5
END

EXTEND_TOP DHARLOT1 5 /*I pities the girls that works for Mae'Var, I does. He's a sadistic man, he is. I wouldn't put up with that.*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke5
END

EXTEND_TOP DHARLOT1 6 /*I never bothers with those Harpers. They don't pay well, an' they don't let us come near their precious base, neither.*/
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke5
END

EXTEND_TOP DHARLOT1 7 /*Hmmm... you seen some sailors around here, aye?*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke5
END

CHAIN DHARLOT1 _bDHARLOT1ManPoke5
@34 /*Oh 'tis ye two. Ye have a g'day now.*/
== JAHEIRAJ @72 /*And to you as well.*/
EXIT
	
	
EXTEND_TOP DHARLOT1 0 /*Oy! Ye're lookin' fer a good time, mayhap, aye?*/
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR (4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke7
END

EXTEND_TOP DHARLOT1 1 /*Don't mind the scars, darlin'... I've skill enough t' please any man!*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR (4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke7
END

EXTEND_TOP DHARLOT1 2 /*Ye'll not find the guards anywhere in the docks, me dear. The Shadow Thieves run this part o' the city, they does.*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR (4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke7
END

EXTEND_TOP DHARLOT1 3 /*I'm better than any o' the other girls in the docks... and you can tells 'em I says so!*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR (4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke7
END

EXTEND_TOP DHARLOT1 5 /*I pities the girls that works for Mae'Var, I does. He's a sadistic man, he is. I wouldn't put up with that.*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR (4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke7
END

EXTEND_TOP DHARLOT1 6 /*I never bothers with those Harpers. They don't pay well, an' they don't let us come near their precious base, neither.*/
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR (4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke7
END

EXTEND_TOP DHARLOT1 7 /*Hmmm... you seen some sailors around here, aye?*/ 
	+ ~Gender(Player1,MALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) Global("_bDHARLOT1viconiascaresDHARLOT1","GLOBAL",0) OR (4) Global("_bDHARLOT1jaheirapaidDHARLOT1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1ManPoke7
END


CHAIN DHARLOT1 _bDHARLOT1ManPoke7
@35 /*It is ye, is it? Ye up fer another round?*/
END
	++ @36 /*No thank you.*/ EXIT
	+ ~!Global("JaheiraRomanceActive","GLOBAL",2) OR(2) !Global("ViconiaRomanceActive","GLOBAL",2) !InParty("Viconia")~ + @73 /*With you? Of course. How much is it again?*/ + _bDHARLOT1pokeprice
	+ ~Global("JaheiraRomanceActive","GLOBAL",2) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @73 /*Sure, sounds good.*/ EXTERN JAHEIRAJ _bDHARLOT1jaheiranopoke
	+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @73 EXTERN VICONIJ _bDHARLOT1viconiascary
	
	
//Female Options
EXTEND_TOP DHARLOT1 4 /*Sorry, darlin'... ye're lookin' in the wrong part o' town. Try the Copper Coronet... they might haves somethin' for ye.*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("_bDHARLOT1anomendeclinedpoke","GLOBAL",0)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke1
END

EXTEND_TOP DHARLOT1 1 /*Don't mind the scars, darlin'... I've skill enough t' please any man!*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("_bDHARLOT1anomendeclinedpoke","GLOBAL",0)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke1
END

EXTEND_TOP DHARLOT1 2 /*Ye'll not find the guards anywhere in the docks, me dear. The Shadow Thieves run this part o' the city, they does.*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("_bDHARLOT1anomendeclinedpoke","GLOBAL",0)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke1
END

EXTEND_TOP DHARLOT1 3 /*I'm better than any o' the other girls in the docks... and you can tells 'em I says so!*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("_bDHARLOT1anomendeclinedpoke","GLOBAL",0)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke1
END

EXTEND_TOP DHARLOT1 5 /*I pities the girls that works for Mae'Var, I does. He's a sadistic man, he is. I wouldn't put up with that.*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("_bDHARLOT1anomendeclinedpoke","GLOBAL",0)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke1
END

EXTEND_TOP DHARLOT1 6 /*I never bothers with those Harpers. They don't pay well, an' they don't let us come near their precious base, neither.*/
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("_bDHARLOT1anomendeclinedpoke","GLOBAL",0)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke1
END

EXTEND_TOP DHARLOT1 7 /*Hmmm... you seen some sailors around here, aye?*/ 
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",0) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("_bDHARLOT1anomendeclinedpoke","GLOBAL",0)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke1
END

CHAIN DHARLOT1 _bDHARLOT1WomanPoke1
@74 /**sigh* There's no men worth havin' around here. Of course, I'd take a pretty girl like you o'er a man any day. What do you say?*/
END
	++ @75 /*No, thanks.*/ EXIT
	+ ~OR(2) !Global("AnomenRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Anomen") OR(3) !Global("OHD_dornsex","GLOBAL",1) Global("DornRomanceActive","GLOBAL",3) !IfValidForPartyDialog("Dorn") OR(3) !IfValidForPartyDialog("Hexxat") !Global("HexxatRomanceActive","GLOBAL",2) GlobalLT("HexxatLovetalks","GLOBAL",25)~ + @76 /*Yes, I want you.*/ + _bDHARLOT1NoPokeWomen
	+ ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3)~ + @77 /*Yes, we want you.*/ EXTERN DORNJ _bDHARLOT1dorn2womenpoke
	+ ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @77 EXTERN ANOMENJ _bDHARLOT1anomen2womenpoke
	+ ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) Global("HexxatRomanceActive","GLOBAL",2) GlobalGT("HexxatLovetalks","GLOBAL",24)~ + @77 /*Yes, we want you.*/ + _bDHARLOT1nopokewomenhexxat
	
CHAIN DHARLOT1 _bDHARLOT1NoPokeWomen
@78 /*Oh wonderful! Half price for ye. 15 gold for as many hours as ye'd like.*/
END
	++ @79 /*Sorry, too much for me.*/ EXIT
	+~PartyGoldGT(14)~+ @80 /*I can do that. Where should we go?*/ + _bDHARLOT1PokeWomenMaybe


CHAIN DHARLOT1 _bDHARLOT1PokeWomenMaybe
@81 /*Well that depends. 15 gold includes a bed at th' Sea's Bounty, though alls we gets for privacy is a screen. I don't suppose ye'd be willin' t' make it 25 gold and get a private room with o' bath an' luxury?*/
END
	+~OR(3) !Global("RasaadRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Rasaad") !InMyArea("Rasaad") PartyGoldGT(14)~+ @82 /*Let them hear us. A normal room is fine.*/ DO ~TakePartyGold(15)~ + _bDHARLOT1PokeWomenYes
	+~OR(3) !Global("RasaadRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Rasaad") !InMyArea("Rasaad") PartyGoldGT(24)~+ @83 /*Spare no expense. We will have all the luxuries money can buy!*/ DO ~TakePartyGold(25)~ + _bDHARLOT1PokeWomenYes
	+~Global("RasaadRomanceActive","GLOBAL",2) IfValidForPartyDialog("Rasaad") InMyArea("Rasaad") PartyGoldGT(44)~+ @830 /*Actually it'll be Rasaad here joining us too.*/ DO ~TakePartyGold(45)~ + _bDHARLOT1PokeWomenYes
	++ @100 /*Nevermind then.*/ EXIT
	
CHAIN DHARLOT1 _bDHARLOT1PokeWomenYes
@84 /*Come wit' me.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~
THEN @53 /*We clearly have different ideas of what it means to be in a relationship, <CHARNAME>. You had best enjoy your courtesan since you'll have me no longer.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2)~
THEN @840 /*<CHARNAME>, this is unexpected... but I am not foolish enough to decline. I will follow.*/
== DHARLOT1 IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2)~
THEN @841 /*Well ain't you somethin'? You might not be a woman, but ye're almost pretty as one. Ye're welcome as well.*/ DO ~SetGlobal("_bDHARLOT1RasaadAndCN","GLOBAL",1)~
== DHARLOT1 @85 /*You will be a nice change from all th' drunken sailors an' thugs.*/
= @86 /*'Tis been a long time since I had someone actually knew somethin' 'bout pleasin' a girl.*/
DO ~SetGlobal("_bDHARLOT1LadyPokeFade","GLOBAL",1) SetGlobal("_bDHARLOT1ProstPostCN","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bDHARLOT1ProstPostCN","GLOBAL",1) Global("_bDHARLOT1LadyPokeFade","GLOBAL",2) OR(2) !Global("_bDHARLOT1DornPokeFade","GLOBAL",2) !IfValidForPartyDialog("DORN")~ THEN PLAYER1 _bDHARLOT1AfterLadyPoke
@65 /*Four Hours Later...*/
DO ~SetGlobal("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) SetGlobal("_bDHARLOT1ProstPostCN","GLOBAL",2)~
== DHARLOT1 @87 /*Ye come back soon now, aye? Come back often.*/
EXIT

CHAIN DORNJ _bDHARLOT1dorn2womenpoke
@88 /*Interesting. Yes, I approve of this idea. I will share the whore with you.*/
== DHARLOT1 @89 /*Oh this big 'un 'ere will join in, aye?*/
= @90 /*Oh... orc... oh... I see...*/
= @91 /*I mean 'tis no problem. He's 30 gold an' ye're 15.*/
== DORNJ @92 /*Hah, you are terrified of me, but you put on a brave face. Do I frighten you more than the scum you normally service?*/
== DHARLOT1 @93 /*No m'lord. I'd be honored t' serve ye m'lord.*/
== DORNJ @94 /*Relax. I have never seen someone go from so excited to so terrified and disappointed so quickly. You wanted <CHARNAME> and you will have her. Think of me as no more than an accessory to your passion.*/
= @95 /*The more handsome the man, the more selfish. <CHARNAME> and I will pleasure you as you never have been before.*/
DO ~SetGlobal("_bDHARLOT1DornPokeFade","GLOBAL",1) SetGlobal("_bDHARLOT1ProstPostCN","GLOBAL",1) TakePartyGold(45)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bDHARLOT1ProstPostCN","GLOBAL",1) Global("_bDHARLOT1DornPokeFade","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN PLAYER1 _bDHARLOT1AfterPokeDorn
@65 /*Four Hours Later...*/
DO ~SetGlobal("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",1) SetGlobal("_bDHARLOT1ProstPostCN","GLOBAL",2) SetGlobal("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1)~
== DHARLOT1 @96 /*<CHARNAME>, ye come back soon now, aye? And Dorn, I'm sorry I was rude t' ye. Ye were wonderful; you two can join me anytime.*/
EXIT

CHAIN ANOMENJ _bDHARLOT1anomen2womenpoke
@97 /*I am sorry, my lady, but I must decline your offer, generous as it is. My name may not be as spotless as I would prefer, but we cannot share this woman. Word would spread quickly among the sailors and my name would be tarnished further.*/
== DHARLOT1 @98 /*That's a shame m'lord.*/
DO ~SetGlobal("_bDHARLOT1anomendeclinedpoke","GLOBAL",1)~
EXIT

CHAIN DHARLOT1 _bDHARLOT1nopokewomenhexxat
@74 /**sigh* There's no men worth havin' around here. Of course, I'd take a pretty girl like you o'er a man any day. What do you say?*/
== HEXXATJ @99 /*How about two? You are truly delectable. I could just eat you alive, and I'd pay for the privilege.*/
END
	++ @101 /*You heard her; we'll pay. How about it?*/ EXTERN DHARLOT1 _bDHARLOT1pokehexxat
	++ @102 /*Hexxat, are you saying you want her or you WANT her?*/ EXTERN HEXXATJ _bDHARLOT1hexxateatpoke
	
CHAIN HEXXATJ _bDHARLOT1hexxateatpoke
@103 /*Both. First we have her, then I have her, though you may join in that too if you wish.*/
END
	++ @100 /*Nevermind then.*/ EXIT
	++ @101 /*You heard her; we'll pay. How about it?*/ EXTERN DHARLOT1 _bDHARLOT1pokehexxat
	
CHAIN DHARLOT1 _bDHARLOT1pokehexxat
@104 /*Both of ye? This is me lucky day!*/
= @105 /*Just follow me.*/
DO ~SetGlobal("_bDHARLOT1HexxatPokeFade","GLOBAL",1) Kill(Myself)~
EXIT


EXTEND_TOP DHARLOT1 4 /*Sorry, darlin'... ye're lookin' in the wrong part o' town. Try the Copper Coronet... they might haves somethin' for ye.*/
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke3
END

EXTEND_TOP DHARLOT1 1 /*Don't mind the scars, darlin'... I've skill enough t' please any man!*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke3
END

EXTEND_TOP DHARLOT1 2 /*Ye'll not find the guards anywhere in the docks, me dear. The Shadow Thieves run this part o' the city, they does.*/   
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke3
END

EXTEND_TOP DHARLOT1 3 /*I'm better than any o' the other girls in the docks... and you can tells 'em I says so!*/    
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke3
END

EXTEND_TOP DHARLOT1 5 /*I pities the girls that works for Mae'Var, I does. He's a sadistic man, he is. I wouldn't put up with that.*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke3
END

EXTEND_TOP DHARLOT1 6 /*I never bothers with those Harpers. They don't pay well, an' they don't let us come near their precious base, neither.*/
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke3
END

EXTEND_TOP DHARLOT1 7 /*Hmmm... you seen some sailors around here, aye?*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke3
END

CHAIN DHARLOT1 _bDHARLOT1WomanPoke3
@108 /*A pleasure t' see ye both again. I could use yer company.*/
== DORNJ IF ~~ THEN @109 /*Hah, her fear is gone and now she hungers for us again.*/
= @110 /*What say you, <CHARNAME>? Shall we give her another night to remember?*/
END
	++ @111 /*Not at the moment.*/ EXIT
	+~PartyGoldGT(44)~+ @112 /*Sure, let's do it.*/ + _bDHARLOT1DornPokeAgain
	
CHAIN DHARLOT1 _bDHARLOT1DornPokeAgain
@113 /*Wonderful. Follow me.*/
DO ~SetGlobal("_bDHARLOT1DornPokeFade","GLOBAL",1) SetGlobal("_bDHARLOT1ProstPostCN","GLOBAL",1) TakePartyGold(45)~
EXIT
	

EXTEND_TOP DHARLOT1 4 /*Sorry, darlin'... ye're lookin' in the wrong part o' town. Try the Copper Coronet... they might haves somethin' for ye.*/
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) OR(4) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke5
END

EXTEND_TOP DHARLOT1 1 /*Don't mind the scars, darlin'... I've skill enough t' please any man!*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) OR(4) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke5
END

EXTEND_TOP DHARLOT1 2 /*Ye'll not find the guards anywhere in the docks, me dear. The Shadow Thieves run this part o' the city, they does.*/  
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) OR(4) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke5
END

EXTEND_TOP DHARLOT1 3 /*I'm better than any o' the other girls in the docks... and you can tells 'em I says so!*/
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) OR(4) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke5
END

EXTEND_TOP DHARLOT1 5 /*I pities the girls that works for Mae'Var, I does. He's a sadistic man, he is. I wouldn't put up with that.*/   
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) OR(4) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke5
END

EXTEND_TOP DHARLOT1 6 /*I never bothers with those Harpers. They don't pay well, an' they don't let us come near their precious base, neither.*/ 
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) OR(4) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke5
END

EXTEND_TOP DHARLOT1 7 /*Hmmm... you seen some sailors around here, aye?*/   
	+ ~Gender(Player1,FEMALE) Global("_bDHARLOT1CNpokedDHARLOT1","GLOBAL",1) OR(4) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*Excuse me, miss?*/ GOTO _bDHARLOT1WomanPoke5
END

CHAIN DHARLOT1 _bDHARLOT1WomanPoke5
@114 /*Oh I didn' recognize ye there. How're things, <CHARNAME>?*/
END
	++ @115 /*Fine, I'm just saying "hello".*/ EXIT
	+ ~OR(2) !Global("AnomenRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Anomen") OR(3) !Global("OHD_dornsex","GLOBAL",1) Global("DornRomanceActive","GLOBAL",3) !IfValidForPartyDialog("Dorn") OR(3) !IfValidForPartyDialog("Hexxat") !Global("HexxatRomanceActive","GLOBAL",2) GlobalLT("HexxatLovetalks","GLOBAL",25) PartyGoldGT(24)~ + @116 /*Great. I want you again.*/ + _bDHARLOT1likespokewomen
	+ ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3) !Global("_bDHARLOT1dornthreesomeDHARLOT1","GLOBAL",1)~ + @117 /*Great. You'll be joining me and Dorn this time.*/ EXTERN DORNJ _bDHARLOT1dorn2womenpoke
	+ ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @77 EXTERN ANOMENJ _bDHARLOT1anomen2womenpoke
	+ ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) Global("HexxatRomanceActive","GLOBAL",2) GlobalGT("HexxatLovetalks","GLOBAL",24)~ + @120 /*Good. How's business?*/ + _bDHARLOT1nopokewomenhexxat
	
CHAIN DHARLOT1 _bDHARLOT1likespokewomen
@118 /*I got me own room now so we'll haves all th' privacy we want.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~
THEN @53 /*We clearly have different ideas of what it means to be in a relationship, <CHARNAME>. You had best enjoy your courtesan since you'll have me no longer.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
== DHARLOT1 IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bDHARLOT1RasaadAndCN","GLOBAL",0)~
THEN @121 /*Oh is this fine speciman yers? Well he can come along too. He might not be a woman, but he's almost as pretty as one.*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bDHARLOT1RasaadAndCN","GLOBAL",0)~
THEN @840 /*<CHARNAME>, this is unexpected... but I am not foolish enough to decline. I will follow.*/ DO ~SetGlobal("_bDHARLOT1RasaadAndCN","GLOBAL",1)~
== DHARLOT1 IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bDHARLOT1RasaadAndCN","GLOBAL",1)~
THEN @122 /*And Rasaad's comin' again too? Well isn't it me lucky day?*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bDHARLOT1RasaadAndCN","GLOBAL",1)~
THEN @123 /*A lucky day for me as well. May I say that you are looking lovely as ever?*/ 
== DHARLOT1 @119 /*I will soon have ye screaming in ecstasy.*/
DO ~SetGlobal("_bDHARLOT1LadyPokeFade","GLOBAL",1) SetGlobal("_bDHARLOT1ProstPostCN","GLOBAL",1) TakePartyGold(25)~
EXIT
