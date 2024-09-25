
//Starting numbering here so that we can code quest above once written.
//Beginning Talk
APPEND MAZZY25J IF WEIGHT #-1 ~Global("_BMazzyCourtTOB","GLOBAL",2)~ THEN _bmazcourt1
	SAY @1 /*I consider you a friend, <CHARNAME>, but there is something I must ask before we continue.*/
	= @1000 /*What do you truly want from me? Please answer me plainly. I value directness and you cannot scare me with your honesty.*/
	++ @2 /*I want your sword and bow to aid me in my quests.*/ GOTO _bmazcourt2
	++ @3 /*I want your friendship and company on my travels.*/ GOTO _bmazcourt3
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) CheckStatGT(Player1,7,CHR) CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourt4
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) CheckStatGT(Player1,9,CHR) CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourt4
	+ ~!Race(Player1,HALFLING) CheckStatGT(Player1,11,CHR) CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourt4	
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,7,CHR) !CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,9,CHR) !CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourtNO
	+ ~!Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,11,CHR) !CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) CheckStatGT(Player1,7,CHR) CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourt5
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) CheckStatGT(Player1,9,CHR) CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourt5
	+ ~!Race(Player1,HALFLING) CheckStatGT(Player1,11,CHR) CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourt5
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,7,CHR) !CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,9,CHR) !CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourtNO
	+ ~!Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,11,CHR) !CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) CheckStatGT(Player1,7,CHR) CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourt6
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) CheckStatGT(Player1,9,CHR) CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourt6
	+ ~!Race(Player1,HALFLING) CheckStatGT(Player1,11,CHR) CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourt6
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,7,CHR) !CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,9,CHR) !CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourtNO
	+ ~!Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,11,CHR) !CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourtNO
	END
	
	IF ~~ THEN _bmazcourt2
	SAY @7 /*My sword and bow you have. Anything else?*/
	++ @3 /*I want your friendship and company on my travels.*/ GOTO _bmazcourt3
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) CheckStatGT(Player1,7,CHR) CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourt4
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) CheckStatGT(Player1,9,CHR) CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourt4
	+ ~!Race(Player1,HALFLING) CheckStatGT(Player1,11,CHR) CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourt4	
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,7,CHR) !CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,9,CHR) !CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourtNO
	+ ~!Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,11,CHR) !CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) CheckStatGT(Player1,7,CHR) CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourt5
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) CheckStatGT(Player1,9,CHR) CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourt5
	+ ~!Race(Player1,HALFLING) CheckStatGT(Player1,11,CHR) CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourt5
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,7,CHR) !CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,9,CHR) !CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourtNO
	+ ~!Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,11,CHR) !CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) CheckStatGT(Player1,7,CHR) CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourt6
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) CheckStatGT(Player1,9,CHR) CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourt6
	+ ~!Race(Player1,HALFLING) CheckStatGT(Player1,11,CHR) CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourt6
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,7,CHR) !CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,9,CHR) !CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourtNO
	+ ~!Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,11,CHR) !CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourtNO
	++ @9 /*No, that is enough.*/ GOTO _bmazcourtNOEND
	END
	
	IF ~~ THEN _bmazcourt3
	SAY @8 /*I am here and I am your friend. Anything else?*/
	++ @2 /*I want your sword and bow to aid me in my quests.*/ GOTO _bmazcourt2
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) CheckStatGT(Player1,7,CHR) CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourt4
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) CheckStatGT(Player1,9,CHR) CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourt4
	+ ~!Race(Player1,HALFLING) CheckStatGT(Player1,11,CHR) CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourt4	
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,7,CHR) !CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,9,CHR) !CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourtNO
	+ ~!Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,11,CHR) !CheckStatGT(Player1,7,INT)~ + @4 /*I want your heart.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) CheckStatGT(Player1,7,CHR) CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourt5
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) CheckStatGT(Player1,9,CHR) CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourt5
	+ ~!Race(Player1,HALFLING) CheckStatGT(Player1,11,CHR) CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourt5
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,7,CHR) !CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,9,CHR) !CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourtNO
	+ ~!Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,11,CHR) !CheckStatGT(Player1,7,INT)~ + @5 /*I want you in my arms tonight.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) CheckStatGT(Player1,7,CHR) CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourt6
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) CheckStatGT(Player1,9,CHR) CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourt6
	+ ~!Race(Player1,HALFLING) CheckStatGT(Player1,11,CHR) CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourt6
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,7,CHR) !CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourtNO
	+ ~Gender(Player1,FEMALE) Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,9,CHR) !CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourtNO
	+ ~!Race(Player1,HALFLING) OR(2) !CheckStatGT(Player1,11,CHR) !CheckStatGT(Player1,7,INT)~ + @6 /*I want a future with you. Together.*/ GOTO _bmazcourtNO
	++ @9 /*No, that is enough.*/ GOTO _bmazcourtNOEND
	END
	
	IF ~~ THEN _bmazcourtNOEND
	SAY @10 /*Good, I am relieved that I did not have to disappoint you.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyCourtTOB","GLOBAL",3)~ EXIT
	END
		
	IF ~~ THEN _bmazcourtNO
	SAY @11 /*I am sorry. I regret hurting you but I cannot give you that.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyCourtTOB","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazcourt4
	SAY	@12 /*That you cannot have. My heart still belongs to my beloved Patrick. But perhaps another might be able to share it in the future. Do you wish to be that person?*/
	IF ~OR(15) Global("PGNaliaRomanceActive","GLOBAL",2)
	Global("EdwinRomanceActive","GLOBAL",2)
	Global("LS_HaerDalisRomanceActive","GLOBAL",2)
	Global("YoshimoRomanceActive","GLOBAL",2)
	Global("B!KeldornRA","GLOBAL",2)
	Global("AerieRomanceActive","GLOBAL",2)
	Global("JaheiraRomanceActive","GLOBAL",2)
	Global("ViconiaRomanceActive","GLOBAL",2)
	Global("NeeraRomanceActive","GLOBAL",2)
	Global("RasaadRomanceActive","GLOBAL",2)
	Global("DornRomanceActive","GLOBAL",2)
	Global("HexxatRomanceActive","GLOBAL",2)
	Global("AnomenRomanceActive","GLOBAL",2)
	Global("LS#SarevokRomanceActive","GLOBAL",1)
	Global("LS#SarevokRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtconflict
	IF ~!Global("PGNaliaRomanceActive","GLOBAL",2) 
	!Global("EdwinRomanceActive","GLOBAL",2) 
	!Global("LS_HaerDalisRomanceActive","GLOBAL",2) 
	!Global("YoshimoRomanceActive","GLOBAL",2) 
	!Global("B!KeldornRA","GLOBAL",2)
	!Global("AerieRomanceActive","GLOBAL",2)
	!Global("JaheiraRomanceActive","GLOBAL",2)
	!Global("ViconiaRomanceActive","GLOBAL",2)
	!Global("NeeraRomanceActive","GLOBAL",2)
	!Global("RasaadRomanceActive","GLOBAL",2)
	!Global("DornRomanceActive","GLOBAL",2)
	!Global("HexxatRomanceActive","GLOBAL",2)
	!Global("AnomenRomanceActive","GLOBAL",2)
	!Global("LS#SarevokRomanceActive","GLOBAL",1)
	!Global("LS#SarevokRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtGO
	END
	
	IF ~~ THEN _bmazcourt5
	SAY	@13 /*I will sleep alone tonight, but perhaps another might share my bed in the future. Do you wish to be that person?*/
	IF ~OR(15) Global("PGNaliaRomanceActive","GLOBAL",2) Global("EdwinRomanceActive","GLOBAL",2) Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("YoshimoRomanceActive","GLOBAL",2) Global("B!KeldornRA","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",2)Global("JaheiraRomanceActive","GLOBAL",2)Global("ViconiaRomanceActive","GLOBAL",2) Global("NeeraRomanceActive","GLOBAL",2) Global("RasaadRomanceActive","GLOBAL",2) Global("DornRomanceActive","GLOBAL",2) Global("HexxatRomanceActive","GLOBAL",2) Global("AnomenRomanceActive","GLOBAL",2) Global("LS#SarevokRomanceActive","GLOBAL",1) Global("LS#SarevokRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtconflict
	IF ~!Global("PGNaliaRomanceActive","GLOBAL",2) !Global("EdwinRomanceActive","GLOBAL",2) !Global("LS_HaerDalisRomanceActive","GLOBAL",2) !Global("YoshimoRomanceActive","GLOBAL",2) !Global("B!KeldornRA","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2) !Global("JaheiraRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",2) !Global("NeeraRomanceActive","GLOBAL",2) !Global("RasaadRomanceActive","GLOBAL",2) !Global("DornRomanceActive","GLOBAL",2) !Global("HexxatRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",2) !Global("LS#SarevokRomanceActive","GLOBAL",1) !Global("LS#SarevokRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtGO
	END
		
	IF ~~ THEN _bmazcourt6
	SAY	@14 /*I no longer make plans for my future; I live each day as it comes. But perhaps I could be with someone for a day, and if it was a good day then I would make plans for another. Do you wish to be that someone?*/
	IF ~OR(15) Global("PGNaliaRomanceActive","GLOBAL",2) Global("EdwinRomanceActive","GLOBAL",2) Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("YoshimoRomanceActive","GLOBAL",2) Global("B!KeldornRA","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",2)Global("JaheiraRomanceActive","GLOBAL",2)Global("ViconiaRomanceActive","GLOBAL",2) Global("NeeraRomanceActive","GLOBAL",2) Global("RasaadRomanceActive","GLOBAL",2) Global("DornRomanceActive","GLOBAL",2) Global("HexxatRomanceActive","GLOBAL",2) Global("AnomenRomanceActive","GLOBAL",2) Global("LS#SarevokRomanceActive","GLOBAL",1) Global("LS#SarevokRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtconflict
	IF ~!Global("PGNaliaRomanceActive","GLOBAL",2) !Global("EdwinRomanceActive","GLOBAL",2) !Global("LS_HaerDalisRomanceActive","GLOBAL",2) !Global("YoshimoRomanceActive","GLOBAL",2) !Global("B!KeldornRA","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2) !Global("JaheiraRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",2) !Global("NeeraRomanceActive","GLOBAL",2) !Global("RasaadRomanceActive","GLOBAL",2) !Global("DornRomanceActive","GLOBAL",2) !Global("HexxatRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",2) !Global("LS#SarevokRomanceActive","GLOBAL",1) !Global("LS#SarevokRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtGO
	END
	
	IF ~~ THEN _bmazcourtconflict1 //ends all romances except Haer'Dalis, Imoen, Knight Anomen & Dead Yoshimo. End triggers in Mazzy's baf file. You have to have her in your party for this, so the triggers should always go off.
	SAY @37 /*All right. If you are certain, then I will accept your decision. But this does not mean that I will simply leap into your arms.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoseMazzy","GLOBAL",1)~ GOTO _bmazcourtGO
	END
	
	IF ~~ THEN _bmazcourtconflict2
	SAY @361 /*That is precisely the point, <CHARNAME>. Imoen and I have already discussed this possibility and agreed that we could share if you were willing. However, such arrangements only work if everyone agrees.*/
	++ @36100 /*I do not mind sharing. I was just curious.*/ GOTO _bmazcourtconflict1
	+ ~Global("ImoenRomanceActive","GLOBAL",1)~ + @36101 /*Actually, I am interested in Imoen as well.*/ GOTO _bmazcourtconflict1
	+ ~Global("ImoenRomanceActive","GLOBAL",2)~ + @36102 /*Sounds good to me. I'm already with Imoen as well.*/ GOTO _bmazcourtconflict1
	++ @36103 /*No, I'm sorry. I want you all to myself.*/ DO ~SetGlobal("_bImoenMazzyRomance","GLOBAL",3)~ GOTO _bmazcourtconflict1
	++ @36104 /*Actually, I don't think I want you after all.*/ DO ~SetGlobal("_bMazzyInterest","GLOBAL",1) SetGlobal("_BMazzyCourt","GLOBAL",2)~ EXIT
	END

	IF ~~ THEN _bmazcourtGO
	SAY @38 /*Would you court me, <CHARNAME>?*/
	++ @39 /*Court you? Can't I just take you to an inn, get you drunk, and get a room?*/ GOTO _bmazcourtGO1
	++ @40 /*Court you? Seriously? That sounds like too much work.*/ GOTO _bmazcourtNO1
	++ @41 /*Court you? How do I do that?*/ GOTO _bmazcourtGO1
	++ @42 /*So flowers, sweets, and a trip to the theatre?*/ GOTO _bmazcourtGO1
	++ @43 /*I don't understand. What must I do?*/ GOTO _bmazcourtGO1
	END
	
	IF ~~ THEN _bmazcourtNO1
	SAY @44 /*No, I guess you will not be the one for me. Fine then. Let us be off.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyInterest","GLOBAL",1) SetGlobal("_BMazzyCourtTOB","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazcourtGO1
	SAY @45 /*You must complete a quest for me. When a princess or fair maiden is courted by her suitors, she asks them to prove their worth by undergoing some great trial. I am neither a princess nor a maiden, but I still have something I wish to ask of you.*/
	= @46 /*You must find me an inn.*/
	++ @47 /*Find you an inn? That's it?*/ + _bMazWantsInn1
	++ @48 /*Umm, where are we going to find an inn around here?*/ + _bMazWantsInn2
	++ @49 /*I don't see any inns, but I have this delightful pocket plane...*/ + _bMazWantsInn3
	++ @50 /*Wait... so you DO want me to just take you to an inn, get you drunk, and get a room?*/ + _bMazWantsInn4
	END
	
	IF ~~ THEN _bMazWantsInn1
	SAY @51 /*Look around you, <CHARNAME>. I think this will be harder than you anticipate.*/
	IF ~~ THEN + _bMazWantsInnFinal
	END
	
	IF ~~ THEN _bMazWantsInn2
	SAY @52 /*I do not believe that is my problem. It is your quest to complete, is it not?*/
	IF ~~ THEN + _bMazWantsInnFinal
	END
	
	IF ~~ THEN _bMazWantsInn3
	SAY @53 /*I am sorry, <CHARNAME>, but there is no bath in your pocket plane. I require an inn or nothing.*/
	IF ~~ THEN + _bMazWantsInnFinal
	END
	
	IF ~~ THEN _bMazWantsInn4
	SAY @54 /*<CHARNAME>, for what I have in mind I wish to be entirely sober. And I want you to be so as well.*/
	IF ~~ THEN + _bMazWantsInnFinal
	END
	
	IF ~~ THEN _bMazWantsInnFinal
	SAY @55 /*So there you have it, brave knight. I'm eager to see how you fare.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyInnQuest","GLOBAL",1) SetGlobal("_BMazzyCourtTOB","GLOBAL",3) AddJournalEntry (@1019,QUEST)~ EXIT /*The Path Ahead

I have spoken of my intentions to my companion Mazzy Fentan and she has asked me to court her in order to win her affections. Rather than flowers or the usual gifts, she wishes me to... find her an inn? It's an odd request but one I shall do my utmost to fulfill.*/
	END
END

CHAIN MAZZY25J _bmazcourtconflict 
@15 /*Yet, how can you be when you are already with someone else?*/
== MAZZY25J IF ~Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN @16 /*Nalia may be too innocent to notice your heart straying but I cannot have that on my conscience. Do not ask such things of me.*/
== MAZZY25J IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN @17 /*You are with Edwin and that means you are taken.*/
== MAZZY25J IF ~Global("YoshimoRomanceActive","GLOBAL",2)~ THEN @18 /*I know you and Yoshimo were close and I do not wish to be his replacement.*/
== MAZZY25J IF ~Global("B!KeldornRA","GLOBAL",2)~ THEN @19 /*Keldorn is my mentor and he has felt such pain already. I will not cuckold him.*/
== MAZZY25J IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN @20 /*You and Aerie are together and I would not see you break her heart.*/
== MAZZY25J IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @21 /*What about Jaheira, <CHARNAME>? I thought you were in love.*/
== MAZZY25J IF ~Global("ViconiaRomanceActive","GLOBAL",2) Global("_bMazzyVicFriends","GLOBAL",0)~ THEN @22 /*You share your bed with Viconia, <CHARNAME> and that means there is no room for me.*/
== MAZZY25J IF ~Global("ViconiaRomanceActive","GLOBAL",2) GlobalGT("_bMazzyVicFriends","GLOBAL",0)~ THEN @23 /*You are with Viconia and I will not go behind her back.*/
== MAZZY25J IF ~Global("NeeraRomanceActive","GLOBAL",2)~ THEN @24 /*Betraying Neera would end with the both of us eating fireballs. If you wish that sort of adventure, you must seek it somewhere else.*/
== MAZZY25J IF ~Global("RasaadRomanceActive","GLOBAL",2)~ THEN @25 /*Rasaad has travelled dark roads of late, but I believe he is a decent man at heart. You should return to him.*/
== MAZZY25J IF ~Global("DornRomanceActive","GLOBAL",2)~ THEN @26 /*Are you and Dorn not lovers? He seems quite fond of you.*/
== MAZZY25J IF ~Global("HexxatRomanceActive","GLOBAL",2)~ THEN @27 /*Although Hexxat is a vampire, I believe that she loves you as best she can.*/
== MAZZY25J IF ~OR(2) Global("LS#SarevokRomanceActive","GLOBAL",1) Global("LS#SarevokRomanceActive","GLOBAL",2)~ THEN @2700 /*I admit that I have doubts about Sarevok's change of heart and I do not wish to get involved with your relationship.*/
== MAZZY25J IF ~Global("AnomenRomanceActive","GLOBAL",2) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @28 /*Anomen already wants to kill me. I would not make it worse.*/
== MAZZY25J IF ~Global("AnomenRomanceActive","GLOBAL",2) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @29 /*Anomen is a good man <CHARNAME>, or at least in the process of becoming one, and I would not cause strife in your relationship.*/
== MAZZY25J IF ~Global("AnomenRomanceActive","GLOBAL",2) Global("AnomenIsKnight","GLOBAL",1)~ THEN @30 /*Of course, as a good man, perhaps he would be willing to work out a compromise.*/
== MAZZY25J IF ~Global("LS_HaerDalisRomanceActive","GLOBAL",2)~ THEN @32 /*Haer'Dalis is quite serious about you, as serious as that tiefling ever gets. For all his fickleness, I would not see him hurt.*/
== MAZZY25J IF ~Global("LS_HaerDalisRomanceActive","GLOBAL",2)~ THEN @33 /*Although, now that I think about it, he would likely be amenable to sharing.*/
END
	++ @34 /*That is not serious. You are the one I really want.*/ GOTO _bmazcourtconflict1
	++ @35 /*Please, Mazzy. Refuse if you don't want me, but do not doubt my heart.*/ GOTO _bmazcourtconflict1
	++ @36 /*You are right. I am sorry, Mazzy. I do not know what I was thinking.*/ DO ~SetGlobal("_bMazzyInterest","GLOBAL",1) SetGlobal("_BMazzyCourtTOB","GLOBAL",3)~ EXIT
	+ ~OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ + @360 /*How can you ask that when you are with Imoen?*/ GOTO _bmazcourtconflict2


//Talk once you go to city
CHAIN IF WEIGHT #-1 ~Global("_bMazzyInnQuest","GLOBAL",2)~ THEN MAZZY25J _bMazzyInnQuest
@56 /*You have done it, <CHARNAME>. Look at this city; there must be an inn around here somewhere.*/
DO ~SetGlobal("_bMazzyInnQuest","GLOBAL",3) SetGlobal("_bMazzyRomance","GLOBAL",1)~
= @57 /*Thank Arvoreen. I cannot stand another day without a bath.*/
END
	++ @58 /*Umm, shouldn't the bath wait until we battle whatever great evil is here?*/ + _bCNAsksBath1
	++ @59 /*Does this mean you're courted sufficiently?*/ + _bCNAsksBath2
	
CHAIN MAZZY25J _bCNAsksBath1
@60 /*Absolutely not. If I am going to fight evil, I would prefer to be clean, and it's even better if I've just completed a night of passionate ecstasy.*/
= @61 /*So how about it, <CHARNAME>? I am here, waiting. Do you wish to claim me?*/
END
	++ @62 /*Of course! Let's find an inn.*/ + _bmazlove6
	++ @63 /*Actually, I've changed my mind. Let's only be friends.*/ + _bmazloveNEVER

CHAIN MAZZY25J _bCNAsksBath2
@64 /*I am, <CHARNAME>, once we reach our destination. Do you still wish to claim me?*/
END
	++ @62 /*Of course! Let's find an inn.*/ + _bmazlove6
	++ @63 /*Actually, I've changed my mind. Let's only be friends.*/ + _bmazloveNEVER

CHAIN MAZZY25J _bmazloveNEVER
@64 /*I am surprised and disappointed to hear that. But I will survive. Come, let us be off.*/
DO ~SetGlobal("_bMazzyInterestTOB","GLOBAL",1)~
EXIT

CHAIN MAZZY25J _bmazlove6
@122 /*Then I am yours and you are mine, at least for today. Tomorrow, if I still wish to be yours and you still want to be mine, then we will continue.*/
= @123 /*The only thing I would ask for is a promise. If you decide you must have someone else, please inform me first so that I may decide if I can share you or if it would be better to end things peaceably.*/
== MAZZY25J IF ~Global("LS_HaerDalisRomanceActive","GLOBAL",2) InParty("HaerDalis")~ THEN @124 /*Sharing you with Haer'Dalis is acceptable, and we can work out the details of our arrangement later on.*/
== MAZZY25J IF ~Global("AnomenRomanceActive","GLOBAL",2) Global("AnomenIsKnight","GLOBAL",1) InParty("Anomen")~ THEN @125 /*I know, of course, that you and Anomen are still together. I am all right with that.*/
== MAZZY25J IF ~InParty("Imoen2") OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2)~ THEN @1250 /*Imoen and I are also courting, as you should be aware. We have discussed this possibility and I trust the two of you to work out a schedule like adults.*/
== MAZZY25J @126 /*If I find out that you have strayed without prior discussion, then I will be surprised and heartbroken and you will never see me again. I can handle disappointment, but not a betrayal such as that.*/
END
	++ @127 /*Of course, Mazzy. I want no one else.*/ GOTO _bmazlove7
	++ @128 /*That seems reasonable. I am yours for the moment, and we shall see how the future goes.*/ GOTO _bmazlove7
	++ @129 /*I promise, Mazzy, and I hope you'll do the same. I do not like surprises either.*/ GOTO _bmazlove7
	++ @130 /*I am sorry, Mazzy. I did not realize that you wished to tie me down. Although I do care about you, I must be free to wander as I will.*/ GOTO _bmazloveEND
	++ @131 /*That is not in my nature. I cannot promise that.*/ GOTO _bmazloveEND
	+ ~InParty("Viconia") Global("_bMazzyVicFriends","GLOBAL",2)~ + @132 /*But aren't you already with Viconia? I thought you were allowing me to join the two of you.*/ GOTO _bmazlove8
	++ @133 /*Seriously? And here I was hoping for a threesome.*/ GOTO _bmazlove9
	+ ~InParty("HaerDalis") Global("LS_HaerDalisRomanceActive","GLOBAL",2)~ + @134 /*What if I want you and Haer'Dalis together?*/ GOTO _bmazlove10
	+ ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2) Global("AnomenIsKnight","GLOBAL",1)~ + @135 /*I thought perhaps you might join me and Anomen?*/ GOTO _bmazlove11
	+ ~InParty("Imoen2") OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2) Global("ImoenRomanceActive","GLOBAL",2)~ + @1350 /*I'm sorry, but wasn't the whole point of this to share with Imoen?*/ GOTO _bmazlove11I


APPEND MAZZY25J IF ~~ THEN _bmazlove7
	SAY @136 /*I am glad to hear that. And to answer the question I assume is on your lips, I would be happy to spend the night with you.*/
	= @137 /*But first we must bathe so let us find an inn. We are both covered in dirt, filth, and blood and I would prefer to be at least somewhat clean before we know each other intimately.*/
	++ @138 /*That sounds good to me.*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",2)AddJournalEntry (@1025,QUEST_DONE)~ EXIT /*To the Inn

I have finally found a city. Now I need only track down the inn and I will be able to hold Mazzy in my arms.*/
	++ @139 /*I can't wait.*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",2) AddJournalEntry (@1025,QUEST_DONE)~ EXIT
	++ @140 /*To the inn!*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",2) AddJournalEntry (@1025,QUEST_DONE)~ EXIT
	++ @141 /*A bath sounds wonderful but I am afraid the rest must wait. I do not wish to lay with you until we're married.*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",2) SetGlobal("_bCNMarriage","GLOBAL",1)~ GOTO _bmazlove12
	++ @142 /*I would love a bath, but I am not sure about the rest. I have never wished to lay with anyone before.*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",2) SetGlobal("_bCNNoSex","GLOBAL",1)~GOTO _bmazlove13
	END
	
	IF ~~ THEN _bmazloveEND
	SAY @143 /*After all the effort that you put forth in your courting, I am surprised and disappointed to hear that. But I will survive. Come, let us be off.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyCourted","GLOBAL",2) SetGlobal("_bMazzyRomance","GLOBAL",3) SetGlobal("_bCNNoPromise","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazlove8
	SAY @144 /*I am friends with Viconia and despite her prickly demeanor, I enjoy her company. However, we have never been together the way you mean.*/
	= @145 /*So while your desire has been noted, my request still stands. Can you promise to be faithful? Will you swear to ask for permission before courting someone else? Once we know each other better, we may invite a friend to share our bed. But that is a discussion for another time.*/
	++ @146 /*I promise. I will do as you ask. */ GOTO _bmazlove7
	++ @147 /*Sure. I do like your company.*/ GOTO _bmazlove7
	++ @148 /*Sorry, Mazzy. I refuse to limit myself.*/ GOTO _bmazloveEND
	++ @149 /*No. I cannot promise that.*/ GOTO _bmazloveEND
	END
	
	IF ~~ THEN _bmazlove9
	SAY @174 /*Really? With whom?*/
	++ @175 /*Oh, no one in particular. Expensive whores, willing tavern wenches, the occasional charmed noble lady.*/ GOTO _bmazloveEND
	+ ~InParty("Viconia") Global("_bMazzyVicFriends","GLOBAL",2)~ + @176 /*Well, I mean you're already with Viconia, aren't you? I thought I was just joining both of you.*/ DO ~SetGlobal("_bCNWantsVic3Some","GLOBAL",1)~ GOTO _bmazlove8
	++ @177 /*No one. Nevermind.*/ GOTO _bmazlove7
	+ ~Global("LS_HaerDalisRomanceActive","GLOBAL",2) InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ + @178 /*Haer'Dalis. Who else?*/ DO ~SetGlobal("_bCNWantsHD3Some","GLOBAL",1)~ GOTO _bmazlove10
	+ ~Global("AnomenRomanceActive","GLOBAL",2) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsKnight","GLOBAL",1)~ + @179 /*I thought perhaps you might join me and Anomen?*/ DO ~SetGlobal("_bCNWantsAno3Some","GLOBAL",1)~ GOTO _bmazlove11
	+ ~OR(2) Global("_bImoenMazzyRomance","GLOBAL",2) Global("_bImoenMazzyRomance","GLOBAL",1) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("ImoenRomanceActive","GLOBAL",2)~ + @1790 /*Imoen, of course.*/ + _bmazlove11I
	END
	
	IF ~~ THEN _bmazlove10
	SAY @150 /*I admit, that idea is intriguing. However, I believe we should get to know each other better before we try to share our bed. So my request still stands.*/
	= @151 /*Can you promise to speak with me first if you ever desire anyone other than but Haer'Dalis? I wish the chance to end things between us peaceably should I feel it necessary.*/
	++ @146 /*I promise. I will do as you ask. */ GOTO _bmazlove7
	++ @147 /*Sure. I do like your company.*/ GOTO _bmazlove7
	++ @148 /*Sorry, Mazzy. I don't want you by yourself.*/ GOTO _bmazloveEND
	++ @149 /*No. I cannot promise that.*/ GOTO _bmazloveEND
	END
	
	IF ~~ THEN _bmazlove11
	SAY @152 /*I am not sure your knight would be able to handle that, <CHARNAME>, though I admit the idea has its merits. However, I believe we should get to know each other better before we try to share our bed. So my request still stands.*/
	= @153 /*Can you promise to speak with me first if you ever desire anyone but Anomen? I wish the chance to end things between us peaceably should I feel it necessary.*/
	++ @146 /*I promise. I will do as you ask. */ GOTO _bmazlove7
	++ @147 /*Sure. I do like your company.*/ GOTO _bmazlove7
	++ @148 /*Sorry, Mazzy. I don't want you by yourself.*/ GOTO _bmazloveEND
	++ @149 /*No. I cannot promise that.*/ GOTO _bmazloveEND
	END
	
	IF ~~ THEN _bmazlove11I
	SAY @1530 /*I believe that will likely be the end result. However, we should get to know each other better individually before we try to share our bed. So my request still stands.*/
	= @1531 /*I promise I will speak to you if I ever desire anyone other than you or Imoen. Can you promise me the same thing in return?*/
	++ @146 /*I promise. I will do as you ask. */ GOTO _bmazlove7
	++ @147 /*Sure. I do like your company.*/ GOTO _bmazlove7
	++ @148 /*Sorry, Mazzy. I don't want you by yourself.*/ GOTO _bmazloveEND
	++ @149 /*No. I cannot promise that.*/ GOTO _bmazloveEND
	END
	
	IF ~~ THEN _bmazlove12
	SAY @154 /*Wait...what? Are you serious?*/
	++ @155 /*Well, I might be convinced to change my mind.*/ GOTO _bmazlove14
	++ @156 /*Yes, I am serious. That is how I was raised.*/ GOTO _bmazlove15
	END
	
	IF ~~ THEN _bmazlove14
	SAY	@157 /*Then we shall find a bath first and determine our course of action after that.*/
	IF ~~ THEN DO ~AddJournalEntry (@1025,QUEST_DONE)~ EXIT
	END
	
	IF ~~ THEN _bmazlove15
	SAY	@158 /*This custom is not mine, but I have heard of it and I will respect it. However, I am not willing to marry you, <CHARNAME>. I care for you, I really do, but such commitments are for life and I am not willing to bind myself to that. At least not for a long time.*/
	= @159 /*But there is no reason we cannot continue our journey together. Friendship and love do not require marriage, and they do not require physical intimacy. I will continue by your side for as long as you wish for I delight in your company and your presence lends me strength.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazlove13
	SAY	@160 /*Does that include me, <CHARNAME>? If you do not want to lay with me, why did you court me as I asked?*/
	++ @161 /*Because I love you, Mazzy, and I hoped you'd feel the same.*/ GOTO _bmazlove16
	++ @162 /*No, I do want to lay with you. At least, I think I do. Can we just take things slow?*/ GOTO _bmazlove17
	++ @163 /*Isn't that what you're supposed to do when you fall in love? Prove your worth, get the girl and live happily ever after?*/ GOTO _bmazlove18
	END

	IF ~~ THEN _bmazlove16
	SAY	@164 /*I'm sorry, <CHARNAME>. I love you too but I want a physical relationship if we are to be together.*/
	++ @165 /*Then I am sorry too. I don't think I can do that.*/ GOTO _bmazlove19
	++ @166 /*I do want to make you happy. Perhaps we can still try.*/ GOTO _bmazlove20
	END
	
	IF ~~ THEN _bmazlove19
	SAY	@167 /*I understand. However, there is no reason that we cannot continue travelling together. Friendship and love do not require physical intimacy. I will stay by your side for as long as you wish because I delight in your company and your presence lends me strength.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazlove20
	SAY	@168 /*If you are sure, <CHARNAME>. I do not wish you to do anything that makes you uncomfortable. Let us find a bath and determine our course of action after that.*/
	IF ~~ THEN  DO ~AddJournalEntry (@1025,QUEST_DONE)~ EXIT
	END
	
	IF ~~ THEN _bmazlove17
	SAY	@169 /*Of course, <CHARNAME>. Let us find a bath first and determine our course of action after that.*/
	IF ~~ THEN  DO ~AddJournalEntry (@1025,QUEST_DONE)~ EXIT
	END
	
	IF ~~ THEN _bmazlove18
	SAY	@170 /**sigh* Sometimes I forget how young you are. You only have to do that if you want to, <CHARNAME>, not because you think you have to.*/
	= @171 /*However, I want a physical relationship and so if you do not, then I think we must stay friends. I will not hate you no matter what you choose.*/
	++ @172 /*I do want to be with you and I want to make you happy. Perhaps we can still try.*/ GOTO _bmazlove20
	++ @173 /*I am sorry, Mazzy. I don't think I can lie with you like that.*/ GOTO _bmazlove19
	END
END

	
//Inn Talk - all talks also in TOB starting here
APPEND MAZZY25J IF WEIGHT #-1 ~Global("_bMazzyCourted","GLOBAL",3) Global("_bMazzyRomance","GLOBAL",1)~ THEN _bmazsex1
SAY @180 /*I checked with the innkeeper and they have water and tubs for bathing. They'll even boil the water for us and only for twice the cost of our room.*/
	++ @181 /*Are you sure about this, Mazzy? I am only willing to do what you are ready for.*/  DO ~SetGlobal("_bCNBalks","GLOBAL",0) SetGlobal("_bMazzyCourted","GLOBAL",4)~ GOTO _bmazsex2
	++ @182 /*Maybe this is too soon. As much as I care about you, I don't want to rush into anything.*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",4)~ GOTO _bmazsex3
	++ @183 /*Excellent. Let's bathe.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0) SetGlobal("_bMazzyCourted","GLOBAL",4)~ GOTO _bmazsex4
	+ ~Global("_bCNBalks","GLOBAL",0)~ + @184 /*I changed my mind, I'm sorry. I don't think I can do this.*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",4) SetGlobal("_bCNBalks","GLOBAL",1) SetGlobal("_bMazzyRomance","GLOBAL",3)~ GOTO _bmazsexNO
	+ ~Global("_bCNBalks","GLOBAL",1)~ + @184 /*I changed my mind, I'm sorry. I don't think I can do this.*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",4) SetGlobal("_bCNBalks","GLOBAL",2) SetGlobal("_bMazzyRomance","GLOBAL",3)~ GOTO _bmazsexNEVER
	END
	
	IF ~~ THEN _bmazsex2
	SAY @185 /*I am not a shy and innocent young maiden who barely knows her own mind, <CHARNAME>. I have known others before you and I will likely know others after you are gone. I am going into this with my eyes open. However, I do have one last request.*/
	IF ~!Global("_bViconiaPreventsChildren","GLOBAL",1) Race(Player1,HALFLING) Gender(Player1,MALE)~ THEN GOTO _bmazsex5
	IF ~!Race(Player1,HALFLING) Gender(Player1,MALE)~ THEN GOTO _bmazsex6
	IF ~OR(2) Global("_bViconiaPreventsChildren","GLOBAL",1) Gender(Player1,FEMALE)~ THEN GOTO _bmazsex7
	END
	
	IF ~~ THEN _bmazsex3
	SAY @186 /*It is true that you only announced your intentions recently, but I believe that we have known each other long enough. I know what kind of person you are and I hope that you know me, and now that we have decided to be together, physical intimacy seems the logical next step. In addition, given the danger we face daily, we could both die tomorrow and I do not wish to waste the time we have.*/
	++ @187 /*I agree. I just wanted to be sure.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0)~ GOTO _bmazsex8 
	++ @188 /*Well actually, it's not you. I mean I'm up for a bath and I do want to kiss you, but you know I was raised in a library... and... well... since then I've been on the road and I've never actually... well...*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0)~ + _bmazsex9
	+ ~Global("_bCNBalks","GLOBAL",0)~ + @184 /*I changed my mind, I'm sorry. I don't think I can do this.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",1) SetGlobal("_bMazzyRomance","GLOBAL",3)~ GOTO _bmazsexNO
	+ ~Global("_bCNBalks","GLOBAL",1)~ + @184 /*I changed my mind, I'm sorry. I don't think I can do this.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",2) SetGlobal("_bMazzyRomance","GLOBAL",3)~ GOTO _bmazsexNEVER
	END
	
	IF ~~ THEN _bmazsex4 
	SAY @189 /*Patience, <CHARNAME>, the water is not yet ready. While we wait, I do have one more request.*/
	IF ~!Global("_bViconiaPreventsChildren","GLOBAL",1) Race(Player1,HALFLING) Gender(Player1,MALE)~ THEN GOTO _bmazsex5
	IF ~!Race(Player1,HALFLING) Gender(Player1,MALE)~ THEN GOTO _bmazsex6
	IF ~OR(2) Global("_bViconiaPreventsChildren","GLOBAL",1) Gender(Player1,FEMALE)~ THEN GOTO _bmazsex7
	END
	
	IF ~~ THEN _bmazsex8
	SAY @190 /*I am sure, <CHARNAME>. Do not doubt that. Although, I do have one more request.*/
	IF ~!Global("_bViconiaPreventsChildren","GLOBAL",1) Race(Player1,HALFLING) Gender(Player1,MALE)~ THEN GOTO _bmazsex5
	IF ~!Race(Player1,HALFLING) Gender(Player1,MALE)~ THEN GOTO _bmazsex6
	IF ~OR(2) Global("_bViconiaPreventsChildren","GLOBAL",1) Gender(Player1,FEMALE)~ THEN GOTO _bmazsex7
	END
	
	IF ~~ THEN _bmazsex9
	SAY @191 /*Of course, that was careless of me. You carry such responsibilities that sometimes I forget how young you are. We will move slowly and only do what you are ready for. I will be happy to for you to kiss me and I think that you will enjoy me kissing you as well. But right now all I ask is for you to follow me to our bath.*/
	IF ~~ THEN DO ~RestParty()~ EXIT
	END
	
	IF ~~ THEN _bmazsexNO
	SAY @192 /*Then that is your choice and I will respect that. However, there is no reason that we cannot continue travelling together. I will stay by your side as long as you wish for I still delight in your company.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazsexNEVER
	SAY @193 /*I will respect your choice, <CHARNAME>. However, as I told you before, we cannot keep going back and forth in this manner. My heart simply will not stand the strain.*/
	= @194 /*I remain your friend and your travelling companion for as long as you will have me, but I will not discuss the possibility of being more again.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazsex5
	SAY @195 /*I have procured a small amount of a potion that should prevent me from becoming pregnant, but even so, I am a careful person and I would like you to follow my lead.*/
	IF ~~ THEN GOTO _bmazsex7
	END
	
	IF ~~ THEN _bmazsex6
	SAY @196 /*I have never been with a <PRO_RACE> before and while I do not think there will be any major issues, there still may be differences in our approach and I would prefer that you follow my lead.*/
	IF ~~ THEN GOTO _bmazsex7
	END
	
	IF ~~ THEN _bmazsex7
	SAY @197 /*There are several things I know I enjoy, and others I am willing to try, but you must talk to me first. I am not fond of surprises.*/
	++ @198 /*Then we will go slowly and make sure to talk things over. Now come, I believe our baths are ready*/ DO ~Wait(1) RestParty()~ EXIT
	++ @199 /*But what about passion and spontaneity? I prefer to have fun and let things happen naturally.*/ GOTO _bmazsex10
	++ @200 /*This is not the time for words. It is a time for action. I have done this many times and I don't need instructions; I know exactly how to make you scream with happiness*/ GOTO _bmazsex11
	++ @201 /*I told you I've never done this before. Not with anyone. So I don't know what to do.*/ GOTO _bmazsex12
	END
	
	IF ~~ THEN _bmazsex10
	SAY @202 /*Passion and spontaneity are not bad things but I would prefer to save them until we know each other's preferences. Tonight, I want you to tell me before you try something that I have not requested, and if you do not voice your own desires then you are sure to be disappointed.*/
	= @203 /*I do not require a monologue for every action, but I do want your intentions to be clear, and I want a chance to object. Can you do that for me? Please?*/
	++ @204 /*Yes, I will do that for you.  And now I believe our baths are ready.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @205 /*As you wish. Though I look forward to the day that we can play as well.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @206 /*Fine. Whatever it takes.*/ DO ~Wait(1) RestParty()~ EXIT
	END
	
	IF ~~ THEN _bmazsex11
	SAY @207 /*That may be true and I will be happy to experience your skill as long as you keep me apprised of how you intend to please me.*/
	= @208 /*I may be different from the other women you have known and my request for advance-warning is non negotiable. Can you promise that? For me, please?*/
	++ @204 /*Yes, I will do that for you.  And now I believe our baths are ready.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @205 /*As you wish. Though I look forward to the day that we can play as well.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @209 /*Fine. If I must.*/ DO ~Wait(1) RestParty()~ EXIT
	END
	
	IF ~~ THEN _bmazsex12
	SAY @210 /*Then that is all the more reason to have this conversation. Do not worry, <CHARNAME>, we will learn about each other's preferences together. I am patient and I will not judge.*/
	IF ~~ THEN DO ~RestParty()~ EXIT
	END
END
	
//Post-Inn Conversation
APPEND MAZZY25J IF WEIGHT #-1 ~Global("_bMazzyCourted","GLOBAL",5) Global("_bMazzyRomance","GLOBAL",1)~ THEN _bmazsex13
	SAY @211 /*Well, <CHARNAME>? What did you think?*/
	++ @212 /*Wow. Are we going to do that all the time?*/ GOTO _bmazsex14
	++ @213 /*I think you're going to kill me, Mazzy. But what a way to go.*/ GOTO _bmazsex15
	++ @214 /*Not bad. Not bad at all. I guess you had some things to teach me after all.*/ GOTO _bmazsex16
	++ @215 /*So, how about another round?*/ GOTO _bmazsex17
	++ @216 /*That was amazing, Mazzy. How did I ever make it this far without you?*/ GOTO _bmazsex18
	+ ~Gender(Player1,MALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,ELF)~ + @217 /*That was fun, though could I be on top next time?*/ GOTO _bmazsex19
	++ @218 /*That was... better than I expected. Maybe sex is not so bad, at least with you.*/ GOTO _bmazsex20
	++ @219 /*I changed my mind, I'm sorry. I cannot be with you after all.*/ GOTO _bmazsex21
	END
	
	IF ~~ THEN _bmazsex14
	SAY @220 /*We cannot possibly spend all of our time like that; we will require rest eventually if we are to vanquish evil and protect the innocent. However, yes, we should plan some variation of that whenever possible.*/
	IF ~~ THEN GOTO _bmazsex22
	END
	
	IF ~~ THEN _bmazsex15
	SAY @221 /*We all must die, <CHARNAME>, but I will try not to wear you out just yet. That was quite enjoyable and I would hate to lose you.*/
	IF ~~ THEN GOTO _bmazsex22
	END
	
	IF ~~ THEN _bmazsex16
	SAY @222 /*I did tell you that, did I not? Although, after last night I can admit that I might have some things to learn as well.*/
	IF ~~ THEN GOTO _bmazsex22
	END
	
	IF ~~ THEN _bmazsex17
	SAY @223 /*We must have some time to recover, <CHARNAME>. But that was an experience well worth repeating.*/
	IF ~~ THEN GOTO _bmazsex22
	END
	
	IF ~~ THEN _bmazsex18
	SAY @224 /*That is a good question, <CHARNAME>. My life has grown much brighter since meeting you as well. I am quite content here in your arms.*/
	IF ~~ THEN GOTO _bmazsex22
	END
	
	IF ~~ THEN _bmazsex19
	SAY @225 /*No, <CHARNAME>, as the smaller party I prefer to remain in a position of freedom and control. I put on a brave front, but given your size, you could hurt me far easier than you think.*/
	IF ~~ THEN GOTO _bmazsex22
	END
	
	IF ~~ THEN _bmazsex20
	SAY @226 /*I'm glad to hear it.*/
	IF ~~ THEN GOTO _bmazsex22
	END
	
	IF ~~ THEN _bmazsex21
	SAY @227 /**sigh* I understand, <CHARNAME>, although I wish you could have come to this conclusion a little earlier. However, I did enjoy our night together and I will remain your friend and travelling companion anyway.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyCourted","GLOBAL",6) SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazsex22
	SAY @228 /*I admit I was quite nervous when we started, but that exceeded my expectations and as we come to know each other better, I imagine we'll improve.*/
	++ @229 /*I can't wait.*/ GOTO _bmazsex23
	++ @230 /*You were nervous? You didn't act nervous.*/ GOTO _bmazsex24
	++ @231 /*That was pretty great. Better will be amazing.*/ GOTO _bmazsex23
	END
	
	IF ~~ THEN _bmazsex23
	SAY @232 /**laughs*. I quite agree and your enthusiasm is very flattering.*/
	IF ~~ THEN GOTO _bmazsex26
	END
	
	IF ~~ THEN _bmazsex24
	SAY @233 /*That is what I do when I am nervous. I leap into the fray and will myself to act despite my fear. I hope that by appearing brave, no one will notice how terrified I truly am.*/
	++ @234 /*Maybe that's what makes you brave. You're afraid, but you keep going anyway. I try to do the same.*/ GOTO _bmazsex25
	++ @235 /*I shall learn from your example then. I am scared every day.*/ GOTO _bmazsex25
	++ @236 /*I have never felt such fear myself. But I admire your courage all the more for your honesty.*/ GOTO _bmazsex25
	END
	
	IF ~~ THEN _bmazsex25
	SAY @237 /*Then we will be brave together.*/
	IF ~~ THEN GOTO _bmazsex26
	END
	
	IF ~~ THEN _bmazsex26
	SAY @238 /*Now come along, <CHARNAME>, we have spent enough of this <DAYNIGHTALL> in bed. I am sure there are heartless brigands or undead abominations impatiently waiting for our blades.*/
	IF ~OR(4) !Gender(Player1,MALE) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,ELF)~ THEN DO ~SetGlobal("_bMazzyCourted","GLOBAL",6) SetGlobal("_bMazzyRomance","GLOBAL",2)~ EXIT
	IF ~Gender(Player1,MALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,ELF)~ THEN DO ~SetGlobal("_bMazzyCourted","GLOBAL",6) SetGlobal("_bMazzyRomance","GLOBAL",2)~ EXTERN PLAYER1 _bmazsex27
	END
	
	IF ~~ THEN _bmazsex28
	SAY @246 /*I got this idea from a friend. I mentioned that I was nervous about being alone, unarmed, and intimate with someone significantly larger than me. She suggested that I might feel more comfortable if I were armed.*/
	= @247 /*I can move very quickly when I need to and this way I knew that I was never more than a few seconds from something with which to stab you if necessary.*/
	++ @248 /*Makes sense to me.*/ EXIT
	++ @249 /*You were going to stab me?*/ GOTO _bmazsex30
	END
	
	IF ~~ THEN _bmazsex29
	SAY @250 /*Of course, <CHARNAME>. Here you are.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazsex30
	SAY @251 /*Only if you misbehaved.*/
	= @252 /*Relax, <CHARNAME>. Any person you sleep near could kill you if they desired. At least with me you may sleep soundly knowing that I would only kill you while you were awake.*/
	IF ~~ THEN EXIT
	END
END	

CHAIN PLAYER1 _bmazsex27
@239 /**Mazzy begins to gather her clothing while you dress. You notice her collecting various small swords and daggers that were hidden around the room.**/
== MAZZY25J @240 /*Do not mind me, <CHARNAME>, I will just be a moment.*/
END
	++ @241 /**Say nothing.**/ EXIT
	++ @242 /*Umm... you seem to have a lot of weapons here. Did I miss something?*/ EXTERN MAZZY25J _bmazsex28
	++ @243 /*Were you expecting us to be attacked?*/ EXTERN MAZZY25J _bmazsex28
	++ @244 /*Good idea, Mazzy. You can never be too careful.*/ EXIT
	++ @245 /*Nice. Will you grab my weapons while you're at it?*/ EXTERN MAZZY25J _bmazsex29
	

//Final Solaris choice conversation. Most mods seem to use Extend Bottom instead of ICT for a full conversation. Not sure why, but followed suit.
//Added to existing Mazzy talk b/c I can't get rid of it on modded games, and this way other romances won't cut us off
EXTEND_BOTTOM MAZZY25J 1 IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyRomance","GLOBAL",2) Global("_bMazTOBChoice","GLOBAL",0)~ THEN DO ~SetGlobal("_bMazTOBChoice","GLOBAL",1)~ GOTO _bFinalTOBTalk
END

CHAIN MAZZY25J _bFinalTOBTalk
@253 /*So, <CHARNAME>, what will you do?*/
END
	++ @254 /*I choose this life. I choose you and for us to be together always.*/ GOTO _bFinalTOBTalk1
	++ @255 /*I don't know, my love. What would you choose?*/ GOTO _bFinalTOBTalk2
	++ @256 /*I love you, but think of all the good that I could do with so much power!*/ GOTO _bFinalTOBTalk3
	++ @257 /*Power! Godhood! It will all be mine!*/ GOTO _bFinalTOBTalk4
	
CHAIN MAZZY25J _bFinalTOBTalk1
@258 /*Before you do, I want you to know something. I have found peace, <CHARNAME>. After aiding you here, I will return home and... perhaps... raise a family?*/
END
	++ @259 /*Really? After everything you've said about how you never wanted that life? How you wanted to see the world and make a difference?*/ GOTO _bFinalTOBTalk5
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING)~ + @260 /*I will go with you, Mazzy. We will raise a family together.*/ GOTO _bTOBMazzyPropose
	+ ~OR(2) !Gender(Player1,MALE) !Race(Player1,HALFLING)~ + @261 /*I would love to go with you, Mazzy, but how would we have children?*/ GOTO _bFinalTOBTalk6
	++ @262 /*I love you and I wish you luck, Mazzy, but that is not something I see myself doing.*/ GOTO _bFinalTOBTalk7
	
CHAIN MAZZY25J _bFinalTOBTalk5
@263 /*I saw the world, my love. We made a difference. We are great adventurers, heroes of the highest order, and I wish to retire while we still live.*/
= @264 /*When Patrick and my companions fell, I wanted to join them and so I threw myself into battle hoping to meet a noble end. But I no longer wish that ending. I want to build a future and I would be quite happy to share that life with you.*/
END
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING)~ + @260 /*I will go with you, Mazzy. We will raise a family together.*/ GOTO _bTOBMazzyPropose
	+ ~OR(2) !Gender(Player1,MALE) !Race(Player1,HALFLING)~ + @261 /*I would love to go with you, Mazzy, but how would we have children?*/ GOTO _bFinalTOBTalk6
	++ @262 /*I love you and I wish you luck, Mazzy, but that is not something I see myself doing.*/ GOTO _bFinalTOBTalk7

APPEND MAZZY25J IF ~~ THEN _bFinalTOBTalk6
	SAY @265 /**smiling * Leave that to my mother, <CHARNAME>. She's been collecting spells and magic items to help her get grandchildren since before you were born. */
	= @266 /*I am sure you will make a fine halfling man, at least for the necessary day or two.*/
	IF ~~ THEN GOTO _bTOBMazzyPropose
	END
END

CHAIN MAZZY25J _bFinalTOBTalk7
@267 /*I know, my love. I know.*/
DO ~SetGlobal("_bCNNoFamily","GLOBAL",1)~
END
COPY_TRANS MAZZY25J 1

CHAIN MAZZY25J _bFinalTOBTalk2
@268 /*I know what I choose, <CHARNAME>. I choose to go home and raise a family. Will you go with me?*/
END
	++ @259 /*Really? After everything you've said about how you never wanted that life? How you wanted to see the world and make a difference?*/ GOTO _bFinalTOBTalk5
	+ ~Gender(Player1,MALE) Race(Player1,HALFLING)~ + @260 /*I will go with you, Mazzy. We will raise a family together.*/ GOTO _bTOBMazzyPropose
	+ ~OR(2) !Gender(Player1,MALE) !Race(Player1,HALFLING)~ + @261 /*I would love to go with you, Mazzy, but how would we have children?*/ GOTO _bFinalTOBTalk6
	++ @262 /*I love you and I wish you luck, Mazzy, but that is not something I see myself doing.*/ GOTO _bFinalTOBTalk7
	
CHAIN MAZZY25J _bFinalTOBTalk3
@269 /*You would be a shining light of righteousness, my love. So become one. Somehow I always knew this is how your tale would end.*/
END
	++ @270 /*I will miss you, Mazzy.*/ GOTO _bFinalTOBTalk8 
	++ @271 /*You could come with me.*/ GOTO _bFinalTOBTalk9
	
CHAIN MAZZY25J _bFinalTOBTalk8
@272 /*And I, you.*/
END
COPY_TRANS MAZZY25J 1

CHAIN MAZZY25J _bFinalTOBTalk9
@273 /*And be a Goddess? No thanks, <CHARNAME>. I have other plans.*/
END
COPY_TRANS MAZZY25J 1

CHAIN MAZZY25J _bFinalTOBTalk4
@274 /*Then claim it, <CHARNAME>. Somehow I always knew this is how our tale would end.*/
END
	++ @270 /*I will miss you, Mazzy.*/ GOTO _bFinalTOBTalk8 
	++ @271 /*You could come with me.*/ GOTO _bFinalTOBTalk9
	
CHAIN MAZZY25J _bTOBMazzyPropose
@275 /*Well then, <CHARNAME>, I have something to ask you, officially and all. I love you and I want to be with you always. When this is over, will you marry me? Will you love me, build a home, raise a family, and be with me until the stars fall from the sky?*/
END
	++ @276 /*Yes, Mazzy, of course I'll marry you.*/ GOTO _bTOBMazzyPropose1
	++ @277 /*That seems like a long time. Can't we just do three to five years with an option to renew?*/ GOTO _bTOBMazzyPropose2
	++ @278 /*Shouldn't I be proposing to you?*/ GOTO _bTOBMazzyPropose3
	
CHAIN MAZZY25J _bTOBMazzyPropose1
@279 /*Good. When we get home, we'll let my mother plan the wedding. Now go on and tell that Solar you are mine now. The gods can't have you anymore.*/
DO ~SetGlobal("_bCNMarryMazzy","GLOBAL",1)~
END
COPY_TRANS MAZZY25J 1

CHAIN MAZZY25J _bTOBMazzyPropose2
@280 /*I am not in a joking mood, <CHARNAME>. What you need to say is, “Yes, Mazzy, of course I'll marry you.”*/
= @281 /*If you've led me this far only to break my heart, I will kill you.*/
END
	++ @276 /*Yes, Mazzy, of course I'll marry you.*/ GOTO _bTOBMazzyPropose1
	++ @278 /*Shouldn't I be proposing to you?*/ GOTO _bTOBMazzyPropose3
	
CHAIN MAZZY25J _bTOBMazzyPropose3
@282 /*Why would you propose when I am older? Now do you accept or not?*/
END
	++ @276 /*Yes, Mazzy, of course I'll marry you.*/ GOTO _bTOBMazzyPropose1
	++ @277 /*That seems like a long time. Can't we just do three to five years with an option to renew?*/ GOTO _bTOBMazzyPropose2
 
 
//Post Choice Solaris Lines - PC chooses to leave
EXTEND_BOTTOM FINSOL01 29
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyRomance","GLOBAL",2) Global("_bCNChoseGOD","GLOBAL",0) Global("_bCNMarryMazzy","GLOBAL",0)~ DO ~SetGlobal("_bCNChoseGOD","GLOBAL",1)~ EXTERN MAZZY25J _bTOBCNGOD
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyRomance","GLOBAL",2) Global("_bCNChoseGOD","GLOBAL",0) Global("_bCNMarryMazzy","GLOBAL",0)~ DO ~SetGlobal("_bCNChoseGOD","GLOBAL",1)~ EXTERN MAZZY25J _bTOBCNGOD
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyRomance","GLOBAL",2) Global("_bCNChoseGOD","GLOBAL",0) Global("_bCNMarryMazzy","GLOBAL",0)~ DO ~SetGlobal("_bCNChoseGOD","GLOBAL",1)~ EXTERN MAZZY25J _bTOBCNGOD
END

//Post Choice Solaris Lines - PC chooses to leave after promising to marry Mazzy
EXTEND_BOTTOM FINSOL01 29
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyRomance","GLOBAL",2) Global("_bCNChoseGOD","GLOBAL",0) Global("_bCNMarryMazzy","GLOBAL",1)~ DO ~SetGlobal("_bCNChoseGOD","GLOBAL",1)~ EXTERN MAZZY25J _bTOBCNGOD2
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyRomance","GLOBAL",2) Global("_bCNChoseGOD","GLOBAL",0) Global("_bCNMarryMazzy","GLOBAL",1)~ DO ~SetGlobal("_bCNChoseGOD","GLOBAL",1)~ EXTERN MAZZY25J _bTOBCNGOD2
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyRomance","GLOBAL",2) Global("_bCNChoseGOD","GLOBAL",0) Global("_bCNMarryMazzy","GLOBAL",1)~ DO ~SetGlobal("_bCNChoseGOD","GLOBAL",1)~ EXTERN MAZZY25J _bTOBCNGOD2
END

CHAIN MAZZY25J _bTOBCNGOD
@283 /*This is goodbye, <CHARNAME>. I will never forget you and I have no regrets about our time together. Go fulfil your destiny.*/
END
COPY_TRANS FINSOL01 29

CHAIN MAZZY25J _bTOBCNGOD2
@2830 /*What?! You promise to marry me only to leave? I will kill you!*/
DO ~Attack(Player1)~
END
COPY_TRANS FINSOL01 29

//PC chooses to stay
INTERJECT FINSOL01 32 _bMazzyRomanceFinal1 /*Then you shall begin life anew: mortal, without the taint of your sire upon your soul... and the essence of Bhaal shall forever be hidden. You have done well, and freedom shall be your reward.*/
	== MAZZY25J IF ~IfValidForPartyDialogue("Mazzy") Global("_bMazzyRomance","GLOBAL",2)~ THEN 
	@284 /*You are still here. You were offered near-ultimate power and you turned it down.*/
	= @285 /*You are either the most amazing <PRO_MANWOMAN> in the history of the world or you are an utter fool.*/
END
	++ @286 /*Well, as the most amazing <PRO_MANWOMAN> in the history of the world, I believe we are entitled to some time off.*/ EXTERN MAZZY25J _bTOBCNMortal1
	++ @287 /*I am an utter fool. Let's go home.*/ EXTERN MAZZY25J _bTOBCNMortal1
	
CHAIN MAZZY25J _bTOBCNMortal1
@288 /*Yes, my love, let us go.*/
END
COPY_TRANS FINSOL01 32

