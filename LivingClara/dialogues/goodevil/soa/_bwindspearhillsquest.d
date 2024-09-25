//Anomen's dialogue if the order is hostile and you're in Amn.

CHAIN IF WEIGHT #-1 ~Global("AnomenisNotKnight","GLOBAL",1) Global("_bAnomenFearsOrder","GLOBAL",1)~ THEN ANOMENJ _bWSAnomenFearsOrder1
	@1 /*Are you mad, <CHARNAME>? We are wanted fugitives. The Order will hunt us down! Showing our faces in Athkatla is suicide!*/
		DO ~SetGlobal("_bAnomenFearsOrder","GLOBAL",2)~
END
	++ @2 /*All who oppose us shall fall!*/ EXIT
	++ @3 /*You are right, let's return to the Windspear Hills and ask if Garren Windspear can help us.*/ EXIT
	++ @4 /*Ever since they kicked you out, you've wanted to fight the Order. Now you can!*/ GOTO _bWSAnomenFearsOrder2
	
CHAIN ANOMENJ _bWSAnomenFearsOrder2
	@5 /*I would test myself against a single knight, new to his station, but that will not be what we will face! We will face an overwhelming force meant to wipe evil from the earth!*/
	= @6 /*Against them, we cannot hope to triumph.*/
END
	++ @2 /*All who oppose us shall fall!*/ EXIT
	++ @3 /*You are right, let's return to the Windspear Hills and ask if Garren Windspear can help us.*/ EXIT
	++ @7 /*Stop being such a coward, Anomen.*/ EXIT

//Same but for if Anomen isn't evil.
CHAIN IF WEIGHT #-1 ~Global("AnomenisNotKnight","GLOBAL",0) Global("_bAnomenFearsOrder","GLOBAL",1)~ THEN ANOMENJ _bWSAnomenFearsOrder3
	@8 /*You refuse to accept Garren Windspear's help and return to Athkatla a fugitive? I will not be part of this, <CHARNAME>. I will leave and try to make amends with the Order on my own.*/
		DO ~SetGlobal("_bAnomenFearsOrder","GLOBAL",2) LeaveParty() EscapeArea()~
EXIT

//Keldorn's dialogue
CHAIN IF WEIGHT #-1 ~Global("_bKeldornFearsOrder","GLOBAL",1)~ THEN KELDORJ _bWSKeldornFearsOrder1
	@9 /*You refuse to accept Garren Windspear's Help and you return here as a wanted man? I will not help you fight the Order! I will go and beg for forgiveness on my own.*/
		DO ~SetGlobal("_bKeldornFearsOrder","GLOBAL",2) LeaveParty() EscapeArea()~
EXIT

//Mazzy's dialogue
CHAIN IF WEIGHT #-1 ~Global("_bMazzyFearsOrder","GLOBAL",1)~ THEN MAZZYJ _bWSMazzyFearsOrder1
	@10 /*Garren Windspear offered help, yet you turn your back on him and now return to Athkatla to face the Order? I cannot join you in this endeavor. I will return home. Do not look for me there.*/
		DO ~SetGlobal("_bMazzyFearsOrder","GLOBAL",2) LeaveParty() EscapeArea()~
EXIT

//Knights of the Order Arrive
CHAIN IF WEIGHT #-1 ~Global("_bOrderAttacksCN","GLOBAL",1)~ THEN KNIGHT _bKnightsoftheOrderCondemn1
	@11 /*In the name of the Most Noble Order of the Radiant Heart, we sentence you to death for your crimes.*/
		DO ~SetGlobal("_bOrderAttacksCN","GLOBAL",2)~
== KNIGHT IF ~IfValidForPartyDialog("_bBodhi")~ THEN @12 /*You shall never escape us, Bodhi, Queen of the Vampires! We shall hunt you and your black-hearted friends down wherever you choose to flee!*/
== MINSCJ IF ~IfValidForPartyDialog("Minsc")~ THEN @13 /*No, you must listen! This all a big misunderstanding. My hamster here will explain.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @14 /*Paladins... stupid, bloodthirsty, usstan'sargh, viggtu...*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie")~ THEN @15 /*I... No... Please don't h-hurt us! We didn't do anything wrong... really...*/
== JAHEIRAJ IF ~IfValidForPartyDialog("Jaheira")~ THEN @16 /*Your self-righteousness blinds you to the truth! We are innocent!*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @17 /*'Tis about time <CHARNAME> let me kill some paladins! I'd been thinkin' we'd never have any fun!*/
== DORNJ IF ~IfValidForPartyDialog("Dorn")~ THEN @18 /*At last... my sword hungers for blood.*/
== OHHFAK IF ~IfValidForPartyDialog("OHHFAK")~ THEN @19 /*This is a distraction. We must go to Dragomir's tomb.*/
== _bClaraJ IF ~IfValidForPartyDialog("_bClara")~ THEN @20 /*We're going to fight paladins now? I hope you know what you're doing, <CHARNAME>.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen")~ THEN @21 /*This is all a mistake! We are not your enemy!*/
== WILSONJ IF ~IfValidForPartyDialog("WILSON")~ THEN @22 /*Snuffle. Growl. ROAR!*/
== NALIAJ IF ~IfValidForPartyDialog("Nalia")~ THEN @23 /*Please stop this. We didn't do anything wrong!*/
== RASAADJ IF ~IfValidForPartyDialog("RASAAD")~ THEN @24 /*I do not wish to fight you. But I shall defend myself if pressed.*/
== JANJ IF ~IfValidForPartyDialog("Jan")~ THEN @25 /*Now this would be a good time to disappear. Where did I put my patented Jansen Cloak of Camouflage...?*/
== NEERAJ IF ~IfValidForPartyDialog("NEERA")~ THEN @26 /*This so isn't fair. I didn't even blow anyone up this time.*/
== HEXXATJ IF ~IfValidForPartyDialog("HEXXAT")~ THEN @27 /*You dare to hunt me? I shall feed.*/
== VALYGARJ IF ~IfValidForPartyDialog("Valygar")~ THEN @28 /*See what evils magic brings? Without those foul illusions, we would not be here.*/
== CERNDJ IF ~IfValidForPartyDialog("Cernd")~ THEN @29 /*Do you not know the laws of nature? We are not the prey here. We are the predators.*/
== EDWINJ IF ~IfValidForPartyDialog("Edwin")~ THEN @30 /*Foolish paladins, your annihilation awaits! (There are knights everywhere... no time to aim... just keep casting...)*/
== KNIGHT @31 /*For the Order!*/
EXIT

//After the Battle is Done.
INTERJECT_COPY_TRANS4 KNIGHT 0 _bKnightsOfTheOrderFlee1 /*You may have defeated us for now, but the Knights of the Most Noble Order of the Radiant Heart will return!*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen")~ THEN @33 /*That is right! Flee back to your masters and tell them that we are not to be trifled with!*/
	= @34 /*<CHARNAME>, we must push our advantage! Let us storm the Order and demand the surrender of Prelate Wessalen himself!*/
== WILSONJ IF ~IfValidForPartyDialog("Wilson")~ THEN @35 /*ROAR!*/
== _bClaraJ IF ~IfValidForPartyDialog("_bClara")~ THEN @36 /*We're alive! That was amazing! Let's do it again!*/
== DORNJ IF ~IfValidForPartyDialog("Dorn")~ THEN @37 /*Hah! Return anytime. The result shall be the same!*/
== OHHFAK IF ~IfValidForPartyDialog("OHHFAK")~ THEN @38 /*Finally. Now we may go to Dragomir's Tomb.*/
== MINSCJ IF ~IfValidForPartyDialog("Minsc")~ THEN @39 /*No! Minsc and Boo are sorry. Minsc did not want to do this.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @40 /*Look at these foolish rivvin. At least there was some enjoyment to be had.*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie")~ THEN @41 /**sobs* I'm sorry. I'm so sorry.*/
== JAHEIRAJ IF ~IfValidForPartyDialog("Jaheira")~ THEN @42 /*This is spiraling out of control quickly, <CHARNAME>. We must find a way to clear our names.*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @43 /*Hah! Run ye cowards! Run wit' ye tails between ye legs!*/
== NALIAJ IF ~IfValidForPartyDialog("Nalia")~ THEN @44 /*We must find someone to help us, <CHARNAME>. Someone with contacts to explain what's going on.*/
== RASAADJ IF ~IfValidForPartyDialog("Rasaad")~ THEN @45 /*My path continues to darken. I fear I shall never find the light.*/
== JANJ IF ~IfValidForPartyDialog("Jan")~ THEN @46 /*Hah! There it is! Just wait and I'll ....oh, I guess the fight is over with. Now I'll never get to test my new invention. Come back here, you paladins!*/
== NEERAJ IF ~IfValidForPartyDialog("Neera")~ THEN @47 /*I'm sorry about burning off your mustache! ….And the sideburns! ...And your hair! This is really just a big misunderstanding.*/
== HEXXATJ IF ~IfValidForPartyDialog("Hexxat")~ THEN @48 /*I am still hungry, <CHARNAME>. Perhaps we should follow these rats back to their hole.*/
== CERNDJ IF ~IfValidForPartyDialog("Cernd")~ THEN @49 /**sigh* Paladins have no sense of the balance. They will return forever, no matter how foolish and hopeless their cause.*/
== VALYGARJ IF ~IfValidForPartyDialog("Valygar")~ THEN @50 /*Come, <CHARNAME>, let us clear our names and avoid any more pointless bloodshed.*/
== EDWINJ IF ~IfValidForPartyDialog("Edwin")~ THEN @51 /*Yes, flee and spread the word of what befalls those who assault Edwin Odesseiron!*/
END

//With the Prelate Wessalen if he's hostile
CHAIN IF WEIGHT #-1 ~Global("_bPrelateYourEnemy","GLOBAL",1)~ THEN HPRELATE _bPrelateWessalenIsEnemy1
	@52 /*How dare you enter this place, viper! Prepare to face your doom!*/
		DO ~GiveItemCreate("MINHP1","hprelate",0,0,0) XEquipItem("MINHP1","hprelate",SLOT_RING_LEFT,EQUIP) SetGlobal("_bPrelateYourEnemy","GLOBAL",2)~
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @53 /*Hah, you have persecuted me wrongly, Wessalen, and I have bested your puny knights.*/
	= @54 /*The gods favor us. Now surrender and beg for mercy!*/
== HPRELATE @55 /*For the Order!*/
EXIT

//When Prelate Wessalen is almost dead.
CHAIN IF WEIGHT #-1 ~Global("_bPrelateSurrenders","GLOBAL",1)~ THEN HPRELATE _bPrelateWessalenIsEnemy2
	@56 /*You have defeated me in combat, <CHARNAME>. I go to my god with a righteous heart!*/
		DO ~SetGlobal("_bPrelateSurrenders","GLOBAL",2)~
END
	++ @57 /*Then die!*/ DO ~DestroyItem("MINHP1")~ EXIT 
	++ @58 /*I do not want to kill you! This has all been a giant misunderstanding. We are not your enemy. We spare your life.*/ GOTO _bPrelateWessalenIsEnemy3

CHAIN HPRELATE _bPrelateWessalenIsEnemy3
	@59 /*You spare me? I cannot understand the workings of your mind, villain!*/
	= @60 /*Your crimes have not changed and you will find no welcome here. Begone!*/
		DO ~SetGlobal("TempleShout0903","GLOBAL",0) ChangeEnemyAlly(Myself,NEUTRAL)~
	= @61 /*Run. Run to the farthest corner of the Realms, so that your vile deeds do not force us to hunt you anew.*/
EXIT





	