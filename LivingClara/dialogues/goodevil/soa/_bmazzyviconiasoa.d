
//1st Mazzy/Viconia conversation if former rescued latter
CHAIN
IF WEIGHT #-1 ~Global("_bMazzySavesViconia","GLOBAL",3)~ THEN VICONIJ _bMazzyVic01
@1 /*You are Mazzy Fentan, yes? I am Viconia DeVir. Thank you for assisting me and also for... speaking for me afterwards.*/
DO ~SetGlobal("_bMazzySavesViconia","GLOBAL",4) SetGlobal("_bMazVicConv","GLOBAL",7)~
== MAZZYJ @2 /*It was nothing. What kind of person could have stood by and watched you burn alive? What kind of person would send you off on your own afterward?*/
== VICONIJ @3 /*A normal one. Most rivvin desire my death and even the rest would not go out of their way to save me. There are few whom I can trust.*/
== MAZZYJ @4 /*You can trust me.*/
== VICONIJ @5 /*Everyone says that. But how many rivvin prove trustworthy when their own necks are at stake? How many would not sell their own family for a bag of gold?*/ 
= @6 /*Yet you are not a normal rivvin, are you? You're one of the little rivvin; I admit I have never lived among your kind.*/
== MAZZYJ @7 /*Little rivvin? Halflings are more than just small humans.*/
== VICONIJ @8 /*You would be rather useless if you were not: little more than children with toy weapons who play at being warriors.*/
= @9 /*But that is how you are thought of, is it not, when the rivvin think of you at all?*/
== MAZZYJ @10 /*You are correct, Viconia, but you need not take such joy in pointing out a painful truth.*/
== VICONIJ @11 /*Why not? Every truth is painful. There is nothing in this world but misery and only by accepting that will you survive. Pretty illusions will be your death.*/
== MAZZYJ @12 /*There is joy in the world, Viconia. There are kind, trustworthy people. There is friendship and love.*/
== VICONIJ @13 /*Perhaps, little one, but I have not seen them.*/
= @14 /*However, you are not just a tiny warrior. You smell of divine magic and self-control... you are a paladin! A halfling paladin, how novel. What will I see next, an orcish bard?*/
== MAZZYJ @15 /*I am not actually a paladin. I am a Truesword of Arvoreen, trained in archery and front-line defence and granted powers by my god.*/
== VICONIJ @16 /*Front-line defense is it? What if our enemies decide to step over you? I can see that I will be extremely busy keeping you alive and whole.*/
== MAZZYJ @17 /*I am hard to kill. If you remember, I did help to rescue you.*/
== VICONIJ @18 /*You did and I have become... distracted. I was thanking you and I pledge to do my utmost to ensure that you remain among the living.*/
== MAZZYJ @19 /*And I, you.*/
EXIT


//1st conversation if Mazzy didn't rescue Viconia
APPEND VICONIJ 
	IF WEIGHT #-1 ~Global("_bMazzySavesViconia","GLOBAL",0) Global("_bMazVicConv","GLOBAL",0) Global("_bMazVicExtra","GLOBAL",1) OR(2) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN _bMazzyVic02
	SAY @20 /*Another tiny person. Seriously, <CHARNAME>, if I were your size I would choose larger company. We need someone on the front lines whom our enemies cannot merely step over.*/
	IF ~~ THEN DO ~SetGlobal("_bMazVicConv","GLOBAL",1)~ EXTERN MAZZYJ _bMazzyVic04
	END

	IF WEIGHT #-1 ~Global("_bMazzySavesViconia","GLOBAL",0) Global("_bMazVicConv","GLOBAL",0) Global("_bMazVicExtra","GLOBAL",1) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN _bMazzyVic03
	SAY @21 /*A miniature warrior, <CHARNAME>, seriously? I know you like to accept the broken, useless and needy into your company, but aren't you perhaps taking this a bit far? What's next? A tone-deaf bard? An ogre assassin? A blind archer?*/
	IF ~~ THEN DO ~SetGlobal("_bMazVicConv","GLOBAL",1)~ EXTERN MAZZYJ _bMazzyVic04
	END
END

CHAIN MAZZYJ _bMazzyVic04
@22 /*A drow? She's a drow! Why is there a drow with you, <CHARNAME>?*/
== VICONIJ @23 /*You mean "with us," halfling. We are in the same party, are we not? And you should be thankful I am here. It will clearly take a priestess of great power, like myself, to keep you alive.*/
== MAZZYJ @24 /*I am more than a match for any of our enemies and especially for you, evil one!*/
END
	++ @25 /*I can see that this is going to work out wonderfully. Are you two finished?*/ EXTERN VICONIJ _bMazzyVic05
	++ @26 /*Mazzy, meet Viconia. Viconia, this is Mazzy. Please try to get along.*/ EXTERN VICONIJ _bMazzyVic05
	++ @27 /*Mazzy, Viconia isn't really that evil. Viconia, Mazzy really isn't that useless. Be friends!*/ EXTERN VICONIJ _bMazzyVic05
	++ @28 /*Okay, the first rule of being in my party is no killing other party members. If you cannot play nice, you will have to leave.*/ EXTERN VICONIJ _bMazzyVic05
	
CHAIN VICONIJ _bMazzyVic05
@29 /*Do not worry about me, <CHARNAME>, I am merely jesting with our little toy soldier. Wait... she's not just a warrior... she smells of divine meddling and a useless moral code... she's a paladin! Oh this is too priceless, <CHARNAME>, I'm traveling with a toy paladin!*/
== MAZZYJ @30 /*I am not actually a paladin. I am a truesword of Arvoreen, but I do hope to become a paladin someday. I have dedicated my life to protecting the innocent and destroying evil such as you. But you have saved my life, <CHARNAME>, and if you wish me to travel with Viconia then I will... for now.*/
EXIT


//2nd conversation if didn't rescue & canon banter happened
APPEND MAZZYJ IF WEIGHT #-5 ~Global("_bMazVicConv","GLOBAL",3)~ THEN _bMazzyVic06
	SAY @31 /*<CHARNAME>, why are we travelling with the drow?*/
	++ @32 /*Viconia? She's a skilled cleric, one of the best I've ever met.*/ GOTO _bMazzyVic07
	++ @33 /*Have you looked at her? Why would I abandon someone that beautiful?*/ GOTO _bMazzyVic07
	++ @34 /*She's a friend. I've traveled with her before.*/ GOTO _bMazzyVic07
	END
	
	IF ~~ THEN _bMazzyVic07
	SAY @35 /*But she is a drow. Is she not evil?*/
	++ @36 /*She's an exile, Mazzy. She's been wandering the surface for who knows how long.*/ GOTO _bMazzyVic08
	++ @37 /*I'm sorry, I wasn't aware that Drizzt was the only dark elf allowed to do good things.*/ GOTO _bMazzyVic08
	++ @38 /*The world isn't so black and white, Mazzy. I prefer to judge people for their actions, not their race.*/ GOTO _bMazzyVic08
	++ @39 /*Of course she is evil, but then so am I. Honestly, I'm surprised that you're still here.*/ GOTO _bMazzyVic09
	++ @40 /*Evil? You think that SHE'S the evil one? Clearly I need to step up my game.*/ GOTO _bMazzyVic09
	END
	
	IF ~~ THEN _bMazzyVic08
	SAY @41 /*But when I listen to her speak, she does not sound like a good person. She rarely has a kind word for anyone.*/
	++ @42 /*A sharp tongue does not make someone evil and a silver tongue can hide the blackest heart.*/ GOTO _bMazzyVic10
	++ @43 /*She was raised by drow, what do you expect?*/ GOTO _bMazzyVic10
	++ @44 /*I think much of that is simply language and cultural differences.*/ GOTO _bMazzyVic10
	++ @45 /*She's been hunted and persecuted for decades. Kindness has been in short supply on both sides.*/ GOTO _bMazzyVic10
	END
	
	IF ~~ THEN _bMazzyVic09
	SAY @46 /*I had hoped I was mistaken, that you could be redeemed, but I see now that I was wrong. Goodbye, <CHARNAME>.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bMazzyVic10
	SAY @47 /*Perhaps I have been too hard on her. Do you trust her, <CHARNAME>?*/
	++ @48 /*Of course. She's my friend and I have always been able to rely on her.*/ GOTO _bMazzyVic11
	++ @49 /*I have no cause to doubt her. I consider that enough.*/ GOTO _bMazzyVic11
	++ @50 /*No, I don't trust her, but she has proven her worth in battle time and again.*/ GOTO _bMazzyVic11
	++ @51 /*I don't need to trust Viconia in order to find her useful.*/ GOTO _bMazzyVic11
	END
	
	IF ~~ THEN _bMazzyVic11
	SAY @52 /*Thank you, <CHARNAME>. You have given me much to consider.*/
	IF ~~ THEN DO ~SetGlobal("_bMazVicConv","GLOBAL",4)~ EXIT
	END
END
	
//3rd Conversation - no rescue
CHAIN
IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",6)~ THEN MAZZYJ _bMazzyVic12
@53 /*Viconia, I apologize for my earlier outburst. I have been watching your actions and for a drow, you are not that evil.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",7)~
== VICONIJ @54 /*For a drow, I am not THAT evil? What a relief! I feel the same about you. For a tiny warrior you're not THAT useless. For a pretend-paladin you're not THAT bloodthirsty and intolerant.*/
== MAZZYJ @55 /*There's no need to be mean, Viconia. I am trying to apologize.*/
== VICONIJ @56 /*Why? Why would you apologize?*/
== MAZZYJ @57 /*Because I judged you for being a drow when I did not know you. That is what the tall ones do to me constantly. I know what it is like to be judged on sight.*/
== VICONIJ @58 /*Hah, you think you know what it's like to be judged? Why, because the rivvin mock you when you beg for them to accept you into their ranks?*/
= @59 /*No, Mazzy. You do not know their judgment and you do not know their hate. Begone.*/
EXIT

//4th conversation - both chains link here
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",9)~ THEN VICONIJ _bMazzyVic13
@60 /*Little paladin, you are a fool! Despite being no larger than a well-fed chicken you throw yourself into harm's way at every opportunity. Yes, you are skilled and our opponents are weak, but you guarantee your own end with this nonsense. Why do you endlessly challenge death?*/
== MAZZYJ @61 /*No one asked for your opinion, Viconia. I do this because it is right. I protect the innocent and destroy the wicked. If I do not, who will?*/
== VICONIJ @62 /*No one will and no one should. The weak should protect themselves or die. Why do you care?*/
== MAZZYJ @63 /*Because the world is dark and cruel. It is full of horrible people being mean and vile to each other which leads only to more grief and anger. Look at you, Viconia. You lash out at everyone around you even when they have not given you cause. Has no one ever been kind to you?*/
== VICONIJ IF ~Global("_bMazzySavesViconia","GLOBAL",0)~ 
THEN @64 /*Three times I have been helped by the kindness of others. The first occurred when I was still with the drow and I will not talk about it now. The second time, long before <PRO_HESHE> met you, <CHARNAME> helped me fight a soldier who was trying to kill me. Most recently <PRO_HESHE> helped me yet again when I was going to be burned alive.*/
== VICONIJ IF ~!Global("_bMazzySavesViconia","GLOBAL",0)~ 
THEN @65 /*Three times I have been helped by the kindness of others. The first occurred when I was still with the drow and I will not talk about it now. The second time, long before <PRO_HESHE> met you, <CHARNAME> helped me fight a soldier who was trying to kill me. Most recently, you and <CHARNAME> helped me when I was going to be burned alive.*/
== MAZZYJ @66 /*And did you value those actions, Viconia? Do you value the people who saved your life?*/
== VICONIJ @661 /*I said they helped me... I did not say they saved my life! I am not a weak fool who needs rescuing!*/ 
= @67 /*But... yes, I value them more than anything in this world.*/
== MAZZYJ @68 /*That is why I do what I do, Viconia. Someday I will fight an enemy who is too much for me and on that day I will fall. But before I do, I hope someone will value me for being kind and saving them when they could not save themselves.*/
== VICONIJ @69 /*Hmm. Tiny paladin, perhaps there is value in what you have said. I will reflect upon this further.*/
END
	++ @6900 /*Mazzy, Viconia, I'm tired of listening to you. Just be silent for the rest of our adventures, will you?*/
		DO ~SetGlobal("_bMazVicConv","GLOBAL",444) SetGlobal("_bMazzyVicFriends","GLOBAL",3)~ EXIT
	++ @6901 /**Say nothing.**/
		DO ~SetGlobal("_bMazVicConv","GLOBAL",10) SetGlobal("_bMazzyVicFriends","GLOBAL",1) ApplySpellRES("_bREP","Viconia")~  //Spell should stop Viconia from leaving at high reputation 
			EXIT

//To keep Viconia from leaving forever if you're high rep after this point.
APPEND VICONIP 
	IF WEIGHT #-1 ~Global("KickedOut","LOCALS",0) HappinessLT(Myself,-299) GlobalGT("_bMazVicConv","GLOBAL",9)~ THEN _bMazzyVicLeaveFix
	SAY @70 /*<CHARNAME>*/
	IF ~~ THEN EXTERN VICONIP 2
	END
END

//5th conversation 
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",12)~ THEN MAZZYJ _bMazzyVic14
@71 /*Viconia, why do you keep calling me a paladin when you know that I'm not one?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",13)~
== VICONIJ @72 /*Because you ARE a paladin, tiny paladin. You are a warrior with powers granted by your god, you bind yourself to a ridiculous moral code that guarantees your death on the blade of someone more morally flexible, and you are intolerant and judgmental of anyone unlike yourself. You are like every paladin I have ever met, only shorter.*/
== MAZZYJ @73 /*Well, I thank you for your words. They bring a smile to my lips, though I think you meant to insult by calling me tiny and short.*/
== VICONIJ @74 /*It is not an insult to call you what you are. You are a halfling and halflings are called halflings for a reason. But when I mocked you for your fighting skills, that *was* an insult and I recant it now. You are most effective in combat, like a ferocious centipede or a courageous battle toad.*/
== MAZZYJ @75 /*A courageous battle-toad-sized paladin? I can live with that.*/
EXIT

//6th Conversation
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",15)~ THEN MAZZYJ _bMazzyVic15
@76 /*Viconia, why are you so vicious and cruel to your fellow party members?*/
= @77 /*You insult us and try to hurt our feelings. But without us you would be alone and hunted once again, so why do you wish to drive us away?*/
== VICONIJ @78 /*I am not sure, Mazzy... but perhaps I have an answer. Every surfacer considers themselves my equal, which makes all of you threats to my life.*/
= @79 /*Among the drow, I had no equals. Males and slaves lived to serve me. Females were ranked by Lolth on a ladder of prestige, and we spent our days struggling for power and position. Every day I tested those around me to gauge their moods and probe for weaknesses so that I could kill them when they let down their guard, or be ready when they tried to end my life.*/
== MAZZYJ @80 /*But you do not need to do that now! We are not your enemies. None of us will try to kill you.*/
== VICONIJ @81 /*Perhaps... or perhaps not. During my travels with <CHARNAME>, I have often felt that some of <PRO_HISHER> companions would have assaulted me had <CHARNAME> not been present; <PRO_HESHE> is the only one I trust enough to keep watch while I sleep.*/
== MAZZYJ @82 /*When you sleep? Do you mean to say that every night since you first began travelling with <CHARNAME>, you have only slept during <PRO_HISHER> watches? What do you do for the rest of the night? How are you still functioning?*/
== VICONIJ @83 /*I spend the rest of the night in light meditation, aware of my surroundings while recharging my power. This is not as trying as you think. As a drow, I sometimes went weeks without truly sleeping.*/
== MAZZYJ @84 /*You must be exhausted.*/
== VICONIJ @85 /*I am... very tired. But not so tired that I would prefer death.*/
== MAZZYJ @86 /*Do you trust me not to kill you? You could sleep during my watches as well.*/
== VICONIJ @87 /*I believe you may try to kill me yet, but I do not think you would do it while I slept. Your foolish, suicidal code requires you to fight your enemies head on. I think you would declare your challenge and then give me a day to rest and memorize my spells.*/
== MAZZYJ @88 /*That would be the fair thing to do. It would be dishonourable to attack you when all you have prepared are spells to heal me in combat.*/
== VICONIJ @89 /*Fair and honorable are words without meaning, Mazzy. But yes, guard me while I sleep, diminutive paladin, and I will do the same for you.*/
== MAZZYJ @90 /*Sleep well, Viconia. You are among friends.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",16) RestParty()~
EXIT

//7th conversation
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",18)~ THEN MAZZYJ _bMazzyVic16
@91 /*You are unusually sullen today, my friend. What is wrong?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",19)~
== VICONIJ @92 /*Why? Why am I your friend? Why am I <CHARNAME>'s friend? You think I don't know how people see me? Every person we meet treats you poorer because you are with me. My existence drags your names through the mud. Why do you help me?*/
== MAZZYJ @93 /*Because we believe you can be saved. Once you see the light, you will be redeemed... You will give up your dark goddess and join us as servants of righteousness!*/
== VICONIJ @94 /*I can be saved? You think I am some... damsel in distress and you are the knight who will rescue me? I am not some weakling who would die without your help; I am Viconia DeVir!*/
== VICONIJ IF ~InPartyAllowDead("Aerie")~
THEN @95 /*But you... you see me as another broken bird, wingless and helpless? I am not her. I spit on the comparison.*/
== MAZZYJ IF ~InPartyAllowDead("Aerie")~
THEN @96 /*Aerie is stronger than you know, Viconia. But this is not about her, this is about us.*/
== MAZZYJ @97 /*It is not a weakness to admit that you need help. We all need aid from time to time, that is why we travel together as friends. It is through our friends that we know hope, joy, love, and peace, and I believe that one day you will know them too.*/
== VICONIJ @98 /*Hah, I know them well. I *hope* to delay my death for as long as I can, I find *joy* in slaughtering the rivvin who try to hurt me, my greatest *love* is avenging myself on those who took advantage of my previous helplessness, and I will know *peace* when all my enemies are dead.*/
= @99 /*I will not play any further part in this delusion. YOU ARE NOT HUMAN! You are not a paladin! The rivvin will never accept you, no matter how many weak, helpless maidens you rescue, and I am not one of them.*/
= @100 /*Now leave me. We are done speaking.*/
EXIT

//8th Conversation 
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",21)~ THEN VICONIJ _bMazzyVic17
@101 /*Well, little one. Speak! I am tired of you following me around. Let those words leave your tongue and be done with it.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",22)~
== MAZZYJ @102 /*Very well, Viconia, I refuse to let you drive me away. I have decided that I will not abandon you simply because you have a sharp tongue. You are not truly evil.*/
== VICONIJ @103 /*Do you have any idea how many rivvin I have slain, Mazzy?*/
= @104 /*I remembered everyone who ever hurt me: every face, every name, every cut, every beating, every rape, everyone who's ever cursed me or thrown dung or rotten food. They are gone, Mazzy; I found and I slaughtered them all... the men... the women... the children...*/
= @105 /*Sometimes it took months or years for the opportunity to present itself, but whenever I regained some measure of power, I tracked them down. And for every moment of pain and shame they caused me, I inflicted a hundred times more agony. I killed them, their friends, their loved ones and anyone else who stood in my way.*/
== MAZZYJ @106 /*But... no...*/
== VICONIJ @107 /*You think you can redeem me, stupid tiny rivvin? You are a fool! You pretend that you can make everything and everyone around you good because you are too blind to see life as it is and too cowardly to face your own demons.*/
= @108 /*So what now, now that your pathetic idealistic view of me has been dispelled? Will you kill me? Come and try!*/
== MAZZYJ @109 /*No, Viconia. You are not the first hero I have known with a dark past. As long as you travel with <CHARNAME> and myself, we will guide you toward the light.*/
== VICONIJ @110 /*When I was tied to the stake, there was a group of rivvin too cowardly to do the work themselves. They screamed, “Burn the drow! Burn her!” */
= @111 /*While you and <CHARNAME> were sleeping, I tracked them down in their homes and skinned them.*/
== MAZZYJ @112 /*You... skinned them?*/
== VICONIJ @113 /*They were going to kill me for the color of my skin; it was only fair that I remove theirs. Some street children spit on me as well. I found them later, cut out their tongues, and watched them choke to death on their own blood.*/
= @114 /*You see, I do not need nearly as much sleep as the rest of you, so I still have time for other... endeavors.*/
== MAZZYJ @115 /*You slaughtered women and children?*/
== VICONIJ @116 /*Is there something special about women and children, stupid paladin? Weakness is not a defense. Yes, I killed them.*/
== MAZZYJ @117 /*Then Viconia, I challenge you! You are evil and I was mistaken. We will fight and I will kill you in the name of all that is good and right in the world!*/
END
	++ @118 /*Whoa, whoa, I think it's time that I stepped in. There will be no fighting in this party.*/ EXTERN MAZZYJ _bMazzyVic18
	++ @119 /*A fight, what an excellent idea. Get your anger out so we will raise the loser and be off.*/ EXTERN MAZZYJ _bMazzyVic19
	++ @120 /*No fighting. Viconia, you need to leave.*/ EXTERN MAZZYJ _bMazzyVic20
	
APPEND MAZZYJ IF ~~ THEN _bMazzyVic18
	SAY @121 /*I will not travel with the drow a moment longer, <CHARNAME>. Either we fight or I leave now.*/
	IF ~~ THEN DO ~SetGlobal("_bPikeThreat","GLOBAL",1)~ EXTERN VICONIJ _bMazzyVic21
	END
	
	IF ~~ THEN _bMazzyVic19
	SAY @122 /*No, <CHARNAME>, I will remove her head and impale it on a pike as a warning to all of her kind.*/
	IF ~~ THEN EXTERN VICONIJ _bMazzyVic21
	END
	
	IF ~~ THEN _bMazzyVic20
	SAY @123 /*No, <CHARNAME>, she must not be allowed to flee. I will cut off her head and stick it on a pike or you will not see me again!*/
	IF ~~ THEN EXTERN VICONIJ _bMazzyVic21
	END
END

CHAIN VICONIJ _bMazzyVic21
@124 /*Let the little one fight me, <CHARNAME>. I promise to raise her after she dies.*/
== MAZZYJ IF ~Global("_bPikeThreat","GLOBAL",1)~ THEN @125 /*And I promise to remove your head and impale it on a pike as a warning to all others of your kind. This will be the end for you.*/
END
	++ @126 /*Go ahead then. Battle it out.*/ + _bMazzyVicDelay 
	++ @127 /*No permanent death, Mazzy. We need Viconia alive.*/ EXTERN MAZZYJ _bMazzyVicLeft
	
	
CHAIN MAZZYJ _bMazzyVicLeft
@128 /*Then I will take my leave. Goodbye <CHARNAME>, you will not see me again.*/
DO ~SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~
EXIT

CHAIN VICONIJ _bMazzyVicDelay
@129 /*However, I am not ready to fight you, my angry paladin. If you wish to challenge me fairly then you must let me rest to memorize the proper spells.*/
== MAZZYJ @130 /*Very well, Viconia. In the morning, we do battle!*/
== VICONIJ @131 /*Patience, little one. You are one of those tiny dogs, impatient and annoying. We have not yet agreed upon the rules.*/
== MAZZYJ @132 /*The rules? Use all the magics and potions you want, drow, and in the morning, you shall fall by my hand!*/
== VICONIJ @133 /*When we wake, you mean to kill me permanently, or at least as permanently as I can be killed, but what if you fall instead? I will raise you back from the dead, but I do not wish to do this again.*/
== MAZZYJ @134 /*If you vanquish me, I will not challenge you again. You have my word.*/
== VICONIJ @135 /*And a boon. I will have ended your life and brought you back from the abyss; you will owe me a boon as well.*/
== MAZZYJ @136 /*Enough talk, let us rest and be done with this. You may have your boon, Viconia, but I will do nothing against my vows!*/
== VICONIJ @137 /*You will not have to, little yap dog. And you are not the leader of our little band of heroes. We will sleep at a time of <CHARNAME>'s choosing.*/
EXIT

//9th conversation - duel
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",23)~ THEN MAZZYJ _bMazzyVicDuel1
@138 /*Finally, you are awake. I have been up for hours! Are you ready?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",24)~
== VICONIJ @139 /*Unlike you, I do not sleep well in my armor, little paladin. Assist me in putting it back on, will you? I can never reach these straps in the back.*/
= @140 /*There. Now I am ready. Do we start apart? Twenty paces? Thirty? I have not done this sort of thing before.*/
== MAZZYJ @141 /*Ten paces! Prepare yourself!*/
== VICONIJ @142 /*You should worry about yourself, Mazzy. You do not look well.*/
== MAZZYJ @143 /*I... I am not right...*/
DO ~ApplySpell("Mazzy",CLERIC_POISON)~
= @144 /*You! You did this! You poisoned me! It will not save you, drow! I am strong enough to end your life first!*/
DO ~Kill("Mazzy")~
== VICONIJ @145 /*And another fool falls. Be sure to raise her soon, <CHARNAME>, before she becomes too fragrant.*/
EXIT

//10th talk, post duel
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",25)~ THEN MAZZYJ _bMazzyVicDuel2
@146 /*Viconia! You cheated!*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",26)~
== VICONIJ @147 /*You gave me leave to use all my magic and potions did you not? Some of them involve poison. Do not blame me for your weaknesses. Now about my boon...*/
== MAZZYJ @148 /*I am not a servant of evil. My vows prevent me from helping you in your evil schemes.*/
== VICONIJ @149 /*I demand that you become my friend.*/
== MAZZYJ @150 /*What?*/
== VICONIJ @151 /*Is your hearing damaged? I have no friends and I want one.*/
== MAZZYJ @152 /*<CHARNAME> is your friend. I was your friend.*/
== VICONIJ @153 /*No, <CHARNAME> saved me which means I am <PRO_HISHER> friend, not the other way around, and you saw me as another weakling female in need of rescue. But now I have proved my strength. Now you are MY friend, and mine alone.*/
== MAZZYJ @154 /*Was that what all this was about? You provoked me into challenging you just so you could ask for my friendship?*/
= @155 /*Did you even kill those children?*/
== VICONIJ @156 /*What children? Oh, the ones who spit on me? I made them up. I know you have a fondness for rivvin your size.*/
== MAZZYJ @157 /*You are truly damaged, Viconia. All this for a friendship that you already had? All you had to do was ask...*/
== VICONIJ @158 /*I am... asking, Mazzy. Be my friend. Please...*/
== MAZZYJ @159 /*Yes.*/
== VICONIJ @160 /*Yes! With you by my side think of all the fun we will have!*/
= @161 /*We will talk... play games... bathe in the blood of our enemies...*/
== MAZZYJ @162 /*Evil enemies, Viconia. We only kill evil enemies and they must attack us first.*/
== VICONIJ @163 /*Fine, my little paladin. But all rivvin look threatening to me, so you will have to tell me which ones I may slaughter.*/
EXIT

//11th Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",28)~ THEN VICONIJ _bMazzyVic22
@164 /*Mazzy, my friend, please speak with me a moment. I have been too trusting in the past, but you are different from most surface-dwellers. Perhaps it is because you are a tiny rivvin and your people have never hunted me.*/
= @165 /*There was a village of your kind east of Beregost and south of Baldur's Gate. I avoided it thinking that I would stand out and be killed, but perhaps your people would've offered me sanctuary instead.*/
== MAZZYJ @166 /*You would have been a guest, Viconia. It is rude to turn away a guest and unimaginable to harm someone after offering them hospitality.*/
== VICONIJ @167 /*Rude even to turn away a drow? Why? Have your people not been raised on stories of our bloody exploits? Are we not your enemy?*/
== MAZZYJ @168 /*You would've been watched, yes. But a single woman, alone and scared, is not a raiding party. Most of my people do not really believe in having enemies. They are sure that most hostilities can be cured with kindness, food, tea, pipe-weed, ale, and a warm bed. That is how they plan to combat the evils of this world.*/
= @169 /*It is foolish and I have seen that trust abused too many times. I renounced it when I ventured out into the world. I said that trust would have to be earned and I would meet hostility with the point of my blade.*/
== VICONIJ @170 /*That seems a wiser strategy.*/
== MAZZYJ @171 /*I thought so too, but recently I have begun to think that there is more wisdom in those customs than I thought. It is much harder to be angry with a full belly and a good night's sleep. Trust builds upon trust and kindness begets kindness.*/
== VICONIJ @172 /*Or it leads to a knife in your back. I would call your kindness weakness, Mazzy, but you are one of the toughest creatures I have met. There is a core of iron and vigilance inside you. I think you might even be able to best me in a fair fight despite being half my size.*/
== MAZZYJ @173 /*We will never know now! You poisoned me!*/
== VICONIJ @174 /*Better safe than sorry, my little paladin. I warned you your morals would be the death of you, and I knew you would take offense at every verbal barb and let your anger blind you.*/
= @175 /*You fight people's words as if they could hurt you, little one, when you should be watching for danger in their movements. Let them mock you and laugh at you. You are a halfling and rivvin laugh at halflings. It's still better than being a drow and having them hunt you.*/
== MAZZYJ @176 /*You are right. I have been overly touchy and self-pitying. The tall folk laugh at me, but they were going to burn you alive. And I have said and done so many things my family would be ashamed of.*/
= @177 /*Viconia, I would like to officially offer you my hospitality and friendship. Tonight you will be my guest.*/
== VICONIJ @178 /*Your guest? I have never been anyone's guest.*/
== MAZZYJ @179 /*Then we shall do this properly. Viconia of House DeVir, I offer you my friendship. My home and hearth are yours. You have a place at my table, free run of my larder, and the use of a soft bed for as long as you desire, because you are my guest.*/
= @180 /*Umm... I am lacking a home, hearth, table, larder, and bed at the moment, but I do not know any version of the words where the host only has a tent and travel rations. Still my tent and travel rations are yours if you accept... I mean...*/
== VICONIJ @181 /*Ha! This is the first time I have seen you nervous. I accept, Mazzy. Do I have words to say as well?*/
== MAZZYJ @182 /*Ah, yes. You would say, “Mazzy Fentan, I accept your generous hospitality. You are my friend. May your hearth always be warm, your larder always full, and your home full of laughter for your next fifty generations.”*/
== VICONIJ @183 /*Mazzy Fentan, I do accept your generous hospitality. You are my friend, and... and.. oh, by Shar, am I crying? I am crying. I cannot cry. Someone will see. She will see! She will know and she will come for me!*/
== MAZZYJ @184 /*Viconia, it's okay! We are safe. You do not need to be afraid.*/
== VICONIJ @185 /*I AM afraid, Mazzy. I have been afraid for so long... far, far longer than you have been alive. I do not remember ever being unafraid. What is there without fear?*/
== MAZZYJ @186 /*There is peace. There is love. You are my friend, Viconia, and I would die to protect you.*/
== VICONIJ @187 /*You would die to protect anyone, my selfless little paladin. But... I will try to avoid that because I do not wish to lose you. You are my friend. May your hearth always be warm, your larder always full, and your home full of laughter for your next fifty generations. There. What do we do now?*/
== MAZZYJ @188 /*Well, now we would tell humorous stories while sharing tea or pipe-weed. But I did not pack those things, nor did I bring ale, and I cannot remember anything humorous. Oh this is ridiculous. I am a terrible halfling!*/
== VICONIJ @189 /*No. You are a wonderful halfling, Mazzy, and you and <CHARNAME> are my only friends in this world. Now let us eat and talk. I will share your food and your tent, and be your guest.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",29) SetGlobal("_bMazzyVicFriends","GLOBAL",2) RestParty()~
EXIT

//Bath Talk 1
CHAIN IF WEIGHT #-1 ~Global("_bMVBathTalk","GLOBAL",1)~ THEN MAZZYJ _bMazzyBath1
@190 /*You all go to sleep. I will see if my bath is ready.*/
== VICONIJ @191 /*May I join you, Mazzy? I am covered in dirt and grime, not to mention the stench of rivvin.*/
== MAZZYJ @192 /*Certainly, Viconia. The tub was built to hold a large human man with room to spare. It will easily hold the two of us.*/
DO ~SetGlobal("_bMVBathTalk","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bMVBathTalk","GLOBAL",3)~ THEN MAZZYJ _bMazzyBath2
@193 /*Ahh, I needed this, and not just for the dirt.*/
DO ~UndoExplore() SetGlobal("_bMVBathTalk","GLOBAL",4)~
== VICONIJ @194 /*Before, at home, there was nothing I enjoyed more at the end of the day than a hot bath followed by a massage and a male.*/
= @195 /*We had slaves trained in massage. The males were trained too. I wish I could have one again.*/
== MAZZYJ @196 /*The world is full of men, Viconia, and you are beautiful. It should not be hard for you to get one.*/
== VICONIJ @197 /*This world is full of rivvin males, my tiny paladin. I have sampled them by the dozen since coming to the surface and every single one has been a disappointment.*/
= @198 /*I had such high hopes at first. Rivvin are such powerful creatures, giant and strong, once you get past the smell. But in bed... nothing. Some did not know how to please me, others had no interest in even trying.*/
= @199 /*Do you understand? Have you ever lain with the rivvin?*/
== MAZZYJ @200 /*I have not been with a... rivvin are humans, tall folk, correct? Yes, well... in truth I find the thought of being naked, alone, and unarmed with a stranger two or three times my size rather terrifying.*/
	= @200000 /*I have been with larger males, but they were old friends and used to halflings. Humans are so clumsy and destructive, and I am not a great judge of character. I am worried that I might be hurt without my weapons.*/
== VICONIJ @201 /*So do not be unarmed. If you hid small blades around the room, then you would have nothing to fear. But there is little point in bothering. The rivvin are hardly worth your time.*/
== MAZZYJ @202 /*I still do not understand why though.*/
== VICONIJ @203 /*I am... explaining myself poorly. Let me try this. You have seen chickens mating, have you not? Rivvin are chickens. The rooster sees a hen that he desires, he runs after her, possesses her for a brief moment, and when he is finished he struts around crowing his greatness to the world.*/
= @204 /*I am tired of roosters. I want a real male.*/
== MAZZYJ @205 /*I am sorry it has been like that for you, Viconia, but it does not have to be.*/
== VICONIJ @206 /*Really?*/
= @207 /*Then tell me of the males you have known, Mazzy. What were they like? Did they please you?*/
== MAZZYJ @208 /*I have mostly been with my own people, Viconia, and not all that many of them. Though from listening to you, I think I got more enjoyment out of my three halfling men then you did your dozens of roosters.*/
= @209 /*The first was just a boy who I grew up with. His family were farmers and they came into town after the harvest every year to sell their crops. We only managed to get away half-a-dozen times. He did not know much, but neither did I, and he was sweet and earnest and did whatever I asked.*/
== VICONIJ @210 /*An important quality in a male.*/
== MAZZYJ @211 /*I knew a little about timing and made sure we were only together on the right days, but we were still lucky I did not become pregnant. I was foolish; I should have at least purchased a potion.*/
== VICONIJ @212 /*You can get pregnant involuntarily? That seems... inconvenient.*/
== MAZZYJ @213 /*You have no idea. Wait, are you saying that you can control it?*/
== VICONIJ @214 /*I am a drow and a priestess. I have absolute control over my own body and power over everyone I touch. But back to your farmer boy.*/
== MAZZYJ @215 /*He and his family were killed by bandits one day on their way home. I cried my eyes out for days. I do not think I was in love with him, but he was my friend. And then he was gone.*/
= @216 /*But now our bath is cold and we need sleep.*/
== VICONIJ @217 /*Ha, what we both need first are massages... and then males.*/
== MAZZYJ @218 /*I cannot help you with your lack of a male, Viconia, but I give a decent massage, at least decent for a halfling warrior. If you promise not to kill me if I disappoint you...*/
== VICONIJ @219 /*I promise. We will find our males another time.*/
DO ~Explore() RestParty()~
EXIT

//2nd Bath Talk
CHAIN IF WEIGHT #-1 ~Global("_bMVBathTalk","GLOBAL",5)~ THEN VICONIJ _bMazzyBath3
@220 /*Another bath. If we keep this up for another year or two I might actually feel clean.*/
DO ~UndoExplore() SetGlobal("_bMVBathTalk","GLOBAL",6)~
= @221 /*If I remember correctly, and I always do, you were about to tell me the story of your second male.*/
== MAZZYJ @222 /*Was I? Very well. The second man I lay with was some years later. He was another farmer only a few years older than me. We were together for years. He was dedicated to my happiness, in and out of bed, and I to his as well.*/
= @223 /*He would have married me and helped to raise our children, but I could not do it. I broke his heart instead.*/
= @224 /*I still see him from time to time. He is a successful farmer, a good husband, and a great father. In short, he is everything a halfling woman could want.*/
== VICONIJ @225 /*“Everything a halfling woman could want.” But not you, little paladin?*/
== MAZZYJ @226 /*I loved him, I truly did, but that future was not what I desired. The home, the hearth, the family, never going more than ten miles from where I was born. I wanted to see the world, become a paladin, and battle with evil.*/
== VICONIJ @227 /*I think maybe you have shown me my answer, Mazzy. The drow males I knew were dedicated to my happiness as well. They pleasured me as if their lives depended on it, which, of course, they did.*/
= @228 /*The rivvin I have known only saw me as a tool to satisfy their own desires. I tried to warn some that their continued breathing depended on my enjoyment of their efforts, but most did not believe me until it was too late.*/
== MAZZYJ @229 /*You ended their lives because they were unskilled at loving you?*/
== VICONIJ @230 /*They were bandits, thieves, and mercenaries. Men who only ever took females through force or payment. They were not interested in my desires nor my consent, and they would not listen to my instructions. You would have killed them too, though probably less painfully than I did.*/
== MAZZYJ @231 /*Oh Viconia... I am so sorry.*/
== VICONIJ @232 /*Mazzy, I have been tortured countless times by beings who truly knew how to inflict pain. This was an unpleasant new experience – a drow male forcing himself on a female is unheard of – but it was nothing in comparison.*/
= @233 /*Do not look at me like that, Mazzy. I won and they are dead. I flayed them alive and bathed in their blood. If you are too weak to listen to this story then how can I tell you anything? You want to vanquish evil, tiny paladin, but you have barely seen it.*/
== MAZZYJ @234 /*I have seen plenty of evil, Viconia, and I am learning. Though I suppose perhaps “plenty” does not have the same meaning to someone so many times my age. When you share, I will listen.*/
== VICONIJ @235 /*Excellent. But I am done sharing, young one. Let us retire to a bed and spend our night in some poor imitation of comfort.*/
DO ~Explore() RestParty()~
EXIT

//12th Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",31)~ THEN MAZZYJ _bMazzyVic23
@236 /*Viconia, did you know that you were screaming in your sleep?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",32)~
== VICONIJ @237 /*I did not. However, that makes me normal among adventurers, does it not? Most of you sleep poorly. Still, I am surprised no one has ever mentioned that to me before.*/
== MAZZYJ @238 /*That is probably because you were silent. Your eyes were open in terror and you screamed and screamed but never made a sound. I would not have known except that I felt a darkness come over us and so I awoke and checked on you.*/
== VICONIJ @239 /*On me? Am I the only lure for darkness in this group?*/
== MAZZYJ @240 /*No, I checked on <CHARNAME> first, but <PRO_HESHE> was sleeping soundly. Loudly, but soundly.*/
== VICONIJ @241 /*Hah. Even when sleeping it seems I know that silence is necessary for survival. Did I do anything else?*/
== MAZZYJ @242 /*No. I cast a blessing of Arvoreen upon you and it seemed to calm you down. I would have asked first but I could not wake you and I was afraid to wait. Were you dreaming?*/
== VICONIJ @243 /*In a way. It was Lolth reminding me that I am still within her grasp as long as I dream. She does that from time to time when she remembers to check on me. You... should be careful; she will not have liked you interfering.*/
== MAZZYJ @244 /*I am not afraid of the Spider Queen. My faith in Arvoreen will protect me.*/
== VICONIJ @245 /*Have you ever had a goddess inside your head, my little one, laughing as she shatters your mind and pulls apart the pillars of your reality? How can you have faith when you do not know what is real and what is delusion?*/
= @246 /*Let me try to remember this dream, though I usually do my best to forget them.*/
= @247 /*Lolth tortured me, as usual, this time slowly cutting me open and removing my bones one by one. I could move freely, but no matter where I fled, I could not stop her claws as they sliced and pulled. My brother, Valas, and <CHARNAME> both came to rescue me but she transformed Valas into her creature, and slew <CHARNAME>. She does that every time, though <CHARNAME> has been a more recent addition.*/
= @248 /*Lolth told me that I was alone and I was hers, and I would remain so for all eternity. But then you came. I thought you were one of her illusions, but you stopped the dream. You stopped her! How did you stop her?*/
== MAZZYJ @249 /*I do not know. As I said before, I saw you in terror and I cast a blessing of Arvoreen. It is not even a proper spell; just a common halfling prayer for warding off evil.*/
== VICONIJ @250 /*A common halfling prayer? Your people are more powerful than I would have believed, Mazzy. You are more powerful... I have called on Shar for aid many times during these dreams, but it was never enough.*/
== MAZZYJ @251 /*You cannot fight evil with more evil, no matter how powerful. Shar would only aid you if it were in her interest and she gains nothing from battling the Spider Queen.*/
= @252 /*But a light, however small, will always drive back the darkness. When I gave you that blessing, I did so not to gain or to destroy, but simply because you were in pain, you are my friend, and I did not want to see you hurt.*/
== VICONIJ @253 /*And that succeeded where all the power I could muster failed. You have given me more to think about. Too much in fact. We will talk more another day.*/
EXIT

//13th Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",34)~ THEN VICONIJ _bMazzyVic24
@254 /*I keep waiting for Lolth to exact her revenge, Mazzy, but I continue to sleep well. I cannot take this stress much longer. When will she come for me?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",35)~
== MAZZYJ @255 /*You seemed to be sleeping easily, Viconia, but I was afraid to ask. Maybe it was because I have stayed nearby and kept my blessing upon you. */
== VICONIJ @256 /*I suspected that might be true. You are a fool to put yourself between Lolth and her prey!*/
== MAZZYJ @257 /*I do not make any decision lightly, Viconia. I do not regret my choice and it has been successful, but I cannot shield you from the darkness forever. You must shine forth with a light of your own.*/
= @258 /*You can know peace, but you must put your faith in love and hope. You must live a life of kindness instead of cruelty.*/
== VICONIJ @259 /*I... I...*/
= @260 /*I... cannot, Mazzy. I have no hope of ever knowing peace. The rivvin will always hate me. Lolth will always be there to torture me. Even if you protect me during your life, what good will that do? You are a halfling and your short life is but a brief flash of light in a dark, cold, and endless night.*/
= @261 /*I will never be free of Lolth, Mazzy, not ever. Even if I embraced kindness, the first person I offered it to would kill me where I stood, and when I died, I would return to Lolth again for another round of torment. Once she grew tired of my agony, she would send me forth helpless and naked to face the world's abuse once more, powerless to prevent it.*/
= @262 /*Do you have any idea how many times I have done this, Mazzy? How many times I have regained my power only to start over?*/
== MAZZYJ @263 /*I am not sure I understand. Are you saying you have already died?*/
== VICONIJ @264 /*I am hundreds of years old, Mazzy. Are you so stupid as not to realize that my power should be greater? I fled the drow and came to the surface and I died. I have died so many times. But every time Lolth brings me back. She savors my misery and recreates my body from the inside out. I am aware and in agony as she adds each bone and muscle.*/
= @265 /*Each time I hope that if I only gain enough power I will be able to delay the inevitable and live forever, but it is never enough.*/
== MAZZYJ @266 /*Then maybe power is not your answer. Maybe you should seek happiness instead.*/
== VICONIJ @267 /*One time I could not take it anymore. I broke and begged for my torment to end. And do you know what Lolth replied?*/
= @268 /*"You will never die, my love, not while your misery is sweet. But should that change... should you dare to find happiness in life, then I will kill you myself and torture your soul for all eternity."*/
= @269 /*She will, Mazzy. You have stopped her for a short while, but there is no saving me. Now leave me alone.*/
EXIT

//14th Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",37)~ THEN MAZZYJ _bMazzyVic25
@270 /*Viconia, do you plan to brood for the entire <DAYNIGHT>? It is past time to raise your head, pick up your spirits, and once more embrace what is good about life.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",38)~
== VICONIJ @271 /*Why? Why should I? There is nothing for me to look forward to. Not now and not ever.*/
== MAZZYJ @272 /*Because for now you are alive! Who knows what will happen tomorrow! I demand that you be happy. Or failing that at least pretend for the rest of us.*/
== VICONIJ @273 /*You demand? Or what, you'll challenge me again?*/
== MAZZYJ @274 /*If you refuse to make even the slightest effort then I will refuse to keep my blessing upon you and protect you in your dreams.*/
= @275 /*I am a knight and you are my damsel in distress, remember? I will save you, but you must work with me. Find what joy you can, even if it is short-lived. Life, after all, is temporary.*/
== VICONIJ @276 /*Very well, my paladin. Let us find what small pleasures exist in this world, even if they are fleeting and this whole process is futile. Maybe some villains will ambush us and you will allow me to liquefy their bones. I do believe that would make me feel better.*/
== MAZZYJ @277 /*That is the spirit, Viconia. We will make a hero of you yet!*/
EXIT

//Bad Sex Talk
CHAIN IF WEIGHT #-1 ~Global("_bMVSexTalk","GLOBAL",1)~ THEN VICONIJ _bMazzyVicSex1
@278 /*Can I sleep here, Mazzy?*/
== MAZZYJ @279 /*Of course, Viconia. Problems with <CHARNAME>?*/
== VICONIJ @280 /*You heard us?*/
== MAZZYJ @281 /*Everyone within two hundred yards heard you, Viconia. Your loving is loud, but your fighting is always louder. Do you wish to tell me about it? I will listen and try not to be too judgemental.*/
== VICONIJ @282 /*I finally lay with him, Mazzy... my male... my surface-dweller... my ssinssrigg. I had such hopes for us but he was so disappointing. Now I don't know what to do.*/
== MAZZYJ @283 /*Viconia, you are many times my elder, but sometimes you are still very foolish. <CHARNAME> is a child. He may seem mature due to his experience but in terms of years, he is young even compared to me.*/
= @284 /*Furthermore, he was raised in a library by monks. You may have been his first woman ever. You are lucky he knew anything and you are complaining because he was not skilled?*/
== VICONIJ @285 /*So what am I to do? Every day with him moves me one step closer to the abyss and I refuse to suffer such a fate merely for nights of boredom and dissatisfaction.*/
== MAZZYJ @286 /*Viconia, why were the drow males you knew so wonderful?*/
== VICONIJ @287 /*They were dedicated to us... they were trained... and, of course, we would kill them if they displeased us.*/
== MAZZYJ @288 /*<CHARNAME> loves you and he is dedicated. He has endured much abuse trying to win your heart and for some reason he has never given up. But he is not trained. If you want a trained male then you will have to teach him yourself.*/
== VICONIJ @289 /*Oh... well that should not be too hard. I do not have any pain collars, but I have a spell which should...*/
== MAZZYJ @290 /*No. No pain. Try this. Think of what you want <CHARNAME> to do and then ask it of him. Show him if possible. Be supportive. Be encouraging! The boy would walk through fire for you.*/
== VICONIJ @291 /*Ooooh, fire!*/
== MAZZYJ @292 /*No fire! You must have patience. <CHARNAME> could become the greatest lover you've ever had, but you will have to teach and develop him, like nurturing a small sapling into a tall tree.*/
== VICONIJ @293 /*I have never planted a tree, but I think I understand. However, that is not the main reason I drove him away.*/
== MAZZYJ @294 /*I did not think so. What is the reason then? You are afraid, but of what?*/
== VICONIJ @295 /*Death... the abyss... weakness... <CHARNAME> is the first male I have ever considered knowing as an equal... considered trusting. It is a weakness in me. I would know him, I would love him, I would have his children, and I would die and return to Lolth. If I become that weak, I will be unable to protect myself and I cannot trust that <CHARNAME> will be able to protect us in my place.*/
== MAZZYJ @296 /*He has done a good job of protecting all of us so far. Why do you think he will fail now?*/
== VICONIJ @297 /*He cannot protect me from the darkness, Mazzy. His god-blood pulls him to it like a moth to flame. Whether he moves to embrace it or confront it, the darkness will destroy him before consuming me as well.*/
= @298 /*Lolth is always watching, she is always waiting, and she will strike when I am at my happiest. <CHARNAME> is a child as you said. He cannot protect me... so I must drive him away.*/
== MAZZYJ @299 /*And if that fails? It will likely fail, you know. He's pursued you through so much bitterness and venom already, why do you think you can push him away now? Odds are he will accept what you say and love you anyway and then what will you do?*/
== VICONIJ @300 /*I... do not know.*/
== MAZZYJ @301 /*Yes, you do; you will do what you always do. You will apologize, give him a beautiful, seductive smile and promise that this time you really will be gentle and stop attacking him. Will you mean it?*/
== VICONIJ @302 /*I do not know that either. I suppose I will mean it at the time. I do not know what I am doing, Mazzy.*/
== MAZZYJ @303 /*I know. If it makes you feel better, I rarely know what I am doing either. I think we all just make our lives up as we go.*/
== VICONIJ @304 /*But I did know, Mazzy. For almost two centuries I had a purpose and a reason for living. But that ended when I came to the surface. I have been wandering up here for far, far longer than you have been alive and yet I still feel like a lost little girl. Maybe that is why <CHARNAME> does not seem so young to me.*/
= @305 /*I want to thank you, Mazzy. I do not know what I will do with <CHARNAME>, but... you have given me hope that maybe I will figure it out.*/
DO ~SetGlobal("_bMVSexTalk","GLOBAL",2)~
EXIT

//Sex Talk 2
CHAIN IF WEIGHT #-1 ~Global("_bMVSexTalk2","GLOBAL",2) Global("_bMazzyVicFriends","GLOBAL",2)~ THEN VICONIJ _bMazzyVicSex2
@306 /*Tell me something, my very tiny paladin, why are you not with <CHARNAME>? I know you desire him, and you know he feels the same. So why? Is it because of me?*/
== MAZZYJ @307 /*You are my friend, Viconia, and so is <CHARNAME>. I would never ruin that.*/
== VICONIJ @308 /*I could share, Mazzy. You would have my permission. I would probably not even set both of you on fire.*/
== MAZZYJ @309 /*Viconia, the relationship between you and <CHARNAME> is far more volatile and chaotic than I prefer. I do not wish to get involved.*/
== VICONIJ @310 /*That is my fault. I am... difficult to get along with and I have had trouble accepting the idea of a male as my equal. There is no reason that a relationship between the two of you would be the same*/
== MAZZYJ @311 /*For argument's sake, let us say that I accepted your offer, Viconia. Would <CHARNAME> be tasked with satisfying both of us? We would kill the poor boy. He has to sleep, eat, and still have energy to fight.*/
== VICONIJ @312 /*You would just have to learn moderation, my insatiable little paladin. We would ration him, and if we wore him out, then I have spells to help.*/
== MAZZYJ @313 /*Ration him? How would we do that? Do you plan to make a schedule? Since when do you preach moderation anyway?*/
== VICONIJ @314 /*Your tone is mocking, but listen. This is something that I know.*/
= @315 /*There was a time, long ago, when I realized that as a female drow and a handmaiden of Lolth, I had access to an unlimited number of wonderful males. They were trained, dedicated, and obedient to my every whim. They would pleasure me as if their lives depended on it.*/
== MAZZYJ @316 /*From your stories, their lives DID depend on it.*/
== VICONIJ @317 /*Well, yes, but it was not only fear. We were extensions of Lolth, imbued with immense powers. The males worshiped us and while their numbers and dedication meant more pleasure than even I could experience in a single lifetime, I was determined to try.*/
= @318 /*Over time, I learned exactly what I wanted and my favorite males learned too. Soon I was spending every free moment of every day in pleasure and the other parts of my life faded away. I was neglecting my duties. I was neither eating nor sleeping enough and this could not continue... it was only a matter of time before some lower ranked female killed me and advanced her position.*/
= @319 /*And then one tried. I was lucky... she was young and impatient. Had she waited another year, she would have succeeded. Even so I barely defeated her and I realized that in my carelessness and single-minded pursuit of pleasure, I had become weak.*/
== MAZZYJ @320 /*And THAT was how you learned the importance of moderation?*/
== VICONIJ @321 /*Not at first. First I was focused on making an example of my enemies. I cut off the assassin's head, rounded up as many of my own family as I could find, and marched on this rival house.*/
= @322 /*When I found the matriarch, I threw her daughter's head at her feet, captured her and most of her family and sacrificed them to Lolth. No one attempted to kill me for many years after that.*/
= @323 /*But yes, it was during those sacrifices that I decided over-indulgence was a weakness... that while I enjoyed my time with my males, I was unwilling to die for it. After that I rationed myself carefully, slowly savoring each moment as if it were my last.*/
== MAZZYJ @324 /*I do not think I will ever grow accustomed to your tales. Do you not have happy stories?*/
== VICONIJ @325 /*That WAS a happy story, tiny paladin. I enjoyed many males, I survived an attempted assassination, I triumphed over my enemies, and I emerged wiser and stronger from the experience.*/
= @326 /*However, you still have not answered my question. <CHARNAME> is yours to borrow if you want him. Do you?*/
== MAZZYJ @327 /*Yes, I want him, but I will not accept your offer. “Borrowing” <CHARNAME> would not be as simple as you think. He is not simply a toy for us to use. He has feelings, he is young, and just being with you has been enough of an emotional trial for him without adding me as well.*/
== VICONIJ @328 /*But... I... miss you. Your presence calms me and while I enjoy <CHARNAME>, he cannot shield me from the dark. I feel his god-blood pulling us both toward destruction.*/
== MAZZYJ @329 /*Viconia, should either of you fall into the abyss, I will do my best to drag you out. However, your bed is for you and <CHARNAME> and I will not share it.*/
== VICONIJ @330 /*Very well then. Will you at least continue to travel with us and shield me from the Spider Queen?*/
== MAZZYJ @331 /*Of course, Viconia. Always.*/
DO ~SetGlobal("_bMVSexTalk2","GLOBAL",3)~
EXIT

//Courtship Talk
CHAIN IF WEIGHT #-1 ~Global("_bMVCNLoveTalk","GLOBAL",1)~ THEN MAZZYJ _bMazVCNTalk
@332 /*Viconia?*/ 
== VICONIJ @333 /*Yes, my tiny paladin? What can I do for you?*/
== MAZZYJ @334 /*You COULD refrain from repeatedly calling me tiny.*/
== VICONIJ @335 /*That I will not do, my fantastically tiny paladin. You ARE small and nothing you do will change this so you need to accept it instead. Otherwise...*/
== MAZZYJ @336 /*Otherwise it is a weakness that is going to get me killed. You have told me this already.*/
== VICONIJ @337 /*But you have not listened and so I am telling you again. However, this is not why you wanted to speak with me.*/
== MAZZYJ @338 /*No, it is about <CHARNAME>.*/
== VICONIJ @339 /*Ah yes, the gallant champion who yearns to finish your quest and win <PRO_HISHER> princess's heart. You are ridiculous, tiny princess. If you want <CHARNAME>, you only need to say the word and <PRO_HESHE> would be naked in your arms before you finished speaking. Why all this questing nonsense?*/
== MAZZYJ @340 /*You are likely correct, Viconia, but I am not a good judge of intentions or motivations and I wanted to see how <CHARNAME> would respond.*/
= @34000 /*Plus this task will serve the greater good and is one I have sworn on my life to complete. My request is hardly meaningless...*/
= @341 /*But there is another reason as well. I am afraid of being with <CHARNAME> and so I wanted time. This quest allows me to delay. That is why I wanted to speak with you.*/
== VICONIJ @342 /*YOU'RE afraid? My ferocious little paladin is shaking and terrified? Why?*/
== MAZZYJ IF ~Gender(Player1,MALE) Race(Player1,HALFLING)~ THEN @343 /*<CHARNAME> represents everything that I rejected: a husband, a home, children, a family...*/
== VICONIJ IF ~Gender(Player1,MALE) Race(Player1,HALFLING)~ THEN @344 /*So? You're just sharing a bed, not the rest of your lives. Who cares about tomorrow?*/
== MAZZYJ IF ~Gender(Player1,MALE) Race(Player1,HALFLING)~ THEN @345 /*What if I become pregnant? I mean I know there are potions and all but...*/
== VICONIJ IF ~Gender(Player1,MALE) Race(Player1,HALFLING)~ THEN @346 /*Would you like me to prevent that?*/
== MAZZYJ IF ~Gender(Player1,MALE) Race(Player1,HALFLING)~ THEN @347 /*You can?*/
== VICONIJ IF ~Gender(Player1,MALE) Race(Player1,HALFLING)~ THEN @348 /*You have seen what I can do, yet you doubt me? Next you'll be questioning whether I can erase wrinkles or remove warts. Living bodies are mine to command, Mazzy, to bend to my will. Do you think I am this beautiful through luck?*/
== VICONIJ IF ~Gender(Player1,MALE) Race(Player1,HALFLING)~ THEN @349 /*Enjoy <CHARNAME> without worry, my little paladin. You will not have children until you want them.*/
DO ~SetGlobal("_bViconiaPreventsChildren","GLOBAL",1)~
== MAZZYJ IF ~Gender(Player1,MALE) Race(Player1,HALFLING)~ THEN @350 /*Thank you, Viconia, but that was only part of my fear. I am also afraid for you. You need me.*/
== MAZZYJ IF ~Gender(Player1,FEMALE)~ THEN @351 /*Well... you see, <CHARNAME> is a woman and...*/
== VICONIJ IF ~Gender(Player1,FEMALE)~ THEN @352 /*...and you have never been with a woman.*/
== MAZZYJ IF ~Gender(Player1,FEMALE)~ THEN @353 /*No, actually I have been with far more women than men... many halfling girls play like that together. But then we are supposed to grow up, get married, start a family... What will the neighbors say?*/
== VICONIJ IF ~Gender(Player1,FEMALE)~ THEN @354 /*Says the Paladin.*/
== MAZZYJ IF ~Gender(Player1,FEMALE)~ THEN @355 /*Okay, fine. I have never cared what the neighbors would say. But what will my mother say?*/
== MAZZYJ IF ~Gender(Player1,FEMALE)~ THEN @356 /*Bah, I already know what my mother will say. She will say she has some spell or magic item she's been saving for just this moment so that I can still give her grandchildren. You know how mothers are.*/
== VICONIJ IF ~Gender(Player1,FEMALE)~ THEN @357 /*My mother was the matron mother of House DeVir and she never pestered me about grandchildren. You are whining about nothing.*/
== MAZZYJ IF ~Gender(Player1,FEMALE)~ THEN @358 /*Well, thank you, Viconia. But that brings me to my main fear; I am afraid for you. You need me.*/
== MAZZYJ IF ~Gender(Player1,MALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,ELF)~ THEN @359 /*I like <CHARNAME> and I trust him as much as I trust anyone. But he is much larger and heavier than I am and...*/
== VICONIJ IF ~Gender(Player1,MALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,ELF)~ THEN @360 /*You are a halfling female, Mazzy. EVERYONE is bigger than you are. But I have never seen that stop you in battle. You swarm over ogres like an invincible ant; why are you afraid of <CHARNAME>?*/
== MAZZYJ IF ~Gender(Player1,MALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,ELF)~ THEN @361 /*In battle I have weapons and armour. With <CHARNAME> I will be naked and vulnerable. I can hide weapons around us, but <CHARNAME> is powerful and I am scared. I trust him based on his actions so far, but I have never seen <CHARNAME> with a woman, so how can I know how he will behave? What if he is not cooperative? What if he does not maintain control over himself? He is young and strong and likely inexperienced as well. I do not know what he will do.*/
== VICONIJ IF ~Gender(Player1,MALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,ELF)~ THEN @362 /*If it helps, I will promise to stay awake and keep an ear out. If <CHARNAME> proves disobedient, just shout and I will help you break him into submission.*/
== MAZZYJ IF ~Gender(Player1,MALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,ELF)~ THEN @363 /*Thank you, Viconia, but I have one more fear, and that is for you. You need me.*/
== MAZZYJ IF ~Gender(Player1,MALE) Race(Player1,GNOME)~ THEN @364 /*Well, he's a gnome, not to mention he's half-god as well.*/
== MAZZYJ IF ~Gender(Player1,MALE) Race(Player1,ELF)~ THEN @365 /*Well, he's an elf, not to mention he's half-god as well.*/
== VICONIJ IF ~Gender(Player1,MALE) OR(2) Race(Player1,ELF) Race(Player1,GNOME)~ THEN @366 /*And...?*/
== MAZZYJ IF ~Gender(Player1,MALE) OR(2) Race(Player1,ELF) Race(Player1,GNOME)~ THEN @367 /*He will stay youthful and strong while I age and die. What happens years from now, when he looks the same and I am an old woman?*/
== VICONIJ IF ~Gender(Player1,MALE) OR(2) Race(Player1,ELF) Race(Player1,GNOME)~ THEN @368 /*That is your fear? You are foolish, little one. Look at your lives! Both of you will die horribly long before you reach old age.*/
== MAZZYJ IF ~Gender(Player1,MALE) OR(2) Race(Player1,ELF) Race(Player1,GNOME)~ THEN @369 /*Oddly enough, that helps. I will take this one day at a time. But I have one more fear and that is for you. You need me.*/
== VICONIJ @370 /*I will be fine, little one. I am Viconia DeVir, and I am not going anywhere. Satisfy your lust with <CHARNAME> or not,..it makes no difference to me.*/
== MAZZYJ @371 /*Oh? You will not be jealous that there is a new <PRO_MANWOMAN> in my bed? You will not miss sharing my bath? We are friends and now there will be someone else.*/
== VICONIJ @372 /*<CHARNAME> is my friend as well, you both are, and you deserve this. I enjoy your company but <CHARNAME> will love you a little more... actively.*/
== MAZZYJ @373 /*Thank you, Viconia. I am going to sleep now, if you do not mind.*/
== VICONIJ @374 /*Then sleep, my lovely paladin. I need rest as well.*/
= @375 /*Oh tiny rivvin...*/
== MAZZYJ @376 /*Hmm?*/
== VICONIJ @377 /*If you and <CHARNAME> have too much fun, I may request to join you.*/
== MAZZYJ @378 /*Hah.*/
DO ~SetGlobal("_bMVCNLoveTalk","GLOBAL",2) RestParty()~
EXIT

//Mazzy Romance Sex Talk
CHAIN IF WEIGHT #-1 ~Global("_bMVSexTalk3","GLOBAL",1)~ THEN VICONIJ _bMazzyVicSex3
@379 /*Mazzy, <CHARNAME>, stop and speak with me. Tonight, you will couple together? Pleasure each other?*/
DO ~SetGlobal("_bMVSexTalk3","GLOBAL",2)~
== MAZZYJ @380 /*You are being impolite; it is not your business when we lie together.*/
== VICONIJ IF ~!Race(Player1,HALFLING)~ THEN @381 /*I wish to make it my business, I wish to observe. I have never seen a halfling couple with a <PRO_RACE> before.*/
== VICONIJ IF ~Race(Player1,HALFLING)~ THEN @382 /*I wish to make it my business, I wish to observe. I have never seen two halflings couple before.*/
== VICONIJ @383 /*It could prove... informative. I could offer pointers as well to improve your clumsy efforts.*/
END
	++ @384 /*I really don't want you anywhere near me, Viconia. So... no.*/ + _bMazzyVicSex3No1
	++ @385 /*No. I don't like an audience.*/ + _bMazzyVicSex3No2
	++ @386 /*Sure, I always perform better with someone watching.*/ EXTERN MAZZYJ _bMazzyVicSex3Yes1 
	++ @387 /*Why just watch? We're all friends here. Come join us!*/ EXTERN MAZZYJ _bMazzyVicSex3Yes2
	+ ~Global("_bCNWantsVic3Some","GLOBAL",1)~ + @388 /*Yes! I've been waiting for this. You should join in.*/ EXTERN MAZZYJ _bMazzyVicSex3Yes2
	
CHAIN VICONIJ _bMazzyVicSex3No1
@389 /*Fine! Engage in your pathetic, amateurish efforts. I may have been able to instruct you as to how not be a complete failure in the arts of love, but clearly my talents are not in demand.*/
EXIT

CHAIN VICONIJ _bMazzyVicSex3No2
@390 /*I would be quiet as a mouse. But fine, I can see when I am not wanted. You may do your business alone*/
EXIT

CHAIN MAZZYJ _bMazzyVicSex3Yes1
@391 /*<CHARNAME>! This is most forward.*/
= @392 /*But I suppose it will not do any harm. We are, after all, long-time travelling companions. Yes, Viconia, you may observe away next time.*/
DO ~SetGlobal("_bVicWatch","GLOBAL",1)~
EXIT

CHAIN MAZZYJ _bMazzyVicSex3Yes2
@393 /*<CHARNAME>!*/ 
== VICONIJ @394 /*Well... your ssinssrigg has had an interesting idea, my paladin. Shall I join you? You will not find my skills... unappealing.*/
== MAZZYJ @395 /*Join us? I admit you are attractive but I would have preferred to discuss this in advance. I am not sure how to respond.*/
== VICONIJ @396 /*You will respond by grabbing my hair, my skin, and my breasts and screaming, “Yes! Viconia! Oh yes! More! More!” That is what surfacers usually do when I turn my attentions onto them.*/
= @397 /*I will admit that I have never used my skills upon a female, but I assume they will have the same results.*/
== MAZZYJ @398 /*Perhaps. However, there is a darkness inside you, Viconia, and I am not sure if I can manage it.*/
== VICONIJ @399 /*You... you already do, my paladin. You do it every single day. When I am with you, I feel contained and safe. I am no longer lost in the great vastness of this world.*/
= @400 /*I have never felt that before. Please... I cannot be alone again. */
== MAZZYJ @401 /*Very well, with Arvoreen's blessing, my light will outshine everything else.*/
= @402 /*But what about <CHARNAME>? Currently, I am enjoying the full extent of <PRO_HISHER> efforts. Must I share?*/
== VICONIJ @403 /*Hah! With a tiny fraction of my power, I can keep <CHARNAME> going for hours... days... <PRO_HESHE> will pleasure you longer than <PRO_HESHE> ever has before and still have energy left over for me.*/
= @404 /*As for <PRO_HISHER> romantic gestures and loving affection, you may keep that for yourself. I have no interest in such weak mewling.*/
== MAZZYJ @405 /*Then I agree. Next time we lay together, you may join us as well.*/
DO ~SetGlobal("_bVicJoin","GLOBAL",1)~
EXIT

//Post Sex Talk
APPEND MAZZYJ 
	IF WEIGHT #-1 ~Global("_bMVSexTalk3","GLOBAL",3) Global("_bVicWatch","GLOBAL",1)~ THEN _bMVPostSex1
	SAY @406 /*<CHARNAME>, Viconia, I will admit that you were both correct and I was mistaken. Having Viconia there to offer advice produced a wonderful result. We should do that again soon.*/
	IF ~Gender(Player1,MALE) !Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,ELF)~ THEN EXTERN VICONIJ _bMVPostSex3
	IF ~OR(4) Gender(Player1,FEMALE) Race(Player1,GNOME) Race(Player1,HALFLING) Race(Player1,ELF)~ DO ~SetGlobal("_bMVSexTalk3","GLOBAL",4) SetGlobal("_bVicMaz3Some","GLOBAL",1)~ EXIT
	END

	IF WEIGHT #-1 ~Global("_bMVSexTalk3","GLOBAL",3) Global("_bVicJoin","GLOBAL",1)~ THEN _bMVPostSex2
	SAY @407 /*<CHARNAME>, inviting Viconia to join us was a grand idea. We should do that again some time.*/
	= @408 /*And Viconia, you were not boasting in the least. You are amazing and your skills produced a wonderful result.*/
	IF ~Gender(Player1,MALE) !Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,ELF)~ THEN EXTERN VICONIJ _bMVPostSex3
	IF ~OR(4) Gender(Player1,FEMALE) Race(Player1,GNOME) Race(Player1,HALFLING) Race(Player1,ELF)~ DO ~SetGlobal("_bMVSexTalk3","GLOBAL",4) SetGlobal("_bVicMaz3Some","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bMVPostSex4
	SAY @423 /*Really? <CHARNAME>, you are wonderful and you never cease to amaze me. You heard him, Viconia. Shape away. May I offer suggestions as you work?*/
	IF ~~ THEN EXTERN VICONIJ _bMVPostSex6
	END
	
	IF ~~ THEN _bMVPostSex5
	SAY @424 /*I would never ask that of you, <CHARNAME>. But if you could do it for me, Viconia, I would be grateful. I would like to be able to throw myself at him with abandon. May I offer input as you work?*/
	IF ~~ THEN EXTERN VICONIJ _bMVPostSex6
	END
END
  
CHAIN VICONIJ _bMVPostSex3
@409 /*I can do better than that. <CHARNAME> does not really make a good fit for a halfling, does he? I noticed that you two do not really match.*/
== MAZZYJ @410 /*We are managing, Viconia. I purchased oil which helps and <CHARNAME> has been considerate enough to go slowly, pay careful attention, and kiss me there for as long as I require.*/
== MAZZYJ IF ~Race(Player1,DWARF)~ THEN @411 /*But, yes, you are correct. It is not so much the length as the width and I simply cannot manage to take him comfortably. I never thought of dwarves as being that much larger than halflings, but I did not consider the girth. Dwarven women must be more flexible.*/
== MAZZYJ IF ~OR(3) Race(Player1,HUMAN) Race(Player1,HALFORC) Race(Player1,HALF_ELF)~ THEN @412 /*But, yes, you are correct. It is too long and too wide, and I simply cannot manage to take him comfortably. It is an annoying reminder that I am not as large as I would like.*/
== VICONIJ @413 /*As usual your capacity for understatement borders on the ridiculous. I have seen rivvin females mate with ogres with greater ease and the weaklings were all dying by morning.*/
= @414 /*I on the other hand endured the entire band's affections and am here to tell the tale. The ogres all died in agony, of course, but I had to wait until they slept to make my move.*/
== MAZZYJ @415 /*Your tales remain as morbid as ever. I suppose you will now tell me the secret? Some fantastic drow enchantment that allows you to lie with any species you so choose?*/
== VICONIJ @416 /*Hah! I am a priestess, one of untold power and knowledge who's refined her skills over hundreds of years. My flesh bends to my whim and when I saw what sort of swords those ogres were brandishing, I quickly made myself their equal.*/
= @417 /*With <CHARNAME> you have another option; I could simply shrink his sword to fit your matching sheath. This should also keep him loyal. If he abandons you, I will simply refuse to shape it back.*/
END
	++ @418 /*Work your magic, Viconia. Anything to make Mazzy more comfortable.*/ EXTERN MAZZYJ _bMVPostSex4
	++ @419 /*Sure, why not? That sounds interesting*/ EXTERN MAZZYJ _bMVPostSex4
	++ @420 /*Umm, I would prefer not to have Viconia turn my... uh... sword  into a dagger.*/ EXTERN MAZZYJ _bMVPostSex5
	++ @421 /*No. No flesh-shaping magic. That seems wrong.*/ EXTERN MAZZYJ _bMVPostSex5
	++ @422 /*You are not putting your hands anywhere near my “sword”.*/ EXTERN MAZZYJ _bMVPostSex5
	
CHAIN VICONIJ _bMVPostSex6
@425 /*I will require assistance and feedback from both of you. Now prepare, you surfacers have a... fantastically low pain tolerance and this will probably hurt. Try not to scream.*/
DO ~SetGlobal("_bMVSexTalk3","GLOBAL",4) SetGlobal("_bVicMaz3Some","GLOBAL",1) SetGlobal("bVicShaped","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-2 ~Global("_bMVSexTalk3","GLOBAL",6)~ THEN VICONIJ _bMVPostSex7
@426 /*There. You may thank me later.*/
DO ~SetGlobal("_bMVSexTalk3","GLOBAL",7)~
EXIT

//Post 3Some Talk
CHAIN IF WEIGHT #-1 ~Global("_bPostMV3Talk","GLOBAL",2)~ THEN VICONIJ _bMV3Talk
@427 /*You, <CHARNAME>. You wish to say something to me?*/
END
	++ @428 /*Viconia, I...*/ + _bMV3Talk1
	++ @429 /*Viconia, we...*/ + _bMV3Talk1
	++ @430 /*Viconia, you...*/ + _bMV3Talk1
	
CHAIN VICONIJ _bMV3Talk1
@431 /*On second thought, <CHARNAME>, do not talk. I am enjoying a fantastic <DAYNIGHTALL> and you will undoubtedly say something to ruin it.*/
DO ~SetGlobal("_bPostMV3Talk","GLOBAL",3)~
= @432 /*You will want to know what our coupling means.*/
= @434 /*It means nothing, <CHARNAME>. It was an enjoyable physical experience and I would be willing to do it again, but it changes nothing between us.*/
== VICONIJ @436 /*That is all.*/
END
	++ @437 /*Yes, but...*/ + _bMV3Talk2
	++ @438 /*No, but...*/ + _bMV3Talk2
	++ @439 /*Okay.*/ EXIT
	
CHAIN VICONIJ _bMV3Talk2
@440 /*Nothing, <CHARNAME>. We continue exactly as before.*/
EXIT

//Breakup Talk if Mazzy Steals CN (1st version)
CHAIN IF WEIGHT #-1 ~Global("_bMVBreakup","GLOBAL",1) Global("_bMazzyVicFriends","GLOBAL",2)~ THEN VICONIJ _bMVBreakup
@441 /*You stole my male! If it was anyone else, I would murder you both slowly and painfully.*/
DO ~SetGlobal("_bMVBreakup","GLOBAL",2) SetGlobal("_bMazzyVicFriends","GLOBAL",0)~
== MAZZYJ @442 /*<CHARNAME> left you for me. It was regrettable and I am sorry to hurt you, but that was his choice.*/
== VICONIJ @443 /*His choice!? He is mine! He does not get to choose.*/
== MAZZYJ @444 /*I think you are confused about the rules of relationships on the surface. There is always a choice.*/
== VICONIJ @445 /*Honor demands that I wait until you are asleep after your traitorous joining and then paralyze you both.*/
= @446 /*After that I will burn you alive... or flay you... or perhaps I should grab two spears and slowly impale you...*/
= @447 /*But if I did that, I would have no friends at all...*/
== MAZZYJ @448 /*Well, I will apologize, but I think you will just have to accept...*/
== VICONIJ @449 /*Silence, no more from you. You are confusing me and I need to think.*/
= @450 /*You are a rival female, you stole my male, so you must die.*/
= @451 /*Unless... you were not a rival female. Unless you were mine as well...*/
= @452 /*<CHARNAME>! I am calling a rest here.*/
END
	++ @453 /*Okay, this seems like a good time.*/ + _bMVBreakup1
	++ @454 /*Sure, let's rest.*/ + _bMVBreakup1
	++ @455 /*No, it's my decision and I ...*/ + _bMVBreakup2
	++ @456 /*We can't stop now, Viconia...*/ + _bMVBreakup2
	
APPEND VICONIJ IF ~~ THEN _bMVBreakup2
SAY @457 /*Be silent, <CHARNAME>. Today is too important to pretend you are in charge.*/
	IF ~~ THEN + _bMVBreakup1
	END
END

CHAIN VICONIJ _bMVBreakup1
@458 /*Now, Mazzy, let us help each other out of our armor.*/
== MAZZYJ @459 /*That is the natural thing to do when resting, but...*/
== VICONIJ @460 /*Shhhh, no more talking, little paladin, I am saving your life and you have wanted this since we met.*/
== MAZZYJ @461 /*Viconia, that is my tunic...*/
= @462 /*Should we not go into the privacy of my tent?*/
== VICONIJ @463 /*No, this must be public. I am claiming you as mine; let them see.*/
== MAZZYJ @464 /*But I...*/
== VICONIJ @465 /*I have never actually done this with a female but it does not seem complicated.*/
= @466 /*Listen carefully, my paladin, when we are finished, you will swear that this has been the most pleasurable night of your life, that you will hunger for my touch every future moment, and that you are mine to take whenever I wish. Do you understand?*/
== MAZZYJ @467 /*Well, I can hardly lie just to placate you. I have my own...*/
== VICONIJ @468 /*It will not be a lie. Let us begin.*/
== MAZZYJ @469 /*No.*/
== VICONIJ @470 /*No? But... but why?*/
== MAZZYJ @471 /*Viconia, you are attractive, yes. But you are also conflicted and filled with grief and anger.*/
= @472 /*If you wished to do this out of love, <CHARNAME> and I could discuss the possibility and you would likely be made welcome in our bed. But you are doing this out of possession and of fear. Fear of being alone and fear of your dark goddesses: the one you serve and the one who owns your soul.*/
= @473 /*I will not be intimate with you. I have chosen <CHARNAME> and he has chosen me, and that is something you will just have to accept. I still consider you my friend and I will protect you to the best of my abilities.*/
== VICONIJ @474 /*Even if you both die?*/
== MAZZYJ @475 /*Everyone dies, Viconia.*/
= @476 /*If you kill me in my sleep then that will be your choice, and you will have to live with it.*/
== VICONIJ @477 /*I...*/
= @478 /*Aaaagh.*/
= @479 /*Fine, little Paladin, go share his bed. I will manage fine on my own.*/
= @480 /*I was a fool to hope for more from either of you. I will not make that mistake again.*/
== MAZZYJ @481 /*It seems, <CHARNAME>, that we will not be resting here after all.*/
EXIT

//Breakup Talk if Mazzy Steals CN (2nd version)
CHAIN IF WEIGHT #-1 ~Global("_bMVBreakup","GLOBAL",1) Global("_bMazzyVicFriends","GLOBAL",1)~ THEN VICONIJ _bMVBreakup3
@441 /*You stole my male! If it was anyone else, I would murder you both slowly and painfully.*/
DO ~SetGlobal("_bMVBreakup","GLOBAL",2) SetGlobal("_bMazzyVicFriends","GLOBAL",0)~
== MAZZYJ @442 /*<CHARNAME> left you for me. It was regrettable and I am sorry to hurt you, but that was his choice.*/
== VICONIJ @443 /*His choice!? He is mine! He does not get to choose.*/
== MAZZYJ @444 /*I think you are confused about the rules of relationships on the surface. There is always a choice.*/
== VICONIJ @445 /*Bah! Had you coupled in secret, I would have murdered you both.*/
= @446 /*As it is, I am done with you. And done with him!*/
= @447 /*But I still have life-debts to repay...*/
= @448 /*I suppose I must continue to travel with you both, but do not consider me a friend!*/
EXIT
