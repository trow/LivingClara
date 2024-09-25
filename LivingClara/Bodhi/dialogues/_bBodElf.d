BEGIN _bBodElf

//First dialogue
CHAIN IF ~Global("_bFirstBodhiElfDialogue","GLOBAL",1)~ THEN _bBodElf _bBodhiElfJoins0
	@1 /*You are beginning another adventure, <CHARNAME>, and I would love to accompany you.*/
		DO ~SetGlobal("_bFirstBodhiElfDialogue","GLOBAL",2)~
	= @2 /*I enjoyed the reconciliation with my sister, but the rest of my brethren can be trying on the nerves. I will enjoy having a respite from my City of Trees.*/
END
	++ @3 /*Don't tell me that the great Bodhi-of-the-Fallen-Leaves is already bored.*/ GOTO _bBodhiElfJoins1
	++ @4 /*Is life there not what you wanted?*/ GOTO _bBodhiElfJoins1
	++ @5 /*Are you not as happy in Suldanessellar as before?*/ GOTO _bBodhiElfJoins1
	
APPEND _bBodElf IF ~~ THEN BEGIN _bBodhiElfJoins1
	SAY @6 /*I was never truly content there... that was one of the reasons I agreed to help Jon with his insane scheme all those years ago.*/
	= @7 /*Lately, however, I have encountered a new complication... a taste for meat which my plant-eating brethren do not share.*/
	= @8 /*Particularly meat from the lesser of the two-legged species: dwarf, halfling, orc, human, gnome, goblin, and, occasionally, chicken... None of which is available here.*/
	= @9 /*Before we departed, I wanted to confirm that you were not opposed to my... culinary preferences.*/
	= @10 /*I shall be discreet, of course, as I have taken to heart the disadvantages of attracting attention.*/
	= @11 /*If you do not wish my company, I shall return to Amn, or perhaps I will head north to sample the cuisine around the city of Baldur's Gate.*/
	IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

CHAIN _bBodElf _bBodElfJoinsAsk1
	@12 /*It is undoubtedly time for me to pause so that you may ask a question.*/
END
	++ @13 /*I won't let you get away with this. I shall destroy you!*/ GOTO _bBodElfJoinsDestroy1
	++ @14 /*I do not wish you in my party, but I wish you luck.*/ GOTO _bBodElfJoinsLuck1
	+ ~!Race(Player1,ELF) !Race(Player1,HALF_ELF)~+ @15 /*You do realize that I am a <PRO_RACE>, right?*/ GOTO _bBodElfJoinsRace1
	++ @16 /*My friends are not food.*/ GOTO _bBodElfJoinsFriends1
	++ @17 /*You won't eat elves or half-elves?*/ GOTO _bBodElfEatElves1
	++ @18 /*We cured you of your vampirism. You don't need to eat people!*/ GOTO _bBodElfDontNeedEat1
	++ @19 /*I am a vegetarian.*/ GOTO _bBodElfJoinsVegetarian1
	++ @20 /*Won't you miss your sister, Queen Ellesime, if you go?*/ GOTO _bBodElfJoinsEllesime1
	++ @21 /*Why don't you consider non-elven intelligent races to be people?*/ GOTO _bBodElfJoinsPeople1
	++ @22 /*If you're not a vampire anymore, what good are you?*/ GOTO _bBodElfJoinsFighter1
	++ @23 /*I would love to have you with me.*/ GOTO _bBodElfJoinsGroup1

CHAIN _bBodElf _bBodElfJoinsDestroy1
	@24 /*Do you remember the poison I used on the ship to Spellhold?*/
END
	++ @25 /*That one you put in my food and...?*/ GOTO _bBodElfJoinsDestroy2
	++ @26 /*The poison that didn't affect me until your brother said...?*/ GOTO _bBodElfJoinsDestroy2
	
CHAIN _bBodElf _bBodElfJoinsDestroy2
	@27 /*Sleep!*/
		DO ~ActionOverride(Player1,PlayDead(45)) FadeToColor([20.0],0) Wait(1) DestroySelf() FadeFromColor([20.0],0)~
EXIT

CHAIN _bBodElf _bBodElfJoinsLuck1
	@28 /*Luck to you as well, little godling.*/ 
		DO ~EscapeArea()~ 
EXIT
		
APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfJoinsRace1
	SAY @29 /*You are a child of Bhaal, little godling. You are not food.*/
	IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfJoinsFriends1
	SAY @30 /*Naturally, <CHARNAME>. It would be the height of rudeness for me to eat your... pets.*/
	IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

CHAIN _bBodElf _bBodElfEatElves1
	@31 /*I am no longer a monster, <CHARNAME>. I will not eat my own kind, nor any of the related races.*/ 
END
	++ @32 /*Makes sense.*/ GOTO _bBodElfJoinsAsk1
	++ @33 /*Humans and elves are related species. They can even have children together.*/ GOTO _bBodElfEatElves2
	
CHAIN _bBodElf _bBodElfEatElves2
	@34 /*The existence of half-elves is divine punishment for our hubris, nothing more.*/
	= @35 /*I have no more kinship to humans than I do to horses.*/
END
	++ @36 /*If you say so.*/ GOTO _bBodElfJoinsAsk1
	++ @37 /*Have you eaten horse?*/ GOTO _bBodElfEatElves3
	
APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfEatElves3
	SAY @38 /*Horses are delicious.*/
	IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfDontNeedEat1
	SAY @39 /*I do not eat *people*... those of Elven blood are safe from me. However, members of lower species, such as humans or dwarves, are fair prey.*/
	= @40 /*I may not need to eat them to survive any longer, but I still crave their flesh and I gain pleasure from consuming it.*/
	= @41 /*Just last week, I left this city and found a farm house containing a male and female human with four succulent children.*/
	= @42 /*I ate to maximum fullness, fed the remains of the family to their domestic animals, and slept for sixteen hours on my return.*/
	IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfJoinsVegetarian1
	SAY @43 /*You would fit in well in Suldanessellar. My people consider eating another living creature to be barbaric... done only by the lower, unenlightened species.*/
	= @44 /*I, however, enjoy the flavor of warm flesh on my tongue.*/
	IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfJoinsEllesime1
	SAY @45 /*I will return. We are immortal, <CHARNAME>, an absence of a few years, or even a few decades, is not cause for heartache.*/
	= @46 /*My sister is also aware of my cravings. She believes they are a lingering after-affect of my vampirism, but expects them to wear off in twenty or thirty years.*/
	= @47 /*Until then, it would be safer to have me far away from this place, lest I bring unwanted scrutiny back home.*/
	= @48 /*That and the Order of the Radiant Heart is hunting for me, though they are not particularly fond of you either.*/
	IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

CHAIN _bBodElf _bBodElfJoinsPeople1
	@49 /*Beholders, dolphins, and dragons are all more intelligent than humans. Do you consider them to be "people"? Do you extend them your mercy?*/
END
	++ @50 /*Yes, of course.*/ GOTO _bBodElfJoinsPeople2
	++ @51 /*No, I guess you're right.*/ GOTO _bBodElfJoinsAsk1
	++ @52 /*That's different! They don't look like people!*/ GOTO _bBodElfJoinsPeople3

APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfJoinsPeople2
	SAY @53 /*Then you are a fool! Dolphins are the most dangerous creatures on any plane. Their arch-mages work tirelessly to wipe all land species from existence.*/
	= @54 /*It is only due to the frequent intervention of your betters among the elder races that any of us still draw breath.*/
	IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfJoinsPeople3
	SAY @55 /*Are you certain? As they say, "Looks are in the eyes of the beholder."*/
	IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfJoinsFighter1
	SAY @56 /*I am the greatest warrior in the city of Suldanessellar. Try me.*/
		IF ~~ THEN GOTO _bBodElfJoinsAsk1
	END
END

APPEND _bBodElf IF ~~ THEN BEGIN _bBodElfJoinsGroup1
	SAY @57 /*I am overjoyed to hear that, <CHARNAME>. After all, you are my second favorite person.*/
	IF ~~ THEN DO ~JoinParty()~ EXIT
	END
END 

