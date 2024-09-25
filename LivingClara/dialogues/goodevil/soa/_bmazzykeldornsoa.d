CHAIN //First Keldorn-Mazzy dialogue.
IF WEIGHT #-1 ~Global("_bmazkel","GLOBAL",2)~ THEN KELDORJ _bkeldmaz1
@1 /*Mazzy, my girl, you are a halfling of most extraordinary courage! I am proud to serve beside you!*/
== MAZZYJ @2 /*Sir Keldorn, I have idolized you since I was a girl! You don't know how much it means to hear you say that!*/
== KELDORJ @3 /*You are too kind, but thank me not. You deserve this praise and more. You have earned it!*/
= @4 /*You may not realize this, Mazzy, but the Order keeps track of many individuals in the lands around Athkatla and when we met, I remembered your profile: numerous heroic deeds, generally unblemished conduct, knighted for bravery... The list would be impressive by itself but it is unheard-of for a halfling, especially a halfling woman.*/
= @5 /*I was curious to discover if your reputation was deserved, but from what I have seen, it truly is. So what I am trying to say, and my apologies for the delay in doing so, is that it is an honor to travel in your company, and I am pleased to have finally met you.*/
END
	+ ~ReputationGT(Player1,12)~ + @6 /*Keldorn, has the Order collected information on my deeds as well?*/ GOTO _bkeldmaz2
	+ ~ReputationGT(Player1,8) !ReputationGT(Player1,12)~ + @6 /*Keldorn, has the Order collected information on my deeds as well?*/ GOTO _bkeldmaz3
	+ ~!ReputationGT(Player1,8)~ + @6 /*Keldorn, has the Order collected information on my deeds as well?*/ GOTO _bkeldmaz4
	++ @7 /**Say nothing.**/ EXTERN MAZZYJ _bkeldmaz5
	++ @8 /*Great. I'm traveling with a spy.*/ EXTERN MAZZYJ _bkeldmaz5
	+ ~ReputationGT(Player1,12)~ + @9 /*Does the Order ever share such records? I assume you've heard of me and I would be interested to know what you've learned about my heritage.*/ GOTO _bkeldmaz2
	+ ~ReputationGT(Player1,8) !ReputationGT(Player1,12)~ + @9 /*Does the Order ever share such records? I assume you've heard of me and I would be interested to know what you've learned about my heritage.*/ GOTO _bkeldmaz3
	+ ~!ReputationGT(Player1,8)~ + @9 /*Does the Order ever share such records? I assume you've heard of me and I would be interested to know what you've learned about my heritage.*/ GOTO _bkeldmaz4
	
APPEND KELDORJ IF ~~ THEN _bkeldmaz2
	SAY @10 /*You are well-known to us, <CHARNAME>, and we are pleased to have you fighting against evil. But we can talk about you another time.*/
	IF ~~ THEN EXTERN MAZZYJ _bkeldmaz5
	END


	IF ~~ THEN _bkeldmaz3
	SAY @11 /*You are known to us as well, <CHARNAME>, but whether you will turn out to be our ally is still undecided. We can talk about you another time.*/
	IF ~~ THEN EXTERN MAZZYJ _bkeldmaz5
	END


	IF ~~ THEN _bkeldmaz4
	SAY @12 /*Yes, the Order keeps track of the evil and the villainous as well, <CHARNAME>. But we can talk about you another time.*/
	IF ~~ THEN EXTERN MAZZYJ _bkeldmaz5
	END
END

CHAIN MAZZYJ _bkeldmaz5
	@13 /*I am at a loss for words. As I said before, I have followed your adventures my whole life, but I did not think you even knew that I existed.*/
	= @14 /*However, you are incorrect in one thing, Sir Keldorn; we have met before. It was a very long time ago and I looked quite different, so you are forgiven for not remembering.*/
	== KELDORJ @15 /*Mazzy, please, you do not need to call me "sir," especially when you are a knight as well. But you have me at a loss. Where have we met?*/
	== MAZZYJ @16 /*When I was a little girl living in Trademeet, I sometimes travelled to visit family and friends on farms outside of town. That's where I was when we received word of a force of hobgoblins in the area.*/
	= @17 /*We all grabbed what we could carry and set off. Some people went to warn the nearby farms and houses while several other groups joined ours, all of us running toward Trademeet as fast as we could.*/
	= @18 /*We were crossing a field when someone spotted a group of hobgoblins. It was not a large force, so the adults decided to fight them, our whole group moving into the woods on the edge of the field for better protection.*/
	= @19 /*Everyone, that is, except me. I had collapsed from exhaustion and no one noticed I was missing until they were already far away. I was so scared; the hobgoblins were almost upon me and I had nowhere to hide.*/
	== KELDORJ @20 /*That was you? I remember that day. The Order of the Radiant Heart had been tracking the hobgoblin forces for some time when we realized they were headed for Trademeet. My fellow knights and I split up to help the fleeing travelers and I found a group of halflings at the edge of the forest.*/
	= @201 /*Their defenses looked secure, but everyone was shouting about a girl who had gone missing in the field. Several of the warriors readied themselves to find you, but they were not mounted and the hobgoblins were approaching much too fast.*/
	= @21 /*So I went in their stead, riding toward you at full speed. When faced with a knight and horse in battle armor most of the hobgoblins fled, except for one who shot an arrow at you. The creature was probably hoping that I would give up the chase if you were hurt.*/
	== MAZZYJ @22 /*He was correct. The arrow grazed me and you dismounted to check my wound. The other hobgoblins found their courage and fired on us all at once.*/
	= @23 /*You picked me up and turned your back to the arrows which bounced off your armour and helmet. I remember thinking you were so brave.*/
	== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN
	@24 /*(Keldorn is so brave, Keldorn is so handsome. When I grow up, I want to marry him.)*/
	== KELDORJ @25 /*You flatter me, Mazzy. I was wearing full plate from head to toe, so I was in no danger. They were, after all, only hobgoblins. I was more worried about you. I needed to remount my horse to attack and catch them but I could not leave you there.*/
	= @26 /*Fortunately, your people soon arrived and fired a volley of their own. Some hobgoblins were hit, the rest fled, and the skirmish was over.*/
	== MAZZYJ @27 /*And that was that. You went on to join the fight, and I returned to Trademeet, but that was my first introduction to the Order of the Radiant Heart, and I never forgot it. If only I could join as well.*/
	== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1) !Global("AnomenIsKnight","GLOBAL",1)~ THEN
	@28 /*You cannot become a member of the Order, foolish halfling, the Order is restricted to humans.*/
	== KELDORJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1) !Global("AnomenIsKnight","GLOBAL",1)~ THEN
	@29 /*It has been so far, Anomen, but such things can change.*/
	== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN 
	@30 /*You would be a member of the Order, halfling? Hah! Why would they take you when they would not accept me?*/
	== KELDORJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
	@31 /*Your failings are not hers, Anomen. You'd best remember that.*/
	== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsKnight","GLOBAL",1)~ THEN
	@32 /*The Order would be honored by your presence, Mazzy, but unfortunately its membership is restricted to humans.*/
	== KELDORJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsKnight","GLOBAL",1)~ THEN
	@29 /*It has been so far, Anomen, but such things can change.*/
	== KELDORJ @33 /*You really wish to join the Order, Mazzy?*/
	== MAZZYJ @34 /*It has been my life's goal for many years.*/
	== KELDORJ @35 /*It will not be easy.*/
	== MAZZYJ @36 /*If it were easy then everyone would do it.*/
	== KELDORJ @37 /*Ha! That is well said, Mazzy. Give me a little time; I must think on our best strategy.*/
	DO ~SetGlobal("_bmazkel","GLOBAL",3) SetGlobal("_bMazzyJoinOrder","GLOBAL",1) SetGlobal("ExpBKeldorn2","LOCALS",1)~ //disables the first Keldorn-Mazzy TOB banter
EXIT

//2nd Conversation
CHAIN IF WEIGHT #-1 ~Global("_bmazkel","GLOBAL",5)~ THEN KELDORJ _bkeldmaz6
@38 /*Mazzy, if you truly wish to join the Order, we must speak with Prelate Wessalen. I will agree to sponsor you.*/
	== MAZZYJ @39 /*Really, Keldorn? Oh thank you, thank you.*/
	== KELDORJ @40 /*I do not know how he will react though. He has been receptive to the idea of adding non-humans to the Order in the past, but so far nothing has come of it.*/
	== MAZZYJ @41 /*Just having the chance is more than I ever expected.*/
	= @42 /*I am ready.*/
	DO ~SetGlobal("_bMazzyJoinOrder","GLOBAL",2) SetGlobal("_bmazkel","GLOBAL",6) AddJournalEntry (@1014,QUEST)~ /*The First Step
	After much thought, Keldorn has said that he will help Mazzy join the Order of the Radiant Heart. We must go to the order and talk to Prelate Wessalen.*/
EXIT

//Prelate Conversations - all additions
EXTEND_BOTTOM HPRELATE 24 
	+ ~Global("_bMazzyJoinOrder","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @43 /*There is actually. Keldorn Firecam wishes to speak with you.*/ GOTO _bkeldmaz7A
	+ ~Global("_bMazzyNeedsSponsors","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @73 /*We have found a second sponsor for Mazzy.*/ GOTO _bkeldmaz13
	+ ~Global("_bMazzyKillEye","GLOBAL",1) Dead("UnseeingEye") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @86 /*I have found and defeated the Unseeing Eye, a blind beholder. The cult will not survive without its god.*/ GOTO _bMazzyOrderQuests2
	+ ~Global("_bMazzyAvengeParty","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Dead("shadel") Dead("ShaDra01")~ + @89 /*The Shade Lord and his Shadow Dragon are dead. Mazzy's party is avenged.*/ GOTO _bMazzyOrderQuests3
	+ ~Dead("cefald01") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyTrademeet","GLOBAL",1)~ + @91 /*Trademeet is saved. The animal attacks have stopped.*/ GOTO _bMazzyOrderQuests4
	+ ~Global("_bMazzyToSeeRyan","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @95 /*We have done everything Sir Ryan Trawl has asked of us. He said we should return to you.*/ GOTO _bMazzyOrderQuests6
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Imoen2") !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bAlmostRescuedImoen
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bRescuedImoenforPrelate
END

EXTEND_BOTTOM HPRELATE 32
	+ ~Global("_bMazzyJoinOrder","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @43 /*There is actually. Keldorn Firecam wishes to speak with you.*/ GOTO _bkeldmaz7A
	+ ~Global("_bMazzyNeedsSponsors","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @73 /*We have found a second sponsor for Mazzy.*/ GOTO _bkeldmaz13
	+ ~Global("_bMazzyKillEye","GLOBAL",1) Dead("UnseeingEye") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @86 /*I have found and defeated the Unseeing Eye, a blind beholder. The cult will not survive without its god.*/ GOTO _bMazzyOrderQuests2
	+ ~Global("_bMazzyAvengeParty","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Dead("shadel") Dead("ShaDra01")~ + @89 /*The Shade Lord and his Shadow Dragon are dead. Mazzy's party is avenged.*/ GOTO _bMazzyOrderQuests3
	+ ~Dead("cefald01") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyTrademeet","GLOBAL",1)~ + @91 /*Trademeet is saved. The animal attacks have stopped.*/ GOTO _bMazzyOrderQuests4
	+ ~Global("_bMazzyToSeeRyan","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @95 /*We have done everything Sir Ryan Trawl has asked of us. He said we should return to you.*/ GOTO _bMazzyOrderQuests6
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Imoen2") !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bAlmostRescuedImoen
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bRescuedImoenforPrelate
END

EXTEND_BOTTOM HPRELATE 33
	+ ~Global("_bMazzyJoinOrder","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @43 /*There is actually. Keldorn Firecam wishes to speak with you.*/ GOTO _bkeldmaz7A
	+ ~Global("_bMazzyNeedsSponsors","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @73 /*We have found a second sponsor for Mazzy.*/ GOTO _bkeldmaz13
	+ ~Global("_bMazzyKillEye","GLOBAL",1) Dead("UnseeingEye") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @86 /*I have found and defeated the Unseeing Eye, a blind beholder. The cult will not survive without its god.*/ GOTO _bMazzyOrderQuests2
	+ ~Global("_bMazzyAvengeParty","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Dead("shadel") Dead("ShaDra01")~ + @89 /*The Shade Lord and his Shadow Dragon are dead. Mazzy's party is avenged.*/ GOTO _bMazzyOrderQuests3
	+ ~Dead("cefald01") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyTrademeet","GLOBAL",1)~ + @91 /*Trademeet is saved. The animal attacks have stopped.*/ GOTO _bMazzyOrderQuests4
	+ ~Global("_bMazzyToSeeRyan","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @95 /*We have done everything Sir Ryan Trawl has asked of us. He said we should return to you.*/ GOTO _bMazzyOrderQuests6
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Imoen2") !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bAlmostRescuedImoen
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bRescuedImoenforPrelate
END

EXTEND_TOP HPRELATE 62
	+ ~Global("_bMazzyJoinOrder","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @43 /*There is actually. Keldorn Firecam wishes to speak with you.*/ GOTO _bkeldmaz7A
	+ ~Global("_bMazzyNeedsSponsors","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @73 /*We have found a second sponsor for Mazzy.*/ GOTO _bkeldmaz13
	+ ~Global("_bMazzyKillEye","GLOBAL",1) Dead("UnseeingEye") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @86 /*I have found and defeated the Unseeing Eye, a blind beholder. The cult will not survive without its god.*/ GOTO _bMazzyOrderQuests2
	+ ~Global("_bMazzyAvengeParty","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Dead("shadel") Dead("ShaDra01")~ + @89 /*The Shade Lord and his Shadow Dragon are dead. Mazzy's party is avenged.*/ GOTO _bMazzyOrderQuests3
	+ ~Dead("cefald01") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyTrademeet","GLOBAL",1)~ + @91 /*Trademeet is saved. The animal attacks have stopped.*/ GOTO _bMazzyOrderQuests4
	+ ~Global("_bMazzyToSeeRyan","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @95 /*We have done everything Sir Ryan Trawl has asked of us. He said we should return to you.*/ GOTO _bMazzyOrderQuests6
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Imoen2") !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bAlmostRescuedImoen
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bRescuedImoenforPrelate
END

EXTEND_TOP HPRELATE 63
	+ ~Global("_bMazzyJoinOrder","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @43 /*There is actually. Keldorn Firecam wishes to speak with you.*/ GOTO _bkeldmaz7A
	+ ~Global("_bMazzyNeedsSponsors","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @73 /*We have found a second sponsor for Mazzy.*/ GOTO _bkeldmaz13
	+ ~Global("_bMazzyKillEye","GLOBAL",1) Dead("UnseeingEye") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @86 /*I have found and defeated the Unseeing Eye, a blind beholder. The cult will not survive without its god.*/ GOTO _bMazzyOrderQuests2
	+ ~Global("_bMazzyAvengeParty","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Dead("shadel") Dead("ShaDra01")~ + @89 /*The Shade Lord and his Shadow Dragon are dead. Mazzy's party is avenged.*/ GOTO _bMazzyOrderQuests3
	+ ~Dead("cefald01") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyTrademeet","GLOBAL",1)~ + @91 /*Trademeet is saved. The animal attacks have stopped.*/ GOTO _bMazzyOrderQuests4
	+ ~Global("_bMazzyToSeeRyan","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @95 /*We have done everything Sir Ryan Trawl has asked of us. He said we should return to you.*/ GOTO _bMazzyOrderQuests6
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Imoen2") !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bAlmostRescuedImoen
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bRescuedImoenforPrelate
END

EXTEND_TOP HPRELATE 64 //The pre-chapter Imoen shouldn't ever trigger.
	+ ~Global("_bMazzyJoinOrder","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @43 /*There is actually. Keldorn Firecam wishes to speak with you.*/ GOTO _bkeldmaz7A
	+ ~Global("_bMazzyNeedsSponsors","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @73 /*We have found a second sponsor for Mazzy.*/ GOTO _bkeldmaz13
	+ ~Global("_bMazzyKillEye","GLOBAL",1) Dead("UnseeingEye") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @86 /*I have found and defeated the Unseeing Eye, a blind beholder. The cult will not survive without its god.*/ GOTO _bMazzyOrderQuests2
	+ ~Global("_bMazzyAvengeParty","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Dead("shadel") Dead("ShaDra01")~ + @89 /*The Shade Lord and his Shadow Dragon are dead. Mazzy's party is avenged.*/ GOTO _bMazzyOrderQuests3
	+ ~Dead("cefald01") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyTrademeet","GLOBAL",1)~ + @91 /*Trademeet is saved. The animal attacks have stopped.*/ GOTO _bMazzyOrderQuests4
	+ ~Global("_bMazzyToSeeRyan","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @95 /*We have done everything Sir Ryan Trawl has asked of us. He said we should return to you.*/ GOTO _bMazzyOrderQuests6
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Imoen2") !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bAlmostRescuedImoen
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bRescuedImoenforPrelate
END

CHAIN HPRELATE _bkeldmaz7A
@440 /*Of course, I would be pleased to speak with him.*/
DO ~SetGlobal("_bMazzyJoinOrder","GLOBAL",3)~
EXIT

CHAIN IF WEIGHT #-10 ~Global("_bMazzyJoinOrder","GLOBAL",3)~ THEN HPRELATE _bkeldmaz7B
@44 /*Hello, old friend, you hardly need an introduction. What is on your mind?*/
== KELDORJ @45 /*I have good news. You tasked us with finding the noblest holy warrior in Amn as the first official non-human member of the Order, and I have a candidate.*/
== HPRELATE @46 /*That is great news. I have been quietly spreading the word about our plans and many are waiting with anticipation to see who we will choose. Some great fighting-cleric with noble elvish blood? Perhaps an ancient dwarven warrior, crushing his foes with a blessed hammer?*/
== KELDORJ @47 /*Prelate, allow me to introduce the knight Mazzy Fentan. You know of her, of course.*/
== HPRELATE @48 /*Of course. Welcome to the Order. Your many deeds are well-known to us all.*/
= @49 /*Keldorn, perhaps your friends would be willing to take a tour of the Order while we discuss some business?*/
== MAZZYJ @50 /*Of course, Prelate. Just being inside these halls is an honour.*/
== HPRELATE @51 /*Wonderful. Head through that door and one of the squires will show you around.*/
= @52 /*...Let us just wait for them to leave and shut the door, firmly so no one can listen in... My old friend, we cannot choose Mazzy. We will be the laughingstock of the city!*/
== KELDORJ @53 /*Why not? She is a knight, a great warrior, and a paladin of her god in all but name. Indeed, her deeds are known throughout the land and I have discovered that the stories did not lie. Since Mazzy is already one of the foremost names on our list of Allies of the Light, this seems the logical next step. I will be her sponsor.*/
== HPRELATE @54 /*Why must you make this difficult? She's a common halfling peasant-woman. Mazzy Fentan is not what the great houses of Athkatla are expecting.*/
== KELDORJ @55 /*I did not realize politics had become more important than our duty. You wanted to add a great non-human hero to the Order and now that I have found one, you are wavering.*/
== HPRELATE @56 /*You are right, old friend, but perhaps we can compromise. We will give her some noble tasks to accomplish while we find a more palatable first non-human for our Order. Once we have found one, then she can be the second.*/
== KELDORJ @57 /*Give Mazzy whatever tasks you require. I will do my utmost to aid her in their quick completion.*/
== HPRELATE @58 /*Good. We can work with this. Let us call your friends back in.*/
DO ~SetGlobal("_bMazzyJoinOrder","GLOBAL",4)~
EXIT

APPEND HPRELATE IF WEIGHT #-10 ~Global("_bMazzyJoinOrder","GLOBAL",4) Global("_bMazzyPrelateTalkFix","GLOBAL",1)~ THEN _bkeldmaz8
SAY @59 /*Mazzy, Keldorn has spoken for you and has agreed to be your sponsor. However, given this momentous break of tradition, we will require a second sponsor as well.*/
	IF ~Global("AnomenIsKnight","GLOBAL",1) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("_bMazzyPrelateTalkFix","GLOBAL",2) SetGlobal("_bMazzyJoinOrder","GLOBAL",5)~ EXTERN ANOMENJ _bkeldmaz9
	IF ~OR(3) !Global("AnomenIsKnight","GLOBAL",1) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("_bMazzyPrelateTalkFix","GLOBAL",2) SetGlobal("_bMazzyJoinOrder","GLOBAL",5)~ GOTO _bkeldmaz10
	END
END

CHAIN ANOMENJ _bkeldmaz9
@60 /*I will speak for the halfling.*/
== MAZZYJ @61 /*You? I thought you hated me?*/
== ANOMENJ @62 /*I admit I was jealous of you, Mazzy. I was offended that you, a tiny halfling women of common birth, should be a knight when I was not.*/
= @63 /*But I have made my peace with it. After all, we are both knights now, are we not?*/
= @64 /*You are a great warrior with a noble spirit, and you will make a fine addition to our ranks.*/
== MAZZYJ @65 /*Thank you. This means so much to me.*/
== HPRELATE @66 /*You have your sponsors, Mazzy, but there are still tasks you must complete before you can be one of us. Speak to me again in a moment.*/
DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",2)~
EXIT

CHAIN HPRELATE _bkeldmaz10
@67 /*Do you have someone else to stand for you?*/
END
	++ @68 /*I guess we'd better start looking.*/ DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",1) AddJournalEntry (@1015,QUEST)~ /*The Next Step
	Prelate Wessalen has agreed to let Mazzy into the Order if we can find another noble knight to sponsor her. Apparently, even the Order balks at letting halflings join their ranks.*/ EXIT
	+ ~Global("AnomenIsKnight","GLOBAL",0) Global("AnomenIsNotKnight","GLOBAL",0) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ + @69 /*What about you, Anomen?*/ EXTERN ANOMENJ _bkeldmaz11
	+ ~Global("PaladinOrder","GLOBAL",1)~ + @70 /*I will sponsor Mazzy.*/ EXTERN MAZZYJ _bkeldmaz12
	
CHAIN ANOMENJ _bkeldmaz11
@71 /*I am just a squire, <CHARNAME>, not a knight like the giant Mazzy Fentan. How could an unimportant foot soldier like myself speak for one so worthy? Go find someone else.*/
DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",1) AddJournalEntry (@1015,QUEST)~ 
EXIT

CHAIN MAZZYJ _bkeldmaz12
@72 /*Oh thank you, <CHARNAME>!*/
== HPRELATE @66 /*You have your sponsors, Mazzy, but there are still tasks you must complete before you can be one of us. Speak to me again in a moment.*/
DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",2)~
EXIT


//Prelate Conversations - after found a sponsor

CHAIN HPRELATE _bkeldmaz13
@74 /*Oh? Who is it?*/
END
	++ @75 /*Nevermind, we will keep looking.*/ EXIT
	+ ~Global("AnomenIsKnight","GLOBAL",0) Global("AnomenIsNotKnight","GLOBAL",0) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ + @69 /*What about you, Anomen?*/ EXTERN ANOMENJ _bkeldmaz11
	+ ~Global("AnomenIsKnight","GLOBAL",1) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ + @69 /*What about you, Anomen?*/ EXTERN ANOMENJ _bkeldmaz9
	+ ~Global("PaladinOrder","GLOBAL",1)~ + @70 /*I will sponsor Mazzy.*/ EXTERN MAZZYJ _bkeldmaz12
	+ ~Global("_bGarrenSponsorsMazzy","GLOBAL",1)~ + @76 /*Garren Windspear has agreed to sponsor Mazzy. I have his note here.*/ GOTO _bkeldmaz14

CHAIN HPRELATE _bkeldmaz14
@77 /*We will of course confirm this, but you seem to have your sponsors, Mazzy.*/
= @78 /*However, there are still tasks you must complete before you can be one of us. Speak to me again in a moment.*/
DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",2)~
EXIT 

APPEND HPRELATE IF WEIGHT #-3 ~Global("_bMazzyNeedsSponsors","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN _bkeldmaz15
SAY @79 /*Mazzy, you have your sponsors to join the Order. However, we must ensure that our decision is beyond approach when adding our first non-human member.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",3)~ GOTO _bMazzyOrderQuests1
	END
END

CHAIN HPRELATE _bMazzyOrderQuests1 
@80 /*Here is what you need to do:*/
== HPRELATE IF ~!Dead("UnseeingEye")~ THEN @81 /*The Cult of the Unseeing Eye still plagues the city. Your mentor, Keldorn, was sent on a mission to investigate and end this threat but he has not yet completed it. You must help him do so.*/
DO ~SetGlobal("_bMazzyKillEye","GLOBAL",1)~
== HPRELATE IF ~OR(2) !Dead("shadel") !Dead("ShaDra01")~ THEN @82 /*You have new companions now, but the Shade Lord and the Shadow Dragon Thaxll'ssillyia murdered your previous companions. They must be avenged. Go do so and then speak to me again.*/
DO ~SetGlobal("_bMazzyAvengeParty","GLOBAL",1)~
== HPRELATE IF ~!Dead("cefald01")~ THEN @83 /*Your home town of Trademeet is under attack by wild beasts. You must secure your home before we can proceed.*/
DO ~SetGlobal("_bMazzyTrademeet","GLOBAL",1)~
== HPRELATE IF ~Dead("shadel") Dead("ShaDra01") Dead("cefald01") Dead("UnseeingEye") Global("_bMazzyToSeeRyan","GLOBAL",0)~ THEN @84 /*I cannot think of anything at the moment, but speak with Sir Ryan Trawl. He may have a quest for you.*/
DO ~SetGlobal("_bMazzyToSeeRyan","GLOBAL",1)~
== MAZZYJ @85 /*I will do so immediately.*/
DO ~AddJournalEntry (@1016,QUEST)~ /*Another barrier
Although Mazzy has been sponsored to join the Order, Prelate Wessalen asked her to complete a series of quests to prove her worth. I am starting to wonder if the man truly intends to allow Mazzy membership at all. However, this clearly means much to my companion and I intended to complete most of these tasks anyway.*/
EXIT


APPEND HPRELATE IF ~~ THEN _bMazzyOrderQuests2
SAY @87 /*Excellent. The victory of light over shadow is always to be celebrated.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyKillEye","GLOBAL",2)~ GOTO _bMOQ2
	END
	
	IF ~~ THEN  _bMOQ2
	SAY @88 /*I have another task for you.*/
	IF ~~ THEN GOTO  _bMazzyOrderQuests1
	END
	
	IF ~~ THEN _bMazzyOrderQuests3
	SAY @90 /*Wonderful. You are true heroes.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyAvengeParty","GLOBAL",2)~ GOTO _bMOQ2
	END

	IF ~~ THEN _bMazzyOrderQuests4
	SAY @92 /*So I have heard, and the order thanks you.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyTrademeet","GLOBAL",2)~ GOTO _bMOQ2
	END
END

EXTEND_BOTTOM KAYL2 31
	+ ~Global("_bMazzyToSeeRyan","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @93 /*Prelate Wessalen said you might have something else for me to do.*/ GOTO _bMazzyOrderQuests5
END
	
CHAIN KAYL2 _bMazzyOrderQuests5
@94 /*No, there are no matters which require your attention. I suggest you speak with the Prelate again.*/
DO ~SetGlobal("_bMazzyToSeeRyan","GLOBAL",2)~
EXIT

CHAIN HPRELATE  _bMazzyOrderQuests6
@96 /*Really? Well, this is inconvenient.*/
DO ~SetGlobal("_bMazzyToSeeRyan","GLOBAL",3)~
= @97 /*Hmm, there must be something else...*/
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @98 /*Perhaps she has done everything the Order requires?*/
== HPRELATE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @99 /*No, no... yes! Sir Mazzy, your friend, <CHARNAME>, <PRO_HESHE> needs to rescue that maiden, Imoen, from an evil wizard.*/
== HPRELATE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @100 /*You are a knight, go rescue your maiden. We will speak more when you return.*/
== MAZZYJ IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @101 /*I will accomplish this and return immediately.*/
DO ~SetGlobal("_bMazzyMustRescueImoen","GLOBAL",1)~
== HPRELATE IF ~OR(2) GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%) !Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @102 /**sigh* She has done everything that we require. Mazzy, congratulations, you are now a member of the Order of the Radiant Heart.*/
== MAZZYJ IF ~OR(2) GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%) !Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @103 /*Thank you, I have dreamed of this for so long. You will not regret it.*/
DO ~SetGlobal("_bMazzyJoinOrder","GLOBAL",6) AddXPObject("Mazzy",250000) ReputationInc(1) AddJournalEntry(@1017,QUEST_DONE)~ /*A Member At Last
The Order of the Radiant Heart has finally run out of excuses to keep Mazzy from joining their illustrious membership. If the prelate had realized her stubbornness earlier, he could have saved us all a lot of trouble. But I am pleased to know that my friend has finally realized her long held dream.*/
EXIT

CHAIN HPRELATE _bAlmostRescuedImoen
@105 /*Well then, where is she? Return when you have her.*/
EXIT

CHAIN HPRELATE _bRescuedImoenforPrelate
@106 /*Well then, where is she?*/
== IMOEN2J @107 /*Here! I'm right here! See! All rescued!*/
= @108 /*So has Mazzy completed every single wild-goose-chase you could possibly think of?*/
== HPRELATE @102 /**Sigh* Yes. She has done everything that we require. Mazzy, congratulations, you are now a member of the Order of the Radiant Heart.*/
== MAZZYJ @103 /*Thank you, I have dreamed of this for so long. You will not regret it.*/
DO ~SetGlobal("_bMazzyJoinOrder","GLOBAL",6) AddXPObject("Mazzy",250000) ReputationInc(1) AddJournalEntry(@1017,QUEST_DONE)~
EXIT

EXTEND_BOTTOM GARREN 62
	+ ~Global("_bMazzyNeedsSponsors","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @109 /*The Order of the Radiant Heart says that Mazzy needs another sponsor in order to become a member. Would you sponsor her?*/ GOTO _bGarrenSponsorsMaz
END

CHAIN GARREN _bGarrenSponsorsMaz
@110 /*After everything you have done for me? Of course, of course. I will write you a letter that you may take to them.*/
= @111 /*Good luck, Mazzy! The Order will be lucky to have you.*/
== MAZZYJ @112 /*Thank you, my lord.*/
DO ~SetGlobal("_bGarrenSponsorsMazzy","GLOBAL",1)~
EXIT


//1st Dialogue about Viconia  (These talks are also TOB)
CHAIN IF WEIGHT #-1 ~Global("_bmazkelvic","GLOBAL",1)~ THEN KELDORJ _bkmvic1
@113 /*Mazzy, I have seen you talking to the drow, and you should be more careful. Do not trust her.*/
DO ~SetGlobal("_bmazkelvic","GLOBAL",2)~
== MAZZYJ @114 /*Sir Keldorn, I understand your concern but I think it is misplaced. I do not believe that Viconia means us any harm.*/
== KELDORJ @115 /*It is a ruse! She will earn your trust and poison you while you sleep.*/
== MAZZYJ IF ~Global("MazzyVicFriends","GLOBAL",1)~ THEN @116 /*But she is an exile. <CHARNAME> said that she has not been with the drow for decades.*/
== KELDORJ IF ~Global("MazzyVicFriends","GLOBAL",1)~ THEN @117 /*<CHARNAME> thinks this because that is what the witch has told <PRO_HIMHER>. We have no proof that she is not a spy.*/
== MAZZYJ IF ~Global("MazzyVicFriends","GLOBAL",2)~ THEN @124 /*Keldorn, stop. Viconia is my friend and I too have some feeling for the presence of evil. Viconia is a drow and she is a priestess of Shar, but there is no malice in her. She is hurt and scared and has been offered nothing but cruelty and pain for far longer than either of us has been alive.*/
== MAZZYJ IF ~Global("MazzyVicFriends","GLOBAL",2)~ THEN @125 /*Viconia lashes out at the world because she expects the world to attack her as it always has, and I believe that she can be redeemed. She is already on that path.*/
== KELDORJ IF ~Global("MazzyVicFriends","GLOBAL",2)~ THEN @126 /*Perhaps. Or perhaps you are too soft and caring and it is blinding you to the truth. We have no proof that she is not a spy.*/
== MAZZYJ @118 /*You are right, Keldorn, we have no proof. But tell me this: I have followed your adventures since I was a child and you have always given others the benefit of the doubt. You have negotiated with kobolds and spoken with ogres. You have even bargained with undead and demons, provided that they did not offer harm.*/
= @119 /*Why are you not willing to offer Viconia the same chance?*/
== KELDORJ @120 /*Because she is a DROW!*/
== MAZZYJ @121 /*That is not an answer.*/
== KELDORJ @122 /*You should trust me.*/
== MAZZYJ @123 /*Then you should be prepared to offer her the same trust. There is more here than you are telling me, I know it. When you trust me enough to give me the whole story, I promise I will listen. Until then, I must make up my own mind.*/
EXIT

//Next Viconia Talk
CHAIN IF WEIGHT #-1 ~Global("_bmazkelvic","GLOBAL",4)~ THEN KELDORJ _bkmvic2
@127 /*<CHARNAME>, if you insist on traveling with the drow, then I have a tale that you must hear.*/
DO ~SetGlobal("_bmazkelvic","GLOBAL",5)~
== KELDORJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @128 /*Mazzy, you should hear this as well, and you might as well listen too, demon, since I know you are already.*/
== VICONIJ @129 /*You have a story that concerns me, male?*/
== KELDORJ @130 /*I do not know how well you know my history, but I was not the first of my family to join the Order of the Radiant Heart. I had a brother, my oldest sibling, who was ten years my senior. He was an inquisitor for Torm and I followed in his footsteps as best I could*/
= @131 /*Shortly after I joined the Order as a squire, my brother and I went on a mission together. Our leader was an older knight and while I am not at liberty to share the details, six of us were sent to retrieve an artifact of importance far to the north of here.*/
= @132 /*We had almost reached our destination when we encountered a party of drow. I do not know why they were there but when the battle was finished, only my brother and I still stood. We intended to carry our companions home and raise them, but drow are calculating and had finished each one in a manner that made this impossible. However, while we were checking the bodies, we discovered that one of the drow, a woman, was still alive as well.*/
= @133 /*We had no healer but we had a few potions, enough to keep the three of us from dying. Even then the drow was still very weak and one of her legs was broken. We decided we could not leave an injured woman alone in the mountains so we took her with us; we had no shortage of horses, pack mules, or supplies.*/
= @134 /*We still wanted to complete our mission but our map had been damaged in the fight and there was information which only our leader had known. It should have taken us another week to find what we sought, but it took four times that instead.*/
= @135 /*While we traveled, the drow regained her health and was able to ride without assistance, though we never gave her control over her animal. We tried to show her that we meant no harm; we shared our food and taught her some simple words.*/
= @136 /*Eventually we found what we were looking for and started our journey home. However, one day I went to scout the route ahead and when I returned, I found my brother barely breathing and the drow gone. She had taken the pack animals, our supplies, and the original purpose of our mission.*/
= @137 /*I could have followed her but there was a chance that my brother could be saved if I got him to a temple quickly. So I carried him, taking nothing but the clothes on my back and my brother's sword. However, I hoped in vain for when I reached civilization, they told me he could not even be raised. The drow witch had given him a foul poison that rotted him from the inside out, giving him the appearance of life even though his soul had fled.*/
= @138 /*It was a ruse to fool me into abandoning my mission and it was successful. She knew that I would choose my brother over my duty and she would escape unscathed.*/
= @139 /*So I buried my brother and returned to the Order a failure, expecting to be stripped of my rank. Yet that is not what happened. Instead of being punished, I was promoted, but I swore to never again trust any drow, and I have seen nothing since to change my mind. They are cruel creatures, without mercy or honor.*/
END
	++ @140 /*I am sorry about your brother, Keldorn, but that was not Viconia.*/ + _bkmvic3
	++ @141 /*You are damning the drow for your own failures. If you had protected your kin better, your brother would still live.*/ + _bkmvic3
	++ @142 /*Although I understand your feelings, Viconia bears no guilt in this.*/ + _bkmvic3
	+ ~!Race(Player1,HUMAN)~ + @143 /*My half-brother tried to kill me but you don't see me whining about humans. You should just get over it.*/ + _bkmvic3
	++ @144 /*You may be right that all drow are terrible, but I still need Viconia.*/ + _bkmvic3

CHAIN KELDORJ _bkmvic3
@145 /*It was a long time ago, but in my mind, the two faces are the same. When I look at you, witch, all I see is her.*/
== VICONIJ @146 /*It was not me, stupid male. You may be old for your kind, but I left the Underdark years before you were even born.*/
== KELDORJ @147 /*I suppose that is true, drow, but my suspicion remains. You cannot be trusted.*/
== VICONIJ @148 /*The female you met was also weak. I would have found a way to kill you before I left instead of allowing you to report back to your Order. */
END
	++ @149 /*You are not helping, Viconia.*/ EXTERN VICONIJ _bkmvic4
	++ @150 /*Well, yeah, that's only sensible.*/ EXTERN VICONIJ _bkmvic4
	++ @151 /**sigh* I give up.*/ EXTERN VICONIJ _bkmvic4
	
CHAIN VICONIJ _bkmvic4
@152 /*I have had many chances to kill <CHARNAME> and <PRO_HESHE> still breathes. That should prove my intentions.*/
== KELDORJ @153 /*It has been in your best interests for <CHARNAME> to live so far. In the future, you may find that you prefer us dead and then you will slit both of our throats while we sleep.*/
== VICONIJ @154 /*You think too little of me, male. I would not slit your throats. I would poison our food, drink the antidote, and then watch you both die together without any risk to myself.*/
= @155 /*But you do not understand my motivations. I do not want <CHARNAME> dead; if <PRO_HESHE> died, then I would again be hunted. <CHARNAME> is my protection, the reason I can sometimes sleep in peace. <PRO_HESHE> is what saves me from males like you and from any of my own people who might wish to do me harm.*/
== KELDORJ @156 /*You may not mean us harm but you are a being of pure evil. I am a paladin of Torm and you cannot fool me.*/
= @157 /*<CHARNAME>, I think you are being foolish, but it is your decision to make. However, do not expect me to sleep while the drow is on watch. Someone must stay vigilant and watch for her treachery.*/
== VICONIJ @158 /*Ha. I do not sleep during your watches either. Now we can at least stop pretending. We will both stay awake and watch the moon and stars together. I never get bored of seeing them.*/
= @159 /*But you cannot look at the stars, can you? If you stop watching me for an instant, I might slip a knife between your ribs.*/
END
	++ @160 /*Both of you can do what you like, but you will not fight or the survivor will have me to answer to.*/ EXTERN KELDORJ _bkmvic5 
	++ @161 /*Stop this bickering! You are giving me a headache.*/ EXTERN KELDORJ _bkmvic5 
	++ @162 /*When my quest is over, you may try to kill each other to your heart's content. Until then, I expect civility.*/ EXTERN KELDORJ _bkmvic5 
	++ @163 /*Be careful, someday you might actually be friends. For now, I require teamwork from you both.*/ EXTERN KELDORJ _bkmvic5 
	
CHAIN KELDORJ _bkmvic5 
@164 /*I understand, <CHARNAME>. You will have no trouble from me... for now.*/
== VICONIJ @165 /*You are so pathetic when you try to act with authority, <CHARNAME>, but do not worry. The old paladin will not die by my hand.*/
EXIT

//Interupted Keldorn/Viconia fight
INTERJECT BVICONI 111 _bStopKVFight
	== MAZZYJ IF ~GlobalGT("_bMazzyVicFriends","GLOBAL",0) InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @166 /*Keldorn, put down your sword! Do not do this!*/
	DO ~SetGlobal("ViconiaKeldornFight","GLOBAL",0)~
	== KELDORJ @167 /*Do not do what? Kill the drow? Why should I spare it?*/
	== MAZZYJ @168 /*Her, Keldorn, her name is Viconia. She is a woman, far from home, and she has not offered you harm. You cannot kill her; it goes against everything that you believe.*/
	= @169 /*Whatever her people may have done, she is alone, scared and seeking refuge.*/
	== BVICONI @170 /*Nonsense, tiny paladin, I may spend my days fleeing angry mobs and cowering in the shadows but everyone knows that at night I kidnap children from their beds and drink their blood in my dark rituals.*/
	== MAZZYJ @171 /*Viconia, please be silent. You are not helping.*/
	== KELDORJ @172 /*Viconia is a drow. I could kill an entire city full of drow and both Torm and the Order would support me. I will cut off her head and put in on a spear as a warning to her brethren.*/
	== MAZZYJ @173 /*She has not attacked you. As provocative as she can sometimes be, you cannot attack her first. That is the rule. That is the oath!*/
	== BVICONI @174 /*That is a stupid rule. If you do not attack your enemies first, they will kill you. Mercy is for the foolish and the dead.*/
	== MAZZYJ @175 /*I am trying to save your life! Why are you doing this? Do you not care?*/
	== BVICONI @176 /*No... not particularly. If this wael does not kill me today, then another will kill me tomorrow.*/
	= @177 /*I am good at avoiding death, but at some point I will fail... I will die. My soul will go screaming to Lolth and after torturing me for what seems like millennia, she will recreate my body and the cycle will repeat.*/
	= @178 /*There is no saving me, tiny Paladin.*/
	== KELDORJ @179 /*What lies are these, drow? Are you saying you cannot die? That your god will bring you back to life forever?*/
	== BVICONI @180 /*My ex-god, and you are incorrect; I have died many times. But every time she returned me to this surface-hell weak and powerless so I was forced to struggle for survival yet again. Only my form and memories remain the same.*/
	= @181 /*So if you are going to kill me, male, go ahead and get it over with. Or maybe I will win and live another day.*/
	== MAZZYJ @182 /*Please, Keldorn, do not do this.*/
	== KELDORJ @183 /*Very well, Mazzy, I will stay my sword... for you.*/
	== MAZZYJ @184 /*No, Keldorn, do it for yourself. If you killed Viconia in cold blood, the Order would not care, or even know. But you would know... and it would still be wrong.*/
EXIT
