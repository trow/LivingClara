BEGIN YF_clara

//When you first raise Clara.
APPEND YF_CLARA IF ~Global("YF_ClaraLives","GLOBAL",2) !StateCheck("YF_Clara",CD_STATE_NOTVALID)~ THEN BEGIN YF_Clara1	//CD_STATE_NOTVALID表示不适合对话的状态
	SAY @1 /*I'm alive! I'm alive! Or... I'm dead and this is the afterlife.*/
	= @2 /*Oh hi, <CHARNAME>, are we alive or are you dead too?*/
		++ @3 /*That's a good philosophical question. After all, everyone dies, but not everyone truly lives.*/ DO ~SetGlobal("YF_ClaraLives","GLOBAL",3)~ GOTO YF_Clara2
		++ @4 /*We're alive, Clara, Hexxat is dead and destroyed.*/ DO ~SetGlobal("YF_ClaraLives","GLOBAL",3)~ GOTO YF_Clara2
		++ @5 /*We're alive, Hexxat. The vampire is dead and destroyed.*/ DO ~SetGlobal("YF_ClaraLives","GLOBAL",3)~ GOTO YF_Clara3
		++ @6 /*I'm sorry, but we're dead. The vampire killed us both.*/ DO ~SetGlobal("YF_ClaraLives","GLOBAL",3)~ GOTO YF_Clara4
		END
		
	IF ~~ THEN YF_Clara2
	SAY @7 /*I don't care about that. Hexxat is out of my head! Oh thank you, <CHARNAME>. This whole experience was like some kind of nightmare and now that I am awake again, the memories are fading fast.*/ 
	IF ~~ THEN GOTO YF_Clara5
	END
	
	IF ~~ THEN YF_Clara3
	SAY @8 /*Hexxat... That was what I called myself, wasn't it? But that wasn't me... it was her. She was controlling me like in some horrible nightmare. But now that I am free, the memories are quickly fading. I am Clara, by the way, and you're <CHARNAME>. I remember that.*/
	IF ~~ THEN GOTO YF_Clara5
	END
	
	IF ~~ THEN YF_Clara4
	SAY @9 /*We're dead? But it all feels the same. I kind of expected the afterlife to be more... I don't know... purple. <CHARNAME>! I'm alive, you ass! *laughs* You almost had me for a minute.*/
	= @10 /*I'm alive! And Hexxat is out of my head. Oh thank you, <CHARNAME>. This whole experience was like some kind of nightmare and now that I'm awake again, the memories are fading fast.*/
	IF ~~ THEN GOTO YF_Clara5
	END
	
	IF ~~ THEN YF_Clara5
	SAY @11 /*So I guess this is it, huh? I'll go back to stealing things from drunk people and you'll go save some other damsel in distress...*/
	= @12 /*Oh no! The Shadow Thieves! How long was I enchanted? I'm late with my dues!*/
		+ ~!Global("B!Alternatives","GLOBAL",6) !Global("D0AranHostile","GLOBAL",1) !GlobalGT("WorkingforBodhi","GLOBAL",0) !Global("AttackedThieves","GLOBAL",1) !Dead("aran")~ + @13 /*I wish you luck with that. Do you need any money?*/ GOTO YF_Clara6
		+ ~!Global("B!Alternatives","GLOBAL",6) !Global("D0AranHostile","GLOBAL",1) !GlobalGT("WorkingforBodhi","GLOBAL",0) !Global("AttackedThieves","GLOBAL",1) !Dead("aran")~ + @14 /*Well I guess they're going to break your hands or something. Not my problem. Good luck!*/ GOTO YF_Clara10
		+ ~!Global("B!Alternatives","GLOBAL",6) !Global("D0AranHostile","GLOBAL",1) !GlobalGT("WorkingforBodhi","GLOBAL",0) !Global("AttackedThieves","GLOBAL",1) !Dead("aran")~ + @15 /*Sorry I can't help. At least you're alive for now.*/ GOTO YF_Clara10
		+ ~!Global("B!Alternatives","GLOBAL",6) !Global("D0AranHostile","GLOBAL",1) !GlobalGT("WorkingforBodhi","GLOBAL",0) !Global("AttackedThieves","GLOBAL",1) !Dead("Renal Bloodscalp") !Global("YF_RenalOHHFAK","GLOBAL",2)~ + @16 /*Let's go talk to Renal Bloodscalp. I'll tell him you're with me and all will be forgiven.*/ GOTO YF_Clara12
		+ ~Global("YF_RenalOHHFAK","GLOBAL",2) !Global("B!Alternatives","GLOBAL",6) !Global("D0AranHostile","GLOBAL",1) !GlobalGT("WorkingforBodhi","GLOBAL",0) !Global("AttackedThieves","GLOBAL",1) !Dead("Renal Bloodscalp")~ + @17 /*Actually, you don't remember this, but Renal Bloodscalp already spoke to you and said that you could work with me.*/ GOTO YF_Clara14
		+ ~!Dead("aran") OR(4) Global("B!Alternatives","GLOBAL",6) Global("D0AranHostile","GLOBAL",1) GlobalGT("WorkingforBodhi","GLOBAL",0) Global("AttackedThieves","GLOBAL",1)~ + @18 /*I'd help, but I'm at war with the Shadow Thieves. And since you've been traveling with me that means you're at war with them too.*/ GOTO YF_Clara16
		+ ~Dead("aran")~ + @19 /*I wouldn't worry about it. I've already killed Aran Linvail and any surviving Shadow Thieves have much bigger worries than you.*/ GOTO YF_Clara20
		END
	
	IF ~~ THEN YF_Clara6
	SAY @20 /*Is that a trick question? Um... yes. I'd love 100 gold right now.*/
		+ ~PartyGoldGT(99)~ + @21 /*Okay.*/ DO ~TakePartyGold(100) DestroyGold(100)~ GOTO YF_Clara7
		++ @22 /*Sorry, I don't have it.*/ GOTO YF_Clara10
		+ ~PartyGoldGT(49)~ + @23 /*How about 50?*/ DO ~TakePartyGold(50) DestroyGold(50)~ GOTO YF_Clara11
		++ @24 /*You and me both. You'll have to settle for what you can steal along the way.*/ GOTO YF_Clara10
		END
		
	IF ~~ THEN YF_Clara7
	SAY @25 /*Oh... wow, that worked. Okay...um... I'd love 1000 gold right now.*/
		+ ~PartyGoldGT(999)~ + @21 /*Okay.*/ DO ~TakePartyGold(1000) DestroyGold(1000)~ GOTO YF_Clara8
		+ ~PartyGoldGT(499)~ + @26 /*How about 500?*/ DO ~TakePartyGold(500) DestroyGold(500)~ GOTO YF_Clara9
		++ @27 /*You and me both. You'll have to settle for what you already have.*/ GOTO YF_Clara10
		END
		
	IF ~~ THEN YF_Clara8
	SAY @28 /*Yes! I would love 10,000 gold!*/ 
		+ ~PartyGoldGT(9999)~ + @21 /*Okay.*/ DO ~TakePartyGold(10000) DestroyGold(10000)~ GOTO YF_Clara9
		+ ~PartyGoldGT(4999)~ + @29 /*How about 5,000?*/ DO ~TakePartyGold(5000) DestroyGold(5000)~ GOTO YF_Clara9
		++ @27 /*You and me both. You'll have to settle for what you already have.*/ GOTO YF_Clara9
		END
END
		
CHAIN YF_CLARA YF_Clara9
@30 /*Well... I'll be off then. It looks like I'll be taking it easy for a while. Even after paying the Shadow Thieves their cut, I'll still be super rich. You'll be able to find me at the Five Flagons Inn on the bridge. I like watching the plays and the innkeeper and his wife, Samuel and Thalia, often give me a free drink, not that I need one anymore. *laughs**/
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN @31 /*Samuel Thunderburp? He's a friend, both him and his wife. Please give them my greetings.*/
== YF_CLARA IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN @32 /*Thanks Mazzy, I will.*/
== YF_CLARA IF ~!Global("PLAYHOUSE","GLOBAL",1)~
THEN @33 /*Goodbye, <CHARNAME>. Thanks for saving my life and making me rich and everything.*/
DO ~EscapeAreaMove("AR0509",470,404,E)~
== YF_CLARA IF ~Global("PLAYHOUSE","GLOBAL",1)~
THEN @33 /*Goodbye, <CHARNAME>. Thanks for saving my life and making me rich and everything.*/
DO ~EscapeAreaMove("AR0522",470,404,E)~ 
EXIT

CHAIN YF_CLARA YF_Clara10
@34 /*That's okay. My contact with the Thieves is a lecherous old goat. I'll just take my shirt off and he'll forgive everything.*/
= @35 /*I'll go to the Five Flagons Inn after that. It's on the bridge in the center of the city. I like watching the plays and the innkeeper and his wife, Samuel and Thalia, like me. They always say that I remind them of a young Brandobaris, whoever he is.*/ 
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN @36 /*Brandobaris is a deity, Clara, and that is high praise; he's called the Master of Stealth. When you see Samuel and Thalia give them my greetings and my love. They're old friends.*/	
== YF_CLARA IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
THEN @37 /*Master of Stealth... I like that. I'll tell them, Mazzy, thanks.*/ 
== YF_CLARA IF ~!Global("PLAYHOUSE","GLOBAL",1)~
THEN @38 /*Anyway, thanks for saving my life, <CHARNAME>. I owe you one.*/
DO ~EscapeAreaMove("AR0509",470,404,E)~
== YF_CLARA IF ~Global("PLAYHOUSE","GLOBAL",1)~
THEN @38 /*Anyway, thanks for saving my life, <CHARNAME>. I owe you one.*/
DO ~EscapeAreaMove("AR0522",470,404,E)~
EXIT

CHAIN YF_CLARA YF_Clara11
@39 /*Thanks! I'll pay off the thieves and then go to the Five Flagons Inn after that. It's on the bridge in the center of the city. I like watching the plays and the innkeeper and his wife, Samuel and Thalia, like me. They always tell me I remind them of a young Brandobaris, whoever he is.*/
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN @36 /*Brandobaris is a deity, Clara, and that is high praise; he's called the Master of Stealth. When you see Samuel and Thalia give them my greetings and my love. They're old friends.*/	
== YF_CLARA IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
THEN @37 /*Master of Stealth... I like that. I'll tell them, Mazzy, thanks.*/ 
== YF_CLARA IF ~!Global("PLAYHOUSE","GLOBAL",1)~
THEN @38 /*Anyway, thanks for saving my life, <CHARNAME>. I owe you one.*/
DO ~EscapeAreaMove("AR0509",470,404,E)~
== YF_CLARA IF ~Global("PLAYHOUSE","GLOBAL",1)~
THEN @38 /*Anyway, thanks for saving my life, <CHARNAME>. I owe you one.*/
DO ~EscapeAreaMove("AR0522",470,404,E)~
EXIT

APPEND YF_CLARA IF ~~ THEN YF_Clara12
	SAY @40 /*Talk with Renal Bloodscalp? You make it sound so easy. I don't get to talk to Renal Bloodscalp! I've never even met him. And you'll just talk to him and everything will be okay? That's amazing. Thank you, <CHARNAME>.*/
	= @41 /*So should I meet you there or what?*/
		++ @42 /*Yes.*/ DO ~SetGlobal("YF_ClaraRenal","GLOBAL",1) EscapeAreaMove("AR0306",873,563,SW)~ EXIT
		++ @43 /*Why do that? Just travel with me.*/ DO ~SetGlobal("YF_ClaraRenal","GLOBAL",1)~ GOTO YF_Clara13
	END
END

CHAIN YF_CLARA YF_Clara13
@44 /*Really? Why? I mean, you're a powerful adventurer who can just walk up and talk with the Bloodscalp and I'm... well... me.*/
= @45 /*I have pieces of memories from my time with Hexxat, dreams of doing amazing things, but I can't do any of that now. I'm not bad with a dagger or a bow; I've hunted rabbits and the occasional bird, but I've never actually killed anyone.*/
= @72 /*I'm not even a great thief. I've learned the basics, but my only real skill is escaping when things go wrong. I can run and hide as well as the best of them.*/
	== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~
	THEN @46 /*Don't worry about that, girly; old Jan can teach you more. Indeed, your fingers look quite nimble. My dear slain niece had hands like that and we'll have you picking locks with the best of us in no time flat.*/
	DO ~ApplySpellRES("YF_LOCKS","YF_Clara")~
	== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~
	THEN @461 /*I will help you, Clara. I picked up a few skills while sneaking out to feed the poor.*/
	DO ~ApplySpellRES("YF_TRAP","YF_Clara")~
	== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ 
	THEN @47 /*A bad thief is a dead thief and you'd probably be safer staying here. But with the right trap, you can avoid most fights.*/
	DO ~ApplySpellRES("YF_STRAP","YF_Clara")~
	== IMOEN2J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~
	THEN @48 /*You sound like me back when <CHARNAME> and I first left Candlekeep. I decided to focus on magic but I'm sure I could still teach you a trick or two.*/
	DO ~ApplySpellRES("YF_LOCKS","YF_Clara")~
	== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
	THEN @49 /*Fear not, my lovely margay. This sparrow's blades will protect you from the evils that crawl out of the dark. You shall be free and happy as only a once-caged feline can.*/
	DO ~ApplySpellRES("YF_PICKP","YF_Clara")~
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @50 /*Your lack of skill at thievery does you credit, Clara. There is no need to take things that belong to others.*/	
	== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
THEN @51 /*Fear no evil with my hamster near. Boo protects us and I protect Boo!*/
== YF_CLARA @510 /*I'm willing to go with you, but wouldn't I just slow you down?* ///If the above NPCs are in your party, but not in the area, dialogue just exits. Can't seem to fix that.*/
END
	++ @52 /*You're still welcome to come with me. I was once a novice too.*/ DO ~ActionOverride("YF_Clara",JoinParty())~ EXIT
	++ @53 /*Okay, you've convinced me. We'll meet you there.*/ DO ~SetGlobal("YF_ClaraRenal","GLOBAL",1) ActionOverride("YF_Clara",EscapeAreaMove("AR0306",873,563,SW))~ EXIT
	++ @54 /*Hiding is more useful than you think. The rest will come in time.*/ DO ~ActionOverride("YF_Clara",JoinParty())~ EXIT
	
APPEND YF_CLARA IF ~~ THEN YF_Clara14
	SAY @55 /*I spoke with the Bloodscalp?! I've never done that before. His whole floor was off-limits to me. Oh well, as I was saying, I guess this is it. You have a world to save, I have people to steal from...*/
		++ @56 /*Yes. We'll see you around. Good luck!*/ GOTO YF_Clara11
		++ @57 /*Why go? Just travel with me.*/ GOTO YF_Clara15
	END
END

CHAIN YF_CLARA YF_Clara15
@44 /*Really? Why? I mean, you're a powerful adventurer who can just walk up and talk with the Bloodscalp and I'm... well... me.*/
= @45 /*I have pieces of memories from my time with Hexxat, dreams of doing amazing things, but I can't do any of that now. I'm not bad with a dagger or a bow; I've hunted rabbits and the occasional bird, but I've never actually killed anyone.*/
= @72 /*I'm not even a great thief. I've learned the basics, but my only real skill is escaping when things go wrong. I can run and hide as well as the best of them.*/
	== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~
	THEN @46 /*Don't worry about that, girly; old Jan can teach you more. Indeed, your fingers look quite nimble. My dear slain niece had hands like that and we'll have you picking locks with the best of us in no time flat.*/
	DO ~ApplySpellRES("YF_LOCKS","YF_Clara")~
	== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~
	THEN @461 /*I will help you, Clara. I picked up a few skills while sneaking out to feed the poor.*/
	DO ~ApplySpellRES("YF_TRAP","YF_Clara")~
	== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ 
	THEN @47 /*A bad thief is a dead thief and you'd probably be safer staying here. But with the right trap, you can avoid most fights.*/
	DO ~ApplySpellRES("YF_STRAP","YF_Clara")~
	== IMOEN2J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~
	THEN @48 /*You sound like me back when <CHARNAME> and I first left Candlekeep. I decided to focus on magic but I'm sure I could still teach you a trick or two.*/
	DO ~ApplySpellRES("YF_LOCKS","YF_Clara")~
	== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
	THEN @49 /*Fear not, my lovely margay. This sparrow's blades will protect you from the evils that crawl out of the dark. You shall be free and happy as only a once-caged feline can.*/
	DO ~ApplySpellRES("YF_PICKP","YF_Clara")~
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @50 /*Your lack of skill at thievery does you credit, Clara. There is no need to take things that belong to others.*/	
	== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
THEN @51 /*Fear no evil with my hamster near. Boo protects us and I protect Boo!*/
== YF_CLARA @510 /*I'm willing to go with you, but wouldn't I just slow you down?*/
END
	++ @58 /*Okay, you've convinced me. We'll see you around. Good luck!*/  GOTO YF_Clara11
	++ @52 /*You're still welcome to come with me. I was once a novice too.*/ DO ~ActionOverride("YF_Clara",JoinParty())~ EXIT
	++ @54 /*Hiding is more useful than you think. The rest will come in time.*/ DO ~ActionOverride("YF_Clara",JoinParty())~ EXIT

APPEND YF_CLARA IF ~~ THEN YF_Clara16
	SAY @59 /*We're at war with the Shadow Thieves? Are we winning? At least I'm safe with you, right?*/
		+ ~Gender(Player1,FEMALE)~ + @60 /*Nope, I don't need you anymore. Goodbye.*/ GOTO YF_Clara17
		+ ~Gender(Player1,MALE)~ + @60 /*Nope, I don't need you anymore. Goodbye.*/ GOTO YF_Clara19
		++ @61 /*Yes, yes, and yes. Now let's get a move on.*/ DO ~ActionOverride("YF_Clara",JoinParty())~ EXIT 
	END
	
	IF ~~ THEN YF_Clara17
	SAY @62 /*Please don't abandon me! They'll kill me! I won't last three days! And I can't go home, I can't! Let me stay with you. I won't get in the way. I'll do anything, I promise. I mean if you were a man, I know I could convince you I was worthwhile, but even so I can wash your clothes, cook your food, and clean your weapons and armor!*/
		++ @63 /*Very well, I accept, but you must earn your place.*/ DO ~JoinParty()~ EXIT
		++ @630 /*Why let me being a woman stop you? You can still share my bed. Do it well enough and I might decide to keep you around.*/ GOTO YF_Clara18
		+ ~!Global("PLAYHOUSE","GLOBAL",1)~ + @64 /*Nope, sorry, goodbye.*/ DO ~EscapeAreaMove("AR0509",470,404,E)~ EXIT
		+ ~Global("PLAYHOUSE","GLOBAL",1)~ + @64 /*Nope, sorry, goodbye.*/ DO ~EscapeAreaMove("AR0522",470,404,E)~ EXIT
	END
END

CHAIN YF_CLARA YF_Clara18
	@640 /*Really? I've never done that before. But as Jenny always said, it doesn't matter what they look like, just show enthusiasm, do whatever they ask, and try to enjoy yourself. Okay, I'll do it next time we're at an inn. You won't regret this!*/
	DO ~JoinParty()~
	EXIT

CHAIN YF_CLARA YF_Clara19
	@641 /*Please don't abandon me! They'll kill me! I won't last three days! And I can't go home, I can't. Let me stay with you. I won't get in the way. I'll do anything, I promise. I can still wash your clothes, cook your food, and clean your weapons and armor!*/
	= @642 /*I know! I can share your bed. Give me one night and you'll see that keeping me is worthwhile. Let me prove myself to you!*/
	END
	+ ~!Global("PLAYHOUSE","GLOBAL",1)~ + @64 /*Nope, sorry, goodbye.*/ DO ~EscapeAreaMove("AR0509",470,404,E)~ EXIT
	+ ~Global("PLAYHOUSE","GLOBAL",1)~ + @64 /*Nope, sorry, goodbye.*/ DO ~EscapeAreaMove("AR0522",470,404,E)~ EXIT
	++ @643 /*Very well, I accept. Next time we're at an inn, you can show off your skills. Do it well enough and I might decide to keep you around.*/ DO ~JoinParty()~ EXIT

CHAIN YF_CLARA YF_Clara20
	@65 /*You killed Aran Linvail? So I should probably stay out of the docks, right? I wouldn't want anyone to recognize me.*/
	= @66 /*I'll go to the Five Flagons Inn then. It's on the bridge in the center of the city. I like watching the plays and the innkeeper and his wife, Samuel and Thalia, seem to like me. They always say that I remind them of a young Brandobaris, whoever he is.*/
	== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @36 /*Brandobaris is a deity, Clara, and that is high praise; he's called the Master of Stealth. When you see Samuel and Thalia give them my greetings and my love. They're old friends.*/	
	== YF_CLARA IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @37 /*Master of Stealth... I like that. I'll tell them, Mazzy, thanks.*/ 
	== YF_CLARA @67 /*Anyways, thanks for saving my life <CHARNAME>. I owe you one.*/
END
		+ ~!Global("PLAYHOUSE","GLOBAL",1)~ + @68 /*Okay, we'll see you there.*/ DO ~EscapeAreaMove("AR0509",470,404,E)~ EXIT
		+ ~Global("PLAYHOUSE","GLOBAL",1)~ + @68 /*Okay, we'll see you there.*/ DO ~EscapeAreaMove("AR0522",470,404,E)~ EXIT
		++ @69 /*Why leave? Stay with me.*/ GOTO YF_Clara21
	

CHAIN YF_CLARA YF_Clara21
	@70 /*Really? Why? I mean, you're a powerful adventurer who walked in the front door of the most powerful thieves' guild in Amn and killed their leader like it was nothing, and I'm just... well... me.*/
	= @71 /*I have pieces of memories from my time with Hexxat; dreams of doing amazing things, but I can't do any of that now. I'm not bad with a dagger or a bow; I've hunted rabbits and the occasional bird, but I've never actually killed anyone.*/
	= @72 /*I'm not even a great thief. I've learned the basics, but my only real skill is escaping when things go wrong. I can run and hide as well as the best of them.*/
	== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~
	THEN @46 /*Don't worry about that, girly; old Jan can teach you more. Indeed, your fingers look quite nimble. My dear slain niece had hands like that and we'll have you picking locks with the best of us in no time flat.*/
	DO ~ApplySpellRES("YF_LOCKS","YF_Clara")~
	== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~
	THEN @461 /*I will help you, Clara. I picked up a few skills while sneaking out to feed the poor.*/
	DO ~ApplySpellRES("YF_TRAP","YF_Clara")~
	== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ 
	THEN @47 /*A bad thief is a dead thief and you'd probably be safer staying here. But with the right trap, you can avoid most fights.*/
	DO ~ApplySpellRES("YF_STRAP","YF_Clara")~
	== IMOEN2J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~
	THEN @48 /*You sound like me back when <CHARNAME> and I first left Candlekeep. I decided to focus on magic but I'm sure I could still teach you a trick or two.*/
	DO ~ApplySpellRES("YF_LOCKS","YF_Clara")~
	== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
	THEN @49 /*Fear not, my lovely margay. This sparrow's blades will protect you from the evils that crawl out of the dark. You shall be free and happy as only a once-caged feline can.*/
	DO ~ApplySpellRES("YF_PICKP","YF_Clara")~
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @50 /*Your lack of skill at thievery does you credit, Clara. There is no need to take things that belong to others.*/	
	== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
	THEN @51 /*Fear no evil with my hamster near. Boo protects us and I protect Boo!*/
	== YF_CLARA @510 /*I'm willing to go with you, but wouldn't I just slow you down?*/
END
		++ @73 /*Okay, you've convinced me. We'll see you around. Good luck!*/ GOTO YF_Clara22
		++ @74 /*You're still welcome to come with me. I was once a novice too.*/ DO ~JoinParty()~ EXIT
		++ @75 /*After my little rampage, you're one of the best thieves still alive in this city and I could use a scout.*/ DO ~JoinParty()~ EXIT
	
APPEND YF_CLARA IF ~~ THEN YF_Clara22
	SAY @76 /*Thanks. Maybe I'll see you at the Five Flagons if you stop by for a play.*/
	IF ~!Global("PLAYHOUSE","GLOBAL",1)~ THEN DO ~EscapeAreaMove("AR0509",470,404,E)~ EXIT
	IF ~Global("PLAYHOUSE","GLOBAL",1)~ THEN DO ~EscapeAreaMove("AR0522",470,404,E)~ EXIT
	END
END

//If she's in the inn but you've never gotten her
APPEND YF_clara IF ~Global("YF_ClaraLives","GLOBAL",3)~ THEN YF_ClaraEnter1
	SAY @77 /*Hi, <CHARNAME>, how can I help you? Do you need something?*/
		++ @78 /*No, I'm just saying hi. How are you?*/ GOTO YF_ClaraEnter2
		++ @79 /*Yes, I want you to come with me.*/ GOTO YF_ClaraEnter3
	END
	
	IF ~~ THEN YF_ClaraEnter2
	SAY @80 /*Don't worry about me. I'm just hanging out and enjoying being alive. There's always something to do... something to see... someone to rob. Feel free to hang around but I really should get back to work.*/ 
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN YF_ClaraEnter3
	SAY @81 /*Join you? You want me to give up my comfy and profitable life to go seek death with you? To explore slimy, trap-filled dungeons crawling with undead and battle powerful monsters with the fate of the world hanging in the balance? My price is 1000 gold.*/
		+~PartyGoldGT(999)~+ @82 /*Okay.*/ DO ~ActionOverride("YF_clara",TakePartyGold(1000)) ActionOverride("YF_clara",DestroyGold(1000))~ GOTO YF_ClaraEnter4
		+~CheckStatGT(Player1,13,CHR) PartyGoldGT(499)~+ @83 /*How about 500?*/ DO ~ActionOverride("YF_clara",TakePartyGold(500)) ActionOverride("YF_clara",DestroyGold(500))~ GOTO YF_ClaraEnter4
		++ @84 /*Nah, you're not worth that. See you around.*/ GOTO YF_ClaraEnter5
		++ @85 /*Sorry, I don't have that kind of cash.*/ GOTO YF_ClaraEnter5
	END 
		
	IF ~~ THEN YF_ClaraEnter4
	SAY @86 /*Yaay! Okay, let me just get my things.*/
	IF ~~ THEN DO ~ApplySpell("YF_Clara",HEAL_NO_VISUAL) JoinParty()~ EXIT
	END
	
	IF ~~ THEN YF_ClaraEnter5
	SAY @87 /*Fine with me. Feel free to come by and say hello again in the future. If you manage not to die...*/
	IF ~~ THEN EXIT
	END

END

//If you meet Clara at Renal's hideout.
CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(0) !InParty("YF_Clara") Global("YF_ClaraRenal","GLOBAL",1) Global("YF_RenalClara","GLOBAL",1) !Global("YF_RenalOHHFAK","GLOBAL",2)~ THEN RENAL YF_clararenalnotinparty
	@88 /*Ahh, <CHARNAME>, you are here. I have someone with me who belongs to you. She's been telling me wonderful stories about tombs and vampires and most importantly, your destruction of them.*/
	= @89 /*This girl is an entertaining creature. Who knew that such a one was wasting away in the lowest levels of my organization? I must thank you for bringing her to my attention, though I'm a little disappointed that you came back for her so soon.*/
	= @90 /*However, anyone who kills vampires is a friend of mine, so the girl is yours to take. No discussion or bargaining required. I will not keep you any longer when there are so many more vampires to slay.*/
	== YF_CLARA @91 /*Thank you so much, sir! I promise you won't regret this!*/
 DO ~SetGlobal("YF_ClaraRenal","GLOBAL",2) SetGlobal("YF_RenalClara","GLOBAL",2) ApplySpell("YF_Clara",HEAL_NO_VISUAL) JoinParty()~ EXIT