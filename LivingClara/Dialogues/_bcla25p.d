BEGIN _bcla25p

APPEND _bcla25p IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN _BClaraKickedOutTOB
	SAY @0 /*So I guess this is it then?*/
		++ @1 /*No, I want you to stay.*/ DO ~JoinParty()~ EXIT
		+ ~AreaCheck("AR4500")~ + @2 /*Just wait here. I'll be back for you.*/ GOTO _bTOBCP2
		+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @2 /*Just wait here. I'll be back for you.*/ GOTO _bTOBCP3
		+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @3 /*Go back to my pocket plane. I'll find you there later on.*/ GOTO _bTOBCP4
		++ @93 /*No, I just want you to change what kind of thief you are.*/ GOTO _bClaraKitChange1
	END	
	
	IF ~~ THEN _bTOBCP2
	SAY @4 /*Uggh, fine. Just leave me here in hell. But this place is awful so you better come back soon.*/
	IF ~!Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([1702.1755]) Face(0)~ EXIT // This is where she'll wait for PC in the Pocket Plane.
	IF ~Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([1708.1400]) Face(0)~ EXIT // This is where she'll wait for PC in the Pocket Plane.
	END

	IF ~~ THEN _bTOBCP3
	SAY @5 /*Fine. I'll wait. But you had better come back soon.*/ 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
	END

	IF ~~ THEN _bTOBCP4
	SAY @6 /*Uggh, fine. Just portal me on back to hell whenever you don't want me. But your pocket plane is super boring so you better get me soon!*/ 
	IF ~!Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
	CreateVisualEffectObject("spdimndr",Myself)
	Wait(2)
	MoveBetweenAreas("AR4500",[1702.1755],0)~ EXIT //This is where she'll wait for PC in the Pocket Plane.
	IF ~Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
	CreateVisualEffectObject("spdimndr",Myself)
	Wait(2)
	MoveBetweenAreas("AR4500",[1708.1400],0)~ EXIT //This is where she'll wait for PC in the Pocket Plane. Should be near Anomen
	END
END

//Clara is waiting for you

APPEND _bcla25p IF ~Global("KickedOut","LOCALS",1) AreaCheck("AR4500")~ THEN _bTOBCP5
	SAY @7 /*Hi, <CHARNAME>. Can I *please* get out of here?*/
	++ @8 /*Yes. Come on then.*/ GOTO _bTOBCP6
	++ @9 /*Sorry, Clara. I don't need you yet.*/ GOTO _bTOBCP7
	END

	IF ~~ THEN _bTOBCP6
	SAY @10 /*Yes, finally! Let's go!*/ 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
	END
	
	IF ~~ THEN _bTOBCP7
	SAY @11 /*Uggh, fine. I'll go talk to Cespanar. He's been telling me stories about the Hell Planes and they're really interesting.*/
	IF ~~ THEN EXIT
	END
END
	
	
APPEND _bcla25p IF ~Global("KickedOut","LOCALS",1) !AreaCheck("AR4500")~ THEN _bTOBCP8
	SAY @12 /*Hi, <CHARNAME>. Are you here to take me back?*/
	++ @8 /*Yes. Come on then.*/ GOTO _bTOBCP9
	++  @13 /*Sorry, Clara. Just keep waiting for me here.*/ GOTO _bTOBCP10
	END

	IF ~~ THEN _bTOBCP9
	SAY @10 /*Yes, finally! Let's go!*/ 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
	END
	
	IF ~~ THEN _bTOBCP10
	SAY @14 /*Sure thing, <CHARNAME>, unless I get a better offer.*/
	IF ~~ THEN EXIT
	END
END


//Dialogue to change kit.
CHAIN _bcla25p _bClaraKitChange1
	@94 /*Oh good, I was getting bored of doing the same old thing every day. What kind of thief should I be?*/
END
	++ @95 /*An assassin!*/ DO ~AddKit(ASSASIN)~ GOTO _bClaraKitChange2
	++ @96 /*A bounty hunter!*/ DO ~AddKit(BOUNTYHUNTER)~ GOTO _bClaraKitChange3
	++ @97 /*A swashbuckler!*/ DO ~AddKit(SWASHBUCKLER)~ GOTO _bClaraKitChange4
	++ @98 /*A shadowdancer!*/ DO ~AddKit(SHADOWDANCER)~ GOTO _bClaraKitChange5
	++ @99 /*Don't specialize, just be good at everything.*/ DO ~AddKit(0)~ GOTO _bClaraKitChange6
	++ @100 /*Never mind, just stay what you are now.*/ DO ~JoinParty()~ EXIT
	
CHAIN _bcla25p _bClaraKitChange2
	@114 /**/
	= @101 /*Darkness everywhere, a man waits complacently, unaware of his surroundings, when... SLASH! Assassin Caroline strikes with deadly precision!*/
	= @102 /*The man stumbles away as poison floods his system leaving Caroline to vanish into the night.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN _bcla25p _bClaraKitChange3
	@114 /**/
	= @104 /*Hearing a noise, the loyal henchman slowly investigates, his weapon drawn. Unluckily for him, he falls into the waiting traps of Bounty Hunter Caroline! Wounded and immobilized, the henchman watches terrified as Caroline saunters over to his helpless form.*/
	= @105 /*With a laugh and the deft movement of her graceful wrist, she slits his throat... his blood draining out onto the floor.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN _bcla25p _bClaraKitChange4 
	@114 /**/
	= @106 /*Merchant sailors cower in fear as the dread pirate Caroline's schooner slowly overtakes them. One brave soul rises to fight but a quick slash of Caroline's sword ends his futile resistance.*/
	= @107 /*With the merchant galleon now in the hands of her loyal crew, Swashbuckler Caroline demands the sailors hand over any items of value on their persons in exchange for her mercy.*/
	= @108 /*The gold secured, Caroline offers the mercy of Umberlee instead, sending the merchants over the side into the Sea Goddess' salty embrace.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN _bcla25p _bClaraKitChange5
	@114 /**/
	= @109 /*Quick as a shadow, silent as death, Shadowdancer Caroline glides through the streets.*/
	= @110 /*No one sees her, no one hears her, and the only sign of her passing is the the trail of hapless victims that she leaves in her wake.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN _bcla25p _bClaraKitChange6
	@114 /**/
	= @111 /*Master of all trades, Caroline is a thief of unparalleled skill and ability.*/
	= @112 /*With no lock unopenable and no pocket unpickable, nothing stands in her way.*/
	= @113 /*Defenseless against her deadly versatility, Caroline's enemies have no recourse but to hide and pray she does not find them.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT
