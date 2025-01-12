//After you defeat the Demon by the tree in Dorn's quest.

CHAIN IF WEIGHT #-1 ~Dead("OHDXACH")~ THEN OHDSUMM _bSummerheigh1
	@0 /*You have defeated Xachrimos! I felt his presence depart this forest.*/
	DO ~AddexperienceParty(50000)~
END
	++ @1000 /*Indeed, the beast is dead.*/ + _bSumm2
	+ ~!Dead("OHDVERN") Global("_bVernusLivesDamnIt","GLOBAL",1)~ + @1001 /*Not only that, but I raised your son as well.*/ + _bSumm3
	
CHAIN OHDSUMM _bSumm2
@1 /*Thank you. I must go into the gorge and see... and then perhaps I will finally take my leave of this place.*/
DO ~EscapeArea()~
EXIT

CHAIN OHDSUMM _bSumm3
@1002 /*What? Vernus, he's alive? Thank you! Thank you so much! I can never repay you for your kindness!*/
= @1003 /*I must go into the gorge and see... And then perhaps we may finally take our leave of this place.*/
DO ~AddexperienceParty(50000) EscapeArea()~
EXIT

//Dorn at the Temple of Umberlee in Brynnlaw. He's talking with the Priestess of Umberlee. This dialogue is before Spellhold.
EXTEND_BOTTOM PPUMB01 0 /*The Bitch Queen of the Deeps welcomes you to her house, mortals. Do you seek her favor in your travels?*/
IF ~FallenPaladin("Dorn") IfValidForPartyDialog("Dorn") GlobalLT("SelfTalk","GLOBAL",2) Global("_bDornServesUmberlee","GLOBAL",0)~ THEN EXTERN DORNJ _bDornWantsUmberlee1
END

CHAIN DORNJ _bDornWantsUmberlee1
@2 /*I seek more than that. My name is Dorn Il-Khan and I...*/ 
== PPUMB01 @3 /*You have lost your master and seek to serve another. The motives of all who travel the waves are known to the Bitch Queen.*/
== DORNJ @4 /*I seek power. Will she grant it?*/
== PPUMB01 @5 /*Of course. She only asks a task to prove your worth, and fortunately for you, it is the task you already wish to complete.*/
	= @6 /*You wish to enter Spellhold, the asylum run by the Cowled Wizards. They use magic to teleport in and out and thus they hide themselves from her sight. The Bitch Queen wants them dead.*/
	= @7 /*Kill Perth the Adept, who lives here in town. He has a wardstone that will allow you to enter the asylum. When there is no one left to kill, return here for your reward.*/
== DORNJ @8 /*Then she will grant me power as her blackguard?*/
== PPUMB01 @9 /*Then she will grant you *additional* power. You will become her blackguard this instant if you wish.*/
	= @10 /*Simply repeat after me, "I, Dorn Il-Khan, swear to serve Umberlee, the Bitch Queen of the Deeps. I swear to kill for her and send those souls to her dark waters to keep her company."*/
== DORNJ @11 /*I, Dorn Il-Khan, swear to serve Umberlee, the Bitch Queen of the Deeps. I swear to kill for her and send those souls to her dark waters to keep her company."*/
== PPUMB01 @12 /*"I, Dorn Il-Khan, swear to die for her and serve her in death as I did in life."*/
== DORNJ @13 /*I, Dorn Il-Khan, swear to die for her and serve her in death as I did in life.*/
	DO ~RegainPaladinHood() SetGlobal("_bDornServesUmberlee","GLOBAL",1)~
== PPUMB01 @14 /*Umberlee accepts your service, Dorn Il-Khan. Now go and slay her enemies.*/
== DORNJ @15 /*Yes, I feel it! The power of the seas is mine!*/
	= @16 /*Come, <CHARNAME>, let us find blood and souls for the Bitch Queen!*/
EXIT

//This dialogue is after spellhold if Dorn became Umberlee's Blackguard before Spellhold.
EXTEND_BOTTOM PPUMB01 0 /*The Bitch Queen of the Deeps welcomes you to her house, mortals. Do you seek her favor in your travels?*/
IF ~IfValidForPartyDialog("Dorn") Global("_bDornServesUmberlee","GLOBAL",1) GlobalGT("SelfTalk","GLOBAL",1) Global("_bDornHasUmberleeSpell","GLOBAL",0)~ THEN EXTERN DORNJ _bDornServedUmberlee1
END

CHAIN DORNJ _bDornServedUmberlee1
@17 /*The wizards are dead! Spellhold is empty!*/
== PPUMB01 @18 /*You speak the truth! Finally this island belongs solely to those who ride the waves and the Bitch Queen is their master!*/
	= @19 /*You have served her well! And here is your reward.*/
	DO ~SetGlobal("_bDornHasUmberleeSpell","GLOBAL",1)~
	= @20 /*Now go and slay your enemies in her name.*/
EXIT

//This dialogue is if you never talked to the priestess before Spellhold
EXTEND_BOTTOM PPUMB01 0 /*The Bitch Queen of the Deeps welcomes you to her house, mortals. Do you seek her favor in your travels?*/
IF ~FallenPaladin("Dorn") IfValidForPartyDialog("Dorn") GlobalGT("SelfTalk","GLOBAL",1) Global("_bDornServesUmberlee","GLOBAL",0)~ THEN EXTERN DORNJ _bDornWantsUmberleePostSpellhold1
END

CHAIN DORNJ _bDornWantsUmberleePostSpellhold1
@2 /*I seek more than that. My name is Dorn Il-Khan and I...*/ 
== PPUMB01 @3 /*You have lost your master and seek to serve another. The motives of all who travel the waves are known to the Bitch Queen.*/
== DORNJ @4 /*I seek power. Will she grant it?*/
== PPUMB01 @21 /*Of course. You have already given her everything she could wish.*/
	= @22 /*As I said, the Bitch Queen knows the intent of all who travel the waves, yet the Cowled Wizards came and went using magic and thus hid themselves from her sight.*/
	= @23 /*But thanks to you, they are finished! Spellhold is broken, its protective wards shattered, and its denizens slain or scattered.*/
== DORNJ @8 /*Then she will grant me power as her blackguard?*/
== PPUMB01 @24 /*Indeed. Repeat after me, "I, Dorn Il-Khan, swear to serve Umberlee, the Bitch Queen of the Deeps. I swear to kill for her and send those souls to her dark waters to keep her company."*/
== DORNJ @11 /*I, Dorn Il-Khan, swear to serve Umberlee, the Bitch Queen of the Deeps. I swear to kill for her and send those souls to her dark waters to keep her company."*/
== PPUMB01 @12 /*"I, Dorn Il-Khan, swear to die for her and serve her in death as I did in life."*/
== DORNJ @13 /*I, Dorn Il-Khan, swear to die for her and serve her in death as I did in life.*/
	DO ~RegainPaladinHood() SetGlobal("_bDornServesUmberlee","GLOBAL",1)~
== PPUMB01 @14 /*Umberlee accepts your service, Dorn Il-Khan. Now go and slay her enemies.*/
== DORNJ @15 /*Yes, I feel it! The power of the seas is mine!*/
	DO ~SetGlobal("_bDornHasUmberleeSpell","GLOBAL",1)~
	= @16 /*Come, <CHARNAME>, let us find blood and souls for the Bitch Queen!*/
EXIT


//When Dorn first walks into the Temple district if he's fallen.
CHAIN IF ~Global("_bDornPaladinTalos","GLOBAL",1)~ THEN DORNJ _bDornWantsServeTalos1
	@25 /*I was thinking, <CHARNAME>, perhaps I should find a source to regain my power.*/
DO ~SetGlobal("_bDornPaladinTalos","GLOBAL",2)~
END
	++ @26 /*What did you have in mind?*/ GOTO _bDornWantsServeTalos2
	++ @27 /*Didn't we just do all this work to free you? Now you want to go right back?*/ GOTO _bDornWantsServeTalos2
	++ @28 /*Do what you want. Just don't bother me about it.*/ EXIT
	
CHAIN DORNJ _bDornWantsServeTalos2
	@29 /*Serving demons was a fool's bargain, but what about a god? Clerics and paladins abound and the gods are lenient masters.*/
END
	++ @30 /*Dorn, just forget this. Be happy with what you have.*/ GOTO _bDornWantsServeTalos3
	++ @31 /*An excellent idea, Dorn, but which god?*/ GOTO _bDornWantsServeTalos4
	++ @28 /*Do what you want. Just don't bother me about it.*/ EXIT
	
CHAIN DORNJ _bDornWantsServeTalos3
	@32 /*Easy for you to say. I will have the power I deserve.*/ 
	EXIT
	
CHAIN DORNJ _bDornWantsServeTalos4
	@33 /*A god that would not shy from bloodshed. There is no shortage of them.*/
	EXIT
	
//Talking with first priest outside of Talos
INTERJECT_COPY_TRANS2 ACOLYTE1 0 _bDornTalksToTalosPriests1 /*Come, my children! Fear the power of Talos! Join us in reverent worship to avoid the disasters that are sure to strike us down in the days to come!*/
	== DORNJ IF ~Global("_bDornPaladinTalos","GLOBAL",2) IfValidForPartyDialog("Dorn") FallenPaladin("Dorn")~ THEN
		@34 /*You, priest, I am Dorn Il-Khan. I wish to harness the power of Talos.*/
	== ACOLYTE1 @35 /*A blackguard... a fallen blackguard in need of a master. Go inside the temple and speak to Mistress Ada. I'm sure we'll find a use for you.*/ 
	END

//Talking with 2nd priest outside of talos. All three talks use the same name so only one should happen.
INTERJECT_COPY_TRANS2 CLDAD 5 _bDornTalksToTalosPriests2 /**ahem* It is... not against my vows to drink the cups or sample the flesh of a willing woman. We Talassans favor pleasure in the face of the destruction of the Stormlord.*/
	== DORNJ IF ~Global("_bDornPaladinTalos","GLOBAL",2) IfValidForPartyDialog("Dorn") FallenPaladin("Dorn")~ THEN 
		@34 /*You, priest, I am Dorn Il-Khan. I wish to harness the power of Talos.*/
	== CLDAD @36 /*Oh! Uh... go inside the temple. Mistress Ada will help you.*/
	END
	
INTERJECT_COPY_TRANS2 CLDAD 6 _bDornTalksToTalosPriests2 /*Whew! I am certainly glad that situation was not what it seemed! There are many... ah... celebrations I have but hazy memories of!*/
	== DORNJ IF ~Global("_bDornPaladinTalos","GLOBAL",2) IfValidForPartyDialog("Dorn") FallenPaladin("Dorn")~ THEN 
		@34 /*You, priest, I am Dorn Il-Khan. I wish to harness the power of Talos.*/
	== CLDAD @36 /*Oh! Uh... go inside the temple. Mistress Ada will help you.*/
	END

INTERJECT_COPY_TRANS2 CLDAD 7 _bDornTalksToTalosPriests2 /*What are... what are you looking at? Nothing to see here.*/
	== DORNJ IF ~Global("_bDornPaladinTalos","GLOBAL",2) IfValidForPartyDialog("Dorn") FallenPaladin("Dorn")~ THEN 
		@34 /*You, priest, I am Dorn Il-Khan. I wish to harness the power of Talos.*/
	== CLDAD @36 /*Oh! Uh... go inside the temple. Mistress Ada will help you.*/
	END
	
//Talking with Mistress Ada, the priestess of Talos
EXTEND_BOTTOM TALMISS 0 /*Chaos prevail! Do you require the services of Talos?*/
	+~Global("_bDornPaladinTalos","GLOBAL",2) IfValidForPartyDialog("Dorn") FallenPaladin("Dorn")~+ @37 /*Dorn Il-Khan wishes to serve Talos.*/ GOTO _bDornAsksAdaServe1
	END
	
CHAIN TALMISS _bDornAsksAdaServe1
	@38 /*Dorn Il-Khan, you are known to us. Did you lose the favor of your master, Ur-Gothoz?*/
	== DORNJ @39 /*Hah! I slew him and trapped his soul within my sword for all eternity. I did the same with the marilith Azothet, who sought to trick me into her service.*/
	== TALMISS IF ~OR(2) !Dead("acolyte2") !Dead("dawnmas")~ THEN @40 /*Talos could use your service. I have but one task for you. Go to the Temple of Lathander and slay them all. Return when you are finished.*/
	DO ~SetGlobal("_bDornPaladinTalos","GLOBAL",3)~
	== TALMISS IF ~Dead("acolyte2") Dead("dawnmas")~ THEN @41 /*You slew the Temple of Lathander as well. You are a worthy addition. Your wish is granted.*/
	DO ~SetGlobal("_bDornPaladinTalos","GLOBAL",4)~
	== DORNJ IF ~Dead("acolyte2") Dead("dawnmas")~ THEN @42 /*Yes, I feel it! The power of the storm is mine!*/ 
	DO ~RegainPaladinHood() SetGlobal("_bDornServesTalos","GLOBAL",1)~
	== TALMISS IF ~Dead("acolyte2") Dead("dawnmas")~ THEN @43 /*As long as you don't forget whom you serve. You destroy for the Storm Lord now.*/
	== TALMISS @44 /*If there is nothing else... begone!*/
	EXIT
	
EXTEND_BOTTOM TALMISS 0 /*Chaos prevail! Do you require the services of Talos?*/
	+~Global("_bDornPaladinTalos","GLOBAL",3) IfValidForPartyDialog("Dorn") Dead("acolyte2") Dead("dawnmas") FallenPaladin("Dorn")~+ 
	@45 /*The Temple of Lathander is no more.*/ GOTO _bDornAsksAdaServe2
	END

CHAIN TALMISS _bDornAsksAdaServe2
	@46 /*It was what they deserved. Dorn Il-Khan, you are a worthy addition to our Temple. Your wish is granted.*/
	== DORNJ @42 /*Yes, I feel it! The power of the storm is mine!*/ 
	DO ~RegainPaladinHood() SetGlobal("_bDornServesTalos","GLOBAL",1)~
	== TALMISS @43 /*As long as you don't forget whom you serve. You destroy for the Storm Lord now.*/
		= @44 /*If there is nothing else... begone!*/
	EXIT
	
//Chapter 6 Talos Quest (to get spells)
EXTEND_BOTTOM TALMISS 0 /*Chaos prevail! Do you require the services of Talos?*/
IF~Global("_bDornServesTalos","GLOBAL",1) IfValidForPartyDialog("Dorn") Global("_bTalosWantsDornKillOrder","GLOBAL",0) GlobalGT("SelfTalk","GLOBAL",1)~THEN GOTO _bTalosWantsDornKillOrder1
END

CHAIN TALMISS _bTalosWantsDornKillOrder1
	@47 /*Dorn Il-Khan, it is about time you returned!*/
	=
	@48 /*The Order of the Radiant Heart has insulted us for too long! Go into their temple and slaughter them all!*/
	DO ~SetGlobal("_bTalosWantsDornKillOrder","GLOBAL",1)~
END
	+~Dead("kayl2") Dead("heartg4") Dead("heartg3") Dead("heartg5") Dead("hprelate")~+ 
	@49 /*But we have already done so.*/ GOTO _bTalosWantsDornKillOrder2
	++ @50 /*We shall do it immediately.*/ EXIT
	++ @51 /*That seems like too much bloodshed, even for me.*/ GOTO _bTalosWantsDornKillOrder3
	++ @52 /*What's in it for us?*/ GOTO _bTalosWantsDornKillOrder4
		
CHAIN TALMISS _bTalosWantsDornKillOrder2
	@53 /*Talos detects that you speak the truth! Impressive.*/ 
	DO ~SetGlobal("_bTalosWantsDornKillOrder","GLOBAL",2)~
	=
	@54 /*Dorn Il-Khan, Talos grants you additional power. All will tremble before the Storm Lord!*/
	== DORNJ @55 /*Yes! I am stronger than I ever was before!*/
	DO ~SetGlobal("_bDornHasTalosSpells","GLOBAL",1)~
	=
	@56 /*Come, <CHARNAME>, let us find souls to send to the Storm Lord.*/ 
EXIT

CHAIN TALMISS _bTalosWantsDornKillOrder3
	@57 /*Then you have no more business here. Begone!*/
EXIT

CHAIN TALMISS _bTalosWantsDornKillOrder4
	@58 /*Send their souls to Talos and he will grant Dorn additional power. Surely that is acceptable?*/
END
	++ @59 /*Yes, it is.*/ EXIT
	++ @60 /*Nah, I can't be bothered.*/ EXTERN TALMISS _bTalosWantsDornKillOrder3
	
//After you kill the order
EXTEND_BOTTOM TALMISS 0 /*Chaos prevail! Do you require the services of Talos*/
	+~Global("_bDornServesTalos","GLOBAL",1) IfValidForPartyDialog("Dorn") Global("_bTalosWantsDornKillOrder","GLOBAL",1) 
	Dead("kayl2") Dead("heartg4") Dead("heartg3") Dead("heartg5") Dead("hprelate")~+ @61 /*The Order is destroyed!*/ EXTERN TALMISS _bTalosWantsDornKillOrder2 /*above*/
END


//Additions to Resurrection Gorge Talks to save Vernus
EXTEND_BOTTOM DORNJ 725 /*The ritual requires the sacrifice of a sapient being.*/
	+ ~Global("OHD_vernus_resurrected","OH5120",1)~ + @62 /*Oh. In that case, give me a moment to move Vernus out of the way.*/ + _bVernusSurvives
END

CHAIN DORNJ _bVernusSurvives
@63 /*Why? The druid would make a fine sacrifice. Let him pay for his folly one more time.*/
END
	++ @64 /*I think he's paid enough... Vernus, stand over there.*/ EXTERN OHDVERN _bVernusSurvives2
	++ @65 /*You're right. He's perfect... Vernus, stay right there.*/ EXTERN OHDVERN 38

CHAIN OHDVERN _bVernusSurvives2
@66 /*Umm, all right. If you want.*/
DO ~SetGlobal("_bVernusLivesDamnIt","GLOBAL",1) MoveToPoint([360.594])~
EXIT

EXTEND_BOTTOM DORNJ 753 /*Someone has entered the circle. Now let me draw the name upon the ground.*/
	+ ~Global("OHD_ritual_target","OH5120",19)~ + @67 /*Wait. I don't want to kill the druid... Vernus, stand over there.*/ DO ~SetGlobal("OHD_ritual_target","OH5120",0)~ EXTERN OHDVERN _bVernusSurvives2
END

//Backup line if you manage to raise Vernus during/after the ritual
CHAIN IF ~Global("OHD_vernus_resurrected","OH5120",1) NumberOfTimesTalkedTo(0)~ THEN OHDVERN _bVernDefault1
@68 /*What—? I'm alive? This—this is fantastic! Hahaha! But—but who are you, and what are you doing here?*/
END
	++ @69 /*I am <CHARNAME>. I came to help.*/ +  _bVernDefault2
	++ @70 /*I needed that ritual circle. Your corpse was in my way.*/ +  _bVernDefault2
	++ @71 /*You may call me <CHARNAME>, but my business is my own.*/ +  _bVernDefault2
	
CHAIN OHDVERN _bVernDefault2
@72 /*Well, you have my thanks.*/
DO ~SetGlobal("_bVernusLivesDamnIt","GLOBAL",1)~
EXIT

//New default line
CHAIN IF ~Global("OHD_vernus_resurrected","OH5120",1) !NumberOfTimesTalkedTo(0)~ THEN OHDVERN _bVernDefault
@73 /*Hello, <CHARNAME>. Thank you for saving me.*/
EXIT
