BEGIN _bclarap

//Standard, not married to Cor or Anomen
APPEND _bclarap IF ~Global("KickedOut","LOCALS",0) !Global("_bLordAndLadyDelryn","GLOBAL",5) !Global("_bLadyDelryn","GLOBAL",1)~ THEN _bCP1
	SAY @0 /*So I guess this is it then?*/
		++ @1 /*No, I want you to stay.*/ DO ~JoinParty()~ EXIT
		+ ~!GlobalGT("_bClaraAnomenLove","GLOBAL",23) OR(2) Global("_bSleptWithClara","GLOBAL",7) Dead("aran")~ + @2 /*Yes, we should go our separate ways.*/ GOTO _bCP2
		+ ~!GlobalGT("_bClaraAnomenLove","GLOBAL",23) !Global("_bSleptWithClara","GLOBAL",7) Global("_bRenalClara","GLOBAL",0) !Global("_bRenalOHHFAK","GLOBAL",2) !Global("B!Alternatives","GLOBAL",6) !Global("D0AranHostile","GLOBAL",1) !GlobalGT("WorkingforBodhi","GLOBAL",0) !Global("AttackedThieves","GLOBAL",1) !Dead("aran")~ + @2 /*Yes, we should go our separate ways.*/ GOTO _bCP2
		+ ~!GlobalGT("_bClaraAnomenLove","GLOBAL",23) !Global("_bSleptWithClara","GLOBAL",7) !Global("B!Alternatives","GLOBAL",6) !Global("D0AranHostile","GLOBAL",1) !GlobalGT("WorkingforBodhi","GLOBAL",0) !Global("AttackedThieves","GLOBAL",1) !Dead("aran") OR(2) Global("_bRenalOHHFAK","GLOBAL",2) Global("_bRenalClara","GLOBAL",2)~ + @2 /*Yes, we should go our separate ways.*/ GOTO _bCP4
		+ ~!GlobalGT("_bClaraAnomenLove","GLOBAL",23) !Global("_bSleptWithClara","GLOBAL",7) !Dead("aran") OR(4) Global("B!Alternatives","GLOBAL",6) Global("D0AranHostile","GLOBAL",1) GlobalGT("WorkingforBodhi","GLOBAL",0) Global("AttackedThieves","GLOBAL",1)~ + @2 /*Yes, we should go our separate ways.*/ GOTO _bCP5
		+ ~GlobalGT("_bClaraAnomenLove","GLOBAL",23)~ + @2 /*Yes, we should go our separate ways.*/ GOTO _bCPA
		++ @93 /*No, I just want you to change what kind of thief you are.*/ GOTO _bClaraKitChange1
	END	
	
	IF ~~ THEN _bCP2
	SAY @3 /*Okay, I'll go to the bridge district then. You'll probably find me at the Five Flagons Inn.*/
		++ @4 /*No, I need you to stay right here. I'll be back soon.*/ GOTO _bCP3
		+~!Global("PLAYHOUSE","GLOBAL",1)~+ @5 /*Okay, I'll find you there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) SetGlobal("_bClaraWaiting","GLOBAL",0) EscapeAreaMove("AR0509",470,404,E)~ EXIT
		+~Global("PLAYHOUSE","GLOBAL",1)~+ @5 /*Okay, I'll find you there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) SetGlobal("_bClaraWaiting","GLOBAL",0) EscapeAreaMove("AR0522",470,404,E)~ EXIT
	END
	
	IF ~~ THEN _bCP3
	SAY @6 /*Here? Fine. But you have one day and then I'm leaving. I'll be safer somewhere else.*/ 
	IF ~~ THEN DO ~SetGlobal("_bClaraWaiting","GLOBAL",1) SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT)~ EXIT
	END
	
	IF ~~ THEN _bCP4
	SAY @7 /*You want me to go? Okay, I'll meet you at the Shadow Thief headquarters.*/
		++ @4 /*No, I need you to stay right here. I'll be back soon.*/ GOTO _bCP3
		++ @5 /*Okay, I'll find you there.*/DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0306",578,328,S) SetGlobal("_bClaraWaiting","GLOBAL",0)~ EXIT
	END
	
	IF ~~ THEN _bCP5
	SAY @70 /*Please don't abandon me. The Shadow Thieves will kill me!*/
	+ ~Gender(Player1,FEMALE)~ + @71 /*Sorry, I don't need you anymore. Goodbye.*/ GOTO _bCP6
	+ ~Gender(Player1,MALE)~ + @71 /*Sorry, I don't need you anymore. Goodbye.*/ GOTO _bCP8
	++ @72 /*All right, stop your whining. You can stay.*/ DO ~JoinParty()~ EXIT 
	END
	
	IF ~~ THEN _bCP6
	SAY @73 /*Please, I won't last three days! And I can't go home, I can't! Let me stay with you. I won't get in the way. I'll do anything, I promise. I mean if you were a man, I know I could convince you I was worthwhile, but even so I can wash your clothes, cook your food, and clean your weapons and armor!*/
		++ @74 /*Very well, I accept.*/ DO ~JoinParty()~ EXIT
		++ @75 /*Why let me being a woman stop you? You can still share my bed. Do it well enough and I might decide to keep you around.*/ GOTO _bCP7
		++ @76 /*Nope, sorry, goodbye.*/ GOTO _bCP2
	END

	IF ~~ THEN _bCP7
	SAY @77 /*Really? I've never done that before. But as Jenny always said, it doesn't matter what they look like, just show enthusiasm, do whatever they ask, and try to enjoy yourself. Okay, I'll do it. Next time we're at an inn. You won't regret this!*/
	IF ~~ THEN DO ~SetGlobal("_bSleepsWithClara","GLOBAL",1) JoinParty()~ EXIT
	END
END

CHAIN _bclarap _bCP8
	@78 /*Please, I won't last three days! And I can't go home, I can't! Let me stay with you. I won't get in the way. I'll do anything, I promise. I mean if you were a man, I know I could convince you I was worthwhile, but even so I can wash your clothes, cook your food, and clean your weapons and armor!*/
	= @79 /*I know! I can share your bed. Give me one night and you'll see that keeping me is worthwhile. Let me prove myself to you!*/
	END
	++ @76 /*Nope, sorry, goodbye.*/ GOTO _bCP2
	++ @80 /*Very well, I accept. Next time we're at an inn, you can show off your skills. Do it well enough and I might decide to keep you around.*/ DO ~SetGlobal("_bSleepsWithClara","GLOBAL",1) JoinParty()~ EXIT
	
CHAIN _bCLARAP _bCPA
@87 /*All right, I'll go to the Copper Coronet.*/
== _BCLARAP IF ~IfValidForPartyDialogue("Anomen")~ THEN @88 /*Don't wait too long to visit, Anomen.*/
== ANOMENJ IF ~IfValidForPartyDialogue("Anomen")~ THEN @89 /*You have my word. And please be careful. I do not like to think of a lady alone in such a place.*/
== _BCLARAP IF ~IfValidForPartyDialogue("Anomen")~ THEN @90 /*You are sweet to worry, but I can take care of myself.*/
== _BCLARAP IF ~!IfValidForPartyDialogue("Anomen")~ THEN @91 /*I can't let my darling Anomen forget about me now.*/
== _bCLARAP @92 /*See you later, <CHARNAME>.*/
END
	++ @4 /*No, I need you to stay right here. I'll be back soon.*/ DO ~SetGlobal("_bClaraCC","GLOBAL",1)~ GOTO _bCP3
	++ @5 /*Okay, I'll find you there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) SetGlobal("_bClaraWaiting","GLOBAL",0) EscapeAreaMove("AR0406",1478,1644,SE)~ 
EXIT


APPEND _bclarap IF WEIGHT #-1 ~Global("KickedOut","LOCALS",1) Global("_bClaraWaiting","GLOBAL",2)~ THEN _bCPW1
	SAY @8 /*I... hate... waiting. Can I come back yet?*/ 
		++ @9 /*No, not yet. Stay here a little longer.*/ EXIT
		++ @10 /*Yes. Sorry to make you wait.*/ DO ~SetGlobal("KickedOut","LOCALS",0) SetGlobal("_bClaraWaiting","GLOBAL",0) JoinParty()~ EXIT
	END
END


//If Clara is in the Five Flagons, the first time. (FFCUST09) should be Sterk.
APPEND _bclarap IF ~Global("KickedOut","LOCALS",1) !Dead("sterk") Global("_bClaraJoining","GLOBAL",0) Global("_bClaraWaiting","GLOBAL",0) OR(2) AreaCheck("AR0509") AreaCheck("AR0522")~ THEN _bClara0Join1
	SAY @11 /*Good timing, <CHARNAME>, we were just speaking about you. I was telling Lord Sterk how you saved me from Hexxat and Dragomir.*/
		++ @12 /*Anyone in my position would've done the same.*/ DO ~SetGlobal("_bClaraJoining","GLOBAL",1)~ EXTERN FFCUST09 _bClara0Join2
		++ @13 /*It's all part of being a hero.*/ DO ~SetGlobal("_bClaraJoining","GLOBAL",1)~ EXTERN FFCUST09 _bClara0Join2
		++ @14 /*And what a waste that was. They didn't even have any gold.*/ DO ~SetGlobal("_bClaraJoining","GLOBAL",1)~ EXTERN FFCUST09 _bClara0Join2
	END
END
	
CHAIN FFCUST09 _bClara0Join2
	@15 /*That was good work, <CHARNAME>. With heroes like you, it will soon be safe to travel the streets at night again. Too bad you were unable to save Caroline's parents.*/ 
	== _bclarap @16 /*Yes, I still cry at night sometimes thinking about them. However, as my father always told me, a young woman must be strong. I will persevere.*/
	= @17 /*My lord, I believe <CHARNAME> wishes to speak with me, and since <PRO_HESHE> saved my life, I can hardly refuse.*/
	== FFCUST09 @18 /*Of course. You two talk privately. I will concern myself with other things.*/ 
	== _bclarap @19 /*Hi <CHARNAME>! What are you doing here?*/
	END
		++ @20 /*Well, 'Caroline', I just wanted to say hello and see how you were.*/ EXTERN _bclarap _bClara0Join3
		++ @21 /*And now you've shifted your accent again. What game are you playing? Hexxat and Dragomir didn't kill your parents, did they?*/ EXTERN _bclarap _bClara0Join4
		++ @22 /*I want you to come with me.*/ EXTERN _bclarap _bClara0Join6
		++ @23 /*I want to get to know you a little better. Is there somewhere private we could go?*/ EXTERN _bclarap _bClara0Join7

APPEND _bclarap IF ~~ THEN _bClara0Join3
	SAY @24 /*I'm great, <CHARNAME>! Lord Sterk can't decide whether he wants to save me or sleep with me or both. With a little luck, he might move me into his household as a 'servant' and then the whole place will be mine!*/
	= @25 /*Of course, I can't make any progress while I'm sitting here talking to you. So... bye! Do feel free to stop by again.*/
	IF ~~ THEN EXIT
	END

	IF ~~ THEN _bClara0Join4
	SAY @26 /*Do you like the accent? I copied yours but made it sound more high and noble. I'm Caroline Aurora Lucia Rosena Silvershield of Beregost, the poor orphaned daughter of a minor cousin of the more famous Silvershields up north.*/
	= @27 /*We entered Athkatla at night and Hexxat and Dragomir attacked us. Our cowardly mercenaries fled and even though my father bravely fought on with his two most faithful servants and a household guard, they were far outmatched. The vampires slew them and my mother without mercy. They would've killed me too if you hadn't stepped in and saved me. Thanks again, by the way.*/
	= @28 /*Are you just saying hi or did you want something?*/
		++ @29 /*I'm just saying hi. How are you?*/ GOTO _bClara0Join3
		++ @30 /*But that's not what actually happened.*/ GOTO _bClara0Join5
		++ @22 /*I want you to come with me.*/ GOTO _bClara0Join6
		++ @23 /*I want to get to know you a little better. Is there somewhere private we could go?*/ GOTO _bClara0Join7
	END
	
	IF ~~ THEN _bClara0Join5
	SAY @31 /*Of course it is! I may have changed a detail or two but only to make a better story. You can't concern yourself too much with what you remember, <CHARNAME>. Everyone knows that memories can't be trusted.*/
	= @32 /*Ask three people to truthfully recount a conversation and all three will tell you something different. If our memories are just a story that we make up, then why not make them better?*/ 
	= @33 /*But I'm rambling. Did you want something?*/
		++ @34 /*No, I'm just saying hi. How are you?*/ GOTO _bClara0Join3
		++ @35 /*Yes, I want you to come with me.*/ GOTO _bClara0Join6
		++ @23 /*I want to get to know you a little better. Is there somewhere private we could go?*/ GOTO _bClara0Join7
	END
	
	IF ~~ THEN _bClara0Join6
	SAY @36 /*Join you? You want me to give up my comfy and profitable life to go seek death with you? To explore slimy, trap-filled dungeons crawling with undead and battle powerful monsters with the fate of the world hanging in the balance?*/
	= @37 /*No thanks. I like breathing... and living... and most of all I like not dying.*/
		++ @38 /*Anything I can do to change your mind?*/ GOTO _bClara0Join8
		++ @39 /*Oh, well then I guess I'll see you around.*/ GOTO _bClara0Join10
	END
	
	IF ~~ THEN _bClara0Join7
	SAY @40 /*I am not a whore, <CHARNAME>. I am Caroline Aurora Lucia Rosena Silvershield of Beregost. Just because I've fallen on hard times and lost my parents doesn't mean that I will give up my dignity.*/
	= @41 /*Now, good day. I have a lord waiting, one who desires to save me from my poor downtrodden life.*/ 
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bClara0Join8
	SAY @42 /*Sure. My price is 1,000 gold.*/
		+ ~PartyGoldGT(999) ~+ @43 /*Okay.*/ DO ~ActionOverride("_bclara",TakePartyGold(1000)) ActionOverride("_bclara",DestroyGold(1000))~ GOTO _bClara0Join9
		+ ~CheckStatGT(Player1,13,CHR) PartyGoldGT(499)~ + @44 /*How about 500?*/ DO ~ActionOverride("_bclara",TakePartyGold(500)) ActionOverride("_bclara",DestroyGold(500))~ GOTO _bClara0Join9
		++ @45 /*Nah, you're not worth that. See you around.*/ GOTO _bClara0Join10
		++ @46 /*Sorry, I don't have that kind of cash.*/ GOTO _bClara0Join10
	END 
END
	
CHAIN _bclarap _bClara0Join9
	@47 /*Yaay! Okay, let me just say goodbye to Lord Sterk.*/
	DO ~SetGlobal("KickedOut","LOCALS",0)~
	= @48 /*Excuse me, my lord? <CHARNAME> needs my help with some matters, and I can hardly refuse the <PRO_MANWOMAN> who rescued me. <CHARNAME> wishes to depart immediately, but I could not do so without saying goodbye to you and thanking you for all of your help. You are a true gentleman.*/ 
	== FFCUST09 @49 /*You must go? Well of course, my dear, you are very welcome. I'm glad that I could help. Do come back when you can.*/ 
	= @50 /*Take good care of her, <CHARNAME>, and make sure that she is safe.*/
	DO ~ActionOverride("_bclara",JoinParty())~
EXIT
	
APPEND _bclarap IF ~~ THEN _bClara0Join10
	SAY @51 /*Fine with me. Feel free to come by and say hello again in the future. If you manage not to die...*/
	= @52 /*Oh, Lord Sterk! <CHARNAME> must go, but I would love to hear more about the differences in elvish wines.*/
	IF ~~ THEN EXIT
	END
END

//If Clara is in the Five Flagons, any additional time.
APPEND _bclarap IF ~Global("KickedOut","LOCALS",1) !Dead("sterk") Global("_bClaraJoining","GLOBAL",1) Global("_bClaraWaiting","GLOBAL",0) OR(2) AreaCheck("AR0509") AreaCheck("AR0522")~ THEN _bClara0Join1
	SAY @53 /*Hello again, <CHARNAME>. How may I be of assistance? Do you wish something of me?*/
		++ @34 /*No, I'm just saying hi. How are you?*/ GOTO _bClara0Join3
		++ @35 /*Yes, I want you to come with me.*/ GOTO _bClara0Join6
		++ @23 /*I want to get to know you a little better. Is there somewhere private we could go?*/ GOTO _bClara0Join7
	END
END
	
//If no other conditions apply. Not Married to Cor or Anomen
APPEND _bclarap IF ~Global("KickedOut","LOCALS",1) !Global("_bSleptWithClara","GLOBAL",7) !Global("_bLordAndLadyDelryn","GLOBAL",5) !Global("_bLadyDelryn","GLOBAL",1)~ THEN _bClara2Join1
	SAY @54 /*Hi, <CHARNAME>, how can I help you? Do you need something?*/
		++ @34 /*No, I'm just saying hi. How are you?*/ GOTO _bClara2Join2
		++ @35 /*Yes, I want you to come with me.*/ GOTO _bClara2Join3
		++ @23 /*I want to get to know you a little better. Is there somewhere private we could go?*/ GOTO _bClara2Join4
	END
	
	IF ~~ THEN _bClara2Join2
	SAY @55 /*Don't worry about me. I'm just hanging out and enjoying being alive. There's always something to do... something to see... someone to rob. Feel free to hang around but I really should get back to work.*/ 
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bClara2Join3
	SAY @56 /*Join you? You want me to give up my comfy and profitable life to go seek death with you? To explore slimy, trap-filled dungeons crawling with undead and battle powerful monsters with the fate of the world hanging in the balance? My price is 1000 gold.*/
		+~PartyGoldGT(999)~+ @43 /*Okay.*/ DO ~ActionOverride("_bclara",TakePartyGold(1000)) ActionOverride("_bclara",DestroyGold(1000))~ GOTO _bClara2Join5
		+~CheckStatGT(Player1,13,CHR) PartyGoldGT(499)~+ @44 /*How about 500?*/ DO ~ActionOverride("_bclara",TakePartyGold(500)) ActionOverride("_bclara",DestroyGold(500))~ GOTO _bClara2Join5
		++ @45 /*Nah, you're not worth that. See you around.*/ GOTO _bClara2Join6
		++ @46 /*Sorry, I don't have that kind of cash.*/ GOTO _bClara2Join6
	END 
		
	IF ~~ THEN _bClara2Join4
	SAY @57 /*I believe you have the wrong person, <CHARNAME>. You want Clara the whore and she is dead. I am Caroline Aurora Lucia Rosena Silvershield of Beregost, the poor orphaned daughter of a minor cousin of the more famous Silvershields up north. I may have lost my parents to the vampires, but I have not lost my dignity.*/
	= @58 /*I was saved by the hero, <CHARNAME>, and I am so grateful that I tell this story to everyone I meet. That hero would never try to prey on a noble lady fallen on hard times. Goodbye now. Like any noble lady, I have important concerns that demand my attention.*/ 
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bClara2Join5
	SAY @59 /*Yaay! Okay, let me just get my things.*/
	IF ~~ THEN 	DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
	END
	
	IF ~~ THEN _bClara2Join6
	SAY @51 /*Fine with me. Feel free to come by and say hello again in the future. If you manage not to die...*/
	IF ~~ THEN EXIT
	END
END

//short-term P file adjustments in _bClaraAnomen file
//New default joining options after marries Cor (& he's alive) or Anomen are in _bClaraAnomen. That was just easier.

//New Kicked Out Dialogue if Married Anomen
CHAIN IF ~Global("KickedOut","LOCALS",0) Global("_bLordAndLadyDelryn","GLOBAL",5) !Global("_bLadyDelryn","GLOBAL",1)~ THEN _BCLARAP _bLadyDelrynP
@60 /*Do you really want me to leave?*/
END
		++ @1 /*No, I want you to stay.*/ DO ~JoinParty()~ EXIT
		+ ~OR(2) InParty("Anomen") InMyArea("Anomen")~ + @2 /*Yes, we should go our separate ways.*/ + _bLadyDelrynP1
		+ ~!InParty("Anomen") !InMyArea("Anomen") !Dead("Anomen")~ + @2 /*Yes, we should go our separate ways.*/ + _bLadyDelrynP2
		+ ~Dead("Anomen")~ + @2 /*Yes, we should go our separate ways.*/ + _bLadyDelrynP3
		++ @93 /*No, I just want you to change what kind of thief you are.*/ GOTO _bClaraKitChange1

		
CHAIN _BCLARAP _bLadyDelrynP1
@61 /*I hate to leave you, my husband, but I must do as <CHARNAME> wishes.*/
= @62 /*I will return to our manor and await your visit there. I promise, I shall think of you every moment you are gone.*/
END
		++ @4 /*No, I need you to stay right here. I'll be back soon.*/ GOTO _bCP3
		++ @5 /*Okay, I'll find you there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) SetGlobal("_bClaraWaiting","GLOBAL",0) EscapeAreaMove("AR1001",652,209,SW)~ EXIT

CHAIN _BCLARAP _bLadyDelrynP2
@63 /*Wonderful. I will return to my dear husband at Delryn Manor until you require me again. Don't hurry back; my bed there is far more comfortable.*/
END
		++ @4 /*No, I need you to stay right here. I'll be back soon.*/ GOTO _bCP3
		++ @5 /*Okay, I'll find you there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) SetGlobal("_bClaraWaiting","GLOBAL",0) EscapeAreaMove("AR1001",652,209,SW)~ EXIT

CHAIN _BCLARAP _bLadyDelrynP3
@64 /*All right. I should check on my business interests anyway. Find me at the Delryn Estate if you should change your mind.*/
END
		++ @4 /*No, I need you to stay right here. I'll be back soon.*/ GOTO _bCP3
		++ @5 /*Okay, I'll find you there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) SetGlobal("_bClaraWaiting","GLOBAL",0) EscapeAreaMove("AR1001",652,209,SW)~ EXIT


//New Kicked Out Dialogue if Married Cor
CHAIN IF ~Global("KickedOut","LOCALS",0) Global("_bLadyDelryn","GLOBAL",1) !Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN _BCLARAP _bLadyClaraP
@60 /*Do you really want me to leave?*/
END
		++ @1 /*No, I want you to stay.*/ DO ~JoinParty()~ EXIT
		+ ~!Dead("Cor")~ + @2 /*Yes, we should go our separate ways.*/ + _bLadyDelrynP2
		+ ~Dead("Cor")~ + @2 + _bLadyDelrynP3
		++ @93 /*No, I just want you to change what kind of thief you are.*/ GOTO _bClaraKitChange1


//New Clara P Dialogue if Married Cor & he's dead
CHAIN IF ~Global("KickedOut","LOCALS",1)  Dead("Cor") Global("_bClaraAndCor","GLOBAL",3) Global("_bLadyDelryn","GLOBAL",1)~ THEN _BCLARAP _bWidowDelryn
@65 /*Hello, <CHARNAME>, you are always welcome in the house of Lady Delryn. What can I do for you?*/
END
	+ ~!Dead("saerk")~ + @66 /*Nothing, I just stopped by to see how you are.*/ + _bWidowDelryn1
	+ ~Dead("saerk")~ + @66 + _bWidowDelryn2
	++ @67 /*You could travel with me.*/ + _bWidowDelryn3
	
CHAIN _BCLARAP _bWidowDelryn1
@68 /*Well, I'm the Lady of an impoverished noble house. The finances are a mess... Saerk really was crushing my late husband's business at every turn.*/
= @69 /*I really should do something about that man...*/
EXIT

CHAIN _BCLARAP _bWidowDelryn2
@81 /*Well, I'm still the Lady of an impoverished noble house. But our finances are improving now that Lord Saerk is gone.*/
EXIT

CHAIN _BCLARAP _bWidowDelryn3
@82 /*Travel with you? Why should I? My house may be impoverished, but at least I'm alive and can sleep in a real bed. What can you offer me instead?*/
END
	+ ~PartyGoldGT(999)~ + @83 /*How about 1000 gold?*/ + _bWidowDelryn4A
	+ ~CheckStatGT(Player1,13,CHR) PartyGoldGT(499)~ + @84 /*How about 500 gold?*/ + _bWidowDelryn4B
	++ @85 /*Nothing, I guess.*/ EXIT
	
CHAIN _BCLARAP _bWidowDelryn4A
@86 /*Deal! Let me just grab my things.*/
DO ~ActionOverride("_bclara",TakePartyGold(1000)) ActionOverride("_bclara",DestroyGold(1000)) SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN _BCLARAP _bWidowDelryn4B
@86 /*Deal! Let me just grab my things.*/
DO ~ActionOverride("_bclara",TakePartyGold(500)) ActionOverride("_bclara",DestroyGold(500)) SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

//Dialogue to change kit.
CHAIN _BCLARAP _bClaraKitChange1
	@94 /*Oh good, I was getting bored of doing the same old thing every day. What kind of thief should I be?*/
END
	++ @95 /*An assassin!*/ DO ~AddKit(ASSASIN)~ GOTO _bClaraKitChange2
	++ @96 /*A bounty hunter!*/ DO ~AddKit(BOUNTYHUNTER)~ GOTO _bClaraKitChange3
	++ @97 /*A swashbuckler!*/ DO ~AddKit(SWASHBUCKLER)~ GOTO _bClaraKitChange4
	++ @98 /*A shadowdancer!*/ DO ~AddKit(SHADOWDANCER)~ GOTO _bClaraKitChange5
	++ @99 /*Don't specialize, just be good at everything.*/ DO ~AddKit(0)~ GOTO _bClaraKitChange6
	++ @100 /*Never mind, just stay what you are now.*/ DO ~JoinParty()~ EXIT
	
CHAIN _BCLARAP _bClaraKitChange2
	@114 /**/
	= @101 /*Darkness everywhere, a man waits complacently, unaware of his surroundings, when... SLASH! Assassin Caroline strikes with deadly precision!*/
	= @102 /*The man stumbles away as poison floods his system leaving Caroline to vanish into the night.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN _BCLARAP _bClaraKitChange3
	@114 /**/
	= @104 /*Hearing a noise, the loyal henchman slowly investigates, his weapon drawn. Unluckily for him, he falls into the waiting traps of Bounty Hunter Caroline! Wounded and immobilized, the henchman watches terrified as Caroline saunters over to his helpless form.*/
	= @105 /*With a laugh and the deft movement of her graceful wrist, she slits his throat... his blood draining out onto the floor.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN _BCLARAP _bClaraKitChange4 
	@114 /**/
	= @106 /*Merchant sailors cower in fear as the dread pirate Caroline's schooner slowly overtakes them. One brave soul rises to fight but a quick slash of Caroline's sword ends his futile resistance.*/
	= @107 /*With the merchant galleon now in the hands of her loyal crew, Swashbuckler Caroline demands the sailors hand over any items of value on their persons in exchange for her mercy.*/
	= @108 /*The gold secured, Caroline offers the mercy of Umberlee instead, sending the merchants over the side into the Sea Goddess' salty embrace.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN _BCLARAP _bClaraKitChange5
	@114 /**/
	= @109 /*Quick as a shadow, silent as death, Shadowdancer Caroline glides through the streets.*/
	= @110 /*No one sees her, no one hears her, and the only sign of her passing is the the trail of hapless victims that she leaves in her wake.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT

CHAIN _BCLARAP _bClaraKitChange6
	@114 /**/
	= @111 /*Master of all trades, Caroline is a thief of unparalleled skill and ability.*/
	= @112 /*With no lock unopenable and no pocket unpickable, nothing stands in her way.*/
	= @113 /*Defenseless against her deadly versatility, Caroline's enemies have no recourse but to hide and pray she does not find them.*/
	= @103 /*I like it, <CHARNAME>. I can work with this.*/
	DO ~JoinParty()~
EXIT


