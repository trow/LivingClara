BEGIN YF_cl25p

APPEND YF_cl25p IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN YF_ClaraKickedOutTOB
	SAY @0 /*So I guess this is it then?*/
		++ @1 /*No, I want you to stay.*/ DO ~JoinParty()~ EXIT
		+ ~AreaCheck("AR4500")~ + @2 /*Just wait here. I'll be back for you.*/ GOTO YF_TOBCP2
		+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @2 /*Just wait here. I'll be back for you.*/ GOTO YF_TOBCP3
		+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @3 /*Go back to my pocket plane. I'll find you there later on.*/ GOTO YF_TOBCP4
		+ ~!Kit(Myself,C0TRICKS)~ + @93 /*No, I just want you to change what kind of thief you are.*/ GOTO YF_ClaraKitChange1
	END	
	
	IF ~~ THEN YF_TOBCP2
	SAY @4 /*Uggh, fine. Just leave me here in hell. But this place is awful so you better come back soon.*/
	IF ~!Global("YF_LordAndLadyDelryn","GLOBAL",5)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([1702.1755]) Face(0)~ EXIT // This is where she'll wait for PC in the Pocket Plane.
	IF ~Global("YF_LordAndLadyDelryn","GLOBAL",5)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([1708.1400]) Face(0)~ EXIT // This is where she'll wait for PC in the Pocket Plane.
	END

	IF ~~ THEN YF_TOBCP3
	SAY @5 /*Fine. I'll wait. But you had better come back soon.*/ 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
	END

	IF ~~ THEN YF_TOBCP4
	SAY @6 /*Uggh, fine. Just portal me on back to hell whenever you don't want me. But your pocket plane is super boring so you better get me soon!*/ 
	IF ~!Global("YF_LordAndLadyDelryn","GLOBAL",5)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
	CreateVisualEffectObject("spdimndr",Myself)
	Wait(2)
	MoveBetweenAreas("AR4500",[1702.1755],0)~ EXIT //This is where she'll wait for PC in the Pocket Plane.
	IF ~Global("YF_LordAndLadyDelryn","GLOBAL",5)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
	CreateVisualEffectObject("spdimndr",Myself)
	Wait(2)
	MoveBetweenAreas("AR4500",[1708.1400],0)~ EXIT //This is where she'll wait for PC in the Pocket Plane. Should be near Anomen
	END
END

//Clara is waiting for you

APPEND YF_cl25p IF ~Global("KickedOut","LOCALS",1) AreaCheck("AR4500")~ THEN YF_TOBCP5
	SAY @7 /*Hi, <CHARNAME>. Can I *please* get out of here?*/
	++ @8 /*Yes. Come on then.*/ GOTO YF_TOBCP6
	++ @9 /*Sorry, Clara. I don't need you yet.*/ GOTO YF_TOBCP7
	END

	IF ~~ THEN YF_TOBCP6
	SAY @10 /*Yes, finally! Let's go!*/ 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
	END
	
	IF ~~ THEN YF_TOBCP7
	SAY @11 /*Uggh, fine. I'll go talk to Cespanar. He's been telling me stories about the Hell Planes and they're really interesting.*/
	IF ~~ THEN EXIT
	END
END
	
	
APPEND YF_cl25p IF ~Global("KickedOut","LOCALS",1) !AreaCheck("AR4500")~ THEN YF_TOBCP8
	SAY @12 /*Hi, <CHARNAME>. Are you here to take me back?*/
	++ @8 /*Yes. Come on then.*/ GOTO YF_TOBCP9
	++  @13 /*Sorry, Clara. Just keep waiting for me here.*/ GOTO YF_TOBCP10
	END

	IF ~~ THEN YF_TOBCP9
	SAY @10 /*Yes, finally! Let's go!*/ 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
	END
	
	IF ~~ THEN YF_TOBCP10
	SAY @14 /*Sure thing, <CHARNAME>, unless I get a better offer.*/
	IF ~~ THEN EXIT
	END
END


//Dialogue to change kit.
CHAIN YF_cl25p YF_ClaraKitChange1
	@94 /*Oh good, I was getting bored of doing the same old thing every day. What kind of thief should I be?*/
END
	++ @95 /*An assassin!*/ DO ~AddKit(ASSASIN)~ GOTO YF_ClaraKitChange2
	++ @96 /*A bounty hunter!*/ DO ~AddKit(BOUNTYHUNTER)~ GOTO YF_ClaraKitChange3
	++ @97 /*A swashbuckler!*/ DO ~AddKit(SWASHBUCKLER)~ GOTO YF_ClaraKitChange4
	++ @98 /*A shadowdancer!*/ DO ~AddKit(SHADOWDANCER)~ GOTO YF_ClaraKitChange5
	++ @99 /*Don't specialize, just be good at everything.*/ DO ~AddKit(0)~ GOTO YF_ClaraKitChange6
	++ @100 /*Never mind, just stay what you are now.*/ DO ~JoinParty()~ EXIT
	
CHAIN YF_cl25p YF_ClaraKitChange2
	@114 /**/
	= @101 /*Darkness everywhere, a man waits complacently, unaware of his surroundings, when... SLASH! Assassin Caroline strikes with deadly precision!*/
	= @102 /*The man stumbles away as poison floods his system leaving Caroline to vanish into the night.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN YF_cl25p YF_ClaraKitChange3
	@114 /**/
	= @104 /*Hearing a noise, the loyal henchman slowly investigates, his weapon drawn. Unluckily for him, he falls into the waiting traps of Bounty Hunter Caroline! Wounded and immobilized, the henchman watches terrified as Caroline saunters over to his helpless form.*/
	= @105 /*With a laugh and the deft movement of her graceful wrist, she slits his throat... his blood draining out onto the floor.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN YF_cl25p YF_ClaraKitChange4 
	@114 /**/
	= @106 /*Merchant sailors cower in fear as the dread pirate Caroline's schooner slowly overtakes them. One brave soul rises to fight but a quick slash of Caroline's sword ends his futile resistance.*/
	= @107 /*With the merchant galleon now in the hands of her loyal crew, Swashbuckler Caroline demands the sailors hand over any items of value on their persons in exchange for her mercy.*/
	= @108 /*The gold secured, Caroline offers the mercy of Umberlee instead, sending the merchants over the side into the Sea Goddess' salty embrace.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN YF_cl25p YF_ClaraKitChange5
	@114 /**/
	= @109 /*Quick as a shadow, silent as death, Shadowdancer Caroline glides through the streets.*/
	= @110 /*No one sees her, no one hears her, and the only sign of her passing is the the trail of hapless victims that she leaves in her wake.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN YF_cl25p YF_ClaraKitChange6
	@114 /**/
	= @111 /*Master of all trades, Caroline is a thief of unparalleled skill and ability.*/
	= @112 /*With no lock unopenable and no pocket unpickable, nothing stands in her way.*/
	= @113 /*Defenseless against her deadly versatility, Caroline's enemies have no recourse but to hide and pray she does not find them.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT
