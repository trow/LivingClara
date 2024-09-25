//1st Talk, after banter
CHAIN IF WEIGHT #-1 ~Global("_bViconiaTalksImrae1","GLOBAL",1)~ THEN VICONIJ _bVicTalksImrae1
@0 /*This was a mistake. I... I should not have come.*/
	DO ~SetGlobal("_bViconiaTalksImrae1","GLOBAL",2)~
== UDIMRAE @1 /*You, female! You are Viconia. Stand and receive a message from Lolth!*/
	= @2 /*"VICONIA, MY FAVORITE DAUGHTER. DID YOU THINK TO HIDE FROM ME HERE?"*/
== VICONIJ @3 /*No...*/
== UDIMRAE @4 /* "I DO NOT KNOW WHAT GAME YOU ARE PLAYING, BUT I WILL PERMIT IT."*/
	= @5 /*"DO YOU KNOW WHY, MY SWEET?"*/
== VICONIJ @6 /*I...*/
== UDIMRAE @7 /*"BECAUSE I FEED ON THE SOULS OF YOUR VICTIMS, THE LEGION OF YOUR DEAD. YOU ARE MY FAVORITE HANDMAIDEN AND YOU WILL NOT FAIL ME."*/
== VICONIJ @8 /*I... I am Viconia! I do not belong to you!*/
== UDIMRAE @9 /*"HAHAHAHA."*/
	= @10 /*"SEND ME BLOOD AND SOULS, VICONIA. SLAUGHTER THEM ALL AND I WILL FEAST. THERE IS NO MOON HERE TO DEMAND HER SHARE."*/
	= @10101 /*"YOU ARE MINE, VICONIA. YOUR BODY, YOUR SOUL, YOUR PAST, YOUR FUTURE, YOUR LIFE AND YOUR BREATH ALL BELONG TO ME."*/
	= @10102 /*"WHEREVER YOU RUN, I WILL BE WATCHING AND SHOULD YOU EVER STRAY TOO FAR, I WILL COLLECT YOU AND BRING YOU HOME."*/
== VICONIJ @11 /*That was... unsettling...*/
== UDIMRAE @12 /*She is gone.*/
	= @13 /*She called you her handmaiden, but you carry none of the signs.*/
	= @14 /*She says it is a secret, and I am to treat you as if you were ordinary scum until your designs are revealed to me.*/
	= @15 /*Well then, worm, be about your business!*/
EXIT


//Vicoia's first talk about Ust Natha
CHAIN IF WEIGHT #-1 ~Global("_bViconiaTalksUstNatha1","GLOBAL",1)~ THEN VICONIJ _bVicTalksUstNatha1
@16 /*I have come to an assessment of the city, <CHARNAME>. It would serve you well to hear it.*/
	DO ~SetGlobal("_bViconiaTalksUstNatha1","GLOBAL",2)~
END
		++ @17 /*Sorry, Viconia, I really can't be bothered.*/ GOTO _bViconiaNoPlan
		++ @18 /*I don't have time to talk right now.*/ GOTO _bViconiaNoPlan
		++ @19 /*Of course, Viconia, go ahead.*/ GOTO _bViconiaPlan1
		++ @20 /*I am always happy for advice.*/ GOTO _bViconiaPlan1
		
CHAIN VICONIJ _bViconiaNoPlan
@21 /*Fine. Refuse to listen to the one who actually knows something about this area. We will do this your way and fumble in the dark.*/
EXIT

CHAIN VICONIJ _bViconiaPlan1
@22 /*The city is technically ruled by a council of matron mothers, but the first house is House Jae'llat. The lich, Deirex Jae'llat, was one of the founders of the city and his tower and the tower of House Jae'llat dominate the center of Ust Natha.*/
	= @23 /*The second house is House Despana, which we are currently serving. I suspect they are attempting to replace House Jae'llat as the premier power in Ust Natha, but I am not yet sure how.*/
	= @24 /*Solaufein is a member of a third house, though I have yet to discover which. Whatever house he belongs to, he is inexplicably uninterested in power and thus presents no problem.*/
	= @25 /*Most of the city's troops are away at war and every house has pledged the majority of their forces to the fight. Ust Natha is warded and defended and the people here expect no attack. We can use this to our advantage.*/
	= @26 /*Our best strategy is to find a way to weaken, or even destroy, the power of houses Jae'llat and Despana.*/
END
		++ @27 /*I'm not getting involved in some drow power struggle. We slip in, we find the eggs, and we slip out.*/ GOTO _bViconiaPlan2
		++ @28 /*That sounds complicated. Let's just steal the eggs and go.*/ GOTO _bViconiaPlan2
		++ @29 /*Okay, so what's the plan?*/ GOTO _bViconiaPlan3
		++ @30 /*And I assume you know how to do this?*/ GOTO _bViconiaPlan3

CHAIN VICONIJ _bViconiaPlan2
@31 /*Suit yourself, but the eggs are heavily guarded and we are unlikely to reach them undetected. Do you want to fight our way out from the center of the city?*/
END
		++ @32 /*Sure, why not?*/ GOTO _bViconiaNoPlan
		++ @33 /*Nope. Sneaking. Invisibility. We'll be fine.*/ GOTO _bViconiaNoPlan
		++ @34 /*Okay fine, what's your plan?*/ GOTO _bViconiaPlan3
		
CHAIN VICONIJ _bViconiaPlan3
@35 /*The towers of Deirex and House Jae'llat are warded, which will leave those inside complacent. If we can find a way past the wards, we can slaughter everyone before they have time to prepare.*/
	= @36 /*A house that has been in power this long will have made many enemies; if we find them, we can use them to our advantage.*/
== VICONIJ IF ~!Dead("udchal")~ THEN @37 /*House Jae'llat also rules the dueling pits. Defeat them there and the news will spread throughout the city.*/
== VICONIJ @38 /*House Despana is ruled by Matron Mother Ardulace and her daughter Phaere. If we can kill both and ruin their plans for ascension, that should cripple House Despana for some time.*/
	= @39 /*With all of them dead, we will have more options.*/
END
		++ @40 /*If I didn't know better, I'd think you were planning something evil. What's the end goal here?*/ GOTO _bViconiaPlan4
		++ @41 /*Options like what?*/ GOTO _bViconiaPlan4

CHAIN VICONIJ _bViconiaPlan4
@42 /*I am not certain. It is just a feeling now. However, I spent hundreds of years among the drow and this feels like an opportunity. House Despana feels it too, but they do not yet realize that we are the true power here.*/ DO ~AddJournalEntry(@10001,QUEST)~ /*Viconia is intent on destroying House Jae'llat and House Despana. She has created a master plan based on years of experience dealing with the drow: Discreetly. Kill. Everyone.

Specifically Viconia requires us to slay:
1) The lich Deirex of House Jae'llat. He lives in his tower. The entrance is protected by magical wards.
2) Everyone in House Jae'llat. The entrance is also warded.
3) Chalinthra Jae'llat, who is the champion of the dueling pits in the tavern.
4) Matron Mother Ardulace of House Despana.
5) Phaere of House Despana, Matron Mother Ardulace's daughter.*/
	= @43 /*There will be opportunities for power and advancement on a scale we have not yet seen. If, of course, you choose to take them.*/
EXIT


//Viconia's second talk about Ust Natha
CHAIN IF WEIGHT #-1 ~Global("_bViconiaTalksUstNatha2","GLOBAL",1)~ THEN VICONIJ _bViconiaUstNathaPlanA
@44 /*Now, <CHARNAME>, now we have options. Power is within our grasp.*/
	DO ~SetGlobal("_bViconiaTalksUstNatha2","GLOBAL",2)~
	= @45 /*Unfortunately the first house of Ust Natha, House Jae'llat, has not been sufficiently destroyed. We should do that quickly before we do anything further with the dragon eggs.*/
== VICONIJ IF ~OR(3) !Dead("jael01") !Dead("jael02") !Dead("Jael03")~ THEN @46 /*We have not yet raided House Jae'llat's tower and slaughtered them all.*/
== VICONIJ IF ~!Dead("udchal")~ THEN @47 /*We have not yet defeated House Jae'llat's champions in the dueling pits.*/
== VICONIJ IF ~!Dead("Jarlich")~ THEN @48 /*We have not yet killed the lich, Deirex Jae'llat, founder of Ust Natha.*/
== VICONIJ @49 /*Once their house is broken, no member of House Jae'llat will be able to challenge our power and our path to glory will be clear!*/
END
		++ @50 /*I told you already, Viconia, I have no intention of moving against House Jae'llat.*/ GOTO _bRefuseVicci1
		++ @51 /*We don't need the bloodshed, Viconia; we have these fake eggs and that's enough*/ GOTO _bRefuseVicci1
		++ @52 /*I don't know how to do that and I don't care. I can get the eggs.*/ GOTO _bRefuseVicci1
		++ @53 /*Then we will destroy House Jae'llat immediately.*/ GOTO _bKillJaellatForVicci1
		++ @54 /*What is so important about House Jae'llat anyway? It is House Despana that wants the eggs to summon a demon.*/ GOTO _bHouseJaellatExplain1
		
CHAIN VICONIJ _bHouseJaellatExplain1
@55 /*I will try this again, since explaining things to you is like training an umber hulk.*/
	= @56 /*House Jae'llat is the most powerful house in this city and thus the ruler of Ust Natha. Their army is in the field, but most of their leaders are here, over-confident and vulnerable. As long as they live, they block our way, but dead they will no longer be an obstacle.*/
	= @57 /*House Despana is weak and we can ruin them simply by disrupting their ritual, but it is important to move against House Jae'llat first.*/
END
		++ @50 /*I told you already, Viconia, I have no intention of moving against House Jae'llat.*/ GOTO _bRefuseVicci1
		++ @51 /*We don't need the bloodshed, Viconia; we have these fake eggs and that's enough.*/ GOTO _bRefuseVicci1
		++ @52 /*I don't know how to do that and I don't care. I can get the eggs.*/ GOTO _bRefuseVicci1
		++ @53 /*Then we will destroy House Jae'llat immediately.*/ GOTO _bKillJaellatForVicci1

CHAIN VICONIJ _bRefuseVicci1
@58 /*You are passing up a huge opportunity for both of us.*/
	= @59 /*But that is unfortunately your decision to make. I will not press you on the matter again.*/
EXIT

CHAIN VICONIJ _bKillJaellatForVicci1
@60 /*Yes. We will ruin their house and send their souls to the abyss.*/
EXIT


//Viconia's third talk about Ust Natha
CHAIN IF WEIGHT #-1 ~Global("_bViconiaTalksUstNatha3","GLOBAL",1)~ THEN VICONIJ _bViconiaUstNathaTalk3
@61 /*Everything goes perfectly to plan. Swap Phaere's fake eggs with the real eggs, give Solaufein's fake eggs to Phaere, keep the real eggs for ourselves, and then watch House Despana fall.*/
	DO ~SetGlobal("_bViconiaTalksUstNatha3","GLOBAL",2)~
	= @62 /*Or if you would prefer, we could steal the dragon's eggs, give Phaere's fake eggs to the Matron Mother and inform her of her daughter's betrayal. Then give the Matron Mother Solaufein's fake eggs, telling her that they're real while keeping the real ones for ourselves.*/
	= @63 /*Either way that leaves me pondering a question: what will you do with the real eggs?*/
END
		++ @64 /*I will return them to the silver dragon, of course.*/ GOTO _bCNWantsReturnEggs1
		++ @65 /*I will keep them; they must be worth a fortune.*/ GOTO _bCNWantsMoneyforEggs1
		++ @66 /*I am going to offer them to the demon myself!*/ GOTO _bCNWantsEggstoDemon1
		
CHAIN VICONIJ _bCNWantsReturnEggs1
@68 /*And then we return to the surface. The drow of the Ust Natha army will lose their war and the few soldiers who return will find their leaders dead.*/
	= @69 /*The dragon will take her revenge, but Imrae should be able to maintain control.*/
END
		++ @70 /*Why Imrae?*/ GOTO _bCNasksaboutImrae1
		++ @71 /*We're going to put Imrae in charge?*/ GOTO _bCNasksaboutImrae2
		++ @72 /*Who's Imrae?*/ GOTO _bCNasksaboutImrae3
		
APPEND VICONIJ IF ~~ THEN _bCNasksaboutImrae1
	SAY @73 /*Because she's... my daughter. Thanks to the silver dragon's magic, she does not recognize me.*/
	IF ~~ THEN GOTO _bCNasksaboutImrae4
	END
END

APPEND VICONIJ IF ~~ THEN _bCNasksaboutImrae2
	SAY @74 /*Yes, because she's... my daughter. Thanks to the silver dragon's magic, she does not recognize me.*/
	IF ~~ THEN GOTO _bCNasksaboutImrae4
	END
END

APPEND VICONIJ IF ~~ THEN _bCNasksaboutImrae3
	SAY @75 /*Imrae is the chief handmaiden of Lolth in this city. We met her earlier.*/
	= @76 /*She is also my... daughter.*/
	IF ~~ THEN GOTO _bCNasksaboutImrae4
	END
END

APPEND VICONIJ IF ~~ THEN _bCNasksaboutImrae4
	SAY @77 /*And she must believe me dead.*/
	IF ~~ THEN GOTO _bCNasksdevirquestions1
	END
END

CHAIN VICONIJ _bCNasksdevirquestions1
@78 /*Well go on, I'm sure you have more questions.*/
END
	++ @79 /*What happened to House DeVir, anyways?*/ GOTO _bCNasksabouthousedevir1
	++ @80 /*Won't Lolth object to this?*/ GOTO _bCNasksaboutLolth1
	++ @81 /*Are you going to tell Imrae who you are?*/ GOTO _bCNasksaboutImrae5
	++ @82 /*So this whole time you've been plotting to put your daughter on the throne?*/ GOTO _bCNupsetaboutimrae1
	++ @83 /*Nothing more. Let's go put our plans in motion.*/ DO ~AddJournalEntry(@10002,QUEST)~ EXIT
	/*Journal Update: Viconia's plans are starting to grow clear. After we defeated House Jae'llat, Viconia revealed that she hopes to put her daughter, Imrae DeVir, in charge of Ust Natha. For this to succeed, however, we still need to ruin House Despana's attempt at demon summoning.*/

APPEND VICONIJ IF ~~ THEN _bCNasksabouthousedevir1
	SAY @84 /*My entire time on the surface, I had wondered that.*/
	= @85 /*I fled my homeland nearly eighty years ago, defying Lolth and leading to the death of my mother and the transformation of my brother, Valas, into a drider.*/
	= @86 /*Here in Ust Natha, while you fumbled about, I used my spare time to discover the rest of the story.*/
	= @87 /*After my mother's death, my sister, Ginafae, became matron mother. She was always overly ambitious and stupid so it is no surprise that she drove our house into oblivion.*/
	= @88 /*She lost the favor of Lolth and our house was destroyed roughly seventy years ago by House Do'Urden.*/
	= @89 /*Yes... THAT Do'Urden. Drizzt was born around that time.*/
	= @90 /*Now the few remaining DeVir hide in the shadows, hunted for fun by their betters. There are even some imprisoned in this city.*/
	= @91 /*No, there's no need to rescue them. Let them rot.*/
	= @92 /*However, I am glad that Imrae survived. She always had spirit. Her service to Lolth must have protected her.*/
	IF ~~ THEN GOTO _bCNasksdevirquestions1
	END
END

APPEND VICONIJ IF ~~ THEN _bCNasksaboutLolth1
	SAY @93 /*I would have thought so too, but it seems not. She must find some measure of... entertainment from my actions.*/ 
	= @94 /*And despite my worship of Shar, Lolth still gains power from my exertions. I am not truly free of her... I expect I never will be.*/
	= @95 /*I suppose it is logical. My wandering inevitably leads to the deaths of those I meet, and since Lolth possesses a piece of my soul, she is able to claim a portion of the souls of my victims.*/
	= @96 /*That Imrae still lives shows Lolth's favor as well.*/
	IF ~~ THEN GOTO _bCNasksdevirquestions1
	END
END

APPEND VICONIJ IF ~~ THEN _bCNasksaboutImrae5
	SAY @97 /*Yes, we should find her before the ritual begins. Or perhaps... she will find us.*/
	IF ~~ THEN GOTO _bCNasksdevirquestions1
	END
END

APPEND VICONIJ IF ~~ THEN _bCNupsetaboutimrae1
	SAY @98 /*Yes, <CHARNAME>. I do this for power, family, and revenge.*/
	= @99 /*Don't look so upset. Our interests are aligned here.*/
	IF ~~ THEN GOTO _bCNasksdevirquestions1
	END
END

//2nd option from 1st dialogue
CHAIN VICONIJ _bCNWantsMoneyforEggs1
@100 /*There is probably a collector somewhere who would pay for them, but no one would give you more than the eggs' mother or the demon that the drow are summoning.*/
	= @101 /*If you want money, we can loot it off the silver dragon and those the demon will slaughter for us.*/
END
		++ @102 /*Okay. In that case, I'll give the eggs back to the dragon.*/ GOTO _bCNWantsReturnEggs1
		++ @103 /*You win, let's give the eggs to the demon.*/ GOTO _bCNWantsEggstoDemon1
		++ @104 /*I see your point, but I'm still keeping the eggs for myself.*/ GOTO _bCNWantsMoneyforEggs2

//3rd option from 1st dialogue
CHAIN VICONIJ _bCNWantsEggstoDemon1
@105 /*Treating with a demon of this power is a dangerous game, <CHARNAME>. It is as likely to kill you as help you.*/
	DO ~SetGlobal("_bCNWantsGiveEggsDemon","GLOBAL",1)~
	= @106 /*I have done such things several times in the past. You should keep silent and let me do the talking.*/ 
	= @107 /*If we do this correctly, we should be able to enlist the demon's help to kill the silver dragon and find our way to the exit.*/
	= @108 /*Suldanessellar may burn but not a single drow will make it back to Ust Natha.*/
	= @109 /*And while that is going on above, Imrae should be able to maintain control below.*/
END
		++ @70 /*Why Imrae?*/ GOTO _bCNasksaboutImrae1
		++ @71 /*We're going to put Imrae in charge?*/ GOTO _bCNasksaboutImrae2
		++ @72 /*Who's Imrae?*/ GOTO _bCNasksaboutImrae3

CHAIN VICONIJ _bCNWantsMoneyforEggs2
@110 /*As you wish.*/
	DO ~SetGlobal("_bCNWantsKeepEggs","GLOBAL",1)~
	= @111 /*After claiming the eggs, we will return to the surface. The Ust Nathan army will lose its war and the few soldiers who return will find their leaders dead.*/
	= @112 /*The dragon will take her revenge, assuming we do not kill her first, but either way Imrae should be able to maintain control.*/
END
		++ @70 /*Why Imrae?*/ GOTO _bCNasksaboutImrae1
		++ @71 /*We're going to put Imrae in charge?*/ GOTO _bCNasksaboutImrae2
		++ @72 /*Who's Imrae?*/ GOTO _bCNasksaboutImrae3


//Viconia's Follow-up Talk if You Want to Give Eggs to Demon
CHAIN IF WEIGHT #-1 ~Global("_bViconiaTalksGiveEggsDemon","GLOBAL",1)~ THEN VICONIJ _bViconiaConsultsPartyAboutGivingEggsToDemon1
	@113 /*<CHARNAME>, I failed to mention this earlier, but if we are to successfully treat with the demon then our party must be unified. We cannot take this path if even one person stands against us.*/
	DO ~SetGlobal("_bViconiaTalksGiveEggsDemon","GLOBAL",2)~
END
	++ @114 /*I'll keep that in mind.*/ EXIT
	++ @115 /*Who do you think would cause problems?*/ GOTO _bViconiaConsultsPartyAboutGivingEggsToDemon2
	
CHAIN VICONIJ _bViconiaConsultsPartyAboutGivingEggsToDemon2
	@116 /*I suppose the only option is to ask.*/
	= @117 /*Attention! <CHARNAME> wishes to betray the silver dragon by sacrificing her eggs to a demon, in exchange for its assistance in slaughtering her.*/
	= @11700 /*Any objections?*/
	== NALIAJ IF ~IfValidForPartyDialogue("Nalia")~ THEN @118 /*Wh-what, <CHARNAME>?! You... want to bring the wrath of the dragon down upon us? And for what?! No... no, I won't stick around for that, I won't!*/ 
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== CERNDJ IF ~IfValidForPartyDialogue("Cernd")~ THEN @119 /*You move against the balance, <CHARNAME>, and no doubt the silver dragon will take her revenge. If you do this, I shall not remain to see it through.*/ 
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== AERIEJ IF ~IfValidForPartyDialogue("Aerie")~ THEN @120 /*<CHARNAME>! N-no! No, I won't let you sacrifice her eggs! I won't let you do this!*/ 
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== KELDORJ IF ~IfValidForPartyDialogue("Keldorn")~ THEN  @121 /*Vile fiend! You would sacrifice the children of a silver dragon to consort with a demon?! No, this will not be!*/ 
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== VALYGARJ IF ~IfValidForPartyDialogue("Valygar")~ THEN @122 /*You fool! You would not only anger the dragon, but deal with a creature of the Abyss?! If you do this, I will not stand for it!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== MAZZYJ IF ~IfValidForPartyDialogue("Mazzy")~ THEN @123 /*What?! Had I known you were capable of such an act, I would have killed you long ago, <CHARNAME>! Don't make me do it now!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== ANOMENJ IF ~IfValidForPartyDialogue("Anomen") !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @124 /*You... you *dare* to commit such an atrocity?! I will not stand by you in this! Moreover, I will stop you, fiend!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== JAHEIRAJ IF ~IfValidForPartyDialogue("Jaheira")~ THEN @125 /*You would commit such a sacrilege against nature?! Had I known, I would never have accompanied you! No, I will not let this be!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== MINSCJ IF ~IfValidForPartyDialogue("Minsc")~ THEN @126 /*I cannot believe my ears! You would stand against all that is good and right?! You shall suffer a terrible vengeance for this!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS C#AJANJ IF ~IfValidForPartyDialog("C#Ajantis") ~ THEN @1260 /*Such treachery against a creature of the light is unthinkable. It cannot be allowed!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS 7XAJANJ IF ~IfValidForPartyDialog("7XAJAN") ~ THEN @1260 /*Such treachery against a creature of the light is unthinkable. It cannot be allowed!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS O#BRANJ IF ~IfValidForPartyDialog("O#BRAN")~ THEN @1261 /*Tempus guide my hand... should you attempt to make this deal, I would be forced to strike you down!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS 7XBRANJ IF ~IfValidForPartyDialog("7XBRAN")~ THEN @1261 /*Tempus guide my hand... should you attempt to make this deal, I would be forced to strike you down!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS ~B!GavJ~ IF ~IfValidForPartyDialog("B!Gavin2")~ THEN @1262 /*By Lathander's grace, how could you consider such a thing? You are not the <PRO_MANWOMAN> that I believed you were.*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS C0sire2J IF ~IfValidForPartyDialog("C0Sirene")~ THEN @1263 /*My lord Ilmater, give me the strength to stop this act from happening!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS RH#ISRJ IF ~IfValidForPartyDialog("RH#ISRA2")~ THEN @1264 /*You may not kill this dragon! I will not allow you to take such beauty from the world!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS g#TYRISJ IF ~IfValidForPartyDialog("g#TYRIS")~ THEN @1265 /*That is an evil scheme worthy of Death Adder. I will not be party to this plan.*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS LK#YESJ IF ~IfValidForPartyDialog("LK#YESLK")~ THEN @1266 /*Clangeddin 'imself would smite me where I stand if I be letting this atrocity occur!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS 7XYESJ IF ~IfValidForPartyDialog("7XYES")~ THEN @1266 /*Clangeddin 'imself would smite me where I stand if I be letting this atrocity occur!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS O#XANJ IF ~IfValidForPartyDialog("O#XAN")~ THEN @1267 /*We agreed to return the silver dragon's eggs in exchange for her assistance. Betraying her would likely seal our doom.*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS 7XXANJ IF ~IfValidForPartyDialog("7XXAN")~ THEN @1267 /*We agreed to return the silver dragon's eggs in exchange for her assistance. Betraying her would likely seal our doom.*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS FHNATJ IF ~IfValidForPartyDialog("NATH")~ THEN @1268 /*<CHARNAME>! I cannot believe that you would consider such an act of evil! I do not wish to fight you, but I will if necessary!*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS CMALORAJ IF ~IfValidForPartyDialog("CMAlora") ~ THEN @1269 /*You want to kill the pretty dragon? I don't like that plan at all.*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS 7XAloraJ IF ~IfValidForPartyDialog("7XAlora")~ THEN @1269 /*You want to kill the pretty dragon? I don't like that plan at all.*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS O#CORANJ IF ~IfValidForPartyDialog("O#Coran")~ THEN @1270 /*I may have done many less than honest things in my life, <CHARNAME>, but this would cross the line.*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS 7XCoranJ IF ~IfValidForPartyDialog("7XCORAN")~ THEN @1270 /*I may have done many less than honest things in my life, <CHARNAME>, but this would cross the line.*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== IF_FILE_EXISTS C-ARANJ IF ~IfValidForPartyDialog("C-ARAN")~ THEN @1271 /*We made a contract with the silver dragon and we would be poor mercenaries to turn against our employer. I cannot be part of this.*/
		DO ~SetGlobal("_bPartyObjectsGiveEggDemon","GLOBAL",1)~
	== VICONIJ @127 /*Hmm...*/
	EXIT

//Follow-up to follow-up talk if someone objected.
CHAIN IF WEIGHT #-1 ~Global("_bViconiaTalksGiveEggsDemon","GLOBAL",3) Global("_bPartyObjectsGiveEggDemon","GLOBAL",1)~ THEN VICONIJ _bViconiaTalksAfterPartyObjectstoGivingEggstoDemon1
	@128 /*I was speaking hypothetically. You can all relax. <CHARNAME> would never do such a thing while you are here.*/
		DO ~SetGlobal("_bViconiaTalksGiveEggsDemon","GLOBAL",4)~
	= @129 /**softly* <CHARNAME>, this would be an excellent time to reform your party.*/
	= @130 /*And remember, when the time comes, you must let me handle our discussion with the demon. You would undoubtedly commit some horrible cultural blunder and kill us all.*/
EXIT

//Follow-up to follow-up talk if noone objected.
CHAIN IF WEIGHT #-1 ~Global("_bViconiaTalksGiveEggsDemon","GLOBAL",3) Global("_bPartyObjectsGiveEggDemon","GLOBAL",0)~ THEN VICONIJ _bViconiaTalksAfterNoOneObjectstoGivingEggstoDemon1
	@130 /*And remember, when the time comes, you must let me handle our discussion with the demon. You would undoubtedly commit some horrible cultural blunder and kill us all.*/
		DO ~SetGlobal("_bViconiaTalksGiveEggsDemon","GLOBAL",4)~
EXIT

//Viconia's talk with Imrae OUTSIDE
APPEND VICONIJ IF WEIGHT #-1 ~Global("_bViconiaMeetsImraeOutside","GLOBAL",1)~ THEN _bViconiaspeakstoImraeOutside1
	SAY @131 /*Lolth tells me you wish to speak with me and that I should listen. Is it time then?*/
		IF ~~ THEN DO ~SetGlobal("_bViconiaMeetsImraeOutside","GLOBAL",2)~ EXTERN UDIMRAE _bViconiaSpeaksWithImraeSecondTime1
	END
END

//Viconia's talk with Imrae inside.
APPEND VICONIJ IF WEIGHT #-1 ~Global("_bViconiaMeetsImraeInTemple","GLOBAL",1)~ THEN _bViconiaspeakstoImraeInside1
	SAY @131 /*Lolth tells me you wish to speak with me and that I should listen. Is it time then?*/
		IF ~~ THEN DO ~SetGlobal("_bViconiaMeetsImraeInTemple","GLOBAL",2)~ EXTERN UDIMRAE _bViconiaSpeaksWithImraeSecondTime1
	END
END
	

//Viconia's talk with Imrae, either in temple or outside
CHAIN  UDIMRAE _bViconiaSpeaksWithImraeSecondTime1
	@132 /*Lolth tells me you wish to speak with me and that I should listen. Is it time then?*/
		= @133 /*Is this her design? To summon a demon and bring about the rise of House Despana?*/
	== VICONIJ @134 /*Who knows what Lolth desires? We are all just pieces in her game.*/
		= @135 /*I care not for her designs and certainly not for House Despana.*/
		= @136 /*I am here to see you...*/
		= @137 /*...daughter.*/
	== UDIMRAE @138 /*No! You share her name, but I remember her face! I remember her voice! You are not her!*/
		= @139 /*Viconia cries in agony from the abyss.*/
	== VICONIJ @140 /*It is a powerful disguise spell. Even far away from our home, I could not risk someone recognizing me.*/
		= @141 /*I've been killed many times, it is true, but I have never seen the abyss. Lolth always brings me back.*/
	== UDIMRAE @142 /*She favors you? You betrayed her! You betrayed all of us! Our kin would still be alive if not for you!*/
		= @143 /*You abandoned us when we needed you most!*/
	== VICONIJ @144 /*I am... sorry.*/
	== UDIMRAE @145 /*You... what?*/
	== VICONIJ @146 /*I am sorry. I failed you... and your brothers. They are gone then?*/
	== UDIMRAE @147 /*They fell in battle with House Do'Urden. My service to Lolth spared my life.*/
		= @148 /*How can the Spider Queen favor you? You come here and... apologize? Where is your spine?! Where is your strength!?*/
	== VICONIJ @149 /*I do not have time for this.*/
		= @150 /*Daughter, be quiet and listen, or I will regret being forced to slay you.*/
		= @151 /*We have already eliminated House Jae'llat and are about to destroy House Despana, but we do not plan to stay. Ruling this city will be up to you.*/
	== UDIMRAE @152 /*That will not work; the soldiers will return. I have no army... no family to face them.*/
	== VICONIJ @153 /*No. We will destroy the army. They will lose this foolish war and the few who manage to return will be broken... failures...*/
		= @154 /*I cannot fix what happened, my daughter. I cannot change what I did. But we can get revenge. Take power in this moment of opportunity and move quickly to eliminate all who oppose you.*/
		= @155 /*The ambitious will beg to be allowed to fight for you, and the few DeVir who remain are not without promise. If they were completely worthless, they would be dead already.*/
	== UDIMRAE @156 /*I agree, but only if you stay.*/
	== VICONIJ @157 /*What?*/
	== UDIMRAE @158 /*Stay. Let your friends return to their lands. Your place is here... with me...*/
	== VICONIJ @159 /*I...*/
END
		+~Global("_bCNWantsGiveEggsDemon","GLOBAL",0)~+ @160 /*Do it, Viconia. When will you have another chance?*/ EXTERN VICONIJ _bViconiaStaywithImrae1
		+~Global("_bCNWantsGiveEggsDemon","GLOBAL",1)~+ @160 /*Do it, Viconia. When will you have another chance?*/ EXTERN VICONIJ _bViconiaStaywithImraeDemon1
		+~Global("_bCNWantsGiveEggsDemon","GLOBAL",0)~+ @161 /*You should. You two sound like you have a lot of catching up to do.*/ EXTERN VICONIJ _bViconiaStaywithImrae1
		+~Global("_bCNWantsGiveEggsDemon","GLOBAL",1)~+ @161 /*You should. You two sound like you have a lot of catching up to do.*/ EXTERN VICONIJ _bViconiaStaywithImraeDemon1
		+~Global("_bCNWantsGiveEggsDemon","GLOBAL",0)~+ @162 /*Stay for a little while, Viconia, but then come find me. Just follow the trail of bodies.*/ EXTERN VICONIJ _bViconiaWithImraeShort1
		+~Global("_bCNWantsGiveEggsDemon","GLOBAL",1)~+ @162 /*Stay for a little while, Viconia, but then come find me. Just follow the trail of bodies.*/ EXTERN VICONIJ _bViconiaWithImraeShortDemon1
		+~Global("_bCNWantsGiveEggsDemon","GLOBAL",0)~+ @163 /*No, Viconia, I need you with me.*/ EXTERN VICONIJ _bViconiaNotGoImrae1
		+~Global("_bCNWantsGiveEggsDemon","GLOBAL",1)~+ @163 /*No, Viconia, I need you with me.*/ EXTERN VICONIJ _bViconiaNotGoImraeDemon1

CHAIN VICONIJ _bViconiaStaywithImrae1
	@164 /*Thank you, <CHARNAME>.*/
		= @165 /*If you need my aid again once you have dealt with Irenicus, find a way to call me and I will come.*/ 
		= @166 /*But first let us finish our business with House Despana. Daughter, I would recommend staying well away from the summoning chamber; this will be dangerous.*/
		= @167 /*Let us ruin our enemies and bathe in their blood.*/
		DO ~SetGlobal("_bViconiaReadyToGiveEggs","GLOBAL",1) SetGlobal("_bViconiaStaysImrae","GLOBAL",1) AddJournalEntry(@10003,QUEST_DONE)~
	== UDIMRAE @168 /*For House DeVir, mother.*/
EXIT
	
CHAIN VICONIJ _bViconiaWithImraeShort1
	@169 /*Thank you, <CHARNAME>.*/
		= @170 /*Fifteen days. That should be enough time to deal with our enemies and cement Imrae's rule.*/
		= @171 /*After that, I will find you wherever you are. Cut down all our enemies from here to there, <CHARNAME>, so they do not impede my progress.*/
		= @166 /*But first let us finish our business with House Despana. Daughter, I would recommend staying well away from the summoning chamber; this will be dangerous.*/
		= @167 /*Let us ruin our enemies and bathe in their blood.*/
		DO ~SetGlobal("_bViconiaReadyToGiveEggs","GLOBAL",1) SetGlobal("_bViconiaStaysImraeShort","GLOBAL",1) AddJournalEntry(@10003,QUEST_DONE)~
	== UDIMRAE @168 /*For House DeVir, mother.*/
EXIT

CHAIN VICONIJ _bViconiaStaywithImraeDemon1
	@172 /*Thank you, <CHARNAME>. You will need me to treat with the demon, but once that is finished, I will return to Ust Natha.*/
		= @173 /*If you wish my aid again once you have dealt with Irenicus, find a way to call me and I will come.*/
		= @166 /*But first let us finish our business with House Despana. Daughter, I would recommend staying well away from the summoning chamber; this will be dangerous.*/
		= @167 /*Let us ruin our enemies and bathe in their blood.*/
		DO ~SetGlobal("_bViconiaReadyToGiveEggs","GLOBAL",1) SetGlobal("_bViconiaStaysImrae","GLOBAL",1) AddJournalEntry(@10003,QUEST_DONE)~
	== UDIMRAE @168 /*For House DeVir, mother.*/
EXIT

CHAIN VICONIJ _bViconiaWithImraeShortDemon1
	@172 /*Thank you, <CHARNAME>. You will need me to treat with the demon, but once that is finished, I will return to Ust Natha.*/
		= @174 /*Give me fifteen days. That should be enough time to deal with our enemies and cement Imrae's rule. After that I will find you, wherever you are.*/
		= @166 /*But first let us finish our business with House Despana. Daughter, I would recommend staying well away from the summoning chamber; this will be dangerous.*/
		= @167 /*Let us ruin our enemies and bathe in their blood.*/
		DO ~SetGlobal("_bViconiaReadyToGiveEggs","GLOBAL",1) SetGlobal("_bViconiaStaysImraeShort","GLOBAL",1) AddJournalEntry(@10003,QUEST_DONE)~
	== UDIMRAE @168 /*For House DeVir, mother.*/
EXIT	

CHAIN VICONIJ _bViconiaNotGoImrae1
	@175 /*I... I understand.*/ 
		= @176 /*My daughter, I owe <CHARNAME> two life-debts, but I will return when <PRO_HESHE> releases me.*/
		= @177 /*Come, <CHARNAME>, let us finish our business with House Despana.*/
		= @178 /*My daughter, I would recommend staying well away from the summoning chamber; this will be dangerous.*/
	== UDIMRAE @179 /*I will lay the foundation of our ascension, but it will wait until I see you again.*/
		DO ~SetGlobal("_bViconiaReadyToGiveEggs","GLOBAL",1) SetGlobal("_bViconiaNoStayImrae","GLOBAL",1) AddJournalEntry(@10003,QUEST_DONE)~
	== UDIMRAE @168 /*For House DeVir, mother.*/
EXIT

CHAIN VICONIJ _bViconiaNotGoImraeDemon1
	@175 /*I... I understand.*/
		= @180 /*My daughter, I owe <CHARNAME> two life-debts and am needed to treat with this demon.*/
		= @181 /*But I will do so as Viconia of House DeVir and all will know that you are mine. Your power here will be secure.*/
		= @177 /*Come, <CHARNAME>, let us finish our business with House Despana.*/
		= @178 /*My daughter, I would recommend staying well away from the summoning chamber; this will be dangerous.*/
	== UDIMRAE @179 /*I will lay the foundation of our ascension, but it will wait until I see you again.*/
		DO ~SetGlobal("_bViconiaReadyToGiveEggs","GLOBAL",1) SetGlobal("_bViconiaNoStayImrae","GLOBAL",1) AddJournalEntry(@10003,QUEST_DONE)~
	== UDIMRAE @168 /*For House DeVir, mother.*/
EXIT

//Next Viconia-Imrae Talk if you're in the Temple
CHAIN IF WEIGHT #-1 ~Global("_bViconiaMeetsImraeInTemple","GLOBAL",3)~ THEN VICONIJ _bImraeHelpsViconiaEggs1
	@182 /*Before the demon is summoned, however, there is something we must do.*/
		DO ~SetGlobal("_bViconiaMeetsImraeInTemple","GLOBAL",4)~
	== UDIMRAE @183 /*The house that has the eggs will rule.*/
		DO ~ChangeAIScript("_bIMRAE",OVERRIDE)~
	== VICONIJ @184 /*Yes.*/
	== UDIMRAE @185 /*Follow me. I will ease your path.*/
EXIT

//Imrae's talk with the Handmaiden of Lolth
CHAIN IF WEIGHT #-1 ~Global("_bViconiaMeetsImraeInTemple","GLOBAL",5)~ THEN UDIMRAE _bImraeHelpsViconiaEggs2
	@186 /*Attend to me.*/
		DO ~SetGlobal("_bViconiaMeetsImraeInTemple","GLOBAL",6)~
	== UDDROW36 @187 /*What is it, Mistress?*/
	== UDIMRAE @188 /*House Jae'llat is no more.*/
	== UDDROW36 @189 /*No... How?*/
	== UDIMRAE @190 /*A new power has arisen. One that has hungered to be the highest house of Ust Natha for some time.*/
	== UDDROW36 @191 /*House Despana. All the signs were there; how could we be so complacent? Curse them forever! They will hunt us... I must warn my sisters...*/
	== UDIMRAE @192 /*There is a hope for you... and your family. Join the winning house.*/
	== UDDROW36 @193 /*House Despana will not be merciful in their victory. They will slaughter us to the last.*/
	== UDIMRAE @194 /*House Despana will not be the winning house. I would like you to meet <CHARNAME> and my mother, Viconia.*/
	== UDDROW36 @195 /*They serve House Despana... or so I thought...*/
	= @196 /*It will be you! Your house will emerge as the First House of Ust Natha! But your house is...*/
	== UDIMRAE @197 /*House DeVir. We have gained Lolth's favor. Join us and secure your revenge. Bring the surviving members of your family as well.*/
	== UDDROW36 @198 /*House DeVir? That house hasn't held power in any city for nearly a century.*/
	== UDIMRAE @199 /*We have returned. But I will not waste my time. If you would prefer to be hunted down by House Despana, that is your choice.*/
	== UDDROW36 @200 /*I am yours... Mistress.*/
	== UDIMRAE @201 /*Good. Gather every priestess and handmaiden, except those of House Despana, and meet me outside my quarters. Come armed. I will be along shortly. We have work to do.*/
	== UDDROW36 @202 /*Yes, Mistress.*/
		DO ~EscapeArea()~
	== UDIMRAE @203 /*That went well. On to the next problem.*/
EXIT

//Imrae's talk with the Temple Guards
CHAIN IF WEIGHT #-1 ~Global("_bViconiaMeetsImraeInTemple","GLOBAL",7)~ THEN UDIMRAE _bImraeHelpsViconiaEggs3
	@204 /*You, males, attend to me.*/
	== UDDROW01 @202 /*Yes, Mistress.*/
	== UDIMRAE @205 /*Lolth's servants require your skills and attention. All of you proceed immediately to my quarters, but leave your weapons at the door. You will not need them. We will be along shortly.*/
	== UDDROW01 @206 /*But, Mistress, we serve the Matron Mother and she ordered us to...*/
	== UDIMRAE @207 /*You question Lolth in her own house? I was in the mind to offer you duties of pleasure, but perhaps I shall flay the flesh from your bones instead.*/
		DO ~SetGlobal("_bViconiaMeetsImraeInTemple","GLOBAL",8)~
	== UDDROW01 @208 /*We will do as you command, Mistress.*/
EXIT

//Imrae's talk with Egg Guards
CHAIN IF WEIGHT #-1 ~Global("_bViconiaMeetsImraeInTemple","GLOBAL",9)~ THEN UDIMRAE _bImraeHelpsViconiaEggs4
	@209 /*Males, Lolth requires your service.*/
		DO ~SetGlobal("_bViconiaMeetsImraeInTemple","GLOBAL",10)~
	== UDDROW20 @210 /*What does the Spider Queen command?*/
	== UDIMRAE @211 /*Proceed immediately to my quarters. Leave your weapons at the door. Your duties will soon be those of pleasure, not war.*/
	== UDDROW21 @212 /*Mistress, we cannot. The Matron Mother requires us to stand here and protect the eggs. Should anything happen to them...*/
	== UDIMRAE @213 /*You question me here, in my place of power? This is the Temple of the Spider Queen! I am her handmaiden. The eggs are my responsibility and will be under my protection.*/
	= @214 /*Unless you are saying that you are greater warriors than I. Ready your weapons and let us test your boast.*/
	== UDDROW21 @215 /*Our apologies, Mistress. We know your skills to be superior, Mistress.*/
		DO ~EscapeArea()~
	== UDDROW20 @216 /*We shall obey your commands immediately, Mistress.*/
		DO ~EscapeArea()~
	== UDIMRAE @217 /*That is better.*/
EXIT

//Imrae's Last talk in temple before leaving.
CHAIN IF WEIGHT #-1 ~Global("_bViconiaMeetsImraeInTemple","GLOBAL",11)~ THEN UDIMRAE _bImraeHelpsViconiaEggs5
	@218 /*The audacity of the Matron Mother to staff a Temple of Lolth with her own warriors. No wonder she has lost the Spider Queen's favor.*/ 
		DO ~SetGlobal("_bViconiaMeetsImraeInTemple","GLOBAL",12)~
	= @219 /*I must gather my priestesses and see to those guards. They will either swear us their obsequence or they will die.*/
	= @220 /*For House DeVir, mother.*/
EXIT

//Interject into the Demon's talk if you don't give him the eggs and Viconia stays with Imrae.
INTERJECT_COPY_TRANS2 UDDEMON 21 _bDemonNoEggsViconiaStaysWithImrae1 /*** SO BE IT. MORTALS ARE EVER FOOLS. ***/
	== VICONIJ IF ~Global("_bViconiaStaysImrae","GLOBAL",1) IfValidForPartyDialogue("Viconia")~ THEN 
		@221 /*I will depart as well. If you need me again once you have dealt with Irenicus, call and I will come. Until then, farewell.*/ 
		= @222 /*Goodbye, <CHARNAME>.*/
		= @223 /*And... thank you.*/
		DO ~SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeArea()~
END

//Interject into the Demon's talk if you don't give him the the eggs and Viconia stays with Imrae for a short time.
INTERJECT_COPY_TRANS2 UDDEMON 21 _bDemonNoEggsViconiaStaysWithImraeShort1 /*** SO BE IT. MORTALS ARE EVER FOOLS. ***/
	== VICONIJ IF ~Global("_bViconiaStaysImraeShort","GLOBAL",1)~ THEN 
		@224 /*I will depart as well. I expect I will need fifteen days to secure Imrae's ascension, and then I will find you.*/
		= @222 /*Goodbye, <CHARNAME>.*/
		= @223 /*And... thank you.*/
		DO ~SetGlobal("_bViconiaStaysImraeShort","GLOBAL",2)~
END

//Adding an option for Viconia to give the eggs to the Demon
EXTEND_TOP UDDEMON 20 /*** NOW... IT SEEMS THERE ARE NO *ACTUAL* DRAGON EGGS TO BE HAD. A PITY. UNLESS THERE IS A BETTER OFFER, I SHALL DEPART. ***/
	+~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Valygar")
		!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Minsc") PartyHasItem("MISC9t") Global("_bViconiaReadyToGiveEggs","GLOBAL",1)
		OR(2) !IsValidForPartyDialogue("Anomen") Global("AnomenisNotKnight","GLOBAL",1)~+ 
			@225 /*Viconia, it's time. Make your bargain. Offer the demon the eggs.*/ EXTERN VICONIJ _bViconiaOffersEggsToDemon1
END

//Adding an option for Viconia to give the eggs to the Demon if you betrayed Phaere first.
EXTEND_TOP UDDEMON 7 /*** HOW DARE YOU CALL ME FORTH! HOW DARE YOU TEMPT ME WITH EGGS OF HATED SILVER, BUT THEN DECEIVE ME! I AM TEMPTED TO RAZE THIS CITY TO ASHES! ***/
	+~!IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Valygar")
		!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Minsc") PartyHasItem("MISC9t") Global("_bViconiaReadyToGiveEggs","GLOBAL",1)
		OR(2) !IsValidForPartyDialogue("Anomen") Global("AnomenisNotKnight","GLOBAL",1)~+ 
			@225 /*Viconia, it's time. Offer the demon the eggs.*/ EXTERN VICONIJ _bViconiaOffersEggsToDemon1
END

CHAIN VICONIJ _bViconiaOffersEggsToDemon1
@226 /*Oh great Lord of the Nether Pits, I, Viconia of House DeVir, have the real eggs. I offer them to you to in exchange for your aid in battle.*/
	DO ~SetGlobalTimer("udEscape","GLOBAL",TWENTY_DAYS) SetGlobal("udDrowPlot","GLOBAL",888)~
	== UDDEMON @227 /***IS THAT SO? I SEE WHAT YOU TRULY ARE. A DARKLING PRETENDING TO BE A DARKLING SERVING A CHILD OF BHAAL?***/
		= @228 /***I AM AMUSED. WHO SHALL I DESTROY? ***/
	== VICONIJ @229 /*First we shall lead you to the silver dragon herself, the mother of those eggs. We shall destroy her so that you may feast upon her flesh.*/
		= @230 /*When you have eaten your fill, I shall ask then for a boon. Use your power to harden our adamantine weapons and armor so that they keep their strength under the light of our sun.*/
		= @231 /*Once that is accomplished, we shall march to the surface killing all in our path.*/
		= @232 /*You shall stay just inside the entrance and kill anyone who attempts to enter from the surface except for myself and my allies. You shall remain there for a minimum of fifteen cycles, but no more than twenty two.*/
		= @233 /*And when you have eaten your fill of elves and drow, oh great and powerful lord, then you shall depart on a day of your pleasure within the agreed upon time.*/
		= @234 /*Do we have a bargain?*/
	== UDDEMON @235 /***AMBITIOUS. PERHAPS YOUR HUNGER EXCEEDS YOUR ABILITY, FALSE DARKLING.***/
		= @236 /***WHY SHOULD I NOT JUST KILL YOU NOW AND TAKE THE EGGS?***/
	== VICONIJ @237 /*Because the souls of innocents taken are not as sweet as the souls of innocents given, oh great one.*/
		= @238 /*We were tasked by the dragon mother to rescue these eggs. They are in our care. These eggs love us and trust us, and will continue to love and trust as you devour them.*/
		= @239 /*The sweetness of that betrayal will be exceeded only by the grief and despair you taste as you feast on their mother's ruined carcass.*/
		DO ~SetGlobal("EggsDie","GLOBAL",1)~
	== UDDEMON @240 /***I ACCEPT YOUR BARGAIN, VICONIA OF HOUSE DEVIR. I ACCEPT BY THE NAMES OF THOSE WHO SPAWNED ME AND THE SOULS OF THOSE WHO SPAWNED THEM. NOW GIVE ME THE EGGS.***/
		= @241 /***DELICIOUS. ONE IS ENOUGH FOR NOW. I WILL SAVOR THESE FOR AN AGE.***/
	DO ~ReputationInc(-3) AddJournalEntry(@20001,QUEST) TakePartyItem("MISC9T") EraseJournalEntry(5810) EraseJournalEntry(6535) EraseJournalEntry(16529) EraseJournalEntry(6943) EraseJournalEntry(16339) EraseJournalEntry(9649) EraseJournalEntry(6405) 
		EraseJournalEntry(6403) EraseJournalEntry(6590) EraseJournalEntry(7147) EraseJournalEntry(7148) EraseJournalEntry(15793) EraseJournalEntry(15792) EraseJournalEntry(23424) 
		SetGlobal("_bDemonWalks","GLOBAL",1)~
		= @242 /***I CAN FEEL THE PULL OF THEIR MOTHER. I WILL GO TO HER. TRY TO KEEP UP, FALSE DARKLINGS.***/
EXIT


//Viconia's Announcement in Temple after she gives eggs to Demon
CHAIN IF WEIGHT #-1 ~Global("_bViconiaShoutsDemonDevir","GLOBAL",1)~ THEN VICONIJ _bViconiaAnnouncesDemonDeVir1
@243 /*LISTEN ALL OF YOU! I AM VICONIA OF HOUSE DEVIR. MY DAUGHTER IS IMRAE OF HOUSE DEVIR.*/
		DO ~SetGlobal("_bViconiaShoutsDemonDevir","GLOBAL",2)~
	= @244 /*HOUSE JAE'LLAT AND HOUSE DESPANA ARE DESTROYED. WE RULE YOU NOW!*/
	= @245 /*DO ANY DARE TO CHALLENGE US?*/
EXIT

	
//Same announcement outside
CHAIN IF WEIGHT #-1 ~Global("_bViconiaShoutsDemonDevir","GLOBAL",3)~ THEN VICONIJ _bViconiaAnnouncesDemonDeVir1
@243 /*LISTEN ALL OF YOU! I AM VICONIA OF HOUSE DEVIR. MY DAUGHTER IS IMRAE OF HOUSE DEVIR.*/
		DO ~SetGlobal("_bViconiaShoutsDemonDevir","GLOBAL",4)~
	= @244 /*HOUSE JAE'LLAT AND HOUSE DESPANA ARE DESTROYED. WE RULE YOU NOW!*/
	= @245 /*DO ANY DARE TO CHALLENGE US?*/
EXIT
	
//Demon talking to the dragon.
CHAIN IF WEIGHT #-1 ~Global("_bDemonWalks","GLOBAL",9)~ THEN UDDEMON _bDemonLordMeetsDragon1
@246 /***I SEE YOU, HATED SILVER. I HAVE FEASTED ON YOUR CHILD. NOW PREPARE TO MEET YOUR DOOM.***/
		DO ~SetGlobal("_bDemonWalks","GLOBAL",10)~
	== UDSILVER @247 /*You show amazing gall to come here! Have you the fortitude to stand before me after consuming my egg?! I sensed its death!*/
		= @248 /*I will destroy you before you hurt any more of my children!*/
	== UDDEMON @249 /***NOTHING CAN STAND BEFORE ME!***/
		DO ~ReallyForceSpell("udsilver",CLERIC_FLAME_STRIKE)~
EXIT

//2nd Demon dialogue
CHAIN IF WEIGHT #-1 ~Global("_bDemonWalks","GLOBAL",11)~ THEN UDDEMON _bDemonLordMeetsDragon2
@250 /***YOU RESIST ME? IMPOSSIBLE!***/
	DO ~ApplySpell(Myself,HEAL_NO_VISUAL) SetGlobal("_bDemonWalks","GLOBAL",12) ReallyForceSpell("udsilver",CLERIC_FLAME_STRIKE)~
EXIT

//3rd Demon dialogue
CHAIN IF WEIGHT #-1 ~Global("_bDemonWalks","GLOBAL",13)~ THEN UDDEMON _bDemonLordMeetsDragon3
@251 /***SHE IS TOO POWERFUL! I SHALL DEPART***/	
	DO ~SetGlobal("_bDemonWalks","GLOBAL",14) ApplySpell(Myself,HEAL_NO_VISUAL)~ 
	== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @252 /*Kl'eril! Rath'arg! Flee in fear then! We shall win this battle without you!*/
	== UDDEMON @253 /***GOODBYE, FALSE DARKLINGS.***/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bDemonWalks","GLOBAL",14) Global("_bDemonPanics","GLOBAL",1)~ THEN UDDEMON _bDemonLordMeetsDragon4
	@25300 /***NO! THE SILVER'S MAGIC HAS TRAPPED ME IN THIS CAVE!***/
		DO ~ApplySpell(Myself,HEAL_NO_VISUAL)~
	== UDSILVER @25301 /*You cannot leave by any means, demon. You will die here with your puppets!*/
		DO ~SetGlobal("_bDemonPanics","GLOBAL",2) Enemy()~
	== UDDEMON @25302 /***BHAALSPAWN! VICONIA! HELP! DO SOMETHING BEFORE SHE DESTROYS US ALL!***/
		DO ~AddJournalEntry(@20002,QUEST)~
EXIT

//Once dragon's dead
CHAIN IF WEIGHT #-1 ~Global("_bDemonWalks","GLOBAL",15)~ THEN UDDEMON _bDemonLordMeetsDragon5
@254 /***DARKLING MOTHER. CHILD OF BHAAL. MY MOST HUMBLE APOLOGIES.***/
		DO ~SetGlobal("_bDemonWalks","GLOBAL",16) ApplySpell(Myself,HEAL_NO_VISUAL)~
	= @255 /***I FAILED AGAINST THE SILVER BUT YOU TRIUMPHED.***/
== VICONIJ @256 /*You fled on your belly and hid cowering in a corner while we fought!*/
	= @257 /*We should cut you into pieces and burn them to ashes... but perhaps you still have some use.*/
	= @258 /*Swear us your loyalty and we will show mercy.*/
== UDDEMON @259 /***MY MAGIC WAS INEFFECTIVE AGAINST THE SILVER, BUT I STILL HAVE POWER! I AM YOURS TO COMMAND AS YOU WISH.***/
== VICONIJ @260 /*Then uphold your end of the bargain and we shall uphold ours. There lies her carcass in all its glory. Feast to your heart's content.*/
== UDDEMON @261 /***YOU HAVE MY GRATITUDE, MATRON MOTHER VICONIA. I SHALL FEED! I SHALL LEAVE THE SCALES UNDAMAGED. TAKE THEM AND FIND A GREAT SMITH TO MAKE THEM INTO ARMOR.***/
	= @262 /***REST HERE. WE SHALL CONTINUE WHEN WE HAVE REGAINED OUR STRENGTH.***/
	DO ~AddJournalEntry(@20003,QUEST)~
EXIT 

//After rest
CHAIN IF WEIGHT #-1 ~Global("_bDemonWalks","GLOBAL",18)~ THEN UDDEMON _bDemonLordMeetsDragon6
@263 /***I AM SATIATED. AS I FEASTED UPON THE SILVER, I GAINED THE LOCATION OF THE EXIT. I SHALL LEAD YOU TO IT.***/
	DO ~SetGlobal("_bDemonWalks","GLOBAL",19)~
	= @264 /***BUT FIRST MY BOON. AS PROMISED ALL YOUR DROW WEAPONS AND ARMOR WILL WITHSTAND THE LIGHT OF THE SUN. WITH MY POWER, I GRANT YOU THIS.***/
		DO ~SetGlobal("DROWITEMCHECKDONE","GLOBAL",1) SetGlobal("oh_drow_items_safe","GLOBAL",1) CreateVisualEffectObject("Spcrtwpn",Player1) CreateVisualEffectObject("Spcrtwpn",Player2) CreateVisualEffectObject("Spcrtwpn",Player3) CreateVisualEffectObject("Spcrtwpn",Player4) CreateVisualEffectObject("Spcrtwpn",Player5) CreateVisualEffectObject("Spcrtwpn",Player6)~
	= @265 /***NOW TO THE EXIT. KEEP PACE, LITTLE ONES.***/
EXIT

//Interjection into conversation with gate guards.
INTERJECT UDDOOR02 1 /*Nindol orn tlu jivvin. Ssussun pholor dos, shebali!*/ _bDemonConfrontsDoorGuards1
	== UDDEMON IF ~Detect([PC]) IfValidForPartyDialog("Viconia")~ THEN @266 /***YOU WASTE OUR TIME, LITTLE DARKLINGS. COME THAT I MAY FEAST UPON YOUR BONES.***/
		= @267 /***OH? DID YOU NOT SEE ME? YOU ARE UNOBSERVANT.***/
		= @268 /***IT WOULD BE A WASTE OF TIME FOR MATRON MOTHER VICONIA TO KILL YOU.***/
		= @269 /***HOUSES JAE'LLAT AND DESPANA ARE NO MORE. HOUSE DEVIR RULES YOU NOW.***/
			DO ~SetGlobal("_bDemonMakesGateGuardsFlee","GLOBAL",1)~
		= @270 /***SWEAR YOUR LOYALTY AND SCURRY BACK TO UST NATHA.***/
	== UDDOOR02 @271 /*Udos kla'ath Qu'ellar DeVir!*/
	== VICONIJ @272 /*Well played. Look at them flee in fear. They will return to the city and serve Imrae well.*/
EXIT

//Viconia's Announcement in Exit Tunnels When Leaving With Demon
CHAIN IF WEIGHT #-1 ~Global("_bDemonWalks","GLOBAL",29)~ THEN VICONIJ _bViconiaAnnouncesExitTunnelsDemon1
@273 /*VOK D'JAL! USSTAN TLUN VICONIA DE' QU'ELLAR DEVIR! USSTA DALHARIL ZHAH IMRAE DE' QU'ELLAR DEVIR!*/
		DO ~SetGlobal("_bDemonWalks","GLOBAL",30)~
	= @27300 /*QU'ELLAR JAE'LLAT LU' QU'ELLAR DESPANA PHUUL ELGGAT! UDOS KULT D'JAL NIN!*/
	= @27301 /*XUN JALA OOLOS KUUV XHANDAL UDOSSA?*/
== UDDROW29 @274 /*Dos ulnar! Dos orn'la ssrig'luin mzild taga natha lince'sa errdegahr ultrinnan qua'laen lil' Ust Qu'ellar!*/
	= @275 /*Whol Qu'ellar Jae'llat!*/
EXIT

//Viconia's 2nd Announcement in Exit Tunnels When Leaving With Demon
CHAIN IF WEIGHT #-1 ~Global("_bDemonWalks","GLOBAL",32)~ THEN VICONIJ _bViconiaAnnouncesExitTunnelsDemon2
	@276 /*We have no time for this. You try.*/
== UDDEMON @277 /***LISTEN DARKLING WORMS! I SERVE MATRON MOTHER VICONIA, OF HOUSE DEVIR.***/
	= @278 /***HOUSE JAE'LLAT AND DESPANA HAVE FALLEN. HOUSE DEVIR RULES YOU NOW!***/
		DO ~SetGlobal("_bDemonWalks","GLOBAL",33)~
	= @279 /***SWEAR YOUR LOYALTY OR I SHALL CONTINUE TO ROAST THE FLESH FROM YOUR BONES.***/
== VICONIJ @280 /*That seems to have done it. You are impressively loud.*/
	DO ~AddJournalEntry(@20004,QUEST)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bDemonWalks","GLOBAL",35) Global("_bDemonTalksAtExit","GLOBAL",1)~ THEN UDDEMON _bDemonAndViconiaAtExit1
	@281 /*** I HAVE NOT HAD THIS MUCH FUN IN AN AGE, LITTLE DARKLING. I WILL STAY HERE AND WANDER THESE CAVERNS AS AGREED. NO ONE SHALL PASS.***/
		DO ~SetGlobal("_bDemonWalks","GLOBAL",36) SetGlobal("_bDemonTalksAtExit","GLOBAL",2) ApplySpell(Myself,HEAL_NO_VISUAL)~
	= @282 /***OR PERHAPS I SHOULD ACCOMPANY YOU FURTHER. I SMELL MORE ELVES OUTSIDE. YOU COULD USE MY ASSISTANCE AND THAT OF YOUR NEW ALLIES.***/
	= @283 /***THE ELVES GUARD A TEMPLE, I FEEL IT. IT IS A PLACE OF POWER. WHY SHOULD THAT POWER NOT BE OURS?***/
	== VICONIJ @284 /*A tempting thought. <CHARNAME>, what do you think?*/
END
	++ @285 /*We should try to talk to the elves. Let the demon wait here and send the drow back to Ust Natha.*/ EXTERN VICONIJ _bDemonAndDrowFinish1
	++ @286 /*I think we should slaughter the elvish army, loot the corpses, and make drinking mugs from their skulls!*/ EXTERN VICONIJ _bDemonAndDrowAttack1

CHAIN VICONIJ _bDemonAndDrowFinish1
	@287 /*A pity... the look on an elf's face as you cut her down is without price. But no matter.*/
		DO ~SetGlobal("_bDrowReturnUstNatha","GLOBAL",1)~
	= @288 /*Lord of the Nether Pits, I thank you for your assistance. Wait here as agreed. Let no one pass except those loyal to House DeVir.*/
	= @289 /*Dismiss this rabble for me as well. I am done shouting.*/
	== UDDEMON @290 /***IT SHALL BE DONE.***/
		= @291 /***DARKLING WORMS, HEAR AND OBEY!***/
		= @292 /***THE BATTLE IS WON! I WILL GUARD THE ENTRANCE!***/
		= @293 /***RETURN TO UST NATHA AND SERVE IMRAE DEVIR. HOUSES JAE'LLAT AND DESPANA HAVE FALLEN, BUT HOUSE DEVIR HAS DECREED MERCY FOR THE SURVIVORS.***/
		= @294 /***SERVE HOUSE DEVIR AND YOU SHALL BE REWARDED. OPPOSE THEM AND YOUR TORMENT WILL BE ETERNAL.***/
		= @295 /***NOW GO!***/
	DO ~AddJournalEntry(@20005,QUEST_DONE)~
EXIT

CHAIN VICONIJ _bDemonAndDrowAttack1
	@296 /*Yes! I have waited so long for this moment.*/
		DO ~SetGlobal("_bDrowAttackElves","GLOBAL",1)~
	= @297 /*First, though we should rest and heal our wounds. Let the soldiers outside wait and wonder what happened to their scouts.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bDrowAttackElves","GLOBAL",3)~ THEN VICONIJ _bViconiaAnnouncesExitTunnelsDemon3
	@298 /*Finally, you're awake! We attack!*/
		DO ~SetGlobal("_bDrowAttackElves","GLOBAL",4)~
EXIT

//Interjection into Elven Soldier's Dialogue OUTSIDE if you're at war.
INTERJECT C6ELF1 0 /*I speak the common tongue that you might hear and be warned! All that breach the surface will be fought back! Wait, you... you are no drow!*/ _bAttackingElvesInTemple1
	== C6ELF1 IF ~Global("_bDrowAttackElves","GLOBAL",4)~ THEN @299 /*No, it is a ruse! WE ARE UNDER ATTACK!*/
	DO ~SetGlobal("SummonElvenGod","AR2500",2) Enemy()~
EXIT

//Viconia's talk if the demon dies at any point during this.
CHAIN IF WEIGHT #-1 ~Global("_bVicoinaLeavesForUstNatha","GLOBAL",1)~ THEN VICONIJ _bViconiatalksaboutleavingforustnatha1
	@300 /*I will return to Ust Natha. Good luck, <CHARNAME>, and... thank you.*/
		DO ~SetGlobal("_bVicoinaLeavesForUstNatha","GLOBAL",2)~
END
	++ @301 /*Knock 'em dead, Viconia.*/ EXIT
	++ @302 /*Take care of yourself, okay?*/ EXIT
	++ @303 /*What if the guards try to stop you before you reach Imrae?*/ GOTO _bViconiatalksaboutleavingforustnatha2
	
CHAIN VICONIJ _bViconiatalksaboutleavingforustnatha2
	@304 /*Let them try. I am Matron Mother of House DeVir, and I must strike fear in the hearts of my enemies.*/ 
	= @305 /*Making a terrifying example of a few foolish guards would do wonders for my reputation.*/
EXIT

//Interjection into Elven Soldier's dialogue outside if you don't bring your army.
INTERJECT C6ELF1 0 /*I speak the common tongue that you might hear and be warned! All that breach the surface will be fought back! Wait, you... you are no drow!*/ _bNotAttackingElvesInTemple1
	== VICONIJ IF ~Global("_bDrowReturnUstNatha","GLOBAL",1) IfValidForPartyDialog("Viconia")~ THEN @306 /*<CHARNAME> is not, it is true. But I am Viconia, Matron Mother of House DeVir.*/
		= @307 /*I have taken control of Ust Natha. This war is over. Let us pass. We are here to find and kill Jon Irenicus.*/
END C6ELF1 4 /*You know of Irenicus? You will speak with Elhan immediately. He will determine your relationship with the fiend!*/

//Additonal hostile dialogue.
EXTEND_TOP C6ELF1 4 /*You know of Irenicus? You will speak with Elhan immediately. He will determine your relationship with the fiend!*/
	++ @308 /*Actually, I don't think I will. Get out of my way or I will slaughter all of you.*/ GOTO _bAttackC6Elf1
END

EXTEND_TOP C6ELF1 6 /*My commander shall decide your worth. You will be taken to him. Do not resist; I will not waste time when the deeds of Irenicus grow more foul each day.*/
	++ @308 /*Actually, I don't think I will. Get out of my way or I will slaughter all of you.*/ GOTO _bAttackC6Elf1
END
	
CHAIN C6ELF1 _bAttackC6Elf1
	@309 /*<PRO_HESHE> is hostile. To battle!*/
		DO ~SetGlobal("SummonElvenGod","AR2500",2) SetGlobal("_bCNAttacksElves","GLOBAL",1) Enemy()~
EXIT
	
//Interjections into Elhan's dialogue if you sided with the demon.
INTERJECT C6ELHAN2 8 /*I will ask some things of you, and you will speak what you know. My sages will detect any falsehood. They are very good at that sort of thing.*/
_bElhanQuestionsifViconiaUstNatha1
	== C6ELHAN2 IF ~GlobalGT("_bDemonWalks","GLOBAL",0)~ THEN @310 /*Now then, something simple and direct to begin with. You emerged from the home of the drow. Were you fleeing, or are you in league with them?*/
END
	++ @311 /*I was fleeing their dark realm.*/ EXTERN C6WARSA1 _bElhanQuestionsFleeing1
	++ @312 /*If that means hating you, then yeah, I'm in league with them.*/ EXTERN C6WARSA1 _bElhanQuestionsHating1
	++ @313 /*Neither. Any association with them was a means to an end. My goals are separate.*/ EXTERN C6WARSA1 0 /*Truth.*/
	++ @314 /*I left them bloody and battered. I did not flee.*/ EXTERN C6WARSA1 0 /*Truth.*/
	++ @315 /*This tires me. Let me go or I will kill you all.*/ EXTERN C6WARSA1 _bElhanQuestionsDie1
	++ @316 /*Enough of this. Die now!*/ EXTERN C6WARSA1 _bElhanQuestionsDie1
	
CHAIN C6WARSA1 _bElhanQuestionsFleeing1
	@317 /*False. There was no fleeing.*/
		DO ~Enemy()~
== C6WARSA2 @318 /*Absolutely false. The drow beneath treated <PRO_HIMHER> as a friend and ally.*/
	DO ~SetGlobal("_bCNAttacksElves","GLOBAL",1) SetGlobal("SummonElvenGod","AR2500",2) Enemy()~
== C6ELHAN2 @319 /*It's a pity you chose to lie to us. I sentence you to death.*/
	DO ~Enemy()~
EXIT

CHAIN C6WARSA1 _bElhanQuestionsHating1
	@320 /*Truth. <PRO_HESHE> hates us.*/
		DO ~Enemy()~
== C6WARSA2 @321 /*Absolute truth. The drow aided <PRO_HIMHER>.*/
	DO ~SetGlobal("_bCNAttacksElves","GLOBAL",1) SetGlobal("SummonElvenGod","AR2500",2) Enemy()~
== C6ELHAN2 @322 /*A pity you chose to ally yourself with our enemies. I sentence you to death.*/
	DO ~Enemy()~
EXIT

CHAIN C6WARSA1 _bElhanQuestionsDie1
	@323 /*Truth. <PRO_HISHER> feelings toward us are hostile.*/
		DO ~Enemy()~
== C6WARSA2 @324 /*Absolute truth. <PRO_HESHE> believes <PRO_HIMHER>self strong enough to defeat us.*/
	DO ~SetGlobal("_bCNAttacksElves","GLOBAL",1) SetGlobal("SummonElvenGod","AR2500",2) Enemy()~
== C6ELHAN2 @325 /*A pity we could not be allies. Prepare for your death.*/
	DO ~Enemy()~
EXIT
	
//Additional Hostile Dialogue when facing Elhan even if you didn't side with the drow.
EXTEND_BOTTOM C6ELHAN2 10 /*Now then, something simple and direct to begin with. You emerged from the home of the drow. Were you fleeing, or are you in league with them?*/	
	++ @315 /*This tires me. Let me go or I will kill all of you.*/ EXTERN C6WARSA1 _bElhanQuestionsDie1
	++ @316 /*Enough of this. You all die now!*/ EXTERN C6WARSA1 _bElhanQuestionsDie1
END

//Interjection into Elhan's dialogue if Viconia rules Ust Natha and is feeling powerful.
INTERJECT C6ELHAN2 61 /*Such talk does not endear me to you. Do you agree or do you not?*/ _bViconiaObjectsElhanGeas1
	== VICONIJ IF ~GlobalGT("_bDemonWalks","GLOBAL",0)~ THEN @326 /*Nau! Cha'kohk dos! I am Viconia, Matron Mother of House DeVir, and ruler of Ust Natha. I will slaughter you and your army before I let your filthy magics touch me!*/
END
	++ @327 /*Viconia, be reasonable. This is the only way.*/ EXTERN VICONIJ 122 /*Very well. Have your spells cast and secure my will to the task. I imagine spitting on you for the indignity will be restricted as well? A pity.*/
	++ @328 /*Well spoken, Viconia. You heard her, Elhan, forget the geas or we kill you all.*/ EXTERN C6WARSA1 _bCNObjectstoViconiaGeas1
	
CHAIN C6WARSA1 _bCNObjectstoViconiaGeas1
	@329 /*Truth, he will fight before he overrides Viconia's wishes. He is loyal to his friends.*/
== C6WARSA2 @330 /*This <PRO_MANWOMAN> believes without a doubt that <PRO_HESHE> is powerful enough to kill us all.*/ 
== C6ELHAN2 @331 /*Hmm, perhaps a geas will not be necessary. Such trust among friends is admirable.*/
END
	++ @332 /*So may we go?*/ EXTERN C6ELHAN2 54 /*All speed to you, <CHARNAME>.*/
	++ @333 /*A wise choice. Will you get out of our way?*/ EXTERN C6ELHAN2 54
	++ @33300 /*I'm bored of this. Can we leave now?*/ EXTERN C6ELHAN2 54
	
//Once the first battle at the entrance is over. The demon moves to the center of the temple.
CHAIN IF WEIGHT #-1 ~Global("_bDemonatSurface","GLOBAL",3)~ THEN UDDEMON _bViconiaDemonGainsElvenTemple1
	@334 /***AT LAST... I HAVE NEVER FELT SUCH POWER. STANDING HERE, I COULD FACE THE GODS THEMSELVES.***/
		DO ~SetGlobal("_bDemonatSurface","GLOBAL",4) ApplySpell(Myself,HEAL_NO_VISUAL) GiveItemCreate("MINHP1","uddemon",0,0,0) XEquipItem("MINHP1","uddemon",SLOT_RING_LEFT,EQUIP)~
	= @335 /***HERE I SHALL REMAIN AND ALL IN MY SIGHT SHALL PERISH!***/
== VICONIJ @336 /*I give you leave to stay here as long as you wish, provided you serve me and destroy all who do not.*/
== UDDEMON @337 /***ALL WHO PASS THIS WAY WILL SERVE HOUSE DEVIR OR THEY SHALL DIE!***/
== UDDEMON @338 /***BUILD A NEW TEMPLE AROUND ME DARKLINGS, AND WORSHIP THE POWER I WIELD!***/
	DO ~AddJournalEntry(@20006,QUEST_DONE)~
EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("AR2500") HPLT(Myself,10)~ THEN UDDEMON _bDemonCannotDieinTemple
	@339 /***HAHAHA, PUNY MORTALS. I CANNOT BE KILLED BY THE LIKES OF YOU!***/
		DO ~ApplySpell(Myself,HEAL_NO_VISUAL)~
EXIT

//If Viconia comes back after 15 days.
APPEND VICONIP IF WEIGHT #-1 ~Global("KickedOut","LOCALS",8) Global("_bViconiaReturnsUstNatha","GLOBAL",1)~ THEN _ViconiaReturnsFromUstNatha1
	SAY @340 /*I have returned. Imrae's rule is secure, or as secure as it can be given the circumstances. As per my word, I have found you.*/
		IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) SetGlobal("_bViconiaReturnsUstNatha","GLOBAL",2)~ EXTERN VICONIP 2 /*Do we continue? Or are we through with each other?*/
	END
END

//Elhan's talk with CHARNAME if you destroy his army. Takes place in the graveyard outside of Bodhi's hideout.
CHAIN IF WEIGHT #-1 ~Global("_bElhantalksingraveyard","GLOBAL",1)~ THEN C6ELHAN2 _bElhanTalkintoCNinGraveyard1
	@341 /*Hold a moment! I need to speak with you!*/
		DO ~SetGlobal("_bElhantalksingraveyard","GLOBAL",2)~
END
	++ @342 /*Another elf? Prepare to die!*/ GOTO _bElhanTalkintoCNinGraveyard2
	+~NumTimesTalkedTo(0)~+ @343 /*I recognize you! You fled from the battle!*/ GOTO _bElhanTalkintoCNinGraveyard2
	+~!NumTimesTalkedTo(0)~+ @344 /*Elhan! Good to see you again. This time you won't escape me!*/ GOTO _bElhanTalkintoCNinGraveyard2
	
APPEND C6ELHAN2 IF ~~ THEN _bElhanTalkintoCNinGraveyard2
	SAY @345 /*Kill me and you lose any hope of finding Jon Irenicus!*/
	= @346 /*I am not here to fight. I saw you cut down my soldiers and I only barely escaped with my life.*/
	= @347 /*After I fled, the queen sent me a vision. Jon Irenicus has your soul and only you are powerful enough to save Suldanessellar from him.*/
	= @348 /*His army invaded our city while our warriors were in the field defending against the drow. He has used his power to conceal Suldanessellar and we cannot penetrate his spells in order to return.*/
	IF ~~ THEN GOTO 31 /*You obviously bear no love for Irenicus, making you the enemy of our enemy. Classically speaking, this might make you our friend.*/
	END
END

INTERJECT C6ELHAN2 34 _bElhanTalkintoCNinGraveyard2 /*Someone stole the relic when the temple fell to the drow. Obviously, it was a servant of Irenicus capitalizing on the chaos of the battle.*/
	== C6ELHAN2 IF ~Global("_bElhantalksingraveyard","GLOBAL",2)~ THEN @349 /*After our battle, the surviving sages tracked the Lanthorn here. It is being held beneath this crypt.*/
		= @350 /*However, we cannot move our army into this city to retrieve it. As great as our problems are, they would only get worse if we appeared to be sending soldiers into Athkatla.*/
		= @351 /*Indeed, as soon as we finish speaking, I shall gather what remaining forces I can find and return to my war camp.*/
	== C6ELHAN2 IF ~Global("_bDrowAttackElves","GLOBAL",4)~ THEN @352 /*I need to keep an eye on the drow and on your demon living in our temple.*/
	== C6ELHAN2 IF ~~ THEN @353 /*You are powerful, however, and may be able to recruit other allies to your cause.*/
		DO ~AddJournalEntry(@20007,INFO)~
END C6ELHAN2 47 /*They need not know the nature of the emergency, only that a great evil must be routed. The less who know of the shame brought by Irenicus, the better.*/

//Extending Bottom of Cromwell so he can make armor out of the Silver Dragon Scales.
EXTEND_BOTTOM WSMITH01 58 /*A good <DAYNIGHTALL> to ye, me friend. Good to see ye back in me forge, it is. Be there something that ye need?*/
+~PartyHasItem("ohdscale")~+ @354 /*I have Silver Dragon Scales. Can you make them into armor?*/ GOTO _bCromwellMakesSilverDragonArmor0
END

CHAIN WSMITH01 _bCromwellMakesSilverDragonArmor0
	@355 /*By the Soul Forger, 'tis a grand sight. I can make a suit of armor from yon scales, if ye like.*/
END
	++ @356 /*What would that involve?*/ GOTO _bCromwellMakesSilverDragonArmor1
	
CHAIN WSMITH01 _bCromwellMakesSilverDragonArmor1
	@357 /*Two things, me friend. It will cost ye 15,000 gp for the work, no less, and without an apprentice, ye'll have to stay here a full day and help me run the forge.*/
END
	+~PartyGoldGT(14999)~+ @358 /*That sounds fine. Let's do it.*/ GOTO _bCromwellMakesSilverDragonArmor2
	++ @359 /*No, I don't think so. I think I'll be going now.*/ EXIT
	
CHAIN WSMITH01 _bCromwellMakesSilverDragonArmor2
	@360 /*As ye wish. Fer such a commission, we can start on it right away. No sense in wasting time, then... it be best if we just get to it.*/
	DO ~TakePartyGold(15000) DestroyGold(15000) SetGlobal("ForgeItem","GLOBAL",8488360) StartCutSceneMode() StartCutScene("cromwell")~
EXIT

	

