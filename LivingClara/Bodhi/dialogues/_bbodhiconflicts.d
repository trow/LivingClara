
//Conflicts between other NPC's and Bodhi. SoA and ToB

CHAIN IF ~Global("_bBodhiFirstTalk","GLOBAL",1)~ THEN _BBOD25J _bBodhiQuestionsSoul
	@0 /*I am alive, <CHARNAME>, but do I have a soul?*/
END
	++ @1 /*Yes, you took Imoen's soul. It's yours.*/
		DO ~SetGlobal("_bBodhiHasSoul","GLOBAL",1) SetGlobal("_bBodhiFirstTalk","GLOBAL",2)~ GOTO _bBodhiHasImoensSoul1
	++ @2 /*No, we killed you and took Imoen's soul back.*/ GOTO _bBodhiHasNoSoul1
	
CHAIN _BBOD25J	_bBodhiHasImoensSoul1
	@3 /*Yes, I remember now. It feels good to be whole.*/ 
EXIT

CHAIN _BBOD25J _bBodhiHasNoSoul1
	@4 /*Then I will not make the same mistake twice. I will find another cure for my affliction.*/
	DO ~LeaveParty() EscapeArea()~
EXIT
	
//If Aerie is in the party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bAerieObjectsBodhiSoA","GLOBAL",1)~ THEN AERIEJ _bAerieHatesBodhiSoA1
	@5 /*I... I cannot believe you would allow Bodhi to live! W-we are through!*/
	DO ~SetGlobal("_bAerieObjectsBodhiSoA","GLOBAL",2) SetGlobal("KickedOut","LOCALS",8)~
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @6 /*Wherever my sweet mourning dove goes, I shall surely follow.*/
	DO ~SetGlobal("KickedOut","LOCALS",8) LeaveParty() EscapeArea()~
	== AERIEJ @7 /*Goodbye, <CHARNAME>.*/
EXIT
	
CHAIN IF WEIGHT #-1 ~Global("_bAerieObjectsBodhiToB","GLOBAL",1)~ THEN AERIE25J _bAerieHatesBodhiToB1
	@5 /*I... I cannot believe you would allow Bodhi to live! W-we are through!*/
	DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bAerieObjectsBodhiToB","GLOBAL",2)~
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @6 /*Wherever my sweet mourning dove goes, I shall surely follow.*/
	DO ~SetGlobal("KickedOut","LOCALS",8) LeaveParty() EscapeArea()~
	== AERIE25J @7 /*Goodbye, <CHARNAME>.*/
EXIT

//If Imoen is in the party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bImoenObjectsBodhiSoA","GLOBAL",1)~ THEN IMOEN2J _bImoenHatesBodhiSoA1
	@8 /*<CHARNAME>, how could you do this? We grew up together!*/
	DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bImoenObjectsBodhiSoA","GLOBAL",2)~
	= @9 /*Without my soul, I'll keep getting weaker... I cannot stay here a moment longer.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bImoenObjectsBodhiToB","GLOBAL",1)~ THEN IMOEN25J _bImoenHatesBodhiToB1
	@8 /*<CHARNAME>, how could you do this? We grew up together!*/
	DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bImoenObjectsBodhiToB","GLOBAL",2)~
	= @9 /*Without my soul, I'll keep getting weaker... I cannot stay here a moment longer.*/
EXIT

//If Keldorn is in the party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bKeldornObjectsBodhiSoA","GLOBAL",1)~ THEN KELDORJ _bKeldornHatesBodhiSoA1
	@10 /*You saved Bodhi? She who has stolen the soul of your own kin?*/
	DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bKeldornObjectsBodhiSoA","GLOBAL",2)~
	= @11 /*Torm take you! I must warn the Order!*/
EXIT
	
CHAIN IF WEIGHT #-1 ~Global("_bKeldornObjectsBodhiToB","GLOBAL",1)~ THEN KELDO25J _bKeldornHatesBodhiToB1
	@10 /*You saved Bodhi? She who has stolen the soul of your own kin?*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bKeldornObjectsBodhiToB","GLOBAL",2)~
	= @11 /*Torm take you! I must warn the Order!*/
EXIT

//If Anomen has not failed his test and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bAnomenObjectsBodhiSoA","GLOBAL",1)~ THEN ANOMENJ _bAnomenHatesBodhiSoA1
	@12 /*You would side against the forces of righteousness?*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bAnomenObjectsBodhiSoA","GLOBAL",2)~
	= @13 /*If you call Bodhi a friend, then you are no friend of mine!*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAnomenObjectsBodhiToB","GLOBAL",1)~ THEN ANOME25J _bAnomenHatesBodhiToB1
	@12 /*You would side against the forces of righteousness?*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bAnomenObjectsBodhiToB","GLOBAL",2)~
	= @13 /*If you call Bodhi a friend, then you are no friend of mine!*/
EXIT	

//If Jaheira is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bJaheiraObjectsBodhiSoA","GLOBAL",1)~ THEN JAHEIRAJ _bJaheiraHatesBodhiSoA1
	@14 /*After everything we taught you, I cannot believe you would betray us so!*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bJaheiraObjectsBodhiSoA","GLOBAL",2)~
	= @15 /*If you are with Bodhi, we are finished!*/ 
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bJaheiraObjectsBodhiToB","GLOBAL",1)~ THEN JAHEI25J _bJaheiraHatesBodhiToB1
	@14 /*After everything we taught you, I cannot believe you would betray us so!*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bJaheiraObjectsBodhiToB","GLOBAL",2)~
	= @15 /*If you are with Bodhi, we are finished!*/ 
EXIT

//If Cernd is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bCerndObjectsBodhiSoA","GLOBAL",1)~ THEN CERNDJ _bCerndHatesBodhiSoA1
	@16 /*Bodhi is an unnatural creature and your betrayal of your own sister does not speak highly of you.*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bCerndObjectsBodhiSoA","GLOBAL",2)~
	= @17 /*I will walk alone in the woods... away from your corrupting influence.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bCerndObjectsBodhiToB","GLOBAL",1)~ THEN CERND25J _bCerndHatesBodhiToB1
	@16 /*Bodhi is an unnatural creature and your betrayal of your own sister does not speak highly of you.*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bCerndObjectsBodhiToB","GLOBAL",2)~
	= @17 /*I will walk alone in the woods... away from your corrupting influence.*/
EXIT	
	
//If Minsc is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bMinscObjectsBodhiSoA","GLOBAL",1)~ THEN MINSCJ _bMinscHatesBodhiSoA1
	@18 /*You would betray little Imoen and let the vampire keep her soul? Boo is shaking with rage, and I am finished with you!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bMinscObjectsBodhiSoA","GLOBAL",2)~
	== NEERAJ IF ~IfValidForPartyDialog("Neera") Global("_bMinscNeera","GLOBAL",2)~ THEN @19 /*Wait... are we leaving? Minsc, you have to warn me when you're going to do this!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) LeaveParty() EscapeArea()~
	== MINSCJ @20 /*We depart in righteous fury! */
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bMinscObjectsBodhiToB","GLOBAL",1)~ THEN MINSC25J _bMinscHatesBodhiToB1
	@18 /*You would betray little Imoen and let the vampire keep her soul? Boo is shaking with rage, and I am finished with you!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bMinscObjectsBodhiToB","GLOBAL",2)~
	== NEERA25J IF ~IfValidForPartyDialog("Neera") Global("_bMinscNeera","GLOBAL",2)~ THEN @19 /*Wait... are we leaving? Minsc, you have to warn me when you're going to do this!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) LeaveParty() EscapeArea()~
	== MINSC25J @20 /*We depart in righteous fury!*/
EXIT

//If Rasaad is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bRasaadObjectsBodhiSoA","GLOBAL",1)~ THEN RASAADJ _bRasaadHatesBodhiSoA1
	@21 /*The path you walk is too dark for me, my friend.*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bRasaadObjectsBodhiSoA","GLOBAL",2)~ 
	= @22 /*Beware that Bodhi does not end your life while you sleep.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bRasaadObjectsBodhiToB","GLOBAL",1)~ THEN RASAA25J _bRasaadHatesBodhiToB1
	@21 /*The path you walk is too dark for me, my friend.*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bRasaadObjectsBodhiToB","GLOBAL",2)~ 
	= @22 /*Beware that Bodhi does not end your life while you sleep.*/
EXIT

//If Valygar is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bValygarObjectsBodhiSoA","GLOBAL",1)~ THEN VALYGARJ _bValygarHatesBodhiSoA1
	@23 /*Bodhi lives an unnatural life. She renews her strength daily at the cost of other lives.*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bValygarObjectsBodhiSoA","GLOBAL",2)~
	= @24 /*If she is your friend, then I know where I stand.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bValygarObjectsBodhiToB","GLOBAL",1)~ THEN VALYG25J _bValygarHatesBodhiToB1
	@23 /*Bodhi lives an unnatural life. She renews her strength daily at the cost of other lives.*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bValygarObjectsBodhiToB","GLOBAL",2)~
	= @24 /*If she is your friend, then I know where I stand.*/
EXIT

//If Nalia is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bNaliaObjectsBodhiSoA","GLOBAL",1)~ THEN NALIAJ _bNaliaHatesBodshiSoA
	@25 /*I cannot believe you, <CHARNAME>! Bodhi hunts the very people we are supposed to be helping!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bNaliaObjectsBodhiSoA","GLOBAL",2)~
	= @26 /*I'm leaving. I hope I never see you again.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bNaliaObjectsBodhiToB","GLOBAL",1)~ THEN NALIA25J _bNaliaHatesBodshiToB
	@25 /*I cannot believe you, <CHARNAME>! Bodhi hunts the very people we are supposed to be helping!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bNaliaObjectsBodhiToB","GLOBAL",2)~
	= @26 /*I'm leaving. I hope I never see you again.*/
EXIT

//If Mazzy is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("_bMazzyObjectsBodhiSoA","GLOBAL",1)~ THEN MAZZYJ _bMazzyHatesBodhiSoA
	@27 /*You would sacrifice Imoen's soul to ally yourself with this monster?! Bodhi slaughters innocents daily!*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bMazzyObjectsBodhiSoA","GLOBAL",2)~
	= @28 /*I shall return with enough allies to end both your lives forever.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bMazzyObjectsBodhiToB","GLOBAL",1)~ THEN MAZZY25J _bMazzyHatesBodhiToB
	@27 /*You would sacrifice Imoen's soul to ally yourself with this monster?! Bodhi slaughters innocents daily!*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("_bMazzyObjectsBodhiToB","GLOBAL",2)~
	= @28 /*I shall return with enough allies to end both your lives forever.*/
EXIT

