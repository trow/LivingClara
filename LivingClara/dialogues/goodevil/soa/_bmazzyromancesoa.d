//Beginning Talk
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_BMazzyCourt","GLOBAL",1)~ THEN _bmazcourt1
	SAY @1 /*I consider you a friend, <CHARNAME>, but there is something I must ask before we continue. What do you truly want from me? Please answer me plainly. I value directness and you cannot scare me with your honesty.*/
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
	IF ~~ THEN DO ~SetGlobal("_BMazzyCourt","GLOBAL",2)~ EXIT
	END
		
	IF ~~ THEN _bmazcourtNO
	SAY @11 /*I am sorry. I regret hurting you but I cannot give you that.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyCourt","GLOBAL",2)~ EXIT
	END
	
	IF ~~ THEN _bmazcourt4
	SAY	@12 /*That you cannot have. My heart still belongs to my beloved Patrick. But perhaps another might be able to share it in the future. Do you wish to be that person?*/
	IF ~OR(13) Global("PGNaliaRomanceActive","GLOBAL",2)
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
	Global("AnomenRomanceActive","GLOBAL",2)~
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
	!Global("AnomenRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtGO
	END
	
	IF ~~ THEN _bmazcourt5
	SAY	@13 /*I will sleep alone tonight, but perhaps another might share my bed in the future. Do you wish to be that person?*/
	IF ~OR(13) Global("PGNaliaRomanceActive","GLOBAL",2) Global("EdwinRomanceActive","GLOBAL",2) Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("YoshimoRomanceActive","GLOBAL",2) Global("B!KeldornRA","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",2)Global("JaheiraRomanceActive","GLOBAL",2)Global("ViconiaRomanceActive","GLOBAL",2) Global("NeeraRomanceActive","GLOBAL",2) Global("RasaadRomanceActive","GLOBAL",2) Global("DornRomanceActive","GLOBAL",2) Global("HexxatRomanceActive","GLOBAL",2) Global("AnomenRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtconflict
	IF ~!Global("PGNaliaRomanceActive","GLOBAL",2) !Global("EdwinRomanceActive","GLOBAL",2) !Global("LS_HaerDalisRomanceActive","GLOBAL",2) !Global("YoshimoRomanceActive","GLOBAL",2) !Global("B!KeldornRA","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2) !Global("JaheiraRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",2) !Global("NeeraRomanceActive","GLOBAL",2) !Global("RasaadRomanceActive","GLOBAL",2) !Global("DornRomanceActive","GLOBAL",2) !Global("HexxatRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtGO
	END
		
	IF ~~ THEN _bmazcourt6
	SAY	@14 /*I no longer make plans for my future; I live each day as it comes. But perhaps I could be with someone for a day, and if it was a good day then I would make plans for another. Do you wish to be that someone?*/
	IF ~OR(13) Global("PGNaliaRomanceActive","GLOBAL",2) Global("EdwinRomanceActive","GLOBAL",2) Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("YoshimoRomanceActive","GLOBAL",2) Global("B!KeldornRA","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",2)Global("JaheiraRomanceActive","GLOBAL",2)Global("ViconiaRomanceActive","GLOBAL",2) Global("NeeraRomanceActive","GLOBAL",2) Global("RasaadRomanceActive","GLOBAL",2) Global("DornRomanceActive","GLOBAL",2) Global("HexxatRomanceActive","GLOBAL",2) Global("AnomenRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtconflict
	IF ~!Global("PGNaliaRomanceActive","GLOBAL",2) !Global("EdwinRomanceActive","GLOBAL",2) !Global("LS_HaerDalisRomanceActive","GLOBAL",2) !Global("YoshimoRomanceActive","GLOBAL",2) !Global("B!KeldornRA","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2) !Global("JaheiraRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",2) !Global("NeeraRomanceActive","GLOBAL",2) !Global("RasaadRomanceActive","GLOBAL",2) !Global("DornRomanceActive","GLOBAL",2) !Global("HexxatRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",2)~
	THEN GOTO _bmazcourtGO
	END
	
	IF ~~ THEN _bmazcourtconflict1 //ends all romances except Haer'Dalis, Imoen, Knight Anomen & Dead Yoshimo. End triggers in Mazzy's baf file. You have to have her in your party for this, so the triggers should always go off.
	SAY @37 /*All right. If you are certain, then I will accept your decision. But this does not mean that I will simply leap into your arms.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoseMazzy","GLOBAL",1)~ GOTO _bmazcourtGO
	END
	
	IF ~~ THEN _bmazcourtconflict2
	SAY @361 /*That is precisely the point, <CHARNAME>. Imoen and I have already discussed this possibility and agreed that we could share if you were willing. However, such arrangements only work if everyone agrees.*/
	++ @36100 /*I do not mind sharing in the least. I was just curious.*/ GOTO _bmazcourtconflict1
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
	IF ~~ THEN DO ~SetGlobal("_bMazzyInterest","GLOBAL",1) SetGlobal("_BMazzyCourt","GLOBAL",2)~ EXIT
	END
	
	IF ~~ THEN _bmazcourtGO1
	SAY @45 /*You must complete a quest for me. When a princess or fair maiden is courted by her suitors, she asks them to prove their worth by undergoing some great trial. I am neither a princess nor a maiden, but I still have something I wish to ask of you.*/
	IF ~OR(3) !Dead("MaeVar") !Dead("aran") Global("Linvail","GLOBAL",1)~ THEN DO ~SetGlobal("_BMazzyCourt","GLOBAL",2)~ GOTO _bmazcourtthieves1 
	IF ~OR(3) !Dead("MaeVar") !Dead("aran") !Global("Linvail","GLOBAL",1)~ THEN DO ~SetGlobal("_BMazzyCourt","GLOBAL",2)~ GOTO _bmazcourtthieves2
	IF ~Dead("MaeVar") Dead("aran") !Dead("c6bodhi")~ THEN DO ~SetGlobal("_BMazzyCourt","GLOBAL",2)~ GOTO _bmazcourtvamps
	END
	
	IF ~~ THEN _bmazcourtthieves1 
	SAY @46 /*We committed a great evil against the people of Athkatla when we gave the Shadow Thieves our gold. They cause nothing but grief and misery and thanks to us, they will have expanded and upgraded their operations. I have sworn to destroy them and I wish your aid.*/
	+ ~Gender(Player1,FEMALE)~ + @49 /*Wait, aren't you a knight? Shouldn't you be helping with MY quests?*/ GOTO _bmazcourt7
	+ ~GlobalGT("ThiefGroup","GLOBAL",0)~ + @50 /*The Shadow Thieves helped us save Imoen. We owe them.*/ GOTO _bmazcourtthieves3
	++ @51 /*I see where this is going. We march in and slaughter them all!*/ GOTO _bmazcourtthieves4
	++ @52 /*So what do you want to do about it?*/ GOTO _bmazcourtthieves4
	+ ~Global("PlayerThiefGuild","GLOBAL",1)~ + @53 /*Do you count me as evil too? I agreed to work for the Shadow Thieves when I took over my guild.*/ GOTO _bmazcourtthieves5
	END
		
	IF ~~ THEN _bmazcourtthieves2
	SAY @47 /*The Shadow Thieves are a great evil in the city of Athkatla. I have sworn to destroy them and I require your aid.*/
	+ ~Gender(Player1,FEMALE)~ + @49 /*Wait, aren't you a knight? Shouldn't you be helping with MY quests?*/ GOTO _bmazcourt7
	++ @51 /*I see where this is going. We march in and slaughter them all!*/ GOTO _bmazcourtthieves4
	++ @52 /*So what do you want to do about it?*/ GOTO _bmazcourtthieves4
	+ ~Global("PlayerThiefGuild","GLOBAL",1)~ + @53 /*Do you count me as evil too? I agreed to work for the Shadow Thieves when I took over my guild.*/ GOTO _bmazcourtthieves5
	END
	
	IF ~~ THEN _bmazcourtvamps
	SAY @48 /*Bodhi's vampires are a blight upon Athkatla, stealing into homes at night and devouring the innocent. I will destroy them all and I require your aid.*/
	+ ~Gender(Player1,FEMALE)~ + @49 /*Wait, aren't you a knight? Shouldn't you be helping with MY quests?*/ GOTO _bmazcourt7
	++ @51 /*I see where this is going. We march in and slaughter them all!*/ GOTO _bmazcourtvamps1
	++ @52 /*So what do you want to do about it?*/ GOTO _bmazcourtvamps1
	+ ~GlobalGT("WorkingforBodhi","GLOBAL",0)~ + @54 /*And do you count me as evil too? We worked with the vampires to rescue Imoen.*/ GOTO _bmazcourtvamps2
	END
	
	IF ~~ THEN _bmazcourt7
	SAY @55 /*I helped you rescue your oldest friend and we will destroy Irenicus soon. But you are courting me and I cannot abandon the innocent citizens of Athkatla when they need our help.*/
	IF ~Dead("MaeVar") Dead("aran")~ THEN GOTO _bmazcourtvamps1
	IF ~OR(2) !Dead("MaeVar") !Dead("aran")~ THEN GOTO _bmazcourtthieves4
	END
	
	IF ~~ THEN _bmazcourtthieves3
	SAY @56 /*We paid them for transportation, which they provided. That debt is settled.*/
	IF ~~ THEN GOTO _bmazcourtthieves4
	END
	
	IF ~~ THEN _bmazcourtthieves5
	SAY @57 /*I thought that was simply a ruse to learn their weaknesses. You are not really a Shadow Thief, are you? Will you truly stay with them and aid their villainy?*/
	++ @58 /*Of course not, Mazzy. You are worth far more to me than gold and I will do what you ask. Though I hope you have a plan.*/ GOTO _bmazcourtthieves4
	++ @59 /*In a choice of you or them, I suppose I must pick you. What is our next step?*/ GOTO _bmazcourtthieves4
	++ @60 /*I am sorry, Mazzy. But I will not turn against my own, not even for you.*/ GOTO _bmazcourtthiefNO
	++ @61 /*I am not just with them, I command them. I hope my thieves haven't slacked off while I've been away. It'll take work to whip them back into shape.*/ GOTO _bmazcourtthiefNO
	END
	
	IF ~~ THEN _bmazcourtthiefNO
	SAY @62 /*Then I misjudged you, <CHARNAME>. I wish you luck in your quests but I must attend to other matters now.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyInterest","GLOBAL",1) SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazcourtvamps2
	SAY @63 /*You did what you had to do in order to rescue your friend. Destroying the Shadow Thieves was necessary to protect the innocents of Athkatla, but so is destroying the vampires as well.*/
	IF ~~ THEN GOTO _bmazcourtvamps1
	END
	
	IF ~~ THEN _bmazcourtthieves4
	SAY @64 /*I wish to get official permission from the government of Athkatla to arrest the leaders of the Shadow Thieves and use force if they resist. We should talk to Secretary Ewenn in the Council of Six building in the Government district.*/
	++ @65 /*Let's go then!*/ DO ~SetGlobal("_bMazzyRomance","GLOBAL",1) SetGlobal("_bMazzyTQuest","GLOBAL",1) AddJournalEntry (@1019,QUEST)~ EXIT /*The Path Ahead

I have spoken of my intentions to my companion Mazzy Fentan and she has asked me to court her in order to win her affections. Rather than flowers or the usual gifts, she wishes our group to take down the Shadow Thieves and I have agreed. I must speak to Council Secretary Ewenn in the Council of Six Building to get approval for this quest.~*/
	++ @66 /*I will do what you ask as soon as possible.*/ DO ~SetGlobal("_bMazzyRomance","GLOBAL",1) SetGlobal("_bMazzyTQuest","GLOBAL",1) AddJournalEntry (@1019,QUEST)~ EXIT
	++ @67 /*I refuse; we have more important things to do.*/ GOTO _bmazcourtNO2
	++ @68 /*Are you crazy? I'm not taking on the Shadow Thieves. Not even for you.*/ GOTO _bmazcourtNO2
	END
	
	IF ~~ THEN _bmazcourtNO2 
	SAY @69 /*I am sorry to hear that, though you will always be my friend. I will help you finish your quests and then I will deal with the Shadow Thieves myself.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyInterest","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazcourtvamps1
	SAY @70 /*I wish to get official permission from the government of Athkatla to destroy these foul creatures once and for all. We should talk to Secretary Ewenn in the Council of Six building in the Government district.*/
	++ @65 /*Let's go then!*/ DO ~SetGlobal("_bMazzyRomance","GLOBAL",1) SetGlobal("_bMazzyVQuest","GLOBAL",1) AddJournalEntry (@1020,QUEST)~ EXIT /*The Path Ahead

I have spoken of my intentions to my companion Mazzy Fentan and she has asked me to court her in order to win her affections. Rather than flowers or the usual gifts, she wishes our group to destroy the vampires in Athkatla and I have agreed. I must speak to Council Secretary Ewenn in the Council of Six Building to get approval for this quest.*/
	++ @66 DO ~SetGlobal("_bMazzyRomance","GLOBAL",1) SetGlobal("_bMazzyVQuest","GLOBAL",1) AddJournalEntry (@1020,QUEST)~ EXIT
	++ @71 /*I will do this, but not for you. I am not your puppet.*/ GOTO _bmazcourtNO3
	++ @72 /*This is ridiculous. I do not need permission to kill the vampires and I will not ask.*/ GOTO _bmazcourtNO3
	END
	
	IF ~~ THEN _bmazcourtNO3
	SAY @73 /*I am sorry to hear that. Although you will always be my friend and I will help you finish your quests, expect no more than that.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyInterest","GLOBAL",1)~ EXIT
	END
END
	

CHAIN MAZZYJ _bmazcourtconflict 
@15 /*Yet, how can you be when you are already with someone else?*/
== MAZZYJ IF ~Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN @16 /*Nalia may be too innocent to notice your heart straying but I cannot have that on my conscience. Do not ask such things of me.*/
== MAZZYJ IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN @17 /*You are with Edwin and that means you are taken.*/
== MAZZYJ IF ~Global("YoshimoRomanceActive","GLOBAL",2)~ THEN @18 /*I know you and Yoshimo were close and I do not wish to be his replacement.*/
== MAZZYJ IF ~Global("B!KeldornRA","GLOBAL",2)~ THEN @19 /*Keldorn is my mentor and he has felt such pain already. I will not cuckold him.*/
== MAZZYJ IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN @20 /*You and Aerie are together and I would not see you break her heart.*/
== MAZZYJ IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @21 /*What about Jaheira, <CHARNAME>? I thought you were in love.*/
== MAZZYJ IF ~Global("ViconiaRomanceActive","GLOBAL",2) Global("_bMazzyVicFriends","GLOBAL",0)~ THEN @22 /*You share your bed with Viconia, <CHARNAME> and that means there is no room for me.*/
== MAZZYJ IF ~Global("ViconiaRomanceActive","GLOBAL",2) GlobalGT("_bMazzyVicFriends","GLOBAL",0)~ THEN @23 /*You are with Viconia and I will not go behind her back.*/
== MAZZYJ IF ~Global("NeeraRomanceActive","GLOBAL",2)~ THEN @24 /*Betraying Neera would end with the both of us eating fireballs. If you wish that sort of adventure, you must seek it somewhere else.*/
== MAZZYJ IF ~Global("RasaadRomanceActive","GLOBAL",2)~ THEN @25 /*Rasaad has travelled dark roads of late, but I believe he is a decent man at heart. You should return to him.*/
== MAZZYJ IF ~Global("DornRomanceActive","GLOBAL",2)~ THEN @26 /*Are you and Dorn not lovers? He seems quite fond of you.*/
== MAZZYJ IF ~Global("HexxatRomanceActive","GLOBAL",2)~ THEN @27 /*Although Hexxat is a vampire, I believe that she loves you as best she can.*/
== MAZZYJ IF ~Global("AnomenRomanceActive","GLOBAL",2) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @28 /*Anomen already wants to kill me. I would not make it worse.*/
== MAZZYJ IF ~Global("AnomenRomanceActive","GLOBAL",2) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @29 /*Anomen is a good man <CHARNAME>, or at least in the process of becoming one, and I would not cause strife in your relationship.*/
== MAZZYJ IF ~Global("AnomenRomanceActive","GLOBAL",2) Global("AnomenIsKnight","GLOBAL",1)~ THEN @30 /*Of course, as a good man, perhaps he would be willing to work out a compromise.*/
== MAZZYJ IF ~Global("LS_HaerDalisRomanceActive","GLOBAL",2)~ THEN @32 /*Haer'Dalis is quite serious about you, as serious as that tiefling ever gets. For all his fickleness, I would not see him hurt.*/
== MAZZYJ IF ~Global("LS_HaerDalisRomanceActive","GLOBAL",2)~ THEN @33 /*Although, now that I think about it, he would likely be amenable to sharing.*/
END
	++ @34 /*That is not serious. You are the one I really want.*/ GOTO _bmazcourtconflict1
	++ @35 /*Please, Mazzy. Refuse if you don't want me, but do not doubt my heart.*/ GOTO _bmazcourtconflict1
	++ @36 /*You are right. I am sorry, Mazzy. I do not know what I was thinking.*/ DO ~SetGlobal("_bMazzyInterest","GLOBAL",1) SetGlobal("_BMazzyCourt","GLOBAL",2)~ EXIT
	+ ~OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2) InPartyAllowDead("Imoen2")~ + @360 /*How can you ask that when you are with Imoen?*/ GOTO _bmazcourtconflict2
	
	
//Alternatives Talks if you said Yes or No to the Kill Shadow Thieves Quest
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bToldBregaYes","GLOBAL",1)~ THEN _bmazBrega1
	SAY @74 /*This mission mirrors our own, <CHARNAME>, but we should still get permission. Brega may have their misgivings, but I require that.*/
	IF ~~ THEN DO ~SetGlobal("_bToldBregaYes","GLOBAL",2)~ EXIT
	END

	IF WEIGHT #-1 ~Global("_bToldBregaNo","GLOBAL",1)~ THEN _bmazBrega2
	SAY @75 /*I do not understand your reasons for refusing Brega, <CHARNAME>. I still require the Shadow Thieves to be brought to justice before you may earn my favour.*/
	IF ~~ THEN DO ~SetGlobal("_bToldBregaNo","GLOBAL",2)~ EXIT
	END
END

//Councilman Quest Talks
APPEND COUNSEC IF WEIGHT #-10 ~Global("_bMazzyTQuest","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",1) IfValidForPartyDialogue("Mazzy")~ THEN _bthiefpermission
	SAY @76 /*And how may I help you? Please be advised that the Council is not currently in session and we secretaries do not accept petitions, requests, appeals, or bribes from random citizens.*/
	++ @77 /*Actually, we are here to help with your Shadow Thief problem.*/ GOTO _bthiefpermission1
	++ @78 /*Nothing right now.*/ EXIT
	END
	
	IF ~~ THEN _bthiefpermission1
	SAY @79 /*Oh excellent, the government of Athkatla and this office are committed to doing everything in our power to defeat the Shadow Thieves and we welcome your assistance. How do you propose to aid us?*/
	++ @80 /*We want to lead an attack on their headquarters. Can you spare any guards to help?*/ GOTO _bthiefpermission2
	++ @81 /*We're going to kill every last one of them! Can you spare any assistance?*/ GOTO _bthiefpermission2
	++ @82 /*Actually I misspoke. Let's talk about this another time.*/ EXIT
	END
	
	IF ~~ THEN _bthiefpermission2
	SAY @83 /*We regret to inform you that all of our men are currently engaged in a fruitful and important containment operation and cannot be spared for the attack itself. But we can officially designate you as guards of the City of Athkatla and then assign you to this mission.*/
	= @84 /*You are charged with arresting and bringing to justice the leaders of the Shadow Thieves in Athkatla. Lethal force is approved if they do not come willingly. Once the leaders are dead, the rest should scatter before our guards.*/
	++ @85 /*Um...thanks. Do we get a salary or equipment?*/ GOTO _bthiefpermission3
	++ @86 /*Awesome. I've always wanted to be a guard. What kind of perks does that include?*/ GOTO _bthiefpermission3
	++ @87 /*Haha! Fear me evil-doers! We are coming for you now!*/ GOTO _bthiefpermissionEND
	END
	
	IF ~~ THEN _bthiefpermission3
	SAY @88 /*We grant you the right to whatever you acquire in the course of your regular duties. As for equipment, we promise you the use of all weapons, armor, and items that you currently possess.*/
	++ @89 /*So... nothing then. Is there at least a reward?*/ GOTO _bthiefpermission4
	++ @90 /*Seriously? And I thought the leaders of Baldur's Gate were cheap. Surely we'll get something for taking out the Shadow Thieves?*/ GOTO _bthiefpermission4
	++ @91 /*You're lucky I have other reasons for wanting to do this. Normally I'd require a few hundred gold to do your dirty work. Any chance of that?*/ GOTO _bthiefpermission4
	END
	
	IF ~~ THEN _bthiefpermissionEND
	SAY @98 /*Excellent. There is just one more thing. The Shadow Thieves have many spies including several in this building, so you are unlikely to catch them by surprise. But please do return if you survive as we would like to offer you our official congratulations. You do not need to bring anything as proof; my informants will tell me if you have succeeded.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyTQuest","GLOBAL",2) SetGlobal("_BFightThieves","GLOBAL",1) AddJournalEntry (@1023,QUEST)~ EXIT /*Permission Granted

Council Secretary Ewenn has granted us permission to take on the Shadow Thieves, though the government of Athkatla offers us no help. We are on our own but we have faced worse enemies and triumphed.  While I had hoped to capture the thieves without bloodshed, that is no longer possible; we must wipe out the leaders of the Shadow Thieves, all those who still survive.*/
	END
	
	IF WEIGHT #-10 ~Global("_bMazzyTQuest","GLOBAL",3) IfValidForPartyDialogue("Mazzy") Global("_bMazzyRomance","GLOBAL",1)~ THEN _bthiefsuccess
	SAY @99 /*You succeeded then? I must say that I'm surprised but I suppose you are a credit to the guard. As promised, you have our thanks and our permission to keep the items that you already possess.*/
	++ @100 /*Thanks, I guess.*/ DO ~SetGlobal("_bMazzyTQuest","GLOBAL",4) ReputationInc(1) AddJournalEntry (@1025,QUEST_DONE)~ EXIT /*A Bloody Courtship

As expected, we received little thanks from the Secretary Ewenn for wiping out the Shadow Thieves. However, I hope the city of Athkatla can now breathe easier. Just as I hope that I will now be able to hold Mazzy in my arms.*/
	++ @101 /*Don't talk to me.*/ DO ~SetGlobal("_bMazzyTQuest","GLOBAL",4) ReputationInc(1) AddJournalEntry (@1025,QUEST_DONE)~ EXIT
	++ @102 /*It was our pleasure.*/ DO ~SetGlobal("_bMazzyTQuest","GLOBAL",4) ReputationInc(1) AddJournalEntry (@1025,QUEST_DONE)~ EXIT
	++ @103 /*Please let us know if you need anything more.*/ DO ~SetGlobal("_bMazzyTQuest","GLOBAL",4) ReputationInc(1) AddJournalEntry (@1025,QUEST_DONE)~ EXIT
	END
	
	IF WEIGHT #-10 ~Global("_bMazzyVQuest","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyRomance","GLOBAL",1)~ THEN _bvamppermission
	SAY @76 /*And how may I help you? Please be advised that the Council is not currently in session and we secretaries do not accept petitions, requests, appeals or bribes from random citizens.*/
	++ @104 /*Actually, we are here to help with your vampire problem.*/ GOTO _bvamppermission1
	++ @78 /*Nothing right now.*/ EXIT
	END
	
	IF ~~ THEN _bvamppermission1
	SAY @105 /*Oh excellent, the government of Athkatla and this office are committed to doing everything in our power to defeat the vampires who are ravaging our city, and we would welcome your assistance. How do you propose to aid us?*/
	++ @106 /*We want to lead an attack on their lair. Can you spare any guards to help?*/ GOTO _bvamppermission2
	++ @81 /*We're going to kill every last one of them! Can you spare any assistance?*/ GOTO _bvamppermission2
	++ @82 /*Actually I misspoke. Let's talk about this another time.*/ EXIT
	END
	
	IF ~~ THEN _bvamppermission2
	SAY @83 /*We regret to inform you that all of our men are currently engaged in a fruitful and important containment operation and cannot be spared for the attack itself. But we can officially designate you as guards of the City of Athkatla and then assign you to this mission.*/
	= @107 /*You are charged with arresting and bringing to justice every vampire in Athkatla. Lethal force is approved if they do not come willingly.*/
	++ @85 /*Um...thanks. Do we get a salary or equipment?*/ GOTO _bvamppermission3
	++ @86 /*Awesome. I've always wanted to be a guard. What kind of perks does that include?*/ GOTO _bvamppermission3
	++ @87 /*Haha! Fear me evil-doers! We are coming for you now!*/ GOTO _bvamppermissionEND
	END
	
	IF ~~ THEN _bvamppermission3
	SAY @88 /*We grant you the right to whatever you acquire in the course of your regular duties. As for equipment, we promise you the use of all weapons, armor, and items that you currently possess.*/
	++ @89 /*So... nothing then. Is there at least a reward?*/ GOTO _bvamppermission4
	++ @108 /*Seriously? And I thought the leaders of Baldur's Gate were cheap. Surely we'll get something for taking out the vampires?*/ GOTO _bvamppermission4
	++ @91 /*You're lucky I have other reasons for wanting to do this. Normally I'd require a few hundred gold to do your dirty work. Any chance of that?*/ GOTO _bvamppermission4
	END
	
	IF ~~ THEN _bvamppermissionEND
	SAY @110 /*Excellent. Then we have a deal. Feel free to ask for assistance from other heroes in the city if you wish. This task will be difficult and it would be a pity if you died. If you survive, please do return as we would like to offer you our official congratulations. You do not need to bring anything as proof; my informants will tell me if you have succeeded.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyVQuest","GLOBAL",2) AddJournalEntry (@1026,QUEST)~ EXIT /*Permission Granted

Council Secretary Ewenn has granted us permission to take on the vampires, though the government of Athkatla offers us no help. We are on our own but I believe we may find other allies in the city. If not, we have faced more dangerous enemies and triumphed, and I would fight worse than Bodhi to win Mazzy's heart.*/
	END
	
	IF WEIGHT #-10 ~Global("_bMazzyVQuest","GLOBAL",3) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyRomance","GLOBAL",1)~ THEN _bvampsuccess
	SAY @99 /*You succeeded then? I must say that I'm surprised but I suppose you are a credit to the guard. As promised, you have our thanks and our permission to keep the items that you already possess.*/
	++ @100 /*Thanks, I guess.*/ DO ~SetGlobal("_bMazzyVQuest","GLOBAL",4) ReputationInc(1) AddJournalEntry (@1028,QUEST_DONE)~ EXIT /*A Bloody Courtship
As expected, we received little thanks from Council Secretary Ewenn for wiping out the vampires. I hope the city of Athkatla can now breathe easier. Just as I hope that I will be able to hold Mazzy in my arms.*/
	++ @101 /*Don't talk to me.*/ DO ~SetGlobal("_bMazzyVQuest","GLOBAL",4) ReputationInc(1) AddJournalEntry (@1028,QUEST_DONE)~ EXIT
	++ @102 /*It was our pleasure.*/ DO ~SetGlobal("_bMazzyVQuest","GLOBAL",4) ReputationInc(1) AddJournalEntry (@1028,QUEST_DONE)~ EXIT
	++ @103 /*Please let us know if you need anything more.*/ DO ~SetGlobal("_bMazzyVQuest","GLOBAL",4) ReputationInc(1) AddJournalEntry (@1028,QUEST_DONE)~ EXIT
	END
END

CHAIN COUNSEC _bthiefpermission4
@92 /*Of course! We promise you whatever wealth and items you acquire from the Shadow Thieves. Everything in their compound is believed to be stolen and is thus the rightful property of the government; we offer it to you as payment for your services. Furthermore, we promise that you will be able to keep your official weapons, armor, and equipment once your mission is complete.*/
== MAZZYJ @93 /*So you grant us what we already possess, promise us a reward that you cannot deliver without our help, and order us to complete this mission we are already volunteering to do, without any additional aid whatsoever? You are a cheap and mean creature!*/
== COUNSEC @94 /*You came to us, halfling, and my cheapness and meanness are highly valued by my superiors; indeed they are largely responsible for my present position and promise of future promotion. You are heroes, so go be heroic. Virtue is its own reward.*/
END
	++ @95 /*Whatever. I'm doing this for Mazzy.*/ GOTO _bthiefpermissionEND
	++ @96 /*Yes, it is.*/ GOTO _bthiefpermissionEND
	++ @97 /*If you say so. I prefer gold myself.*/ GOTO _bthiefpermissionEND

CHAIN COUNSEC _bvamppermission4
@109 /*Of course! We promise you whatever wealth and items you acquire from the vampires' lair. Furthermore, we promise that you will be able to keep your official weapons, armor, and equipment once your mission is complete.*/
== MAZZYJ @93 /*So you grant us what we already possess, promise us a reward that you cannot deliver without our help, and order us to complete this mission we are already volunteering to do, without any additional aid whatsoever? You are a cheap and mean creature!*/
== COUNSEC @94 /*You came to us, halfling, and my cheapness and meanness are highly valued by my superiors; indeed they are largely responsible for my present position and promise of future promotion. You are heroes, so go be heroic. Virtue is its own reward.*/
END
	++ @95 /*Whatever. I'm doing this for Mazzy.*/ GOTO _bvamppermissionEND
	++ @96 /*Yes, it is.*/ GOTO _bvamppermissionEND
	++ @97 /*If you say so. I prefer gold myself.*/ GOTO _bvamppermissionEND
	
	
//Overrides Aran's wizard's dialogue to not mention Bodhi
CHAIN IF WEIGHT #-10 ~GlobalGT("_BFightThieves","GLOBAL",1) Global("_bHazTalks","GLOBAL",0)~ THEN ARNWAR06 _bThiefWizard
@970 /*I wondered if you might eventually drag yourself over to me. Were you clever enough to find the button to the north or did the traps chase you away? No matter, you shall never reach the Shadowmaster.*/
= @975 /*I'm afraid your little invasion will end here!*/
DO ~SetGlobal("_bHazTalks","GLOBAL",1) Enemy()~
EXIT

//Override Aran's dialogue to not mention Bodhi
CHAIN IF WEIGHT #-10 ~GlobalGT("_BFightThieves","GLOBAL",1) Global("_bAranTalks","GLOBAL",0)~ THEN ARAN02 _bThiefLeader
@971 /*I admit I never thought you would have the courage to betray me. No matter. Your blood will paint these walls.*/
DO ~SetGlobal("_bAranTalks","GLOBAL",1) Enemy()~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @972 /*We have already slain your entire organization! You will not stop us now!*/
EXIT

//Post Quest Talk 1
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMazzyCourted","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",1)~ THEN _bmazlove1
	SAY @111 /*You have completed my trial, <CHARNAME>.*/
	++ @112 /*I have indeed, Mazzy. Are you courted sufficiently?*/ GOTO _bmazlove2
	++ @113 /*The government was useless but righteousness still triumphed. Are you suitably impressed?*/ GOTO _bmazlove2
	++ @114 /*A good day's work. Are you satisfied, my dear?*/ GOTO _bmazlove2
	END
	
	IF ~~ THEN _bmazlove2
	SAY @115 /*I am, <CHARNAME>, and thank you. We have improved the lives of many people today and your assistance in that task means a lot to me.*/
	++ @116 /*My assistance? I did twice the work that you did!*/ GOTO _bmazlove3
	++ @117 /*Does this mean that I can kiss you?*/ GOTO _bmazlove4
	++ @118 /*I was happy to help.*/ EXTERN PLAYER1 _bmazlove5
	END
	
	IF ~~ THEN _bmazlove3
	SAY @119 /*Well, you were the one doing the courting, were you not? I had to leave you some people to fight.*/
	++ @121 /*So what now? For us, I mean.*/ + _bmazlove6
	END
	
	IF ~~ THEN _bmazlove4
	SAY @120 /*Yes, but not here with everyone watching us.*/
	++ @121 /*So what now? For us, I mean.*/ + _bmazlove6
	END
	
	IF ~~ THEN _bmazlove7
	SAY @136 /*I am glad to hear that. And to answer the question I assume is on your lips, I would be happy to spend the night with you.*/
	= @137 /*But first we must bathe so let us find an inn. We are both covered in dirt, filth, and blood and I would prefer to be at least somewhat clean before we know each other intimately.*/
	++ @138 /*That sounds good to me.*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",2)~ EXIT
	++ @139 /*I can't wait.*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",2)~ EXIT
	++ @140 /*To the inn!*/ DO ~SetGlobal("_bMazzyCourted","GLOBAL",2)~ EXIT
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
	+ ~OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) Global("ImoenRomanceActive","GLOBAL",2) Global("ImoenRomanceActive","GLOBAL",1)~ + @1790 /*Imoen, of course.*/ + _bmazlove11I
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
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazlove15
	SAY	@158 /*This custom is not mine, but I have heard of it and I will respect it. However, I am not willing to marry you, <CHARNAME>. I care for you, I really do, but such commitments are for life and I am not willing to bind myself to that. At least not for a long time.*/
	= @159 /*But there is no reason we cannot continue our journey together. Friendship and love do not require marriage, and they do not require physical intimacy. I will continue by your side for as long as you wish for I delight in your company and your presence lends me strength.*/
	IF ~~ THEN  DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
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
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazlove17
	SAY	@169 /*Of course, <CHARNAME>. Let us find a bath first and determine our course of action after that.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazlove18
	SAY	@170 /**sigh* Sometimes I forget how young you are. You only have to do that if you want to, <CHARNAME>, not because you think you have to.*/
	= @171 /*However, I want a physical relationship and so if you do not, then I think we must stay friends. I will not hate you no matter what you choose.*/
	++ @172 /*I do want to be with you and I want to make you happy. Perhaps we can still try.*/ GOTO _bmazlove20
	++ @173 /*I am sorry, Mazzy. I don't think I can lie with you like that.*/ GOTO _bmazlove19
	END
END


APPEND PLAYER1 IF ~~ THEN _bmazlove5
	SAY @121 /*So what now? For us, I mean.*/
	IF ~~ THEN EXTERN MAZZYJ _bmazlove6
	END
END

CHAIN MAZZYJ _bmazlove6
@122 /*Now we are together. I am yours and you are mine, at least for today. Tomorrow, if I still wish to be yours and you still want to be mine, then we will continue.*/
= @123 /*The only thing I would ask for is a promise. If you decide you must have someone else, please inform me first so that I may decide if I can share you or if it would be better to end things peaceably.*/
== MAZZYJ IF ~Global("LS_HaerDalisRomanceActive","GLOBAL",2) InParty("HaerDalis")~ THEN @124 /*Sharing you with Haer'Dalis is acceptable, and we can work out the details of our arrangement later on.*/
== MAZZYJ IF ~Global("AnomenRomanceActive","GLOBAL",2) Global("AnomenIsKnight","GLOBAL",1) InParty("Anomen")~ THEN @125 /*I know, of course, that you and Anomen are still together. I am all right with that.*/
== MAZZYJ IF ~InParty("Imoen2") OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2)~ THEN @1250 /*Imoen and I are also courting, as you should be aware. We have discussed this possibility and I trust the two of you to work out a schedule like adults.*/
== MAZZYJ @126 /*If I find out that you have strayed without prior discussion, then I will be surprised and heartbroken and you will never see me again. I can handle disappointment, but not a betrayal such as that.*/
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
	+ ~InParty("Imoen2") OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2) OR(2) Global("ImoenRomanceActive","GLOBAL",2) Global("ImoenRomanceActive","GLOBAL",1)~ + @1350 /*I'm sorry, but wasn't the whole point of this to share with Imoen?*/ GOTO _bmazlove11I


//Inn Talk - all talks also in TOB starting here
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMazzyCourted","GLOBAL",3) Global("_bMazzyRomance","GLOBAL",1)~ THEN _bmazsex1
SAY @180 /*I checked with the innkeeper and they have water and tubs for bathing. They'll even boil the water for us and only for twice the cost of our room.*/
	++ @181 /*Are you sure about this, Mazzy? I am only willing to do what you are ready for.*/ GOTO _bmazsex2
	++ @182 /*Maybe this is too soon. As much as I care about you, I don't want to rush into anything.*/ GOTO _bmazsex3
	++ @183 /*Excellent. Let's bathe.*/ GOTO _bmazsex4
	+ ~Global("_bCNBalks","GLOBAL",0)~ + @184 /*I changed my mind, I'm sorry. I don't think I can do this.*/ GOTO _bmazsexNO
	+ ~Global("_bCNBalks","GLOBAL",1)~ + @184 /*I changed my mind, I'm sorry. I don't think I can do this.*/ GOTO _bmazsexNEVER
	END
	
	IF ~~ THEN _bmazsex2
	SAY @185 /*I am not a shy and innocent young maiden who barely knows her own mind, <CHARNAME>. I have known others before you and I will likely know others after you are gone. I am going into this with my eyes open. However, I do have one last request.*/
	IF ~!Global("_bViconiaPreventsChildren","GLOBAL",1) Race(Player1,HALFLING) Gender(Player1,MALE)~ THEN GOTO _bmazsex5
	IF ~!Race(Player1,HALFLING) Gender(Player1,MALE)~ THEN GOTO _bmazsex6
	IF ~OR(2) Global("_bViconiaPreventsChildren","GLOBAL",1) Gender(Player1,FEMALE)~ THEN GOTO _bmazsex7
	END
	
	IF ~~ THEN _bmazsex3
	SAY @186 /*It is true that you only announced your intentions recently, but I believe that we have known each other long enough. I know what kind of person you are and I hope that you know me, and now that we have decided to be together, physical intimacy seems the logical next step. In addition, given the danger we face daily, we could both die tomorrow and I do not wish to waste the time we have.*/
	++ @187 /*I agree. I just wanted to be sure.*/ GOTO _bmazsex8 
	++ @188 /*Well actually, it's not you. I mean I'm up for a bath and I do want to kiss you, but you know I was raised in a library... and... well... since then I've been on the road and I've never actually... well...*/ + _bmazsex9
	+ ~Global("_bCNBalks","GLOBAL",0)~ + @184 /*I changed my mind, I'm sorry. I don't think I can do this.*/ GOTO _bmazsexNO
	+ ~Global("_bCNBalks","GLOBAL",1)~ + @184 /*I changed my mind, I'm sorry. I don't think I can do this.*/ GOTO _bmazsexNEVER
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
	IF ~~ THEN DO ~SetGlobal("_bMazzyCourted","GLOBAL",4) SetGlobal("_bCNBalks","GLOBAL",0) RestParty()~ EXIT
	END
	
	IF ~~ THEN _bmazsexNO
	SAY @192 /*Then that is your choice and I will respect that. However, there is no reason that we cannot continue travelling together. I will stay by your side as long as you wish for I still delight in your company.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyCourted","GLOBAL",4) SetGlobal("_bCNBalks","GLOBAL",1) SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazsexNEVER
	SAY @193 /*I will respect your choice, <CHARNAME>. However, we cannot keep going back and forth in this manner. My heart simply will not stand the strain.*/
	= @194 /*I remain your friend and your travelling companion for as long as you will have me, but I will not discuss the possibility of being more again.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyCourted","GLOBAL",4) SetGlobal("_bCNBalks","GLOBAL",2) SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
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
	++ @198 /*Then we will go slowly and make sure to talk things over. Now come, I believe our baths are ready*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0) SetGlobal("_bMazzyCourted","GLOBAL",4) Wait(1) RestParty()~ EXIT
	++ @199 /*But what about passion and spontaneity? I prefer to have fun and let things happen naturally.*/ GOTO _bmazsex10
	++ @200 /*This is not the time for words. It is a time for action. I have done this many times and I don't need instructions; I know exactly how to make you scream with happiness*/ GOTO _bmazsex11
	++ @201 /*I told you I've never done this before. Not with anyone. So I don't know what to do.*/ GOTO _bmazsex12
	END
	
	IF ~~ THEN _bmazsex10
	SAY @202 /*Passion and spontaneity are not bad things but I would prefer to save them until we know each other's preferences. Tonight, I want you to tell me before you try something that I have not requested, and if you do not voice your own desires then you are sure to be disappointed.*/
	= @203 /*I do not require a monologue for every action, but I do want your intentions to be clear, and I want a chance to object. Can you do that for me? Please?*/
	++ @204 /*Yes, I will do that for you.  And now I believe our baths are ready.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0) SetGlobal("_bMazzyCourted","GLOBAL",4) Wait(1) RestParty()~ EXIT
	++ @205 /*As you wish. Though I look forward to the day that we can play as well.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0) SetGlobal("_bMazzyCourted","GLOBAL",4) Wait(1) RestParty()~ EXIT
	++ @206 /*Fine. Whatever it takes.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0) SetGlobal("_bMazzyCourted","GLOBAL",4) Wait(1) RestParty()~ EXIT
	END
	
	IF ~~ THEN _bmazsex11
	SAY @207 /*That may be true and I will be happy to experience your skill as long as you keep me apprised of how you intend to please me.*/
	= @208 /*I may be different from the other women you have known and my request for advance-warning is non negotiable. Can you promise that? For me, please?*/
	++ @204 /*Yes, I will do that for you.  And now I believe our baths are ready.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0) SetGlobal("_bMazzyCourted","GLOBAL",4) Wait(1) RestParty()~ EXIT
	++ @205 /*As you wish. Though I look forward to the day that we can play as well.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0) SetGlobal("_bMazzyCourted","GLOBAL",4) Wait(1) RestParty()~ EXIT
	++ @209 /*Fine. If I must.*/ DO ~SetGlobal("_bCNBalks","GLOBAL",0) SetGlobal("_bMazzyCourted","GLOBAL",4) Wait(1) RestParty()~ EXIT
	END
	
	IF ~~ THEN _bmazsex12
	SAY @210 /*Then that is all the more reason to have this conversation. Do not worry, <CHARNAME>, we will learn about each other's preferences together. I am patient and I will not judge.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyCourted","GLOBAL",4) SetGlobal("_bCNBalks","GLOBAL",0) RestParty()~ EXIT
	END
END
	
//Post-Inn Conversation
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMazzyCourted","GLOBAL",5) Global("_bMazzyRomance","GLOBAL",1)~ THEN _bmazsex13
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
== MAZZYJ @240 /*Do not mind me, <CHARNAME>, I will just be a moment.*/
END
	++ @241 /**Say nothing.**/ EXIT
	++ @242 /*Umm... you seem to have a lot of weapons here. Did I miss something?*/ EXTERN MAZZYJ _bmazsex28
	++ @243 /*Were you expecting us to be attacked?*/ EXTERN MAZZYJ _bmazsex28
	++ @244 /*Good idea, Mazzy. You can never be too careful.*/ EXIT
	++ @245 /*Nice. Will you grab my weapons while you're at it?*/ EXTERN MAZZYJ _bmazsex29
	
	
//Tree Talk once you open the way to final Irenicus fight
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMazzyFTT","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2)~ THEN _bmaztree
	SAY @253 /*There is no turning back, <CHARNAME>? Are you ready?*/
	++ @254 /*Of course! Irenicus will meet our righteous blades!*/ GOTO _bmaztree1
	++ @255 /*I admit that I am nervous. But we cannot falter now.*/ GOTO _bmaztree2
	++ @256 /*I am ready for anything as long as you are with me.*/ GOTO _bmaztree3
	++ @257 /*We are as ready as we can be and there is no other choice. If I do not do this, I will die.*/ GOTO _bmaztree4
	++ @258 /*No, I am not ready. But I cannot allow Irenicus to go through with his plan.*/ GOTO _bmaztree5
	++ @259 /*Sure, why not? In fact, I'll wager you three kisses that we both make it through just fine. I don't think the gods are done playing with me yet.*/ GOTO _bmaztree6
	END
	
	IF ~~ THEN _bmaztree1
	SAY @260 /*I hope that you are right. It seems as though every time we come close to killing him, he finds a way to turn the tide.*/
	++ @261 /*That will not happen again. I will not allow it.*/ GOTO _bmaztree7
	++ @262 /*Let him try.*/ GOTO _bmaztree8
	++ @263 /*Can't you be optimistic, just this once?*/ GOTO _bmaztree9
	END
	
	IF ~~ THEN _bmaztree2
	SAY @264 /*Being nervous is only sensible, <CHARNAME>. We cannot afford to be reckless if we are to persevere.*/
	++ @265 /*Always the voice of reason, aren't you?*/ GOTO _bmaztree10
	++ @266 /*This is not the time for lectures.*/ GOTO _bmaztree11
	++ @267 /*Can't you just tell me that everything will be all right?*/ GOTO _bmaztree12
	END
	
	IF ~~ THEN _bmaztree3
	SAY @268 /*We shall take courage from each other. Whatever happens, we will finish this together.*/
	++ @269 /*There's no way I can lose with you standing at my side.*/ GOTO _bmaztree13
	++ @270 /*That is the difference between Irenicus and I. He is alone so he will die.*/ GOTO _bmaztree14
	++ @271 /*Yes, together. I can ask no more than that.*/ GOTO _bmaztree15
	END
	
	IF ~~ THEN _bmaztree4
	SAY @272 /*And I do not want that to happen. We will stop Irenicus or we will die together. Either way, we shall not go silently.*/
	++ @273 /*Have I ever been silent in my life?*/ GOTO _bmaztree16
	++ @274 /*I would rather die alone and know you were still living.*/ GOTO _bmaztree17
	++ @275 /*No, we will not. For my soul!*/ GOTO _bmaztree18
	END
	
	IF ~~ THEN _bmaztree5
	SAY @276 /*I do not think anyone is ever truly ready, <CHARNAME>, but we will triumph nonetheless.*/
	++ @277 /*I pray that you are right.*/ GOTO _bmaztree19
	++ @278 /*Yes, we will. No one can defeat us as long as we're together.*/ GOTO _bmaztree20
	++ @279 /*Okay. Time to kill a wizard.*/ GOTO _bmaztree21
	END
	
	IF ~~ THEN _bmaztree6
	SAY	@280 /*You do seem to live a charmed life, <CHARNAME>, and with Arvoreen's protection, I hope to make it through as well.*/
	++ @281 /*I will make sure of it.*/ GOTO _bmaztree22
	++ @282 /*Do not talk like that. You will survive.*/ GOTO _bmaztree23
	++ @283 /*You'd better, because I can't live without you.*/ GOTO _bmaztree24
	END
	
	IF ~~ THEN _bmaztree7
	SAY @284 /*You may not have a choice, though we shall do our best to triumph. We cannot know exactly what the future brings.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree8
	SAY @285 /*Confident as always, <CHARNAME>. Let us pray it is not hubris in this fight.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree9
	SAY @286 /*That is not in my nature. But for you I will try.*/
	= @287 /*We will win, <CHARNAME>. You will regain your soul and together we will continue travelling.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree10
	SAY @288 /*I do try. Someone has to balance out those foolhardy plans of yours.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree11
	SAY @289 /*I was not trying to lecture you, <CHARNAME>. I merely worry when you charge headlong into battle without any strategy. I want you to survive this and I plan to do the same.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree12
	SAY @290 /*As you wish.*/
	= @291 /*Do not worry, <CHARNAME>. We will be victorious and Irenicus will finally receive the fate that he deserves.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree13
	SAY @292 /*That is flattering, <CHARNAME>, and I pray that you are right.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree14
	SAY @293 /*Having friends and allies may make all the difference. Hopefully our numbers will overwhelm our enemy.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree15
	SAY @294 /*I am glad you feel the same. Although I must admit that I would prefer we both survive.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree16
	SAY @295 /*Not that I'm aware of. But I quite like hearing the way you shout my name in pleasure. Given the choice, I want to hear that sound again tonight as we celebrate our victory.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree17
	SAY @296 /*Please do not ask that of me. I have already buried one lover too many and I do not wish to feel that pain again.*/
	= @297 /*However, I promise that I do not plan to fall in battle. I would rather live with you.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree18
	SAY @298 /*For your soul, <CHARNAME>, though you have proven to be a champion of light and justice despite its loss.*/
	= @299 /*You will not die today. I will not allow it. I want the chance to kiss you once your soul has been reclaimed.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree19
	SAY @300 /*I thought I was supposed to be the pessimistic one, <CHARNAME>. Have faith in your companions if not the vagaries of fate. We will not let Irenicus succeed.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree20
	SAY @301 /*Exactly, <CHARNAME>. Although we have never faced a challenge quite like this, I believe that truth and justice will be victorious.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree21
	SAY @302 /*Well past time, if you ask me. Irenicus has held your stolen spirit for too long and I will see your soul restored where it belongs.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree22
	SAY @303 /*And I will watch your back as I always have before.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree23
	SAY @304 /*I hope that you are right.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztree24
	SAY @305 /*You would manage, <CHARNAME>, though I will do everything I can to remain by your side. You are one of the strongest people I have ever known and my loss would not destroy you.*/
	IF ~~ THEN GOTO _bmaztreeEND
	END
	
	IF ~~ THEN _bmaztreeEND
	SAY @306 /*But just in case, there is one thing I wish to tell you. Despite the dangers we have seen and the threat that we are facing, I do not regret our time together. You have made me happier than I ever thought I'd be.*/
	= @307 /*I love you, <CHARNAME>, and I am with you, wherever this path leads.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyFTT","GLOBAL",2)~ EXIT
	END
END
