
//Extra Courtesan Options- PIRCOR01 (Pirate Courtesan in Spellhold Island Inn)

//Male Options
EXTEND_TOP pircor01 0 /*Hey, sailor! Ready for a little shore leave adventure?*/ 
	+ ~Gender(Player1,MALE) Global("_bpircor01CNpokedpircor01","GLOBAL",0) Global("_bpircor01viconiascarespircor01","GLOBAL",0) OR(4) Global("_bpircor01jaheirapaidpircor01","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke1
END

EXTEND_TOP pircor01 1 /*If you have a gold coin, then I have a heart of gold!*/ 
	+ ~Gender(Player1,MALE) Global("_bpircor01CNpokedpircor01","GLOBAL",0) Global("_bpircor01viconiascarespircor01","GLOBAL",0) OR(4) Global("_bpircor01jaheirapaidpircor01","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke1
END

EXTEND_TOP pircor01 3 /*I wish I had a keg of rum.*/ 
	+ ~Gender(Player1,MALE) Global("_bpircor01CNpokedpircor01","GLOBAL",0) Global("_bpircor01viconiascarespircor01","GLOBAL",0) OR(4) Global("_bpircor01jaheirapaidpircor01","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke1
END

CHAIN pircor01 _bpircor01ManPoke1
@32 /*Oh, you like what you see, do you? Does your ship need a welcoming port?*/
	END
	++ @36 /*No thank you.*/ DO ~SetGlobal("_bpircor01ManPoke1","GLOBAL",0)~ EXIT
	+ ~!Global("JaheiraRomanceActive","GLOBAL",2) OR(2) !Global("ViconiaRomanceActive","GLOBAL",2) !InParty("Viconia")~ + @37 /*It does. How much?*/ + _bpircor01pokeprice
	+ ~Global("JaheiraRomanceActive","GLOBAL",2) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @38 /*Sure, sounds good.*/ EXTERN JAHEIRAJ _bpircor01jaheiranopoke
	+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @37 /*It does. How much?*/ EXTERN VICONIJ _bpircor01viconiascary
	
CHAIN JAHEIRAJ _bpircor01jaheiranopoke
@39 /*<CHARNAME>, we are not sharing our bed with a courtesan.*/
= @40 /*Good lady, here is your gold, but you must find yourself another customer.*/
DO ~ActionOverride("pircor01",TakePartyGold(200)) SetGlobal("_bpircor01jaheirapaidpircor01","GLOBAL",1)~
EXIT

CHAIN VICONIJ _bpircor01viconiascary
@41 /*You, the common, diseased, rivvin filth who opens her legs to any male with coin. Do you fear me?*/
== pircor01 @42 /*You're a dark elf, but my uncle is the Pirate Lord! You hurt me and he'll... he'll...*/
== VICONIJ @43 /*Hah! This male is mine and I own him. He is not for you to use, or touch, or please in any way, and if you try, you will both die slowly and painfully by my hand.*/
= @44 /*I will burn you alive... or perhaps skin you first, healing you throughout to prolong your agony.*/
= @45 /*And when death finally comes, you will greet it as a welcome friend, but even death will not release you from your anguish. I will raise you from the dead and repeat the process, again and again, until my thirst for blood is satiated.*/
= @46 /*And your uncle? He will never even find you. Am I making myself clear?*/
== pircor01 @47 /*Very clear. I'll be going now.*/
DO ~SetGlobal("_bpircor01viconiascarespircor01","GLOBAL",1)~
EXIT
	
CHAIN pircor01 _bpircor01pokeprice
@48 /*200 gold for several hours of my time. In the finest room available, of course.*/
= @49 /*I am not one of Miss Galvena's slaves. I can choose my customers.*/
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
== pircor01 @55 /*And you are clearly a man worth choosing. But can you afford me?*/
END
	+ ~PartyGoldGT(199)~ + @58 /*I can. I will pay for the finest room with all the luxuries.*/ + _bpircor01LongPoke
	++ @59 /*I have changed my mind. Perhaps another time.*/ EXIT

CHAIN pircor01 _bpircor01LongPoke 
@62 /*I think you will be my new favorite. Follow me.*/
= @63 /*I will endeavor to give you a time you never forget.*/
DO ~SetGlobal("_bpircor01LongPokeFade","GLOBAL",1) SetGlobal("_bpircor01ProstPostCN","GLOBAL",1) ActionOverride("pircor01",TakePartyGold(200))~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bpircor01LongPokeFade","GLOBAL",2) Global("_bpircor01ProstPostCN","GLOBAL",1)~ THEN pircor01 _bpircor01AfterLongPoke
@65 /*Mmm, you sure know how to make a girl feel good. Come back anytime.*/
= @66 /*I'll be waiting.*/
DO ~SetGlobal("_bpircor01CNpokedpircor01","GLOBAL",1) SetGlobal("_bpircor01ProstPostCN","GLOBAL",2)~
EXIT


EXTEND_TOP pircor01 0 /*Hey, sailor! Ready for a little shore leave adventure?*/
	+ ~Gender(Player1,MALE) Global("_bpircor01viconiascarespircor01","GLOBAL",1)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke3
END

EXTEND_TOP pircor01 1 /*If you have a gold coin, then I have a heart of gold!*/ 
	+ ~Gender(Player1,MALE) Global("_bpircor01viconiascarespircor01","GLOBAL",1)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke3
END

EXTEND_TOP pircor01 3 /*I wish I had a keg of rum.*/ 
	+ ~Gender(Player1,MALE) Global("_bpircor01viconiascarespircor01","GLOBAL",1)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke3
END

CHAIN pircor01 _bpircor01ManPoke3
@33 /*Oh I'm sorry, but you must go elsewhere. She'll kill me.*/
END
	++ @67 /*Viconia? Don't worry about her, she's all bluster.*/ + _bpircor01viconiatooscary
	+ ~Global("ViconiaRomanceActive","GLOBAL",3)~ + @68 /*It's okay, we're not together anymore.*/ + _bpircor01viconiatooscary
	+ ~OR(2) !InParty("Viconia") !InMyArea("Viconia")~ + @69 /*But Viconia's not even here.*/ + _bpircor01viconiatooscary
	+ ~Dead("Viconia")~ + @70 /*Don't worry about it. The drow is dead.*/ + _bpircor01viconiatooscary
	
CHAIN pircor01 _bpircor01viconiatooscary
@71 /*One can never be too careful. The other girls will help you.*/
EXIT
	
	
EXTEND_TOP pircor01 0 /*Hey, sailor! Ready for a little shore leave adventure?*/
	+ ~Gender(Player1,MALE) Global("_bpircor01jaheirapaidpircor01","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke5
END

EXTEND_TOP pircor01 1 /*If you have a gold coin, then I have a heart of gold!*/ 
	+ ~Gender(Player1,MALE) Global("_bpircor01jaheirapaidpircor01","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke5
END

EXTEND_TOP pircor01 3 /*I wish I had a keg of rum.*/ 
	+ ~Gender(Player1,MALE) Global("_bpircor01jaheirapaidpircor01","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke5
END

CHAIN pircor01 _bpircor01ManPoke5
@34 /*Oh it's the two of you. Have a pleasant day now.*/
== JAHEIRAJ @72 /*And to you as well.*/
EXIT
	
	
EXTEND_TOP pircor01 0 /*Hey, sailor! Ready for a little shore leave adventure?*/
	+ ~Gender(Player1,MALE) Global("_bpircor01CNpokedpircor01","GLOBAL",1) Global("_bpircor01viconiascarespircor01","GLOBAL",0) OR (4) Global("_bpircor01jaheirapaidpircor01","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke7
END

EXTEND_TOP pircor01 1 /*If you have a gold coin, then I have a heart of gold!*/ 
	+ ~Gender(Player1,MALE) Global("_bpircor01CNpokedpircor01","GLOBAL",1) Global("_bpircor01viconiascarespircor01","GLOBAL",0) OR (4) Global("_bpircor01jaheirapaidpircor01","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke7
END

EXTEND_TOP pircor01 3 /*I wish I had a keg of rum.*/ 
	+ ~Gender(Player1,MALE) Global("_bpircor01CNpokedpircor01","GLOBAL",1) Global("_bpircor01viconiascarespircor01","GLOBAL",0) OR (4) Global("_bpircor01jaheirapaidpircor01","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01ManPoke7
END


CHAIN pircor01 _bpircor01ManPoke7
@35 /*Oh it's you. Pleasure to see you, sailor. Up for another round?*/
END
	++ @36 /*No thank you.*/ EXIT
	+ ~!Global("JaheiraRomanceActive","GLOBAL",2) OR(2) !Global("ViconiaRomanceActive","GLOBAL",2) !InParty("Viconia")~ + @73 /*With you? Of course. How much is it again?*/ + _bpircor01pokeprice
	+ ~Global("JaheiraRomanceActive","GLOBAL",2) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @73 /*Sure, sounds good.*/ EXTERN JAHEIRAJ _bpircor01jaheiranopoke
	+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @73 EXTERN VICONIJ _bpircor01viconiascary
	
	
//Female Options
EXTEND_TOP pircor01 2 /*You may be wanting to see my male counterpart. He'll give you what you desire. I can't be obliging you.*/  
	+ ~Gender(Player1,FEMALE) Global("_bpircor01CNpokedpircor01","GLOBAL",0) Global("_bpircor01dornthreesomepircor01","GLOBAL",0) Global("_bpircor01anomendeclinedpoke","GLOBAL",0)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01WomanPoke1
END

EXTEND_TOP pircor01 3 /*I wish I had a keg of rum.*/  
	+ ~Gender(Player1,FEMALE) Global("_bpircor01CNpokedpircor01","GLOBAL",0) Global("_bpircor01dornthreesomepircor01","GLOBAL",0) Global("_bpircor01anomendeclinedpoke","GLOBAL",0)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01WomanPoke1
END

CHAIN pircor01 _bpircor01WomanPoke1
@74 /*Is there something I can help you with?*/
END
	++ @75 /*No, nothing.*/ EXIT
	+ ~OR(2) !Global("AnomenRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Anomen") OR(3) !Global("OHD_dornsex","GLOBAL",1) Global("DornRomanceActive","GLOBAL",3) !IfValidForPartyDialog("Dorn") OR(3) !IfValidForPartyDialog("Hexxat") !Global("HexxatRomanceActive","GLOBAL",2) GlobalLT("HexxatLovetalks","GLOBAL",25)~ + @76 /*Yes, I want you.*/ + _bpircor01NoPokeWomen
	+ ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3)~ + @77 /*Yes, we want you.*/ EXTERN DORNJ _bpircor01dorn2womenpoke
	+ ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @77 EXTERN ANOMENJ _bpircor01anomen2womenpoke
	+ ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) Global("HexxatRomanceActive","GLOBAL",2) GlobalGT("HexxatLovetalks","GLOBAL",24)~ + @77 + _bpircor01nopokewomenhexxat
	
CHAIN pircor01 _bpircor01NoPokeWomen
@78 /*I'm not what you're looking for. There are other girls who would be happy to have you.*/
END
	++ @79 /*Fine, I'll go find them.*/ EXIT
	+~OR(3) !InMyArea("Rasaad") !IfValidForPartyDialog("Rasaad") !Global("RasaadRomanceActive","GLOBAL",2)~+ @80 /*I have money; just pretend you like me. Treat me like a rich man you aren't attracted to.*/ + _bpircor01PokeWomenMaybe
	+~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2)~+ @800 /*Well it isn't just me. Rasaad will be joining us too.*/ + _bpircor01RasaadPokeWomenMaybe

CHAIN pircor01 _bpircor01PokeWomenMaybe
@81 /*I want 500 gold.*/
END
	++ @82 /*You want too much. I'll find someone else.*/ EXIT
	+~PartyGoldGT(499)~+ @83 /*Done. It's time to start your act. I expect enthusiasm.*/ + _bpircor01PokeWomenYes
	
CHAIN pircor01 _bpircor01RasaadPokeWomenMaybe
@801 /*This one is yours? He's gorgeous!*/
= @802 /*Fine, you win. I'll do whatever ye want if I can borrow him.*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bPIRCOR01RasaadAndCN","GLOBAL",0)~
THEN @803 /*<CHARNAME>, this is unexpected... but I am not foolish enough to decline. I will follow.*/ DO ~SetGlobal("_bPIRCOR01RasaadAndCN","GLOBAL",1)~
END
	++ @804 /*We are agreed then. Before you can enjoy each other though, you both have to focus on me. I expect enthusiasm.*/ + _bpircor01PokeWomenYes
	
CHAIN pircor01 _bpircor01PokeWomenYes
@84 /*Ohh, sailor, I can't wait to welcome your ship.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~
THEN @53 /*We clearly have different ideas of what it means to be in a relationship, <CHARNAME>. You had best enjoy your courtesan since you'll have me no longer.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
== pircor01 @85 /*Or my ship? Neither of us have ships. What do girls do together?*/
= @86 /*I guess I will find out soon.*/
DO ~SetGlobal("_bpircor01LadyPokeFade","GLOBAL",1) SetGlobal("_bpircor01ProstPostCN","GLOBAL",1) ActionOverride("pircor01",TakePartyGold(500))~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bpircor01ProstPostCN","GLOBAL",1) Global("_bpircor01LadyPokeFade","GLOBAL",2) OR(2) !Global("_bDHARLOT1DornPokeFade","GLOBAL",2) !IfValidForPartyDialog("DORN")~ THEN pircor01 _bpircor01AfterLadyPoke
@87 /*Well that was a change of pace. I'm happy to do that whenever you want. Provided you have the gold, of course.*/
DO ~SetGlobal("_bpircor01CNpokedpircor01","GLOBAL",1) SetGlobal("_bpircor01ProstPostCN","GLOBAL",2)~
EXIT

CHAIN DORNJ _bpircor01dorn2womenpoke
@88 /*Interesting. Yes, I approve of this idea. I will share the whore with you.*/
== pircor01 @89 /*Oh we are both going to share this big one here? That can be arranged.*/
= @90 /*Oh, an orc... oh... I see...*/
= @91 /*That's... that's not a problem. I'll just follow yer lead. I'll need 1000 gold too.*/
== DORNJ @92 /*Hah, you are terrified of me, but your greed compels you to act. Do I frighten you more than the scum you normally service?*/
== pircor01 @93 /*No pirate or sailor would dare hurt me. My uncle, the Pirate Lord, would make an example of them. But you...*/
== DORNJ @94 /*You are right, I do not fear him or any man. But I will not hurt you.*/
= @95 /*The more handsome the man, the more selfish. <CHARNAME> and I will pleasure you as you never have been before.*/
DO ~SetGlobal("_bpircor01DornPokeFade","GLOBAL",1) SetGlobal("_bpircor01ProstPostCN","GLOBAL",1) ActionOverride("pircor01",TakePartyGold(1000))~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bpircor01ProstPostCN","GLOBAL",1) Global("_bpircor01DornPokeFade","GLOBAL",2)~ THEN pircor01 _bpircor01AfterPokeDorn
@96 /*Well you two, that was wonderful. Please come back anytime. Anytime you can afford it, that is.*/
DO ~SetGlobal("_bpircor01dornthreesomepircor01","GLOBAL",1) SetGlobal("_bpircor01ProstPostCN","GLOBAL",2) SetGlobal("_bpircor01CNpokedpircor01","GLOBAL",1)~
EXIT

CHAIN ANOMENJ _bpircor01anomen2womenpoke
@97 /*I am sorry, my lady, but I must decline your offer, generous as it is. My name may not be as spotless as I would prefer, but we cannot share this woman. Word would spread quickly among the sailors and my name would be tarnished further.*/
== pircor01 @98 /*Another time then.*/
DO ~SetGlobal("_bpircor01anomendeclinedpoke","GLOBAL",1)~
EXIT

CHAIN pircor01 _bpircor01nopokewomenhexxat
@78 /*I'm not what you're looking for. There are other girls who would be happy to have you.*/
== HEXXATJ @99 /*Now that is regrettable. You are truly delectable. I could just eat you alive, and I'd pay heavily for the privilege.*/
END
	++ @100 /*Nevermind then.*/ EXIT
	++ @101 /*You heard her; we'll pay. How about it?*/ EXTERN PIRCOR01 _bpircor01pokehexxat
	++ @102 /*Hexxat, are you saying you want her or you WANT her?*/ EXTERN HEXXATJ _bpircor01hexxateatpoke
	
CHAIN HEXXATJ _bpircor01hexxateatpoke
@103 /*Both. First we have her, then I have her, though you may join in that too if you wish.*/
END
	++ @100 /*Nevermind then.*/ EXIT
	++ @101 /*You heard her; we'll pay. How about it?*/ EXTERN pircor01 _bpircor01pokehexxat
	
CHAIN pircor01 _bpircor01pokehexxat
@104 /*Two women? But I've never...*/
= @105 /*I want 1000 gold.*/
== HEXXATJ @106 /*You'll have everything you could ever desire. Just follow us.*/
== pircor01 @107 /*Time to sail on a new adventure.*/
DO ~SetGlobal("_bpircor01HexxatPokeFade","GLOBAL",1) Kill(Myself)~
EXIT


EXTEND_TOP pircor01 2 /*You may be wanting to see my male counterpart. He'll give you what you desire. I can't be obliging you.*/
	+ ~Gender(Player1,FEMALE) Global("_bpircor01dornthreesomepircor01","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01WomanPoke3
END

EXTEND_TOP pircor01 3 /*I wish I had a keg of rum.*/
	+ ~Gender(Player1,FEMALE) Global("_bpircor01dornthreesomepircor01","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01WomanPoke3
END

CHAIN pircor01 _bpircor01WomanPoke3
@108 /*A pleasure to see you two again. I could use some company.*/
== DORNJ IF ~~ THEN @109 /*Hah, her fear is gone and now she hungers for us again.*/
= @110 /*What say you, <CHARNAME>? Shall we give her another night to remember?*/
END
	++ @111 /*Not at the moment.*/ EXIT
	+~PartyGoldGT(999)~+ @112 /*Sure, let's do it.*/ + _bpircor01DornPokeAgain
	
CHAIN pircor01 _bpircor01DornPokeAgain
@113 /*Wonderful. Follow me.*/
DO ~SetGlobal("_bpircor01DornPokeFade","GLOBAL",1) SetGlobal("_bpircor01ProstPostCN","GLOBAL",1) ActionOverride("pircor01",TakePartyGold(1000))~
EXIT
	

EXTEND_TOP pircor01 2 /*You may be wanting to see my male counterpart. He'll give you what you desire. I can't be obliging you.*/ 
	+ ~Gender(Player1,FEMALE) Global("_bpircor01CNpokedpircor01","GLOBAL",1) OR(4) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bpircor01dornthreesomepircor01","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01WomanPoke5
END

EXTEND_TOP pircor01 3 /*I wish I had a keg of rum.*/
	+ ~Gender(Player1,FEMALE) Global("_bpircor01CNpokedpircor01","GLOBAL",1) OR(4) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bpircor01dornthreesomepircor01","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*May I have a moment of your time?*/ GOTO _bpircor01WomanPoke5
END

CHAIN pircor01 _bpircor01WomanPoke5
@114 /*Oh it's you. Do you want to go again?*/
END
	++ @115 /*Thanks, but I don't have time right now.*/ EXIT
	+ ~OR(2) !Global("AnomenRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Anomen") OR(3) !Global("OHD_dornsex","GLOBAL",1) Global("DornRomanceActive","GLOBAL",3) !IfValidForPartyDialog("Dorn") OR(3) !IfValidForPartyDialog("Hexxat") !Global("HexxatRomanceActive","GLOBAL",2) GlobalLT("HexxatLovetalks","GLOBAL",25) PartyGoldGT(24)~ + @116 /*Yes, let's go to your room.*/ + _bpircor01likespokewomen
	+ ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3) !Global("_bpircor01dornthreesomepircor01","GLOBAL",1)~ + @117 /*Actually you'll be joining me and Dorn this time.*/ EXTERN DORNJ _bpircor01dorn2womenpoke
	+ ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @77 EXTERN ANOMENJ _bpircor01anomen2womenpoke
	+ ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) Global("HexxatRomanceActive","GLOBAL",2) GlobalGT("HexxatLovetalks","GLOBAL",24)~ + @77 /*Yes, we want you.*/ + _bpircor01nopokewomenhexxat
	
CHAIN pircor01 _bpircor01likespokewomen
@118 /*Oh good, follow me. I have had some new ideas since last time.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~
THEN @53 /*We clearly have different ideas of what it means to be in a relationship, <CHARNAME>. You had best enjoy your courtesan since you'll have me no longer.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
== pircor01 IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bPIRCOR01RasaadAndCN","GLOBAL",0)~
THEN @120 /*Is this one yours? You must bring him too. He's gorgeous!*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bPIRCOR01RasaadAndCN","GLOBAL",0)~
THEN @121 /*<CHARNAME>, this is unexpected... but I am not foolish enough to decline. I will follow.*/ DO ~SetGlobal("_bPIRCOR01RasaadAndCN","GLOBAL",1)~
== pircor01 IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bPIRCOR01RasaadAndCN","GLOBAL",1)~
THEN @122 /*And Rasaad's coming again too? Well isn't it my lucky day?*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bPIRCOR01RasaadAndCN","GLOBAL",1)~
THEN @123 /*A lucky day for me as well. May I say that you are looking lovely as ever?*/
== pircor01 @119 /*I will soon have you screaming in ecstasy.*/
DO ~SetGlobal("_bpircor01LadyPokeFade","GLOBAL",1) SetGlobal("_bpircor01ProstPostCN","GLOBAL",1) ActionOverride("pircor01",TakePartyGold(500))~
EXIT
