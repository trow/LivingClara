//Selling the Cloak of Dragomir to Bodhi

EXTEND_BOTTOM BODHI 36 /*Do not delay. Standing idle here makes me... difficult.*/
	++ @0 /*I will return soon.*/ EXIT
	+~PartyHasItem("OHHCLOAK")~+ @1 /*Have you heard of the Cloak of Dragomir?*/ GOTO _bCNAsksBodhiHeardCloak1
END

EXTEND_BOTTOM BODHI 59 /*Your task is clear, yet you delay. Keep your word; kill Armagaran Vulova and put the Shadow Thief items I gave you in the fountain. Return once the deed is done.*/
	++ @0 /*I will return soon.*/ EXIT
	+~PartyHasItem("OHHCLOAK")~+ @1 /*Have you heard of the Cloak of Dragomir?*/ GOTO _bCNAsksBodhiHeardCloak1
END

EXTEND_BOTTOM BODHI 60 /*Your task is clear, yet you delay. Go to the Shadow Thief guild and rescue Palern Flynn from the Shadow Thieves. I await your return.*/
	++ @0 /*I will return soon.*/ EXIT
	+~PartyHasItem("OHHCLOAK")~+ @1 /*Have you heard of the Cloak of Dragomir?*/ GOTO _bCNAsksBodhiHeardCloak1
END

EXTEND_BOTTOM BODHI 75 /*Back so soon? Return only when Aran Linvail is dead.*/
	++ @0 /*I will return soon.*/ EXIT
	+~PartyHasItem("OHHCLOAK")~+ @1 /*Have you heard of the Cloak of Dragomir?*/ GOTO _bCNAsksBodhiHeardCloak1
END

EXTEND_BOTTOM BODHI 113 /*I trust you will waste no more time here? The ship awaits. Imoen awaits. Irenicus awaits.*/
	++ @0 /*I will return soon.*/ EXIT
	+~PartyHasItem("OHHCLOAK")~+ @1 /*Have you heard of the Cloak of Dragomir?*/ GOTO _bCNAsksBodhiHeardCloak1
END

CHAIN BODHI _bCNAsksBodhiHeardCloak1
	@2 /*Yes, it allows a vampire to dance unharmed in sunlight. No one has seen Dragomir in ages though. He's a myth, a rumor, and likely his cloak is as well.*/
	END
	++ @3 /*Probably. I'll be going.*/ EXIT
	+~IfValidForPartyDialog("Hexxat")~+ @4 /*Actually, I killed him and have the cloak right here. Would you like to buy it?*/  EXTERN HEXXATJ _bHexxatObjectsSellBodhiCloak1
	+~!IfValidForPartyDialog("Hexxat")~+ @4 /*Actually, I killed him and have the cloak right here. Would you like to buy it?*/ GOTO  _bNoHexxatSellBodhiCloak1
	
CHAIN HEXXATJ _bHexxatObjectsSellBodhiCloak1
	@5 /*What are you doing, <CHARNAME>? I will not let you sell my cloak! I would die first!*/
	END
	++ @6 /*Then die. I have no need of you.*/ GOTO _bHexxatObjectsSellBodhiCloak2
	++ @7 /*Very well, we will not part with it. Farewell, Bodhi, we will return.*/ EXIT
	++ @8 /*Uggh, fine. If you're going to whine about it. Sorry, Bodhi, you're out of luck. Maybe later.*/ EXIT
	
APPEND HEXXATJ IF ~~ THEN _bHexxatObjectsSellBodhiCloak2
	SAY @9 /*I cannot win against you all. I will cooperate for now.*/
	IF ~~ THEN EXTERN BODHI _bNoHexxatSellBodhiCloak1
	END
END

CHAIN BODHI _bNoHexxatSellBodhiCloak1
	@10 /*You truly have the cloak? I have recently acquired some rare and valuable illithium ore. I was hoping to commission a flattering statue of myself, but I could part with it for the cloak.*/
	=
	@11 /*You will want money too, of course, say $5,000 gold?*/
	END
	++ @12 /*Nah, I think I'll keep it.*/ EXIT
	++ @13 /*Deal.*/ DO ~GiveGoldForce(5000)~ GOTO _bSellBodhiCloak1
	+~CheckStatGT(LastTalkedToBy,12,CHR)~+ @14 /*How about 6000?*/ DO ~GiveGoldForce(6000)~ GOTO _bSellBodhiCloak1
	+~CheckStatGT(LastTalkedToBy,13,CHR)~+ @15 /*How about 7000?*/ DO ~GiveGoldForce(7000)~ GOTO _bSellBodhiCloak1 
	+~CheckStatGT(LastTalkedToBy,14,CHR)~+ @16 /*How about 8000?*/ DO ~GiveGoldForce(8000)~ GOTO _bSellBodhiCloak1
	+~CheckStatGT(LastTalkedToBy,15,CHR)~+ @17 /*How about 9000?*/ DO ~GiveGoldForce(9000)~ GOTO _bSellBodhiCloak1 
	+~CheckStatGT(LastTalkedToBy,16,CHR)~+ @18 /*How about 10,000?*/ DO ~GiveGoldForce(10000)~ GOTO _bSellBodhiCloak1
	+~CheckStatGT(LastTalkedToBy,17,CHR)~+ @19 /*How about 11,000?*/ DO ~GiveGoldForce(11000)~ GOTO _bSellBodhiCloak1
	+~CheckStatGT(LastTalkedToBy,18,CHR)~+ @20 /*I'll let you have it for 12,000*/ DO ~GiveGoldForce(12000)~ GOTO _bSellBodhiCloak1
	+~CheckStatGT(LastTalkedToBy,19,CHR)~+ @21 /*I'll let you have it for 13,000*/ DO ~GiveGoldForce(13000)~ GOTO _bSellBodhiCloak1
	+~CheckStatGT(LastTalkedToBy,20,CHR)~+ @22 /*I'll let you have it for 14,000*/ DO ~GiveGoldForce(14000)~ GOTO _bSellBodhiCloak1
	+~CheckStatGT(LastTalkedToBy,21,CHR)~+ @23 /*I want my 15,000 gold back.*/ DO ~GiveGoldForce(15000)~ GOTO _bSellBodhiCloak1
	
CHAIN BODHI _bSellBodhiCloak1
	@24 /*At last! No more skulking in the dark. I will hunt fearlessly with the sun shining upon my face. All will gaze upon me and dispair.*/
	DO ~SetGlobal("_bBodhihasCloakofDragomir","GLOBAL",1) TakePartyItem("OHHCLOAK") ActionOverride(LastTalkedToBy,CreateItem("misc5k",0,0,0)) AddexperienceParty(16250)~
	=
	@25 /*You have done me a great service, <CHARNAME>. I will not forget this.*/
	EXIT


	

