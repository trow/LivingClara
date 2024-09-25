
//Extra Courtesan Options in Bridge District
//Male Options
EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/ 
	+ ~Global("_bRoseLibrary","GLOBAL",0) Gender(Player1,MALE) Global("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",0) Global("_bMURDGIRLviconiascaresMURDGIRL","GLOBAL",0) OR(3) Global("_bMURDGIRLjaheirapaidMURDGIRL","GLOBAL",0) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*What if I want your services?*/ + _bMURDGIRLManPoke1
END

EXTEND_BOTTOM MURDGIRL 27 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/ 
	+ ~Global("_bRoseLibrary","GLOBAL",0)Gender(Player1,MALE) Global("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",0) Global("_bMURDGIRLviconiascaresMURDGIRL","GLOBAL",0) OR(3) Global("_bMURDGIRLjaheirapaidMURDGIRL","GLOBAL",0) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*What if I want your services?*/ + _bMURDGIRLManPoke1
END

CHAIN MURDGIRL _bMURDGIRLManPoke1
@32 /*Then perhaps I can oblige. Do you need a little rest and relaxation from your travels?*/
	END
	++ @36 /*No thank you.*/ DO ~SetGlobal("_bMURDGIRLManPoke1","GLOBAL",0)~ EXIT
	+ ~!Global("JaheiraRomanceActive","GLOBAL",2) OR(2) !Global("ViconiaRomanceActive","GLOBAL",2) !InParty("Viconia")~ + @37 /*All right. How much?*/ + _bMURDGIRLpokeprice
	+ ~Global("JaheiraRomanceActive","GLOBAL",2) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @38 /*Sure, sounds good.*/ EXTERN JAHEIRAJ _bMURDGIRLjaheiranopoke
	+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @37 EXTERN VICONIJ _bMURDGIRLviconiascary
	
CHAIN JAHEIRAJ _bMURDGIRLjaheiranopoke
@39 /*<CHARNAME>, we are not sharing our bed with a courtesan.*/
= @40 /*Good lady, here is your gold, but you must find yourself another customer.*/
DO ~SetGlobal("_bMURDGIRLjaheirapaidMURDGIRL","GLOBAL",1)~
EXIT

CHAIN VICONIJ _bMURDGIRLviconiascary
@41 /*You, the common, diseased, rivvin filth who opens her legs to any male with coin. Do you fear me?*/
== MURDGIRL @42 /*Of course, my lady, you're a drow. Please don't hurt me.*/
== VICONIJ @43 /*Then listen carefully. This male is mine and I own him. He is not for you to use, or touch, or please in any way, and if you try, you will both die slowly and painfully by my hand.*/
= @44 /*I will burn you alive... or perhaps skin you first, healing you throughout to prolong your agony.*/
= @45 /*And when death finally comes, you will greet it as a welcome friend, but even death will not release you from your anguish. I will raise you from the dead and repeat the process, again and again, until my thirst for blood is satiated.*/
= @46 /*Has this seeped into your simple brain? Am I making myself clear?*/
== MURDGIRL @47 /*Very clear, my lady. I will let you take your leave.*/
DO ~SetGlobal("_bMURDGIRLviconiascaresMURDGIRL","GLOBAL",1)~
EXIT
	
CHAIN MURDGIRL _bMURDGIRLpokeprice
@48 /*That depends. For 20 gold you may have ten minutes of my time in that alley over there. If you would like a room and an hour, it'll cost you 40.*/
= @49 /*Whatever you choose, I will endeavor to please you.*/
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
== MURDGIRL @55 /*Make up your mind quickly, handsome. I cannot stand the anticipation.*/
END
	+~PartyGoldGT(19)~+ @56 /*I am in a hurry. Let's make it quick.*/ DO ~TakePartyGold(20)~ GOTO _bMURDGIRLQuickPoke
	+~PartyGoldGT(39)~+ @57 /*I have an hour. Show me to a room.*/ DO ~TakePartyGold(40)~ GOTO _bMURDGIRLSlowPoke
	+~PartyGoldGT(59)~+ @58 /*Let's take our time. I will pay for the finest room with all the luxuries.*/ DO ~TakePartyGold(60)~ GOTO _bMURDGIRLLongPoke
	++ @59 /*I have changed my mind. Perhaps another time.*/ EXIT
	
CHAIN MURDGIRL _bMURDGIRLQuickPoke
@60 /*Then come right this way, baby. Your life is about to get much better.*/
DO ~SetGlobal("_bMURDGIRLQuickPokeFade","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",1)~
EXIT

CHAIN MURDGIRL _bMURDGIRLSlowPoke
@61 /*A real man knows how to take his time. Follow me.*/
DO ~SetGlobal("_bMURDGIRLSlowPokeFade","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",1)~
EXIT

CHAIN MURDGIRL _bMURDGIRLLongPoke 
@62 /*I can see you are going to be my new favorite person. Lead the way, my lord.*/
= @63 /*I will endeavor to give you a time you will never forget.*/
DO ~SetGlobal("_bMURDGIRLLongPokeFade","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bMURDGIRLProstPostCN","GLOBAL",1) OR(2) Global("_bMURDGIRLQuickPokeFade","GLOBAL",2) Global("_bMURDGIRLSlowPokeFade","GLOBAL",2)~ THEN PLAYER1  _bMURDGIRLAfterPoke
@630 /*SOME TIME LATER*/
== MURDGIRL @64 /*Mmm, you sure know how to make a girl feel good. Come back anytime.*/
DO ~SetGlobal("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bMURDGIRLLongPokeFade","GLOBAL",2) Global("_bMURDGIRLProstPostCN","GLOBAL",1)~ THEN PLAYER1 _bMURDGIRLAfterLongPoke
@640 /*FOUR HOURS LATER*/
== MURDGIRL @65 /*Now you know where to come whenever you want quality treatment.*/
= @66 /*No other girl here is the equal of Rose Bouquet.*/
DO ~SetGlobal("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",2)~
EXIT

EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseLibrary","GLOBAL",0) Global("_bMURDGIRLviconiascaresMURDGIRL","GLOBAL",1) Gender(Player1,MALE)~ + @31 /*What if I want your services?*/ + _bMURDGIRLManPoke3
END

EXTEND_BOTTOM MURDGIRL 27 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseLibrary","GLOBAL",0) Global("_bMURDGIRLviconiascaresMURDGIRL","GLOBAL",1) Gender(Player1,MALE)~ + @31 /*What if I want your services?*/ + _bMURDGIRLManPoke3
END
	
CHAIN MURDGIRL _bMURDGIRLManPoke3
@33 /*Oh it's you. I'm sorry, but you must go elsewhere. She'll kill me.*/
END
	++ @67 /*Viconia? Don't worry about her, she's all bluster.*/ + _bMURDGIRLviconiatooscary
	+ ~Global("ViconiaRomanceActive","GLOBAL",3)~ + @68 /*It's okay, we're not together anymore.*/ + _bMURDGIRLviconiatooscary
	+ ~OR(2) !InParty("Viconia") !InMyArea("Viconia")~ + @69 /*But Viconia's not even here.*/ + _bMURDGIRLviconiatooscary
	+ ~Dead("Viconia")~ + @70 /*Don't worry about it. The drow is dead.*/ + _bMURDGIRLviconiatooscary
	
CHAIN MURDGIRL _bMURDGIRLviconiatooscary
@71 /*Sorry, my lord, but I cannot be too careful. There are plenty of other girls who can help you.*/
EXIT

EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseLibrary","GLOBAL",0) Global("_bMURDGIRLjaheirapaidMURDGIRL","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Gender(Player1,MALE)~ + @31 /*What if I want your services?*/ + _bMURDGIRLManPoke5
END

EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseLibrary","GLOBAL",0) Global("_bMURDGIRLjaheirapaidMURDGIRL","GLOBAL",1) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Gender(Player1,MALE)~ + @31 /*What if I want your services?*/ + _bMURDGIRLManPoke5
END

CHAIN MURDGIRL _bMURDGIRLManPoke5
@34 /*Oh it's the two of you. I hope you have a pleasant day.*/
== JAHEIRAJ @72 /*And to you as well.*/
EXIT
	
	
EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseLibrary","GLOBAL",0) Gender(Player1,MALE) Global("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",1) Global("_bMURDGIRLviconiascaresMURDGIRL","GLOBAL",0) OR (4) Global("_bMURDGIRLjaheirapaidMURDGIRL","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*What if I want your services?*/ + _bMURDGIRLManPoke7
END

EXTEND_BOTTOM MURDGIRL 27 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseLibrary","GLOBAL",0) Gender(Player1,MALE) Global("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",1) Global("_bMURDGIRLviconiascaresMURDGIRL","GLOBAL",0) OR (4) Global("_bMURDGIRLjaheirapaidMURDGIRL","GLOBAL",0) !InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @31 /*What if I want your services?*/ + _bMURDGIRLManPoke7
END

CHAIN MURDGIRL _bMURDGIRLManPoke7
@35 /*Oh, I didn't recognize you, <CHARNAME>. I'm ready for another round if you are.*/
END
	++ @36 /*No thank you.*/ EXIT
	+ ~!Global("JaheiraRomanceActive","GLOBAL",2) OR(2) !Global("ViconiaRomanceActive","GLOBAL",2) !InParty("Viconia")~ + @73 /*All right. How much?*/ + _bMURDGIRLpokeprice
	+ ~Global("JaheiraRomanceActive","GLOBAL",2) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @73 /*Sure, sounds good.*/ EXTERN JAHEIRAJ _bMURDGIRLjaheiranopoke
	+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @73 /*All right. How much?*/ EXTERN VICONIJ _bMURDGIRLviconiascary
	
	
//Female Options
EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/ 
	+ ~Global("_bRoseLibrary","GLOBAL",0) Gender(Player1,FEMALE) Global("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",0) Global("_bMURDGIRLdornthreesomeMURDGIRL","GLOBAL",0) Global("_bMURDGIRLanomendeclinedpoke","GLOBAL",0)~ + @31 /*What if I want your services?*/ + _bMURDGIRLWomanPoke1
END

EXTEND_BOTTOM MURDGIRL 27 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/ 
	+ ~Global("_bRoseLibrary","GLOBAL",0) Gender(Player1,FEMALE) Global("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",0) Global("_bMURDGIRLdornthreesomeMURDGIRL","GLOBAL",0) Global("_bMURDGIRLanomendeclinedpoke","GLOBAL",0)~ + @31 /*What if I want your services?*/ + _bMURDGIRLWomanPoke1
END

CHAIN MURDGIRL _bMURDGIRLWomanPoke1
@74 /*That depends. What are you looking for?*/
END
	++ @75 /*Nothing, nevermind.*/ EXIT
	+ ~OR(2) !Global("AnomenRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Anomen") OR(3) !Global("OHD_dornsex","GLOBAL",1) Global("DornRomanceActive","GLOBAL",3) !IfValidForPartyDialog("Dorn") OR(3) !IfValidForPartyDialog("Hexxat") !Global("HexxatRomanceActive","GLOBAL",2) GlobalLT("HexxatLovetalks","GLOBAL",25)~ + @76 /*I want you in my bed.*/ + _bMURDGIRLNoPokeWomen
	+ ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3)~ + @77 /*We want you in our bed.*/ EXTERN DORNJ _bMURDGIRLdorn2womenpoke
	+ ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @77 EXTERN ANOMENJ _bMURDGIRLanomen2womenpoke
	+ ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) Global("HexxatRomanceActive","GLOBAL",2) GlobalGT("HexxatLovetalks","GLOBAL",24)~ + @77 + _bMURDGIRLnopokewomenhexxat
	
CHAIN MURDGIRL _bMURDGIRLNoPokeWomen
@78 /*Oh, honey, I'm not walking the right side of the street for what you want. There are other girls who would be happy to help you.*/
END
	++ @79 /*Fine, I'll go find them.*/ EXIT
	+~OR(3) !InMyArea("Rasaad") !IfValidForPartyDialog("Rasaad") !Global("RasaadRomanceActive","GLOBAL",2)~+ @80 /*I have money; just pretend you like me. Treat me like a rich man you aren't attracted to.*/ + _bMURDGIRLPokeWomenMaybe
	+~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2)~+ @800 /*Well it isn't just me. Rasaad will be joining us too.*/ + _bMURDGIRLRasaadPokeWomenMaybe

CHAIN MURDGIRL _bMURDGIRLPokeWomenMaybe
@81 /*Every girl has her price, is that it? Fine then, I want the finest room and 100 gold for me. That's 120 gold in all.*/
END
	++ @82 /*You want too much. I'll find someone else.*/ EXIT
	+~PartyGoldGT(119)~+ @83 /*Done. It's time to start your act. I expect enthusiasm.*/ DO ~TakePartyGold(120)~ GOTO _bMURDGIRLPokeWomenYes

CHAIN MURDGIRL _bMURDGIRLRasaadPokeWomenMaybe
@801 /*Is this one yours? Well isn't he a fine looking man.*/
= @802 /*Very well, I'll do you if I get him too. I'm going to need the finest room and quite a bit of time, though. It'll cost you 120 gold in all.*/
DO ~TakePartyGold(120)~
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bMURDGIRLMURDGIRLRasaadAndCN","GLOBAL",0)~
THEN @803 /*<CHARNAME>, this is unexpected... but I am not foolish enough to decline. I will follow.*/ DO ~SetGlobal("_bMURDGIRLMURDGIRLRasaadAndCN","GLOBAL",1)~
END
	++ @804 /*We are agreed then. Before you can enjoy each other though, you both have to focus on me. I expect enthusiasm.*/ + _bMURDGIRLPokeWomenYes
	
CHAIN MURDGIRL _bMURDGIRLPokeWomenYes
@84 /*Ooh, you make Rose so hot. I can't wait to have you inside me.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~
THEN @53 /*We clearly have different ideas of what it means to be in a relationship, <CHARNAME>. You had best enjoy your courtesan since you'll have me no longer.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
== MURDGIRL @85 /*Or on me...? Kissing me...? What do girls do together?*/
= @86 /*I suppose I shall find out soon.*/
DO ~SetGlobal("_bMURDGIRLLadyPokeFade","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bMURDGIRLProstPostCN","GLOBAL",1) Global("_bMURDGIRLLadyPokeFade","GLOBAL",2) OR(2) !Global("_bMURDGIRLDHARLOT1DornPokeFade","GLOBAL",2) !IfValidForPartyDialog("DORN")~ THEN PLAYER1 _bMURDGIRLAfterLadyPoke
@640 /*FOUR HOURS LATER*/
== MURDGIRL @87 /*Well, that was interesting. I could do that again... for the same price, of course.*/
DO ~SetGlobal("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",2)~
EXIT

CHAIN DORNJ _bMURDGIRLdorn2womenpoke
@88 /*Interesting. Yes, I approve of this idea. I will share the whore with you.*/
== MURDGIRL @89 /*Hmmm, so we will both be pleasing your big man here?*/
= @90 /*Oh... by the gods! An orc...*/
= @91 /*No problem, honey, I'll just follow your lead.*/
== DORNJ @92 /*You put on a brave face, whore, but you shake with fear. Do I frighten you more than the scum you normally service? Are you afraid that I will take your near worthless life and end your miserable existence?*/
== MURDGIRL @93 /*No, my lord. It is an honor, my lord. Please don't hurt me.*/
== DORNJ @94 /*Hah. Useless mouse, you will learn. We will rent the finest room money can buy and lavish the greatest luxuries upon you. For one day, you will live as you only have in your dreams, and be pleasured as you never have been before.*/
= @95 /*Come with us, whore. It is time to show you how wrong you are.*/
DO ~TakePartyGold(120) SetGlobal("_bMURDGIRLDornPokeFade","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",1) SetGlobal("_bMURDGIRLdornthreesomeMURDGIRL","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bMURDGIRLProstPostCN","GLOBAL",1) Global("_bMURDGIRLDornPokeFade","GLOBAL",2)~ THEN PLAYER1 _bMURDGIRLAfterPokeDorn
@640 /*FOUR HOURS LATER*/
== MURDGIRL @96 /*My lord, my lady, that was wonderful. Please come back anytime.*/
DO ~SetGlobal("_bMURDGIRLdornthreesomeMURDGIRL","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",2) SetGlobal("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",1)~
EXIT

CHAIN ANOMENJ _bMURDGIRLanomen2womenpoke
@97 /*I am sorry, my lady, but I must decline your offer, generous as it is. My name may not be as spotless as I would prefer, but we cannot share this common street-whore. Word would spread and my name would be tarnished further.*/
== MURDGIRL @98 /*Sorry to hear that, my lord. If you ever change your mind you know where to find me.*/
DO ~SetGlobal("_bMURDGIRLanomendeclinedpoke","GLOBAL",1)~
EXIT

CHAIN MURDGIRL _bMURDGIRLnopokewomenhexxat
@78 /*Oh, honey, I'm not walking the right side of the street for what you want. There are other girls who would be happy to help you.*/
== HEXXATJ @99 /*Now that is regrettable. You are truly delectable. I could just eat you alive, and I'd pay heavily for the privilege.*/
END
	++ @100 /*Nevermind then.*/ EXIT
	++ @101 /*You heard her; we'll pay. How about it?*/ + _bMURDGIRLpokehexxat
	++ @102 /*Hexxat, are you saying you want her or you WANT her?*/ EXTERN HEXXATJ _bMURDGIRLhexxateatpoke
	
CHAIN HEXXATJ _bMURDGIRLhexxateatpoke
@103 /*Both. First we have her, then I have her, though you may join in that too if you wish.*/
END
	++ @100 /*Nevermind then.*/ EXIT
	++ @101 /*You heard her; we'll pay. How about it?*/ EXTERN MURDGIRL _bMURDGIRLpokehexxat
	
CHAIN MURDGIRL _bMURDGIRLpokehexxat
@104 /*But I've never...*/
= @105 /*Every girl has her price, is that it? Fine then, I want the finest room and 200 gold for me. That's 220 gold in all.*/
== HEXXATJ @106 /*You'll have everything you could ever desire. Just follow us.*/
== MURDGIRL @107 /*All right. It'll be a new adventure, I guess.*/
DO ~SetGlobal("_bMURDGIRLHexxatPokeFade","GLOBAL",1)~
EXIT


EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/ 
	+ ~Global("_bRoseLibrary","GLOBAL",0) Gender(Player1,FEMALE) Global("_bMURDGIRLdornthreesomeMURDGIRL","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*What if I want your services?*/ + _bMURDGIRLWomanPoke3
END

EXTEND_BOTTOM MURDGIRL 27 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/ 
	+ ~Global("_bRoseLibrary","GLOBAL",0) Gender(Player1,FEMALE) Global("_bMURDGIRLdornthreesomeMURDGIRL","GLOBAL",1) InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !Global("DornRomanceActive","GLOBAL",3)~ + @31 /*What if I want your services?*/ + _bMURDGIRLWomanPoke3
END

CHAIN MURDGIRL _bMURDGIRLWomanPoke3
@108 /*Oh my lady, my lord, it is a pleasure to see you again. Can Rose help brighten your <DAYNIGHTALL>?*/
== DORNJ IF ~~ THEN @109 /*Hah, the shaking mouse has become a wolf, hungering for us again.*/
= @110 /*What say you, <CHARNAME>? Shall we give her another night to remember?*/
END
	++ @1111 /*Not at the moment.*/ EXIT
	++ @112 /*Sure, let's do it.*/ + _bMURDGIRLDornPokeAgain
	
CHAIN MURDGIRL _bMURDGIRLDornPokeAgain
@113 /*Wonderful. My Lord Dorn, My Lady <CHARNAME>, please lead the way.*/
DO ~TakePartyGold(120) SetGlobal("_bMURDGIRLDornPokeFade","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",1)~
EXIT
	

EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/ 
	+ ~Global("_bRoseLibrary","GLOBAL",0) Gender(Player1,FEMALE) Global("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",1) OR(5) !InMyArea("DORN") !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bMURDGIRLdornthreesomeMURDGIRL","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*What if I want your services?*/ + _bMURDGIRLWomanPoke5
END

EXTEND_BOTTOM MURDGIRL 27 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/ 
	+ ~Global("_bRoseLibrary","GLOBAL",0) Gender(Player1,FEMALE) Global("_bMURDGIRLCNpokedMURDGIRL","GLOBAL",1) OR(5) !InMyArea("DORN") !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID) Global("_bMURDGIRLdornthreesomeMURDGIRL","GLOBAL",0) Global("DornRomanceActive","GLOBAL",3)~ + @31 /*What if I want your services?*/ + _bMURDGIRLWomanPoke5
END

CHAIN MURDGIRL _bMURDGIRLWomanPoke5
@114 /*Oh it's you, <CHARNAME>. Are you up for another round?*/
END
	++ @115 /*Thanks, but I don't have time right now.*/ EXIT
	+ ~OR(2) !Global("AnomenRomanceActive","GLOBAL",2) !IfValidForPartyDialog("Anomen") OR(3) !Global("OHD_dornsex","GLOBAL",1) Global("DornRomanceActive","GLOBAL",3) !IfValidForPartyDialog("Dorn") OR(3) !IfValidForPartyDialog("Hexxat") !Global("HexxatRomanceActive","GLOBAL",2) GlobalLT("HexxatLovetalks","GLOBAL",25) PartyGoldGT(119)~ + @116 /*Of course. Let's go to an inn.*/ + _bMURDGIRLlikespokewomen
	+ ~InMyArea("DORN") InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3) !Global("_bMURDGIRLdornthreesomeMURDGIRL","GLOBAL",1)~ + @117 /*Actually you'll be joining me and Dorn this time.*/ EXTERN DORNJ _bMURDGIRLdorn2womenpoke
	+ ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @77 EXTERN ANOMENJ _bMURDGIRLanomen2womenpoke
	+ ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) Global("HexxatRomanceActive","GLOBAL",2) GlobalGT("HexxatLovetalks","GLOBAL",24)~ + @77 + _bMURDGIRLnopokewomenhexxat
	
CHAIN MURDGIRL _bMURDGIRLlikespokewomen
@118 /*Sweet news from your sweet lips. You are one of my favorite customers.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~
THEN @53 /*We clearly have different ideas of what it means to be in a relationship, <CHARNAME>. You had best enjoy your courtesan since you'll have me no longer.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
== MURDGIRL IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bMURDGIRLMURDGIRLRasaadAndCN","GLOBAL",0)~
THEN @1180 /*Is this one yours? You must bring him as well.*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bMURDGIRLMURDGIRLRasaadAndCN","GLOBAL",0)~
THEN @803 /*<CHARNAME>, this is unexpected... but I am not foolish enough to decline. I will follow.*/ DO ~SetGlobal("_bMURDGIRLMURDGIRLRasaadAndCN","GLOBAL",1)~
== MURDGIRL IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bMURDGIRLMURDGIRLRasaadAndCN","GLOBAL",1)~
THEN @1181 /*And Rasaad's here too? Well isn't it my lucky day?*/
== RASAADJ IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("RasaadRomanceActive","GLOBAL",2) Global("_bMURDGIRLMURDGIRLRasaadAndCN","GLOBAL",1)~
THEN @1182 /*A lucky day for me as well. May I say that you are looking lovely as ever?*/
== MURDGIRL @119 /*Don't you worry, honey. Rose Bouquet will soon have you screaming my name.*/
DO ~TakePartyGold(120) SetGlobal("_bMURDGIRLLadyPokeFade","GLOBAL",1) SetGlobal("_bMURDGIRLProstPostCN","GLOBAL",1)~
EXIT
