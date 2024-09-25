BEGIN _bBod25j


APPEND _bBod25j IF WEIGHT #-1 ~Global("_BBodhiMist","GLOBAL",1)~ THEN BEGIN _bbodhimisttalk1
SAY @0 /*No, no it's mine! This life is mine! [BODHIX41.WAV]*/
	= @1 /*<CHARNAME>, I flee. When I am whole I will find you, if you live.*/
	IF ~~ THEN DO ~ApplySpellRES("_bbomi25",Myself) TransformItem("_bbohair","_bbohar2") SetGlobal("_BBodhiMist","GLOBAL",2) SetGlobal("_BBodhiRemoved","GLOBAL",2) LeaveParty() EscapeAreaMove("AR4000",771,931,S)~ EXIT
	END
END

APPEND _bBod25j IF WEIGHT #-1 ~Global("_BBodhiBurns","GLOBAL",1)~ THEN BEGIN _bbodhiburnstalk1
SAY @2 /*The sun, it burns! I will find you later.*/
	IF ~~ THEN DO ~ApplySpellRES("_bbomi25",Myself) TransformItem("_bbohair","_bbohar2") SetGlobal("_BBodhiBurns","GLOBAL",2) SetGlobal("_BBodhiRemoved","GLOBAL",2) LeaveParty() EscapeAreaMove("AR4000",771,931,S)~ EXIT
	END
END


//1st Hexxat Cloak Talk
CHAIN IF WEIGHT #-1 ~Global("_bCloakTalk","GLOBAL",1)~ THEN HEXXA25J _BHexxatWhines
@3 /*You are wearing my cloak.*/
DO ~SetGlobal("_bCloakTalk","GLOBAL",2)~
== _bBod25j @4 /*It was Dragomir's cloak, was it not? <CHARNAME> killed Dragomir which makes it <CHARNAME>'s cloak, and <CHARNAME> gave it to me.*/
== HEXXA25J @5 /*You must return it to me.*/
== _bBod25j @6 /*Must I? It was a treasured gift.*/
= @7 /*I think I will keep it. Any complaints must go to our leader.*/
== HEXXA25J @8 /*This is unacceptable, <CHARNAME>. I cannot move in sunlight without it.*/
END
	++ @9 /*Sorry, Hexxat, I need Bodhi more than you.*/ + _bSIHex
	++ @10 /*You'll just have to find another one.*/ + _bSIHex
	++ @11 /*There's two vampires and one cloak; you'll just have to learn to share.*/ + _bSIHex
	++ @12 /*Hexxat's right, Bodhi, you need to return it.*/ EXTERN _bBod25j _bBodhiSad
	
CHAIN HEXXA25J _bSIHex
@13 /*This is disappointing. I hope you will change your mind.*/
EXIT

CHAIN _bBod25j _bBodhiSad
@14 /*You give it to me only to ask for its return? My heart is broken, <CHARNAME>. With the sun denied me, I will sulk in the dark.*/
DO ~ActionOverride("HEXXAT",TakePartyItem("ohhcloak")) XEquipItem("ohhcloak","_BBodhi",SLOT_CLOAK,EQUIP)~
EXIT

//2nd Hexxat Talk
CHAIN IF WEIGHT #-1 ~Global("_bCloakTalk","GLOBAL",3)~ THEN _bBod25j _BDoubleMintTwins
@15 /*It seems that Dragomir's cloak is not as unique as I thought.*/
DO ~SetGlobal("_bCloakTalk","GLOBAL",4)~
== HEXXA25J @16 /*He was a large vampire. When I had an opportunity, I recut his cloak and made two. I did not need the spare until now.*/
= @17 /*It is clear that <CHARNAME> relies on you. I will have to accept your company as well.*/
EXIT
