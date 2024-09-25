//TOB Interjections (including Watcher's Keep)

//Asmay in Gromnir's Keep
INTERJECT_COPY_TRANS2 SARBHA03 4 _bMazzyAsmay /*You might want to rethink that. Gromnir is mad. He's randomly executing anyone he thinks might be a traitor.*/ 
	== MAZZY25J IF ~IsValidForPartyDialog("Mazzy")~ THEN @1 /*A true leader should inspire loyalty from their subordinates, not fear. Gromnir must be dealt with before his paranoia kills more innocents.*/
END

//Neera's Quest
//Szass Tam Intro
INTERJECT_COPY_TRANS2 OHNSZASS 16 _bMazzySzass /*But I am a civilized man, so I give you the freedom to choose. You may do this thing, or be tortured and executed*/
	== MAZZY25J IF ~IsValidForPartyDialog("Mazzy")~ THEN @2 /*You are evil incarnate! <CHARNAME>, I do not know if we are strong enough to defeat this vile creature, but surely we must try?*/
	== NEERA25J IF ~IsValidForPartyDialog("NEERA")~ THEN @3 /*I mean, you're probably right. But what about Vicross? We can't just let her get away.*/
	== OHNSZASS IF ~IsValidForPartyDialog("Mazzy")~ THEN @4 /*Make your choice, Bhaalspawn. I trust you will be able to force these others into line.*/
END

//Szass Tam Final
INTERJECT_COPY_TRANS2 OHNSZASS 29 _bMazzySzass1 /*I must tie up all loose ends.*/
	== MAZZY25J IF ~IsValidForPartyDialog("Mazzy")~ THEN @5 /*You should have known that one so evil would never keep his word. Next time let us skip the bargaining.*/
END

//Amkethran Mayor
INTERJECT_COPY_TRANS2 AMMAYOR 2 _bMazzyMayor /*Will no one stand against these brutes who have invaded our town?*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara") IsValidForPartyDialog("Mazzy")~ THEN @6 /*(Three... Two... One...)*/
	== MAZZY25J IF ~IfValidForPartyDialog("_bClara") IsValidForPartyDialog("Mazzy")~ THEN @7 /*<CHARNAME>! We must help this girl!*/
END

//Hexxat Quest
INTERJECT_COPY_TRANS2 HEXXA25J 213 _bHexxatFlirt /*Yes, I noticed.*/
	== MAZZY25J IF ~IsValidForPartyDialog("Mazzy")~ THEN @8 /*This is hardly the time for flirting, <CHARNAME>.*/
	== MAZZY25J IF ~IsValidForPartyDialog("Mazzy") Global("_bMazzyRomance","GLOBAL",2)~ THEN @9 /*And given that we are together, you should not be flirting with this vampire at all.*/
	== MAZZY25J IF ~IsValidForPartyDialog("Mazzy")~ THEN @10 /*Continue and I may forget that Hexxat is an ally. My patience with her company wears thin.*/	
END

//Amkethran Lich
INTERJECT_COPY_TRANS2 AMLICH01 17 _bMazzyLich /*Then I shall wait here for your return, godling, with great anticipation.*/
	== MAZZY25J IF ~IsValidForPartyDialog("Mazzy")~ THEN @11 /*I am uneasy with this course of action, <CHARNAME>. Marlowe was wrong to sacrifice his wife in order to escape his bargain, yet are we truly right to deal with evil such as this?*/
END

//Sendai Woodcutter
INTERJECT_COPY_TRANS2 SENGUA01 1 _bMazzyWood /*I'm just a poor woodcutter trying to make a living. Just do the neighborly thing and move along.*/
	== MAZZY25J IF ~IsValidForPartyDialog("Mazzy")~ THEN @12 /*Really, <CHARNAME>?  We are not bandits. Leave this poor elf alone.*/
END

//Sendai Slavemaster 
INTERJECT_COPY_TRANS2 SENGUA04 2 _bMazzySendai /*Why have they not fallen? The mistress shall feed you all to the Spider Queen's children!*/
	== MAZZY25J IF ~IsValidForPartyDialog("Mazzy")~ THEN @13 /*Stand and face us, villain! Hiding behind slaves is the worst sort of cowardice!*/
	== DORN25J IF ~IsValidForPartyDialog("DORN") IsValidForPartyDialog("Mazzy")~ THEN @14 /*For once we are in agreement. The blood of these worthless masses doesn't deserve to stain my blade.*/
END

//Watcher's Keep
//Yakman the Mad
INTERJECT_COPY_TRANS4 GORMAD1 19 _bMazzyYakman /*Paranoid Yakman. Well... not really paranoid since demons really come, oh yes.*/
	== MAZZY25J IF ~IfValidForPartyDialog("Mazzy") GlobalGT("Chapter","GLOBAL",7)~ THEN @15 /*Lost and alone for centuries... I wouldn't wish that fate on anyone. We must defeat these demons, <CHARNAME>, so this poor elf can finally rest.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") GlobalLT("Chapter","GLOBAL",8)~ THEN @15 /*Lost and alone for centuries... I wouldn't wish that fate on anyone. We must defeat these demons, <CHARNAME>, so this poor elf can finally rest.*/
END

INTERJECT_COPY_TRANS4 GORSUC01 6 _bMazzySuccubus /*Nothing more than a kiss, dear one. A little piece of your life energies, nothing more than a taste, and we shall bring you on your way. *giggle* You can afford it, mortal... what do you say?*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") Global("_bMazzyRomance","GLOBAL",2) GlobalLT("Chapter","GLOBAL",8)~ THEN @16 /*The correct answer is no, <CHARNAME>. I have no wish to share you with this fiend, not even for a moment.*/
	== MAZZY25J IF ~IfValidForPartyDialog("Mazzy") Global("_bMazzyRomance","GLOBAL",2) GlobalGT("Chapter","GLOBAL",7)~ THEN @16 /*The correct answer is no, <CHARNAME>. I have no wish to share you with this fiend, not even for a moment.*/
END

INTERJECT_COPY_TRANS4 GORAPP1 15 _bMazzyHelmGhost /*Read it aloud and thou art done; all entrances to the prison will be sealed.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") Global("_bMazzyRomance","GLOBAL",2) GlobalLT("Chapter","GLOBAL",8)~ THEN @17 /*Despite the treachery of these Helmites, leaving them to the demon's mercy does not sit well with me.*/
	== MAZZY25J IF ~IfValidForPartyDialog("Mazzy") Global("_bMazzyRomance","GLOBAL",2) GlobalGT("Chapter","GLOBAL",7)~ THEN @17 /*Despite the treachery of these Helmites, leaving them to the demon's mercy does not sit well with me.*/
END
