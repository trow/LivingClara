//Evil Dryad Conversation in Dungeon

EXTEND_BOTTOM IDRYAD1 9 
	++ @0 /*Yes, actually. I have your acorns so you are under my control, correct? You must give me whatever I desire?*/ GOTO _bCNRapesDryad1A
END

CHAIN IDRYAD1 _bCNRapesDryad1A
@1 /*We wish to live! But we have nothing to give you.*/
END
	++ @2 /*Don't worry, I was just checking. I will free you.*/ EXIT
	++ @3 /*You are concubines. I require you to serve me as you do Irenicus.*/ GOTO _bCNRapesDryad1B
	
CHAIN IDRYAD1 _bCNRapesDryad1B
	@4 /*Your spirit is as ugly as his.*/
	= @5 /*We will do whatever you ask.*/
== IMOENJ IF ~InMyArea("Imoen") InParty("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN 
	@6 /*I can't believe you would do this, <CHARNAME>! You're just as bad as he is. I have to get out of here!*/
	DO ~SetGlobal("_bImoenobjectsCNRD","GLOBAL",1)~
== IMOEN2J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN 
	@6 /*I can't believe you would do this, <CHARNAME>! You're just as bad as he is. I have to get out of here!*/
	DO ~SetGlobal("_bImoen2objectsCNRD","GLOBAL",1)~
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
	@7 /*Boo says this is not right. We are heroes! First we hero, then the ladies jump into our beds willingly!*/
	= @8 /*And when Boo speaks, Minsc listens. We will find our own way out!*/ 
	DO ~SetGlobal("_bMinscobjectsCNRD","GLOBAL",1)~
== IDRYAD1 @9 /*Come then, let us be done with this.*/ 
	DO ~SetGlobal("_bCNRapesDryads","GLOBAL",1)~
EXIT


EXTEND_BOTTOM IDRYAD2 11 
	++ @0 /*Yes, actually. I have your acorns so you are under my control, correct? You must give me whatever I desire?*/ GOTO _bCNRapesDryad2A
END

CHAIN IDRYAD2 _bCNRapesDryad2A
@1 /*We wish to live! But we have nothing to give you.*/
END
	++ @2 /*Don't worry, I was just checking. I will free you.*/ EXIT
	++ @3 /*You are concubines. I require you to serve me as you do Irenicus.*/ GOTO _bCNRapesDryad2B
	
CHAIN IDRYAD2 _bCNRapesDryad2B
	@4 /*Your spirit is as ugly as his.*/
	= @5 /*We will do whatever you ask.*/
== IMOENJ IF ~InMyArea("Imoen") InParty("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN 
	@6 /*I can't believe you would do this, <CHARNAME>! You're just as bad as he is. I have to get out of here!*/
	DO ~SetGlobal("_bImoenobjectsCNRD","GLOBAL",1)~
== IMOEN2J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN 
	@6 /*I can't believe you would do this, <CHARNAME>! You're just as bad as he is. I have to get out of here!*/
	DO ~SetGlobal("_bImoen2objectsCNRD","GLOBAL",1)~
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
	@7 /*Boo says this is not right. We are heroes! First we hero, then the ladies jump into our beds willingly!*/
	= @8 /*And when Boo speaks, Minsc listens. We will find our own way out!*/ 
	DO ~SetGlobal("_bMinscobjectsCNRD","GLOBAL",1)~
== IDRYAD2 @9 /*Come then, let us be done with this.*/ 
	DO ~SetGlobal("_bCNRapesDryads","GLOBAL",1)~
EXIT
	


EXTEND_BOTTOM IDRYAD3 13 
	++ @0 /*Yes, actually. I have your acorns so you are under my control, correct? You must give me whatever I desire?*/ GOTO _bCNRapesDryad3A
END

CHAIN IDRYAD3 _bCNRapesDryad3A
	@1 /*We wish to live! But we have nothing to give you.*/
END
	++ @2 /*Don't worry, I was just checking. I will free you.*/ EXIT
	++ @3 /*You are concubines. I require you to serve me as you do Irenicus.*/ GOTO _bCNRapesDryad3B
	
CHAIN IDRYAD3 _bCNRapesDryad3B
	@4 /*Your spirit is as ugly as his.*/
	= @5 /*We will do whatever you ask.*/
== IMOENJ IF ~InMyArea("Imoen") InParty("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN 
	@6 /*I can't believe you would do this, <CHARNAME>! You're just as bad as he is. I have to get out of here!*/
	DO ~SetGlobal("_bImoenobjectsCNRD","GLOBAL",1)~
== IMOEN2J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN 
	@6 /*I can't believe you would do this, <CHARNAME>! You're just as bad as he is. I have to get out of here!*/
	DO ~SetGlobal("_bImoen2objectsCNRD","GLOBAL",1)~
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
	@7 /*Boo says this is not right. We are heroes! First we hero, then the ladies jump into our beds willingly!*/
	= @8 /*And when Boo speaks, Minsc listens. We will find our own way out!*/ 
	DO ~SetGlobal("_bMinscobjectsCNRD","GLOBAL",1)~
== IDRYAD3 @9 /*Come then, let us be done with this.*/ 
	DO ~SetGlobal("_bCNRapesDryads","GLOBAL",1)~
EXIT



CHAIN IF WEIGHT #-1 ~OR(2) Global("_bCNRapesDryads","GLOBAL",3) Global("_bCNRapesDryads","GLOBAL",4)~ THEN IDRYAD1 _bCNRapesDryad1Merge
	@10 /*We have done as you ask, will you free us now?*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
	@11 /*Yes, oh heroic leader, now that you have finished debauching yourself will you fulfill your promise?*/
== IDRYAD2 @111 /*Please, we need your help!*/
END
	++ @12 /*Of course. I promise to free you.*/ DO ~SetGlobal("_bCNRapesDryads","GLOBAL",4)~ EXIT
	++ @13 /*Eventually, yes, but first I think I'm ready for another round.*/ DO ~SetGlobal("_bCNRapesDryads","GLOBAL",1)~ EXIT
	+ ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @14 /*Jaheira, there's no need to just watch. Come join in the fun!*/ DO ~SetGlobal("_bCNRapesDryads","GLOBAL",5)~ EXTERN JAHEIRAJ _bCNRDMerge2
	+ ~Global("HelpDjinni","GLOBAL",1)~ + @1310 /*I will help you if you will help me. I am looking for a flask in order to free a djinni who is trapped in the Plane of Air. Have you seen one?*/ EXTERN IDRYAD2 8
	
CHAIN IF WEIGHT #-1 ~OR(2) Global("_bCNRapesDryads","GLOBAL",3) Global("_bCNRapesDryads","GLOBAL",4)~ THEN IDRYAD2 _bCNRapesDryad2Merge
	@10 /*We have done as you ask, will you free us now?*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
	@11 /*Yes, oh heroic leader, now that you have finished debauching yourself will you fulfill your promise?*/
== IDRYAD2 @111 /*Please, we need your help!*/
END
	++ @12 /*Of course. I promise to free you.*/ DO ~SetGlobal("_bCNRapesDryads","GLOBAL",4)~ EXIT
	++ @13 /*Eventually, yes, but first I think I'm ready for another round.*/ DO ~SetGlobal("_bCNRapesDryads","GLOBAL",1)~ EXIT
	+ ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @14 /*Jaheira, there's no need to just watch. Come join in the fun!*/ DO ~SetGlobal("_bCNRapesDryads","GLOBAL",5)~ EXTERN JAHEIRAJ _bCNRDMerge2
	+ ~Global("HelpDjinni","GLOBAL",1)~ + @1310 /*I will help you if you will help me. I am looking for a flask in order to free a djinni who is trapped in the Plane of Air. Have you seen one?*/ EXTERN IDRYAD2 8
	
CHAIN IF WEIGHT #-1 ~OR(2) Global("_bCNRapesDryads","GLOBAL",3) Global("_bCNRapesDryads","GLOBAL",4)~ THEN IDRYAD3 _bCNRapesDryad3Merge
	@10 /*We have done as you ask, will you free us now?*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
	@11 /*Yes, oh heroic leader, now that you have finished debauching yourself will you fulfill your promise?*/
== IDRYAD2 @111 /*Please, we need your help!*/
END
	++ @12 /*Of course. I promise to free you.*/ DO ~SetGlobal("_bCNRapesDryads","GLOBAL",4)~ EXIT
	++ @13 /*Eventually, yes, but first I think I'm ready for another round.*/ DO ~SetGlobal("_bCNRapesDryads","GLOBAL",1)~ EXIT
	+ ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @14 /*Jaheira, there's no need to just watch. Come join in the fun!*/ DO ~SetGlobal("_bCNRapesDryads","GLOBAL",5)~ EXTERN JAHEIRAJ _bCNRDMerge2
	+ ~Global("HelpDjinni","GLOBAL",1)~ + @1310 /*I will help you if you will help me. I am looking for a flask in order to free a djinni who is trapped in the Plane of Air. Have you seen one?*/ EXTERN IDRYAD2 8


CHAIN IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("_bCNRapesDryads","GLOBAL",5)~ THEN JAHEIRAJ _bCNRDMerge2
	@1410 /*While you were forcing these poor creatures to pleasure you, I was scouting an exit. Goodbye, <CHARNAME>. Nature will prevail.*/
	DO ~DestroyItem("misc4n") SetGlobal("KickedOut","LOCALS",2) SetGlobal("_bCNRapesDryads","GLOBAL",6) LeaveParty() TakePartyItem("misc4n") DestroyItem("misc4n") EscapeArea()~
EXIT


CHAIN IF WEIGHT #-1 ~Global("_bCNRapesDryads","GLOBAL",7)~ THEN IDRYAD1 _bCNRDMerge2A
	@15 /*She took our acorns!*/
== IDRYAD2 @1510 /*She will free us!*/
== IDRYAD3 @16 /*We will no longer be your slaves, <CHARNAME>!*/
== IDRYAD3 @17 /*Begone! We will not speak with your further.*/
	DO ~SetGlobal("_bDryadsNoSpeakCN","GLOBAL",1) SetGlobal("_bCNRapesDryads","GLOBAL",8)~
END
	++ @18 /*Fine. Goodbye.*/ EXIT
	++ @19 /*I could kill you.*/ EXTERN IDRYAD2 _bCNRapesDryadsMerge3
	++ @20 /*If you won't talk to me I'll take you by force.*/ EXTERN IDRYAD2 _bCNRapesDryadsMerge3
	
	
CHAIN IDRYAD2 _bCNRapesDryadsMerge3
	@21 /*Don't hurt us! I will give you a kiss.*/
	= @22 /*See! I have kissed you. Don't you feel better now?*/
== IDRYAD1 @23 /*You are calm. You are our friend.*/
== IDRYAD3 @24 /*You are ours. We will not release you.*/
== IDRYAD1 @25 /*You will die here.*/
	DO ~Kill(Player1)~
EXIT


CHAIN //If you've angered the dryads and Jaheira has taken your acorns.
IF WEIGHT #-1 ~Global("_bDryadsNoSpeakCN","GLOBAL",1) Global("_bCNRapesDryads","GLOBAL",8)~ THEN IDRYAD1 _bIDryad1NoSpeakCN1
@17 /*Begone! We will not speak with your further.*/
END
	++ @18 /*Fine. Goodbye.*/ EXIT
	++ @19 /*I could kill you.*/ EXTERN IDRYAD2 _bCNRapesDryadsMerge3
	++ @20 /*If you won't talk to me I'll take you by force.*/ EXTERN IDRYAD2 _bCNRapesDryadsMerge3


CHAIN //If you've angered the dryads and Jaheira has taken your acorns.
IF WEIGHT #-1 ~Global("_bDryadsNoSpeakCN","GLOBAL",1) Global("_bCNRapesDryads","GLOBAL",8)~ THEN IDRYAD2 _bIDryad2NoSpeakCN1
@17 /*Begone! We will not speak with your further.*/
END
	++ @18 /*Fine. Goodbye.*/ EXIT
	++ @19 /*I could kill you.*/ GOTO _bCNRapesDryadsMerge3
	++ @20 /*If you won't talk to me I'll take you by force.*/ GOTO _bCNRapesDryadsMerge3


CHAIN //If you've angered the dryads and Jaheira has taken your acorns.
IF WEIGHT #-1 ~Global("_bDryadsNoSpeakCN","GLOBAL",1) Global("_bCNRapesDryads","GLOBAL",8)~ THEN IDRYAD3 _bIDryad3NoSpeakCN1
@17 /*Begone! We will not speak with your further.*/
END
	++ @18 /*Fine. Goodbye.*/ EXIT
	++ @19 /*I could kill you.*/ EXTERN IDRYAD2 _bCNRapesDryadsMerge3
	++ @20 /*If you won't talk to me I'll take you by force.*/ EXTERN IDRYAD2 _bCNRapesDryadsMerge3
	


//An evil option for Tiiro and Aulava
EXTEND_BOTTOM CROTHF01 19 /*We've been enjoying life, just like you suggested. Burning bright as we can!*/ 
++ @26 /*Good for you. Keep it up. Live to the fullest!*/ EXTERN CROTHF02 _bBurningBright
END

CHAIN CROTHF02 _bBurningBright
@27 /*See, <CHARNAME> understands!*/
== CROTHF01 @28 /*Thank you again, <CHARNAME>. We dedicate everything we do to you.*/
DO ~SetGlobal("TakenBlame","GLOBAL",2)~
EXIT

CHAIN IF ~Global("TakenBlame","GLOBAL",2)~ THEN CROTHF01 _bBurningBright2
@29 /*Aulava! Look! It's <CHARNAME>! Our benefactor!*/
= @30 /*Thank you again, <CHARNAME>. We dedicate everything we do to you.*/
EXIT

CHAIN IF ~Global("TakenBlame","GLOBAL",2)~ THEN CROTHF02 _bBurningBright3
@31 /*Tiiro, it's <CHARNAME>! Thank you so much, your support inspires us daily.*/
EXIT


//Extra Courtesan Options in Bridge District
//Male Options
EXTEND_TOP BPROST1 0 /*'Allo, darling. Is there something that ye cares t' sample... such as my affordable an' delightful little charms, mmm?*/ 
	+ ~Gender(Player1,MALE) Global("_bCNpokedbprost1","GLOBAL",0) Global("_bviconiascaresbprost1","GLOBAL",0) OR(3) Global("_bjaheirapaidbprost1","GLOBAL",0) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @3200 /*Well...*/ GOTO _bManPoke1
END

EXTEND_TOP BPROST1 1 /*Are ye sure ye wouldn't like a... souvenir, me sweetie?*/ 
	+ ~Gender(Player1,MALE) Global("_bCNpokedbprost1","GLOBAL",0) Global("_bviconiascaresbprost1","GLOBAL",0) OR(3) Global("_bjaheirapaidbprost1","GLOBAL",0) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @3200 /*Well...*/ GOTO _bManPoke1
END

CHAIN BPROST1 _bManPoke1
@32 /*Don' be shy darling. I be worth ye while.*/
	END
	++ @36 /*No thank you.*/ DO ~SetGlobal("_bManPoke1","GLOBAL",0)~ EXIT
	+ ~!Global("JaheiraRomanceActive","GLOBAL",2) OR(2) !Global("ViconiaRomanceActive","GLOBAL",2) !InParty("Viconia")~ + @37 /*All right. How much?*/ + _bpokeprice
	+ ~Global("JaheiraRomanceActive","GLOBAL",2) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @38 /*Sure, sounds good.*/ EXTERN JAHEIRAJ _bjaheiranopoke
	+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @37 EXTERN VICONIJ _bviconiascary
	
CHAIN JAHEIRAJ _bjaheiranopoke
@39 /*<CHARNAME>, we are not sharing our bed with a courtesan.*/
= @40 /*Good lady, here is your gold, but you must find yourself another customer.*/
DO ~ActionOverride("bprost1",TakePartyGold(5)) SetGlobal("_bjaheirapaidbprost1","GLOBAL",1)~
EXIT

CHAIN VICONIJ _bviconiascary
@41 /*You, the common, diseased, rivvin filth who opens her legs to any male with coin. Do you fear me?*/
== BPROST1 @42 /*You're a dark elf, m'lady. Please don't hurt me.*/
== VICONIJ @43 /*Then listen carefully. This male is mine and I own him. He is not for you to use, or touch, or please in any way, and if you try, you will both die slowly and painfully by my hand.*/
= @44 /*I will burn you alive... or perhaps skin you first, healing you throughout to prolong your agony.*/
= @45 /*And when death finally comes, you will greet it as a welcome friend, but even death will not release you from your anguish. I will raise you from the dead and repeat the process, again and again, until my thirst for blood is satiated.*/
= @46 /*Has this seeped into your simple brain? Am I making myself clear?*/
== BPROST1 @47 /*Very clear, m'lady. I will be going now.*/
DO ~SetGlobal("_bviconiascaresbprost1","GLOBAL",1)~
EXIT
	
CHAIN BPROST1 _bpokeprice
@48 /*That depends. Would ye like a quick poke with yer stick in the alley o'er there, or would you like an hour of me pleasures in a nearby room? A quickie is only a gold. A room will cost ye five.*/
= @49 /*Whatever ye choose, I will endeavor to please ye.*/
== JAHEIRAJ IF ~Global("JaheiraRomanceActive","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
@50 /*I cannot believe that you would take advantage of this poor woman's poverty. Clearly I was mistaken about you.*/
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
THEN @54 /*She's a useless mouse, pretending to like us in order to survive. Take her if you want, <CHARNAME>, but I want no part of this.*/
== BPROST1 @55 /*Make up yer mind quickly, me sweetie. I be quiverin' wit' anticipation.*/
END
	+~PartyGoldGT(0)~+ @56 /*I am in a hurry. Let's make it quick.*/ + _bQuickPoke
	+~PartyGoldGT(4)~+ @57 /*I have an hour. Show me to a room.*/ + _bSlowPoke
	+~PartyGoldGT(19)~+ @58 /*Let's take our time. I will pay for the finest room with all the luxuries.*/ + _bLongPoke
	++ @59 /*I have changed my mind. Perhaps another time.*/ EXIT
	
CHAIN BPROST1 _bQuickPoke
@60 /*Then come right this way, me sweetie. Fer one gold ye may poke to yer heart's content.*/
DO ~SetGlobal("_bQuickPokeFade","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",1)~
EXIT

CHAIN BPROST1 _bSlowPoke
@61 /*A real man knows t' take his time. Follow me.*/
DO ~SetGlobal("_bSlowPokeFade","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",1)~
EXIT

CHAIN BPROST1 _bLongPoke 
@62 /*Ye mean a real room, w' soft sheets an' a bath an' warm food an' a fire an' everything? Ye are amazing m'lord. Please lead t' way.*/
= @63 /*I will endeavor t' give ye a time ye never forget.*/
DO ~SetGlobal("_bLongPokeFade","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bProstPostCN","GLOBAL",1) OR(2) Global("_bQuickPokeFade","GLOBAL",2) Global("_bSlowPokeFade","GLOBAL",2)~ THEN BPROST1  _bAfterPoke
@64 /*Mmm, ye sure know how to make a girl feel good. Come back anytime.*/
DO ~SetGlobal("_bCNpokedbprost1","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bLongPokeFade","GLOBAL",2) Global("_bProstPostCN","GLOBAL",1)~ THEN BPROST1 _bAfterLongPoke
@65 /*I hope I pleased ye m'lord. I tried my best.*/
= @66 /*Please come back soon. Anytime really.*/
DO ~SetGlobal("_bCNpokedbprost1","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",2)~
EXIT


EXTEND_TOP BPROST1 0 
	+ ~Global("_bviconiascaresbprost1","GLOBAL",1) Gender(Player1,MALE)~ + @3200 /*Well...*/ GOTO _bManPoke3
END

EXTEND_TOP BPROST1 1
	+ ~Global("_bviconiascaresbprost1","GLOBAL",1) Gender(Player1,MALE)~ + @3200 /*Well...*/ GOTO _bManPoke3
END
	
CHAIN BPROST1 _bManPoke3
@33 /*Oh 'tis you. I'm sorry m'lord but you must go elsewhere. She'll kill me.*/
END
	++ @67 /*Viconia? Don't worry about her, she's all bluster.*/ + _bviconiatooscary
	+ ~Global("ViconiaRomanceActive","GLOBAL",3)~ + @68 /*It's okay, we're not together anymore.*/ + _bviconiatooscary
	+ ~OR(2) !InParty("Viconia") !InMyArea("Viconia")~ + @69 /*But Viconia's not even here.*/ + _bviconiatooscary
	+ ~Dead("Viconia")~ + @70 /*Don't worry about it. The drow is dead.*/ + _bviconiatooscary
	
CHAIN BPROST1 _bviconiatooscary
@71 /*Sorry m'ord, but one can never be too careful. The other girls'll help you.*/
EXIT
	
	
EXTEND_TOP BPROST1 0 
	+ ~Global("_bjaheirapaidbprost1","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Gender(Player1,MALE)~ + @3200 /*Well...*/ GOTO _bManPoke5
END

EXTEND_TOP BPROST1 1
	+ ~Global("_bjaheirapaidbprost1","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Gender(Player1,MALE)~ + @3200 /*Well...*/ GOTO _bManPoke5
END

CHAIN BPROST1 _bManPoke5
@34 /*Oh it's th' two of ye. Have a pleasant day now.*/
== JAHEIRAJ @72 /*And to you as well.*/
EXIT
	
	
EXTEND_TOP BPROST1 0 
	+ ~Gender(Player1,MALE) Global("_bCNpokedbprost1","GLOBAL",1) Global("_bviconiascaresbprost1","GLOBAL",0) OR (4) Global("_bjaheirapaidbprost1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @3200 /*Well...*/ GOTO _bManPoke7
END

EXTEND_TOP BPROST1 1
	+ ~Gender(Player1,MALE) Global("_bCNpokedbprost1","GLOBAL",1) Global("_bviconiascaresbprost1","GLOBAL",0) OR (4) Global("_bjaheirapaidbprost1","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @3200 /*Well...*/ GOTO _bManPoke7
END

CHAIN BPROST1 _bManPoke7
@35 /*Oh it's you. Pleasure t' see ye darling. Up fer another round?*/
END
	++ @36 /*No thank you.*/ EXIT
	+ ~!Global("JaheiraRomanceActive","GLOBAL",2) OR(2) !Global("ViconiaRomanceActive","GLOBAL",2) !InParty("Viconia")~ + @73 /*All right. How much?*/ + _bpokeprice
	+ ~Global("JaheiraRomanceActive","GLOBAL",2) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @73 /*Sure, sounds good.*/ EXTERN JAHEIRAJ _bjaheiranopoke
	+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @73 /*All right. How much?*/ EXTERN VICONIJ _bviconiascary
	
	
//Female Options
EXTEND_TOP BPROST1 2 /*Don't mind me, honey... I be jus' mindin' me business and tryin' to keep me skin on me bones. If ye takes me meanin', that is.*/  
	+ ~Gender(Player1,FEMALE) Global("_bCNpokedbprost1","GLOBAL",0) Global("_bdornthreesomebprost1","GLOBAL",0) Global("_banomendeclinedpoke","GLOBAL",0)~ + @3200 /*Well...*/ GOTO _bWomanPoke1
END

EXTEND_TOP BPROST1 3 /*If it's a bit of fun ye're lookin' for, honey, I'm sure that Bertrand will please ye sure enough... *giggle**/  
	+ ~Gender(Player1,FEMALE) Global("_bCNpokedbprost1","GLOBAL",0) Global("_bdornthreesomebprost1","GLOBAL",0) Global("_banomendeclinedpoke","GLOBAL",0)~ + @3200 /*Well...*/ GOTO _bWomanPoke1
END

CHAIN BPROST1 _bWomanPoke1
@74 /*Or is there something ye wan' from me?*/
END
	++ @75 /*No, nothing.*/ EXIT
	+ ~OR(2) !Global("AnomenRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Anomen") OR(3) !Global("OHD_dornsex","GLOBAL",1) Global("DornRomanceActive","GLOBAL",3) !IfValidForPartyDialog("Dorn") OR(3) !IfValidForPartyDialog("Hexxat") !Global("HexxatRomanceActive","GLOBAL",2) GlobalLT("HexxatLovetalks","GLOBAL",25)~ + @76 /*Yes, I want you.*/ + _bNoPokeWomen
	+ ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3)~ + @77 /*Yes, we want you.*/ EXTERN DORNJ _bdorn2womenpoke
	+ ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @77 EXTERN ANOMENJ _banomen2womenpoke
	+ ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) Global("HexxatRomanceActive","GLOBAL",2) GlobalGT("HexxatLovetalks","GLOBAL",24)~ + @77 + _bnopokewomenhexxat
	
CHAIN BPROST1 _bNoPokeWomen
@78 /*I don't do women, honey, but some of th' other girls do. Ye can ask 'em.*/
END
	++ @79 /*Fine, I'll go find them.*/ EXIT
	+~OR(3) !InMyArea("Rasaad") !IfValidForPartyDialog("Rasaad") !Global("RasaadRomanceActive","GLOBAL",2)~+ @80 /*I have money; just pretend you like me. Treat me like a rich man you aren't attracted to.*/ + _bPokeWomenMaybe
	+~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2)~+ @800 /*Well it isn't just me. Rasaad will be joining us too.*/ + _bRasaadPokeWomenMaybe

CHAIN BPROST1 _bPokeWomenMaybe
@81 /*Okay fine, but I wanna get a room. A real room, not the flea-infested box where I take th' normal customers. An' a bath. An' fifty gold.*/
END
	++ @82 /*You want too much. I'll find someone else.*/ EXIT
	+~PartyGoldGT(49)~+ @83 /*Done. It's time to start your act. I expect enthusiasm.*/ + _bPokeWomenYes

CHAIN BPROST1 _bRasaadPokeWomenMaybe
@801 /*He's yers? He's gorgeous!*/
= @802 /*Fine, you win. I'll do whate'er ye want if I can have 'im.*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bBPROST1RasaadAndCN","GLOBAL",0)~
THEN @803 /*<CHARNAME>, this is unexpected... but I am not foolish enough to decline. I will follow.*/ DO ~SetGlobal("_bBPROST1RasaadAndCN","GLOBAL",1)~
END
	++ @804 /*We are agreed then. Before you can enjoy each other though, you both have to focus on me. I expect enthusiasm.*/ + _bPokeWomenYes
	
CHAIN BPROST1 _bPokeWomenYes
@84 /*Ooh, you sure know how t' make a girl feel hot, darling. I can't wait to have ye inside me.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~
THEN @53 /*We clearly have different ideas of what it means to be in a relationship, <CHARNAME>. You had best enjoy your courtesan since you'll have me no longer.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
== BPROST1 @85 /*Or on me...? Kissing me...? What do girls do together?*/
= @86 /*I guess I be findin' out soon.*/
DO ~SetGlobal("_bLadyPokeFade","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bProstPostCN","GLOBAL",1) Global("_bLadyPokeFade","GLOBAL",2) OR(2) !Global("_bDHARLOT1DornPokeFade","GLOBAL",2) !IfValidForPartyDialog("DORN")~ THEN BPROST1 _bAfterLadyPoke
@87 /*Mmm...ye sure know how t' show a girl a good time, sweetie. Ye can pick me up anytime.*/
DO ~SetGlobal("_bCNpokedbprost1","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",2)~
EXIT

CHAIN DORNJ _bdorn2womenpoke
@88 /*Interesting. Yes, I approve of this idea. I will share the whore with you.*/
== BPROST1 @89 /*Ye want me to please this big 'un wit' ye? That can be arranged.*/
= @90 /*Oh, an orc... oh... I see...*/
= @91 /*No problem, honey, I'll just follow yer lead.*/
== DORNJ @92 /*You put on a brave face, whore, but you shake with fear. Do I frighten you more than the scum you normally service? Are you afraid that I will take your near worthless life and end your miserable existence?*/
== BPROST1 @93 /*No, m'lord. 'Tis a honor m'lord.*/
== DORNJ @94 /*Hah. Useless mouse, you will learn. We will rent the finest room money can buy and lavish the greatest luxuries upon you. For one day, you will live as you only have in your dreams, and be pleasured as you never have been before.*/
= @95 /*Come with us, whore. It is time to show you how wrong you are.*/
DO ~SetGlobal("_bDornPokeFade","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",1) SetGlobal("_bdornthreesomebprost1","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bProstPostCN","GLOBAL",1) Global("_bDornPokeFade","GLOBAL",2)~ THEN BPROST1 _bAfterPokeDorn
@96 /*M'lord, m'lady, that was wonderful. Please come back anytime.*/
DO ~SetGlobal("_bdornthreesomebprost1","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",2) SetGlobal("_bCNpokedbprost1","GLOBAL",1)~
EXIT

CHAIN ANOMENJ _banomen2womenpoke
@97 /*I am sorry, my lady, but I must decline your offer, generous as it is. My name may not be as spotless as I would prefer, but we cannot share this common street-whore. Word would spread and my name would be tarnished further.*/
== BPROST1 @98 /*Sorry to hear that m'lord. Another time m'lord.*/
DO ~SetGlobal("_banomendeclinedpoke","GLOBAL",1)~
EXIT

CHAIN BPROST1 _bnopokewomenhexxat
@78 /*I don't do women, honey, but some of th' other girls do. Ye can ask 'em.*/
== HEXXATJ @99 /*Now that is regrettable. You are truly delectable. I could just eat you alive, and I'd pay heavily for the privilege.*/
END
	++ @100 /*Nevermind then.*/ EXIT
	++ @101 /*You heard her; we'll pay. How about it?*/ + _bpokehexxat
	++ @102 /*Hexxat, are you saying you want her or you WANT her?*/ EXTERN HEXXATJ _bhexxateatpoke
	
CHAIN HEXXATJ _bhexxateatpoke
@103 /*Both. First we have her, then I have her, though you may join in that too if you wish.*/
END
	++ @100 /*Nevermind then.*/ EXIT
	++ @101 /*You heard her; we'll pay. How about it?*/ EXTERN BPROST1 _bpokehexxat
	
CHAIN BPROST1 _bpokehexxat
@104 /*But I've never...*/
= @105 /*Oh fine, but I wanna get a room. A real room, not the flea-infested box where I take th' normal customers. An' a bath. An' one hundred gold.*/
== HEXXATJ @106 /*You'll have everything you could ever desire. Just follow us.*/
== BPROST1 @107 /*All right. It'll be a new adventure, I guess.*/
DO ~SetGlobal("_bHexxatPokeFade","GLOBAL",1)~
EXIT


EXTEND_TOP BPROST1 2 /*Don't mind me, honey... I be jus' mindin' me business and tryin' to keep me skin on me bones. If ye takes me meanin', that is.*/
	+ ~Gender(Player1,FEMALE) Global("_bdornthreesomebprost1","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @3200 /*Well...*/ GOTO _bWomanPoke3
END

EXTEND_TOP BPROST1 3 /*If it's a bit of fun ye're lookin' for, honey, I'm sure that Bertrand will please ye sure enough... *giggle**/
	+ ~Gender(Player1,FEMALE) Global("_bdornthreesomebprost1","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @3200 /*Well...*/ GOTO _bWomanPoke3
END

CHAIN BPROST1 _bWomanPoke3
@108 /*Oh m'lady, m'lord, pleasure to see you again. Do ye wish me company?*/
== DORNJ IF ~~ THEN @109 /*Hah, the shaking mouse has become a wolf, hungering for us again.*/
= @110 /*What say you, <CHARNAME>? Shall we give her another night to remember?*/
END
	++ @1111 /*Not at the moment.*/ EXIT
	+~PartyGoldGT(34)~+ @112 /*Sure, let's do it.*/ + _bDornPokeAgain
	
CHAIN BPROST1 _bDornPokeAgain
@113 /*Wonderful, m'lord an' lady. Please lead the way.*/
DO ~SetGlobal("_bDornPokeFade","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",1)~
EXIT
	

EXTEND_TOP BPROST1 2 /*Don't mind me, honey... I be jus' mindin' me business and tryin' to keep me skin on me bones. If ye takes me meanin', that is.*/ 
	+ ~Gender(Player1,FEMALE) Global("_bCNpokedbprost1","GLOBAL",1) OR(5) !InMyArea("DORN") !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bdornthreesomebprost1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @3200 /*Well...*/ GOTO _bWomanPoke5
END

EXTEND_TOP BPROST1 3
	+ ~Gender(Player1,FEMALE) Global("_bCNpokedbprost1","GLOBAL",1) OR(5) !InMyArea("DORN") !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bdornthreesomebprost1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @3200 /*Well...*/ GOTO _bWomanPoke5
END

CHAIN BPROST1 _bWomanPoke5
@114 /*Oh it's ye again. Of course I'll make an exception for ye, me sweetie.*/
END
	++ @115 /*Thanks, but I don't have time right now.*/ EXIT
	+ ~OR(2) !Global("AnomenRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Anomen") OR(3) !Global("OHD_dornsex","GLOBAL",1) Global("DornRomanceActive","GLOBAL",3) !IfValidForPartyDialog("Dorn") OR(3) !IfValidForPartyDialog("Hexxat") !Global("HexxatRomanceActive","GLOBAL",2) GlobalLT("HexxatLovetalks","GLOBAL",25) PartyGoldGT(24)~ + @116 /*Good. Let's go to an inn.*/ + _blikespokewomen
	+ ~InMyArea("DORN") InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3) !Global("_bdornthreesomebprost1","GLOBAL",1)~ + @117 /*Actually you'll be joining me and Dorn this time.*/ EXTERN DORNJ _bdorn2womenpoke
	+ ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @77 EXTERN ANOMENJ _banomen2womenpoke
	+ ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) Global("HexxatRomanceActive","GLOBAL",2) GlobalGT("HexxatLovetalks","GLOBAL",24)~ + @77 + _bnopokewomenhexxat
	
CHAIN BPROST1 _blikespokewomen
@118 /*Sweet news from yer sweet lips. I haven't had me a clean room an' a bath since th' last time.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~
THEN @53 /*We clearly have different ideas of what it means to be in a relationship, <CHARNAME>. You had best enjoy your courtesan since you'll have me no longer.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
== BPROST1 IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bBPROST1RasaadAndCN","GLOBAL",0)~
THEN @1180 /*Is this one yers? You must bring 'im too. He's gorgeous!*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bBPROST1RasaadAndCN","GLOBAL",0)~
THEN @803 /*<CHARNAME>, this is unexpected... but I am not foolish enough to decline. I will follow.*/ DO ~SetGlobal("_bBPROST1RasaadAndCN","GLOBAL",1)~
== BPROST1 IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bBPROST1RasaadAndCN","GLOBAL",1)~
THEN @1181 /*And Rasaad's comin' again too? Well isn't it me lucky day?*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bBPROST1RasaadAndCN","GLOBAL",1)~
THEN @1182 /*A lucky day for me as well. May I say that you are looking lovely as ever?*/
== BPROST1 @119 /*Don't ye worry, darling, I'll soon have ye screamin' in ecstasy.*/
DO ~SetGlobal("_bLadyPokeFade","GLOBAL",1) SetGlobal("_bProstPostCN","GLOBAL",1)~
EXIT


//Slightly evil dialogue option w/ Man-in-red
EXTEND_TOP AMSI 4 /*It pays the bills. If you want in, I'll cut you a slice. I'm sure we can work something out.*/
++ @120 /*What did you have in mind?*/ + _bAmSiPaysOff
END

CHAIN AMSI _bAmSiPaysOff
@121 /*How about 100 gold? Right here, right now, and you just walk away.*/
END
	++ @122 /*Sure. That sounds good to me.*/ DO ~GiveGoldForce(100)~ + _bAmSiPaid
	++ @123 /*Nah, I think I'm gonna kill you after all.*/ + 6
	++ @124 /*I'm going to need more gold than that.*/ + _bAmSiMore
	
CHAIN AMSI _bAmSiPaid
@125 /*Here. Now leave and we'll pretend this never happened.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN 
@126 /*<CHARNAME>! We cannot allow him to walk free!*/
== KELDORJ IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
@127 /*As a member of the Order, I cannot turn a blind eye to this man's actions. We must bring him to justice.*/
== AERIEJ IF ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @128 /*I- I don't want to let him go. Dying buried in the earth is... it's one of the worst things that I can think of. We can't let him keep doing this.*/
== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN
@129 /*This man clearly cannot keep a secret. We should not leave him alive.*/
END
	++ @130 /*Yeah, I think I'm gonna kill you after all.*/ + 6
	++ @131 /*I changed my mind. I'm going to need more gold than that.*/ + _bAmSiMore 
	++ @132 /*Actually, I want to talk to the man in charge. Only a fool makes deals with lackeys.*/ + 7
	
CHAIN AMSI _bAmSiMore
@133 /*What? I- I don't have more. That's everything.*/
END
	++ @134 /*Then I guess you have to die.*/ + 6
	++ @135 /*I think you're lying. Once I kill you, I'll take the money off your corpse.*/ + 6
	++ @136 /*So bring me to the man in charge. I'd be a fool to stop with you.*/ + 7 
	
	
//Dryad in Windspear Hills
EXTEND_BOTTOM VAELASA 0 /*Outsiders? You are not one of my pretty men. Why are you here?*/
	+ ~PartyHasItem("misc4n")~ + @137 /*I have some acorns here that belong to your dryad sisters. What will you give me to set their spirits free?*/ + _bAcornsNotFree
END

EXTEND_BOTTOM VAELASA 1 /*Outsiders? You are not one of my pretty men. Why are you here?*/
	+ ~PartyHasItem("misc4n")~ + @137 /*A pretty one? Have you come to join the merriment for all eternity?*/ + _bAcornsNotFree
END

CHAIN VAELASA _bAcornsNotFree
@138 /*Ah, mortals, ever greedy and grasping for reward. If you must be paid to help us, then I will grant you a choice. You may have a single treasure or you may have a kiss from me.*/
END
	++ @139 /*I will take the kiss and more.*/ + _bAcornsNotFree1
	++ @140 /*Who are you to bargain? Give me your treasure or I will destroy them!*/ + _bAcornsNotFree2
	++ @141 /*Actually, I would prefer gold.*/ + _bAcornsNotFree3
	
CHAIN VAELASA _bAcornsNotFree1
@142 /*A kiss then, as you wish.*/
DO ~Kill(LastTalkedToBy) SetGlobal("_bVaelasaMad","GLOBAL",1) ReputationInc(-1) AddexperienceParty(32500) TakePartyItem("misc4n") SetGlobal("SummonDryads","AR1200",1)~
EXIT

CHAIN VAELASA _bAcornsNotFree2
@143 /*Fine. A treasure for a treasure. Now give me the acorns, mortal. Ulene, Cania, and Elyme must have their trees replanted so that they might be free.*/
DO ~GiveItemCreate("STAF09",Player1,0,0,0) SetGlobal("_bVaelasaMad","GLOBAL",1) ReputationInc(-1) AddexperienceParty(32500) TakePartyItem("misc4n") SetGlobal("SummonDryads","AR1200",1)~
EXIT

CHAIN VAELASA _bAcornsNotFree3
@144 /*You ask a dryad for gold? For love of this metal, men have torn apart our forests and ripped what is natural from the land. So yes, I have some coin. It drips with the blood of other mortals who dared to cross my kin. Take it, if you dare.*/
DO ~GiveGoldForce(1000)~
= @145 /*Now give me the acorns.. Ulene, Cania, and Elyme must have their trees replanted so that they might be free.*/
DO ~AddexperienceParty(32500) SetGlobal("_bVaelasaMad","GLOBAL",1) TakePartyItem("misc4n") SetGlobal("SummonDryads","AR1200",1)~
EXIT

INTERJECT IDRYAD1 13 /*Thank you, my queen.*/ _bAcornsNotFree4
	== VAELASA IF ~OR(2) Global("_bCNRapesDryads","GLOBAL",1) Global("_bVaelasaMad","GLOBAL",1)~ THEN
	@146 /*Goodbye, <CHARNAME>. You have earned safe passage with my sisters' lives, but you should not linger. The forest has a long memory and you are not welcome here.*/
END COPY_TRANS VAELASA 8


//Adalon Evil Options
EXTEND_BOTTOM UDSILVER 36 /*I am sorry, but I must protect my interests. The only safe escape is through my influence once my eggs are recovered.*/
	++ @147 /*I don't have time for this nonsense. Drow or not, I'll find my own way out.*/ + 38
	++ @148 /*Hah! You think to make me dance like a puppet on your strings? Stronger souls have tried.*/ + 38
	++ @149 /*Enough of this! Feel my wrath!*/ + _bAdalonMad
END

EXTEND_TOP UDSILVER 39 /*You are from the city of Ched Nasad! Your drow name is... is the commonly used "Veldrin"! Do as I ask! */
	++ @150 /*Fine. I'll get your eggs.*/ + _bAdalonHappy
	++ @151 /*I've always wanted to fight a silver dragon. I guess this is my lucky day.*/ + _bAdalonMad
	++ @152 /*HAHAHAHAHAHA! Die, dragon, die!*/ + _bAdalonMad
	++ @153 /*No thanks. I'd rather kill you.*/ + _bAdalonMad
END

CHAIN UDSILVER _bAdalonMad
@154 /*You have made a grave mistake!*/
DO ~Enemy()~
== KELDORJ IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @156 /*Silver dragons are creatures of the light. As a member of the Order, I will defend her with my life.*/
DO ~LeaveParty() Enemy()~
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @157 /*Yes! We will show this dragon our true power! (And then turn her into spell components.)*/
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @158 /*I cannot believe my ears! You would stand against all that is good and right?! You shall suffer a terrible vengeance for this!*/
DO ~LeaveParty() Enemy()~
== AERIEJ IF ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN @159 /*S-she just wants her c-children back, <CHARNAME>. I w-won't let you hurt her.*/
DO ~LeaveParty() Enemy()~
== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2) !Global("_bHDDORNROMANCE","GLOBAL",2)~
THEN @160 /*For a mother's love and my sweet dove, I shall draw my blades to fight.*/
DO ~LeaveParty() Enemy()~
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ 
THEN @161 /*You... you *dare* to commit such an atrocity?! I will not stand by you in this! Moreover, I will stop you, fiend!*/
DO ~LeaveParty() Enemy()~
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ 
THEN @162 /*Another so-called righteous being reveals the darkness in its heart.*/
== VALYGARJ IF ~InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @163 /*This dragon may be imperious, but it does not seem right to kill her. I will not allow it.*/
DO ~LeaveParty() Enemy()~
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !Global("JaheiraRomanceActive","GLOBAL",2)~ 
THEN @164 /*You would commit such a sacrilege against nature?! Had I known, I would never have accompanied you! No, I will not let this be!*/
DO ~LeaveParty() Enemy()~
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @166 /*Wh-what are you doing, <CHARNAME>?! You... you're bringing the wrath of the dragon down upon us? And for what?! Because you don't want to help?*/
DO ~LeaveParty() Enemy()~
== NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("_bMinscNeera","GLOBAL",2)~ THEN @171 /*I don't want to hurt this dragon, <CHARNAME>. She's just worried about her eggs. Boo and I will stop you!*/
DO ~LeaveParty() Enemy()~
== KORGANJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) !Global("_BMazzyKilledKorgan","GLOBAL",1)~
THEN @170 /*T' battle! Me axe is hungry fer a fight!*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @155 /*<CHARNAME>, no! You cannot do this! I will not allow it!*/
DO ~LeaveParty() Enemy()~
EXIT

CHAIN UDSILVER _bAdalonHappy
@172 /*Thank you. You will not regret this.*/
COPY_TRANS UDSILVER 39


//Fighting Makhor Harpell So he doesn't take Drizzt's party's items from you after you kill Bodhi.
INTERJECT C6HARP 6 /**sigh* Well, if you *must* be this way. I have no time for such nonsense at the moment.*/ _bMakhorHarpellFights1
== C6HARP @200 /*If you wish to lose your life over this I will oblige you.*/
DO ~SetGlobal("TalkedToMalchor","GLOBAL",0) DestroyItem("IMOENHP1") ChangeAIScript("_bC6HARP",OVERRIDE) ChangeAIScript("",DEFAULT) ChangeAIScript("",CLASS) Enemy() ReallyForceSpell(Myself,WIZARD_TIME_STOP) MoveToPoint([621.1038])~
EXIT

//Fighting Makhor Harpell So he doesn't take Drizzt's party's items from you after you kill Bodhi.
INTERJECT C6HARP 11 /*I'm not going to put up with this much longer. If I catch you with any of their items again, you will regret it, my <PRO_LADYLORD>. Enough of this!*/ _bMakhorHarpellFights2
== C6HARP @201 /*In fact I think I will just kill you now. It is unlikely to stop you permanently, but it will give me time to move freely.*/
DO ~SetGlobal("TalkedToMalchor","GLOBAL",0) DestroyItem("IMOENHP1") ChangeAIScript("_bC6HARP",OVERRIDE) ChangeAIScript("",DEFAULT) ChangeAIScript("",CLASS) Enemy() ReallyForceSpell(Myself,WIZARD_TIME_STOP) MoveToPoint([621.1038])~
EXIT

//Fighting Makhor Harpell So he doesn't take Drizzt's party's items from you after you kill Bodhi.
INTERJECT C6HARP 13 /*Oh, bother. If you insist on the hard way, then I'll do it the hard way. If I catch you with any more of those items, however, I shall not be so patient.*/ _bMakhorHarpellFights3
== C6HARP @201 /*In fact I think I will just kill you now. It is unlikely to stop you permanently, but it will give me time to move freely.*/
DO ~SetGlobal("TalkedToMalchor","GLOBAL",0) DestroyItem("IMOENHP1") ChangeAIScript("_bC6HARP",OVERRIDE) ChangeAIScript("",DEFAULT) ChangeAIScript("",CLASS) Enemy() ReallyForceSpell(Myself,WIZARD_TIME_STOP) MoveToPoint([621.1038])~
EXIT

//Fighting Makhor Harpell So he doesn't take Drizzt's party's items from you after you kill Bodhi.
INTERJECT C6HARP 15 /*All right, I've had quite enough of you. It's time to put you where you'll do no harm so I can collect what I am looking for without your interference.*/ _bMakhorHarpellFights4
== C6HARP @202 /*Resist or not, it will make no difference.*/
DO ~SetGlobal("TalkedToMalchor","GLOBAL",0) DestroyItem("IMOENHP1") ChangeAIScript("_bC6HARP",OVERRIDE) ChangeAIScript("",DEFAULT) ChangeAIScript("",CLASS) Enemy() ReallyForceSpell(Myself,WIZARD_TIME_STOP) MoveToPoint([621.1038])~
EXIT



