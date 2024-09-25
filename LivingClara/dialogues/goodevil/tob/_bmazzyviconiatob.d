//1st Mazzy/Viconia conversation if former rescued latter
CHAIN
IF WEIGHT #-1 ~Global("_bMazzySavesViconia","GLOBAL",3)~ THEN VICON25J _bMazzyVic01
@1 /*You are Mazzy Fentan, yes? I am Viconia DeVir. Thank you for assisting me and also for... speaking for me afterwards.*/
DO ~SetGlobal("_bMazzySavesViconia","GLOBAL",4) SetGlobal("_bMazVicConv","GLOBAL",7)~
== MAZZY25J @2 /*It was nothing. What kind of person could have stood by and watched you burn alive? What kind of person would send you off on your own afterward?*/
== VICON25J @3 /*A normal one. Most rivvin desire my death and even the rest would not go out of their way to save me. There are few whom I can trust.*/
== MAZZY25J @4 /*You can trust me.*/
== VICON25J @5 /*Everyone says that. But how many rivvin prove trustworthy when their own necks are at stake? How many would not sell their own family for a bag of gold?*/ 
= @6 /*Yet you are not a normal rivvin, are you? You're one of the little rivvin; I admit I have never lived among your kind.*/
== MAZZY25J @7 /*Little rivvin? Halflings are more than just small humans.*/
== VICON25J @8 /*You would be rather useless if you were not: little more than children with toy weapons who play at being warriors.*/
= @9 /*But that is how you are thought of, is it not, when the rivvin think of you at all?*/
== MAZZY25J @10 /*You are correct, Viconia, but you need not take such joy in pointing out a painful truth.*/
== VICON25J @11 /*Why not? Every truth is painful. There is nothing in this world but misery and only by accepting that will you survive. Pretty illusions will be your death.*/
== MAZZY25J @12 /*There is joy in the world, Viconia. There are kind, trustworthy people. There is friendship and love.*/
== VICON25J @13 /*Perhaps, little one, but I have not seen them.*/
= @14 /*However, you are not just a tiny warrior. You smell of divine magic and self-control... you are a paladin! A halfling paladin, how novel. What will I see next, an orcish bard?*/
== MAZZY25J @15 /*I am not actually a paladin. I am a Truesword of Arvoreen, trained in archery and front-line defence and granted powers by my god.*/
== VICON25J @16 /*Front-line defense is it? What if our enemies decide to step over you? I can see that I will be extremely busy keeping you alive and whole.*/
== MAZZY25J @17 /*I am hard to kill. If you remember, I did help to rescue you.*/
== VICON25J @18 /*You did and I have become... distracted. I was thanking you and I pledge to do my utmost to ensure that you remain among the living.*/
== MAZZY25J @19 /*And I, you.*/
EXIT


//1st conversation if Mazzy didn't rescue Viconia
APPEND VICON25J 
	IF WEIGHT #-1 ~Global("_bMazzySavesViconia","GLOBAL",0) Global("_bMazVicConv","GLOBAL",0) Global("_bMazVicExtra","GLOBAL",1) OR(2) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN _bMazzyVic02
	SAY @20 /*Another tiny person. Seriously, <CHARNAME>, if I were your size I would choose larger company. We need someone on the front lines whom our enemies cannot merely step over.*/
	IF ~~ THEN DO ~SetGlobal("_bMazVicConv","GLOBAL",1)~ EXTERN MAZZY25J _bMazzyVic04
	END

	IF WEIGHT #-1 ~Global("_bMazzySavesViconia","GLOBAL",0) Global("_bMazVicConv","GLOBAL",0) Global("_bMazVicExtra","GLOBAL",1) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN _bMazzyVic03
	SAY @21 /*A miniature warrior, <CHARNAME>, seriously? I know you like to accept the broken, useless and needy into your company, but aren't you perhaps taking this a bit far? What's next? A tone-deaf bard? An ogre assassin? A blind archer?*/
	IF ~~ THEN DO ~SetGlobal("_bMazVicConv","GLOBAL",1)~ EXTERN MAZZY25J _bMazzyVic04
	END
END

CHAIN MAZZY25J _bMazzyVic04
@22 /*A drow? She's a drow! Why is there a drow with you, <CHARNAME>?*/
== VICON25J @23 /*You mean "with us," halfling. We are in the same party, are we not? And you should be thankful I am here. It will clearly take a priestess of great power, like myself, to keep you alive.*/
== MAZZY25J @24 /*I am more than a match for any of our enemies and especially for you, evil one!*/
END
	++ @25 /*I can see that this is going to work out wonderfully. Are you two finished?*/ EXTERN VICON25J _bMazzyVic05
	++ @26 /*Mazzy, meet Viconia. Viconia, this is Mazzy. Please try to get along.*/ EXTERN VICON25J _bMazzyVic05
	++ @27 /*Mazzy, Viconia isn't really that evil. Viconia, Mazzy really isn't that useless. Be friends!*/ EXTERN VICON25J _bMazzyVic05
	++ @28 /*Okay, the first rule of being in my party is no killing other party members. If you cannot play nice, you will have to leave.*/ EXTERN VICON25J _bMazzyVic05
	
CHAIN VICON25J _bMazzyVic05
@29 /*Do not worry about me, <CHARNAME>, I am merely jesting with our little toy soldier. Wait... she's not just a warrior... she smells of divine meddling and a useless moral code... she's a paladin! Oh this is too priceless, <CHARNAME>, I'm traveling with a toy paladin!*/
== MAZZY25J @30 /*I am not actually a paladin. I am a truesword of Arvoreen, but I do hope to become a paladin someday. I have dedicated my life to protecting the innocent and destroying evil such as you. But you have saved my life, <CHARNAME>, and if you wish me to travel with Viconia then I will... for now.*/
EXIT


//2nd conversation if didn't rescue & canon banter happened
APPEND MAZZY25J IF WEIGHT #-5 ~Global("_bMazVicConv","GLOBAL",3)~ THEN _bMazzyVic06
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
IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",6)~ THEN MAZZY25J _bMazzyVic12
@53 /*Viconia, I apologize for my earlier outburst. I have been watching your actions and for a drow, you are not that evil.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",7)~
== VICON25J @54 /*For a drow, I am not THAT evil? What a relief! I feel the same about you. For a tiny warrior you're not THAT useless. For a pretend-paladin you're not THAT bloodthirsty and intolerant.*/
== MAZZY25J @55 /*There's no need to be mean, Viconia. I am trying to apologize.*/
== VICON25J @56 /*Why? Why would you apologize?*/
== MAZZY25J @57 /*Because I judged you for being a drow when I did not know you. That is what the tall ones do to me constantly. I know what it is like to be judged on sight.*/
== VICON25J @58 /*Hah, you think you know what it's like to be judged? Why, because the rivvin mock you when you beg for them to accept you into their ranks?*/
= @59 /*No, Mazzy. You do not know their judgment and you do not know their hate. Begone.*/
EXIT

//4th conversation - both chains link here
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",9)~ THEN VICON25J _bMazzyVic13
@60 /*Little paladin, you are a fool! Despite being no larger than a well-fed chicken you throw yourself into harm's way at every opportunity. Yes, you are skilled and our opponents are weak, but you guarantee your own end with this nonsense. Why do you endlessly challenge death?*/
== MAZZY25J @61 /*No one asked for your opinion, Viconia. I do this because it is right. I protect the innocent and destroy the wicked. If I do not, who will?*/
== VICON25J @62 /*No one will and no one should. The weak should protect themselves or die. Why do you care?*/
== MAZZY25J @63 /*Because the world is dark and cruel. It is full of horrible people being mean and vile to each other which leads only to more grief and anger. Look at you, Viconia. You lash out at everyone around you even when they have not given you cause. Has no one ever been kind to you?*/
== VICON25J IF ~Global("_bMazzySavesViconia","GLOBAL",0)~ 
THEN @64 /*Three times I have been helped by the kindness of others. The first occurred when I was still with the drow and I will not talk about it now. The second time, long before <PRO_HESHE> met you, <CHARNAME> helped me fight a soldier who was trying to kill me. Most recently <PRO_HESHE> helped me yet again when I was going to be burned alive.*/
== VICON25J IF ~!Global("_bMazzySavesViconia","GLOBAL",0)~ 
THEN @65 /*Three times I have been helped by the kindness of others. The first occurred when I was still with the drow and I will not talk about it now. The second time, long before <PRO_HESHE> met you, <CHARNAME> helped me fight a soldier who was trying to kill me. Most recently, you and <CHARNAME> helped me when I was going to be burned alive.*/
== MAZZY25J @66 /*And did you value those actions, Viconia? Do you value the people who saved your life?*/
== VICON25J @661 /*I said they helped me... I did not say they saved my life! I am not a weak fool who needs rescuing!*/ 
= @67 /*But... yes, I value them more than anything in this world.*/
== MAZZY25J @68 /*That is why I do what I do, Viconia. Someday I will fight an enemy who is too much for me and on that day I will fall. But before I do, I hope someone will value me for being kind and saving them when they could not save themselves.*/
== VICON25J @69 /*Hmm. Tiny paladin, perhaps there is value in what you have said. I will reflect upon this further.*/
END
	++ @6900 /*Mazzy, Viconia, I'm tired of listening to you. Just be silent for the rest of our adventures, will you?*/
		DO ~SetGlobal("_bMazVicConv","GLOBAL",444) SetGlobal("_bMazzyVicFriends","GLOBAL",3)~ EXIT
	++ @6901 /**Say nothing.**/
		DO ~SetGlobal("_bMazVicConv","GLOBAL",10) SetGlobal("_bMazzyVicFriends","GLOBAL",1) ApplySpellRES("_bREP","Viconia")~  //Spell should stop Viconia from leaving at high reputation 
			EXIT

//Leaving because of rep doesn't appear to be an issue in TOB

//5th conversation 
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",12)~ THEN MAZZY25J _bMazzyVic14
@71 /*Viconia, why do you keep calling me a paladin when you know that I'm not one?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",13)~
== VICON25J @72 /*Because you ARE a paladin, tiny paladin. You are a warrior with powers granted by your god, you bind yourself to a ridiculous moral code that guarantees your death on the blade of someone more morally flexible, and you are intolerant and judgmental of anyone unlike yourself. You are like every paladin I have ever met, only shorter.*/
== MAZZY25J @73 /*Well, I thank you for your words. They bring a smile to my lips, though I think you meant to insult by calling me tiny and short.*/
== VICON25J @74 /*It is not an insult to call you what you are. You are a halfling and halflings are called halflings for a reason. But when I mocked you for your fighting skills, that *was* an insult and I recant it now.  You are most effective in combat, like a ferocious centipede or a courageous battle toad.*/
== MAZZY25J @75 /*A courageous battle-toad-sized paladin? I can live with that.*/
EXIT

//6th Conversation
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",15)~ THEN MAZZY25J _bMazzyVic15
@76 /*Viconia, why are you so vicious and cruel to your fellow party members?*/
= @77 /*You insult us and try to hurt our feelings. But without us you would be alone and hunted once again, so why do you wish to drive us away?*/
== VICON25J @78 /*I am not sure, Mazzy... but perhaps this is an answer. Every surfacer considers themselves my equal, which makes all of you threats to my life.*/
= @79 /*Among the drow, I had no equals. Males and slaves lived to serve me. Females were ranked by Lolth on a ladder of prestige, and we spent our days struggling for power and position. Every day I tested those around me to gauge their moods and probe for weaknesses so that I could kill them when they let down their guard, or be ready when they tried to end my life.*/
== MAZZY25J @80 /*But you do not need to do that now! We are not your enemies. None of us will try to kill you.*/
== VICON25J @81 /*Perhaps... or perhaps not. During my travels with <CHARNAME>, I have often felt that some of <PRO_HISHER> companions would have assaulted me had <CHARNAME> not been present; <PRO_HESHE> is the only one I trust enough to keep watch while I sleep.*/
== MAZZY25J @82 /*When you sleep? Do you mean to say that every night since you first began travelling with <CHARNAME>, you have only slept during <PRO_HISHER> watches? What do you do for the rest of the night? How are you still functioning?*/
== VICON25J @83 /*I spend the rest of the night in light meditation, aware of my surroundings while recharging my power. This is not as trying as you think. As a drow, I sometimes went weeks without truly sleeping.*/
== MAZZY25J @84 /*You must be exhausted.*/
== VICON25J @85 /*I am... very tired. But not so tired that I would prefer death.*/
== MAZZY25J @86 /*Do you trust me not to kill you? You could sleep during my watches as well.*/
== VICON25J @87 /*I believe you may try to kill me yet, but I do not think you would do it while I slept. Your foolish, suicidal code requires you to fight your enemies head on. I think you would declare your challenge and then give me a day to rest and memorize my spells.*/
== MAZZY25J @88 /*That would be the fair thing to do. It would be dishonourable to attack you when all you have prepared are spells to heal me in combat.*/
== VICON25J @89 /*Fair and honorable are words without meaning, Mazzy. But yes, guard me while I sleep, diminutive paladin, and I will do the same for you.*/
== MAZZY25J @90 /*Sleep well, Viconia. You are among friends.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",16) RestParty()~
EXIT

//7th conversation
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",18)~ THEN MAZZY25J _bMazzyVic16
@91 /*You are unusually sullen today, my friend. What is wrong?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",19)~
== VICON25J @92 /*Why? Why am I your friend? Why am I <CHARNAME>'s friend? You think I don't know how people see me? Every person we meet treats you poorer because you are with me. My existence drags your names through the mud. Why do you help me?*/
== MAZZY25J @93 /*Because we believe you can be saved. Once you see the light, you will be redeemed... You will give up your dark goddess and join us as servants of righteousness!*/
== VICON25J @94 /*I can be saved? You think I am some... damsel in distress and you are the knight who will rescue me? I am not some weakling who would die without your help; I am Viconia DeVir!*/
== VICON25J IF ~InPartyAllowDead("Aerie")~
THEN @95 /*But you... you see me as another broken bird, wingless and helpless? I am not her. I spit on the comparison.*/
== MAZZY25J IF ~InPartyAllowDead("Aerie")~
THEN @96 /*Aerie is stronger than you know, Viconia. But this is not about her, this is about us.*/
== MAZZY25J @97 /*It is not a weakness to admit that you need help. We all need aid from time to time, that is why we travel together as friends. It is through our friends that we know hope, joy, love, and peace, and I believe that one day you will know them too.*/
== VICON25J @98 /*Hah, I know them well. I *hope* to delay my death for as long as I can, I find *joy* in slaughtering the rivvin who try to hurt me, my greatest *love* is avenging myself on those who took advantage of my previous helplessness, and I will know *peace* when all my enemies are dead.*/
= @99 /*I will not play any further part in this delusion. YOU ARE NOT HUMAN! You are not a paladin! The rivvin will never accept you, no matter how many weak, helpless maidens you rescue, and I am not one of them.*/
= @100 /*Now leave me. We are done speaking.*/
EXIT

//8th Conversation 
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",21)~ THEN VICON25J _bMazzyVic17
@101 /*Well, little one. Speak! I am tired of you following me around. Let those words leave your tongue and be done with it.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",22)~
== MAZZY25J @102 /*Very well, Viconia, I refuse to let you drive me away. I have decided that I will not abandon you simply because you have a sharp tongue. You are not truly evil.*/
== VICON25J @103 /*Do you have any idea how many rivvin I have slain, Mazzy?*/
= @104 /*I remembered everyone who ever hurt me: every face, every name, every cut, every beating, every rape, everyone who's ever cursed me or thrown dung or rotten food. They are gone, Mazzy; I found and I slaughtered them all... the men... the women... the children...*/
= @105 /*Sometimes it took months or years for the opportunity to present itself, but whenever I regained some measure of power, I tracked them down. And for every moment of pain and shame they caused me, I inflicted a hundred times more agony. I killed them, their friends, their loved ones and anyone else who stood in my way.*/
== MAZZY25J @106 /*But... no...*/
== VICON25J @107 /*You think you can redeem me, stupid tiny rivvin? You are a fool! You pretend that you can make everything and everyone around you good because you are too blind to see life as it is and too cowardly to face your own demons.*/
= @108 /*So what now, now that your pathetic idealistic view of me has been dispelled? Will you kill me? Come and try!*/
== MAZZY25J @109 /*No, Viconia. You are not the first hero I have known with a dark past. As long as you travel with <CHARNAME> and myself, we will guide you toward the light.*/
== VICON25J @110 /*When I was tied to the stake, there was a group of rivvin too cowardly to do the work themselves. They screamed, “Burn the drow! Burn her!” */
= @111 /*While you and <CHARNAME> were sleeping, I tracked them down in their homes and skinned them.*/
== MAZZY25J @112 /*You... skinned them?*/
== VICON25J @113 /*They were going to kill me for the color of my skin; it was only fair that I remove theirs. Some street children spit on me as well. I found them later, cut out their tongues, and watched them choke to death on their own blood.*/
= @114 /*You see, I do not need nearly as much sleep as the rest of you, so I still have time for other... endeavors.*/
== MAZZY25J @115 /*You slaughtered women and children?*/
== VICON25J @116 /*Is there something special about women and children, stupid paladin? Weakness is not a defense. Yes, I killed them.*/
== MAZZY25J @117 /*Then Viconia, I challenge you! You are evil and I was mistaken. We will fight and I will kill you in the name of all that is good and right in the world!*/
END
	++ @118 /*Whoa, whoa, I think it's time that I stepped in. There will be no fighting in this party.*/ EXTERN MAZZY25J _bMazzyVic18
	++ @119 /*A fight, what an excellent idea. Get your anger out so we will raise the loser and be off.*/ EXTERN MAZZY25J _bMazzyVic19
	++ @120 /*No fighting. Viconia, you need to leave.*/ EXTERN MAZZY25J _bMazzyVic20
	
APPEND MAZZY25J IF ~~ THEN _bMazzyVic18
	SAY @121 /*I will not travel with the drow a moment longer, <CHARNAME>. Either we fight or I leave now.*/
	IF ~~ THEN DO ~SetGlobal("_bPikeThreat","GLOBAL",1)~ EXTERN VICON25J _bMazzyVic21
	END
	
	IF ~~ THEN _bMazzyVic19
	SAY @122 /*No, <CHARNAME>, I will remove her head and impale it on a pike as a warning to all of her kind.*/
	IF ~~ THEN EXTERN VICON25J _bMazzyVic21
	END
	
	IF ~~ THEN _bMazzyVic20
	SAY @123 /*No, <CHARNAME>, she must not be allowed to flee. I will cut off her head and stick it on a pike or you will not see me again!*/
	IF ~~ THEN EXTERN VICON25J _bMazzyVic21
	END
END

CHAIN VICON25J _bMazzyVic21
@124 /*Let the little one fight me, <CHARNAME>. I promise to raise her after she dies.*/
== MAZZY25J IF ~Global("_bPikeThreat","GLOBAL",1)~ THEN @125 /*And I promise to remove your head and impale it on a pike as a warning to all others of your kind. This will be the end for you.*/
END
	++ @126 /*Go ahead then. Battle it out.*/ + _bMazzyVicDelay 
	++ @127 /*No permanent death, Mazzy. We need Viconia alive.*/ EXTERN MAZZY25J _bMazzyVicLeft
	
	
CHAIN MAZZY25J _bMazzyVicLeft
@128 /*Then I will take my leave. Goodbye <CHARNAME>, you will not see me again.*/
DO ~SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~
EXIT

CHAIN VICON25J _bMazzyVicDelay
@129 /*However, I am not ready to fight you, my angry paladin. If you wish to challenge me fairly then you must let me rest to memorize the proper spells.*/
== MAZZY25J @130 /*Very well, Viconia. In the morning, we do battle!*/
== VICON25J @131 /*Patience, little one. You are one of those tiny dogs, impatient and annoying. We have not yet agreed upon the rules.*/
== MAZZY25J @132 /*The rules? Use all the magics and potions you want, drow, and in the morning, you shall fall by my hand!*/
== VICON25J @133 /*When we wake, you mean to kill me permanently, or at least as permanently as I can be killed, but what if you fall instead? I will raise you back from the dead, but I do not wish to do this again.*/
== MAZZY25J @134 /*If you vanquish me, I will not challenge you again. You have my word.*/
== VICON25J @135 /*And a boon. I will have ended your life and brought you back from the abyss; you will owe me a boon as well.*/
== MAZZY25J @136 /*Enough talk, let us rest and be done with this. You may have your boon, Viconia, but I will do nothing against my vows!*/
== VICON25J @137 /*You will not have to, little yap dog. And you are not the leader of our little band of heroes. We will sleep at a time of <CHARNAME>'s choosing.*/
EXIT

//9th conversation - duel
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",23)~ THEN MAZZY25J _bMazzyVicDuel1
@138 /*Finally, you are awake. I have been up for hours! Are you ready?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",24)~
== VICON25J @139 /*Unlike you, I do not sleep well in my armor, little paladin. Assist me in putting it back on, will you? I can never reach these straps in the back.*/
= @140 /*There. Now I am ready. Do we start apart? Twenty paces? Thirty? I have not done this sort of thing before.*/
== MAZZY25J @141 /*Ten paces! Prepare yourself!*/
== VICON25J @142 /*You should worry about yourself, Mazzy. You do not look well.*/
== MAZZY25J @143 /*I... I am not right...*/
DO ~ApplySpell("Mazzy",CLERIC_POISON)~
= @144 /*You! You did this! You poisoned me! It will not save you, drow! I am strong enough to end your life first!*/
DO ~Kill("Mazzy")~
== VICON25J @145 /*And another fool falls. Be sure to raise her soon, <CHARNAME>, before she becomes too fragrant.*/
EXIT

//10th talk, post duel
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",25)~ THEN MAZZY25J _bMazzyVicDuel2
@146 /*Viconia! You cheated!*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",26)~
== VICON25J @147 /*You gave me leave to use all my magic and potions did you not? Some of them involve poison. Do not blame me for your weaknesses. Now about my boon...*/
== MAZZY25J @148 /*I am not a servant of evil. My vows prevent me from helping you in your evil schemes.*/
== VICON25J @149 /*I demand that you become my friend.*/
== MAZZY25J @150 /*What?*/
== VICON25J @151 /*Is your hearing damaged? I have no friends and I want one.*/
== MAZZY25J @152 /*<CHARNAME> is your friend. I was your friend.*/
== VICON25J @153 /*No, <CHARNAME> saved me which means I am <PRO_HISHER> friend, not the other way around, and you saw me as another weakling female in need of rescue. But now I have proved my strength. Now you are MY friend, and mine alone.*/
== MAZZY25J @154 /*Was that what all this was about? You provoked me into challenging you just so you could ask for my friendship?*/
= @155 /*Did you even kill those children?*/
== VICON25J @156 /*What children? Oh, the ones who spit on me? I made them up. I know you have a fondness for rivvin your size.*/
== MAZZY25J @157 /*You are truly damaged, Viconia. All this for a friendship that you already had? All you had to do was ask...*/
== VICON25J @158 /*I am... asking, Mazzy. Be my friend. Please...*/
== MAZZY25J @159 /*Yes.*/
== VICON25J @160 /*Yes! With you by my side think of all the fun we will have!*/
= @161 /*We will talk... play games... bathe in the blood of our enemies...*/
== MAZZY25J @162 /*Evil enemies, Viconia. We only kill evil enemies and they must attack us first.*/
== VICON25J @163 /*Fine, my little paladin. But all rivvin look threatening to me, so you will have to tell me which ones I may slaughter.*/
EXIT

//11th Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",28)~ THEN VICON25J _bMazzyVic22
@164 /*Mazzy, my friend, please speak with me a moment. I have been too trusting in the past, but you are different from most surface-dwellers. Perhaps it is because you are a tiny rivvin and your people have never hunted me.*/
= @165 /*There was a village of your kind east of Beregost and south of Baldur's Gate. I avoided it thinking that I would stand out and be killed, but perhaps your people would've offered me sanctuary instead.*/
== MAZZY25J @166 /*You would have been a guest, Viconia. It is rude to turn away a guest and unimaginable to harm someone after offering them hospitality.*/
== VICON25J @167 /*Rude even to turn away a drow? Why? Have your people not been raised on stories of our bloody exploits? Are we not your enemy?*/
== MAZZY25J @168 /*You would've been watched, yes. But a single woman, alone and scared, is not a raiding party. Most of my people do not really believe in having enemies. They are sure that most hostilities can be cured with kindness, food, tea, pipe-weed, ale, and a warm bed. That is how they plan to combat the evils of this world.*/
= @169 /*It is foolish and I have seen that trust abused too many times. I renounced it when I ventured out into the world. I said that trust would have to be earned and I would meet hostility with the point of my blade.*/
== VICON25J @170 /*That seems a wiser strategy.*/
== MAZZY25J @171 /*I thought so too, but recently I have begun to think that there is more wisdom in those customs than I thought. It is much harder to be angry with a full belly and a good night's sleep. Trust builds upon trust and kindness begets kindness.*/
== VICON25J @172 /*Or it leads to a knife in your back. I would call your kindness weakness, Mazzy, but you are one of the toughest creatures I have met. There is a core of iron and vigilance inside you. I think you might even be able to best me in a fair fight despite being half my size.*/
== MAZZY25J @173 /*We will never know now! You poisoned me!*/
== VICON25J @174 /*Better safe than sorry, my little paladin. I warned you your morals would be the death of you, and I knew you would take offense at every verbal barb and let your anger blind you.*/
= @175 /*You fight people's words as if they could hurt you, little one, when you should be watching for danger in their movements. Let them mock you and laugh at you. You are a halfling and rivvin laugh at halflings. It's still better than being a drow and having them hunt you.*/
== MAZZY25J @176 /*You are right. I have been overly touchy and self-pitying. The tall folk laugh at me, but they were going to burn you alive. And I have said and done so many things my family would be ashamed of.*/
= @177 /*Viconia, I would like to officially offer you my hospitality and friendship. Tonight you will be my guest.*/
== VICON25J @178 /*Your guest? I have never been anyone's guest.*/
== MAZZY25J @179 /*Then we shall do this properly. Viconia of House DeVir, I offer you my friendship. My home and hearth are yours. You have a place at my table, free run of my larder, and the use of a soft bed for as long as you desire, because you are my guest.*/
= @180 /*Umm... I am lacking a home, hearth, table, larder, and bed at the moment, but I do not know any version of the words where the host only has a tent and travel rations. Still my tent and travel rations are yours if you accept... I mean...*/
== VICON25J @181 /*Ha! This is the first time I have seen you nervous. I accept, Mazzy. Do I have words to say as well?*/
== MAZZY25J @182 /*Ah, yes. You would say, “Mazzy Fentan, I accept your generous hospitality. You are my friend. May your hearth always be warm, your larder always full, and your home full of laughter for your next fifty generations.”*/
== VICON25J @183 /*Mazzy Fentan, I do accept your generous hospitality. You are my friend, and... and.. oh, by Shar, am I crying? I am crying. I cannot cry. Someone will see. She will see! She will know and she will come for me!*/
== MAZZY25J @184 /*Viconia, it's okay! We are safe. You do not need to be afraid.*/
== VICON25J @185 /*I AM afraid, Mazzy. I have been afraid for so long... far, far longer than you have been alive. I do not remember ever being unafraid. What is there without fear?*/
== MAZZY25J @186 /*There is peace. There is love. You are my friend, Viconia, and I would die to protect you.*/
== VICON25J @187 /*You would die to protect anyone, my selfless little paladin. But... I will try to avoid that because I do not wish to lose you. You are my friend. May your hearth always be warm, your larder always full, and your home full of laughter for your next fifty generations. There. What do we do now?*/
== MAZZY25J @188 /*Well, now we would tell humorous stories while sharing tea or pipe-weed. But I did not pack those things, nor did I bring ale, and I cannot remember anything humorous. Oh this is ridiculous. I am a terrible halfling!*/
== VICON25J @189 /*No. You are a wonderful halfling, Mazzy, and you and <CHARNAME> are my only friends in this world. Now let us eat and talk. I will share your food and your tent, and be your guest.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",29) SetGlobal("_bMazzyVicFriends","GLOBAL",2) RestParty()~
EXIT

//Bath Talk 1
CHAIN IF WEIGHT #-1 ~Global("_bMVBathTalk","GLOBAL",1)~ THEN MAZZY25J _bMazzyBath1
@190 /*You all go to sleep. I will see if my bath is ready.*/
== VICON25J @191 /*May I join you, Mazzy? I am covered in dirt and grime, not to mention the stench of rivvin.*/
== MAZZY25J @192 /*Certainly, Viconia. The tub was built to hold a large human man with room to spare. It will easily hold the two of us.*/
DO ~SetGlobal("_bMVBathTalk","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bMVBathTalk","GLOBAL",3)~ THEN MAZZY25J _bMazzyBath2
@193 /*Ahh, I needed this, and not just for the dirt.*/
DO ~UndoExplore() SetGlobal("_bMVBathTalk","GLOBAL",4)~
== VICON25J @194 /*Before, at home, there was nothing I enjoyed more at the end of the day than a hot bath followed by a massage and a male.*/
= @195 /*We had slaves trained in massage. The males were trained too. I wish I could have one again.*/
== MAZZY25J @196 /*The world is full of men, Viconia, and you are beautiful. It should not be hard for you to get one.*/
== VICON25J @197 /*This world is full of rivvin males, my tiny paladin. I have sampled them by the dozen since coming to the surface and every single one has been a disappointment.*/
= @198 /*I had such high hopes at first. Rivvin are such powerful creatures, giant and strong, once you get past the smell. But in bed... nothing. Some did not know how to please me, others had no interest in even trying.*/
= @199 /*Do you understand? Have you ever lain with the rivvin?*/
== MAZZY25J @200 /*I have not been with a... rivvin are humans, tall folk, correct? Yes, well... in truth I find the thought of being naked, alone, and unarmed with a stranger two or three times my size rather terrifying.*/
	= @200000 /*I have been with larger males, but they were old friends and used to halflings. Humans are so clumsy and destructive, and I am not a great judge of character. I am worried that I might be hurt without my weapons.*/
== VICON25J @201 /*So do not be unarmed. If you hid small blades around the room, then you would have nothing to fear. But there is little point in bothering. The rivvin are hardly worth your time.*/
== MAZZY25J @202 /*I still do not understand why though.*/
== VICON25J @203 /*I am... explaining myself poorly. Let me try this. You have seen chickens mating, have you not? Rivvin are chickens. The rooster sees a hen that he desires, he runs after her, possesses her for a brief moment, and when he is finished he struts around crowing his greatness to the world.*/
= @204 /*I am tired of roosters. I want a real male.*/
== MAZZY25J @205 /*I am sorry it has been like that for you, Viconia, but it does not have to be.*/
== VICON25J @206 /*Really?*/
= @207 /*Then tell me of the males you have known, Mazzy. What were they like? Did they please you?*/
== MAZZY25J @208 /*I have mostly been with my own people, Viconia, and not all that many of them. Though from listening to you, I think I got more enjoyment out of my three halfling men then you did your dozens of roosters.*/
= @209 /*The first was just a boy who I grew up with. His family were farmers and they came into town after the harvest every year to sell their crops. We only managed to get away half-a-dozen times. He did not know much, but neither did I, and he was sweet and earnest and did whatever I asked.*/
== VICON25J @210 /*An important quality in a male.*/
== MAZZY25J @211 /*I knew a little about timing and made sure we were only together on the right days, but we were still lucky I did not become pregnant. I was foolish; I should have at least purchased a potion.*/
== VICON25J @212 /*You can get pregnant involuntarily? That seems... inconvenient.*/
== MAZZY25J @213 /*You have no idea. Wait, are you saying that you can control it?*/
== VICON25J @214 /*I am a drow and a priestess. I have absolute control over my own body and power over everyone I touch. But back to your farmer boy.*/
== MAZZY25J @215 /*He and his family were killed by bandits one day on their way home. I cried my eyes out for days. I do not think I was in love with him, but he was my friend. And then he was gone.*/
= @216 /*But now our bath is cold and we need sleep.*/
== VICON25J @217 /*Ha, what we both need first are massages... and then males.*/
== MAZZY25J @218 /*I cannot help you with your lack of a male, Viconia, but I give a decent massage, at least decent for a halfling warrior. If you promise not to kill me if I disappoint you...*/
== VICON25J @219 /*I promise. We will find our males another time.*/
DO ~Explore() RestParty()~
EXIT

//2nd Bath Talk
CHAIN IF WEIGHT #-1 ~Global("_bMVBathTalk","GLOBAL",5)~ THEN VICON25J _bMazzyBath3
@220 /*Another bath. If we keep this up for another year or two I might actually feel clean.*/
DO ~UndoExplore() SetGlobal("_bMVBathTalk","GLOBAL",6)~
= @221 /*If I remember correctly, and I always do, you were about to tell me the story of your second male.*/
== MAZZY25J @222 /*Was I? Very well. The second man I lay with was some years later. He was another farmer only a few years older than me. We were together for years. He was dedicated to my happiness, in and out of bed, and I to his as well.*/
= @223 /*He would have married me and helped to raise our children, but I could not do it. I broke his heart instead.*/
= @224 /*I still see him from time to time. He is a successful farmer, a good husband, and a great father. In short, he is everything a halfling woman could want.*/
== VICON25J @225 /*“Everything a halfling woman could want.” But not you, little paladin?*/
== MAZZY25J @226 /*I loved him, I truly did, but that future was not what I desired. The home, the hearth, the family, never going more than ten miles from where I was born. I wanted to see the world, become a paladin, and battle with evil.*/
== VICON25J @227 /*I think maybe you have shown me my answer, Mazzy. The drow males I knew were dedicated to my happiness as well. They pleasured me as if their lives depended on it, which, of course, they did.*/
= @228 /*The rivvin I have known only saw me as a tool to satisfy their own desires. I tried to warn some that their continued breathing depended on my enjoyment of their efforts, but most did not believe me until it was too late.*/
== MAZZY25J @229 /*You ended their lives because they were unskilled at loving you?*/
== VICON25J @230 /*They were bandits, thieves, and mercenaries. Men who only ever took females through force or payment. They were not interested in my desires nor my consent, and they would not listen to my instructions. You would have killed them too, though probably less painfully than I did.*/
== MAZZY25J @231 /*Oh Viconia... I am so sorry.*/
== VICON25J @232 /*Mazzy, I have been tortured countless times by beings who truly knew how to inflict pain. This was an unpleasant new experience – a drow male forcing himself on a female is unheard of – but it was nothing in comparison.*/
= @233 /*Do not look at me like that, Mazzy. I won and they are dead. I flayed them alive and bathed in their blood. If you are too weak to listen to this story then how can I tell you anything? You want to vanquish evil, tiny paladin, but you have barely seen it.*/
== MAZZY25J @234 /*I have seen plenty of evil, Viconia, and I am learning. Though I suppose perhaps “plenty” does not have the same meaning to someone so many times my age. When you share, I will listen.*/
== VICON25J @235 /*Excellent. But I am done sharing, young one. Let us retire to a bed and spend our night in some poor imitation of comfort.*/
DO ~Explore() RestParty()~
EXIT

//12th Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",31)~ THEN MAZZY25J _bMazzyVic23
@236 /*Viconia, did you know that you were screaming in your sleep?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",32)~
== VICON25J @237 /*I did not. However, that makes me normal among adventurers, does it not? Most of you sleep poorly. Still, I am surprised no one has ever mentioned that to me before.*/
== MAZZY25J @238 /*That is probably because you were silent. Your eyes were open in terror and you screamed and screamed but never made a sound. I would not have known except that I felt a darkness come over us and so I awoke and checked on you.*/
== VICON25J @239 /*On me? Am I the only lure for darkness in this group?*/
== MAZZY25J @240 /*No, I checked on <CHARNAME> first, but <PRO_HESHE> was sleeping soundly. Loudly, but soundly.*/
== VICON25J @241 /*Hah. Even when sleeping it seems I know that silence is necessary for survival. Did I do anything else?*/
== MAZZY25J @242 /*No. I cast a blessing of Arvoreen upon you and it seemed to calm you down. I would have asked first but I could not wake you and I was afraid to wait. Were you dreaming?*/
== VICON25J @243 /*In a way. It was Lolth reminding me that I am still within her grasp as long as I dream. She does that from time to time when she remembers to check on me. You... should be careful; she will not have liked you interfering.*/
== MAZZY25J @244 /*I am not afraid of the Spider Queen. My faith in Arvoreen will protect me.*/
== VICON25J @245 /*Have you ever had a goddess inside your head, my little one, laughing as she shatters your mind and pulls apart the pillars of your reality? How can you have faith when you do not know what is real and what is delusion?*/
= @246 /*Let me try to remember this dream, though I usually do my best to forget them.*/
= @247 /*Lolth tortured me, as usual, this time slowly cutting me open and removing my bones one by one. I could move freely, but no matter where I fled, I could not stop her claws as they sliced and pulled. My brother, Valas, and <CHARNAME> both came to rescue me but she transformed Valas into her creature, and slew <CHARNAME>. She does that every time, though <CHARNAME> has been a more recent addition.*/
= @248 /*Lolth told me that I was alone and I was hers, and I would remain so for all eternity. But then you came. I thought you were one of her illusions, but you stopped the dream. You stopped her! How did you stop her?*/
== MAZZY25J @249 /*I do not know. As I said before, I saw you in terror and I cast a blessing of Arvoreen. It is not even a proper spell; just a common halfling prayer for warding off evil.*/
== VICON25J @250 /*A common halfling prayer? Your people are more powerful than I would have believed, Mazzy. You are more powerful... I have called on Shar for aid many times during these dreams, but it was never enough.*/
== MAZZY25J @251 /*You cannot fight evil with more evil, no matter how powerful. Shar would only aid you if it were in her interest and she gains nothing from battling the Spider Queen.*/
= @252 /*But a light, however small, will always drive back the darkness. When I gave you that blessing, I did so not to gain or to destroy, but simply because you were in pain, you are my friend, and I did not want to see you hurt.*/
== VICON25J @253 /*And that succeeded where all the power I could muster failed. You have given me more to think about. Too much in fact. We will talk more another day.*/
EXIT

//13th Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",34)~ THEN VICON25J _bMazzyVic24
@254 /*I keep waiting for Lolth to exact her revenge, Mazzy, but I continue to sleep well. I cannot take this stress much longer. When will she come for me?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",35)~
== MAZZY25J @255 /*You seemed to be sleeping easily, Viconia, but I was afraid to ask. Maybe it was because I have stayed nearby and kept my blessing upon you. */
== VICON25J @256 /*I suspected that might be true. You are a fool to put yourself between Lolth and her prey!*/
== MAZZY25J @257 /*I do not make any decision lightly, Viconia. I do not regret my choice and it has been successful, but I cannot shield you from the darkness forever. You must shine forth with a light of your own.*/
= @258 /*You can know peace, but you must put your faith in love and hope. You must live a life of kindness instead of cruelty.*/
== VICON25J @259 /*I... I...*/
= @260 /*I... cannot, Mazzy. I have no hope of ever knowing peace. The rivvin will always hate me. Lolth will always be there to torture me. Even if you protect me during your life, what good will that do? You are a halfling and your short life is but a brief flash of light in a dark, cold, and endless night.*/
= @261 /*I will never be free of Lolth, Mazzy, not ever. Even if I embraced kindness, the first person I offered it to would kill me where I stood, and when I died, I would return to Lolth again for another round of torment. Once she grew tired of my agony, she would send me forth helpless and naked to face the world's abuse once more, powerless to prevent it.*/
= @262 /*Do you have any idea how many times I have done this, Mazzy? How many times I have regained my power only to start over?*/
== MAZZY25J @263 /*I am not sure I understand. Are you saying you have already died?*/
== VICON25J @264 /*I am hundreds of years old, Mazzy. Are you so stupid as not to realize that my power should be greater? I fled the drow and came to the surface and I died. I have died so many times. But every time Lolth brings me back. She savors my misery and recreates my body from the inside out. I am aware and in agony as she adds each bone and muscle.*/
= @265 /*Each time I hope that if I only gain enough power I will be able to delay the inevitable and live forever, but it is never enough.*/
== MAZZY25J @266 /*Then maybe power is not your answer. Maybe you should seek happiness instead.*/
== VICON25J @267 /*One time I could not take it anymore. I broke and begged for my torment to end. And do you know what Lolth replied?*/
= @268 /*"You will never die, my love, not while your misery is sweet. But should that change... should you dare to find happiness in life, then I will kill you myself and torture your soul for all eternity."*/
= @269 /*She will, Mazzy. You have stopped her for a short while, but there is no saving me. Now leave me alone.*/
EXIT

//14th Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",37)~ THEN MAZZY25J _bMazzyVic25
@270 /*Viconia, do you plan to brood for the entire <DAYNIGHT>? It is past time to raise your head, pick up your spirits, and once more embrace what is good about life.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",38)~
== VICON25J @271 /*Why? Why should I? There is nothing for me to look forward to. Not now and not ever.*/
== MAZZY25J @272 /*Because for now you are alive! Who knows what will happen tomorrow! I demand that you be happy. Or failing that at least pretend for the rest of us.*/
== VICON25J @273 /*You demand? Or what, you'll challenge me again?*/
== MAZZY25J @274 /*If you refuse to make even the slightest effort then I will refuse to keep my blessing upon you and protect you in your dreams.*/
= @275 /*I am a knight and you are my damsel in distress, remember? I will save you, but you must work with me. Find what joy you can, even if it is short-lived. Life, after all, is temporary.*/
== VICON25J @276 /*Very well, my paladin. Let us find what small pleasures exist in this world, even if they are fleeting and this whole process is futile. Maybe some villains will ambush us and you will allow me to liquefy their bones. I do believe that would make me feel better.*/
== MAZZY25J @277 /*That is the spirit, Viconia. We will make a hero of you yet!*/
EXIT


//Sex Talk 2
CHAIN IF WEIGHT #-1 ~Global("_bMVSexTalk2","GLOBAL",2) Global("_bMazzyVicFriends","GLOBAL",2)~ THEN VICON25J _bMazzyVicSex2
@306 /*Tell me something, my very tiny paladin, why are you not with <CHARNAME>? I know you desire him, and you know he feels the same. So why? Is it because of me?*/
== MAZZY25J @307 /*You are my friend, Viconia, and so is <CHARNAME>. I would never ruin that.*/
== VICON25J @308 /*I could share, Mazzy. You would have my permission. I would probably not even set both of you on fire.*/
== MAZZY25J @309 /*Viconia, the relationship between you and <CHARNAME> is far more volatile and chaotic than I prefer. I do not wish to get involved.*/
== VICON25J @310 /*That is my fault. I am... difficult to get along with and I have had trouble accepting the idea of a male as my equal. There is no reason that a relationship between the two of you would be the same*/
== MAZZY25J @311 /*For argument's sake, let us say that I accepted your offer, Viconia. Would <CHARNAME> be tasked with satisfying both of us? We would kill the poor boy. He has to sleep, eat, and still have energy to fight.*/
== VICON25J @312 /*You would just have to learn moderation, my insatiable little paladin. We would ration him, and if we wore him out, then I have spells to help.*/
== MAZZY25J @313 /*Ration him? How would we do that? Do you plan to make a schedule? Since when do you preach moderation anyway?*/
== VICON25J @314 /*Your tone is mocking, but listen. This is something that I know.*/
= @315 /*There was a time, long ago, when I realized that as a female drow and a handmaiden of Lolth, I had access to an unlimited number of wonderful males. They were trained, dedicated, and obedient to my every whim. They would pleasure me as if their lives depended on it.*/
== MAZZY25J @316 /*From your stories, their lives DID depend on it.*/
== VICON25J @317 /*Well, yes, but it was not only fear. We were extensions of Lolth, imbued with immense powers. The males worshiped us and while their numbers and dedication meant more pleasure than even I could experience in a single lifetime, I was determined to try.*/
= @318 /*Over time, I learned exactly what I wanted and my favorite males learned too. Soon I was spending every free moment of every day in pleasure and the other parts of my life faded away. I was neglecting my duties. I was neither eating nor sleeping enough and this could not continue... it was only a matter of time before some lower ranked female killed me and advanced her position.*/
= @319 /*And then one tried. I was lucky... she was young and impatient. Had she waited another year, she would have succeeded. Even so I barely defeated her and I realized that in my carelessness and single-minded pursuit of pleasure, I had become weak.*/
== MAZZY25J @320 /*And THAT was how you learned the importance of moderation?*/
== VICON25J @321 /*Not at first. First I was focused on making an example of my enemies. I cut off the assassin's head, rounded up as many of my own family as I could find, and marched on this rival house.*/
= @322 /*When I found the matriarch, I threw her daughter's head at her feet, captured her and most of her family and sacrificed them to Lolth. No one attempted to kill me for many years after that.*/
= @323 /*But yes, it was during those sacrifices that I decided over-indulgence was a weakness... that while I enjoyed my time with my males, I was unwilling to die for it. After that I rationed myself carefully, slowly savoring each moment as if it were my last.*/
== MAZZY25J @324 /*I do not think I will ever grow accustomed to your tales. Do you not have happy stories?*/
== VICON25J @325 /*That WAS a happy story, tiny paladin. I enjoyed many males, I survived an attempted assassination, I triumphed over my enemies, and I emerged wiser and stronger from the experience.*/
= @326 /*However, you still have not answered my question. <CHARNAME> is yours to borrow if you want him. Do you?*/
== MAZZY25J @327 /*Yes, I want him, but I will not accept your offer. “Borrowing” <CHARNAME> would not be as simple as you think. He is not simply a toy for us to use. He has feelings, he is young, and just being with you has been enough of an emotional trial for him without adding me as well.*/
== VICON25J @328 /*But... I... miss you. Your presence calms me and while I enjoy <CHARNAME>, he cannot shield me from the dark. I feel his god-blood pulling us both toward destruction.*/
== MAZZY25J @329 /*Viconia, should either of you fall into the abyss, I will do my best to drag you out. However, your bed is for you and <CHARNAME> and I will not share it.*/
== VICON25J @330 /*Very well then. Will you at least continue to travel with us and shield me from the Spider Queen?*/
== MAZZY25J @331 /*Of course, Viconia. Always.*/
DO ~SetGlobal("_bMVSexTalk2","GLOBAL",3)~
EXIT


//Mazzy Romance Sex Talk
CHAIN IF WEIGHT #-1 ~Global("_bMVSexTalk3","GLOBAL",1)~ THEN VICON25J _bMazzyVicSex3
@379 /*Mazzy, <CHARNAME>, stop and speak with me. Tonight, you will couple together? Pleasure each other?*/
DO ~SetGlobal("_bMVSexTalk3","GLOBAL",2)~
== MAZZY25J @380 /*You are being impolite; it is not your business when we lie together.*/
== VICON25J IF ~!Race(Player1,HALFLING)~ THEN @381 /*I wish to make it my business, I wish to observe. I have never seen a halfling couple with a <PRO_RACE> before.*/
== VICON25J IF ~Race(Player1,HALFLING)~ THEN @382 /*I wish to make it my business, I wish to observe. I have never seen two halflings couple before.*/
== VICON25J @383 /*It could prove... informative. I could offer pointers as well to improve your clumsy efforts.*/
END
	++ @384 /*I really don't want you anywhere near me, Viconia. So... no.*/ + _bMazzyVicSex3No1
	++ @385 /*No. I don't like an audience.*/ + _bMazzyVicSex3No2
	++ @386 /*Sure, I always perform better with someone watching.*/ EXTERN MAZZY25J _bMazzyVicSex3Yes1 
	++ @387 /*Why just watch? We're all friends here. Come join us!*/ EXTERN MAZZY25J _bMazzyVicSex3Yes2
	+ ~Global("_bCNWantsVic3Some","GLOBAL",1)~ + @388 /*Yes! I've been waiting for this. You should join in.*/ EXTERN MAZZY25J _bMazzyVicSex3Yes2
	
CHAIN VICON25J _bMazzyVicSex3No1
@389 /*Fine! Engage in your pathetic, amateurish efforts. I may have been able to instruct you as to how not be a complete failure in the arts of love, but clearly my talents are not in demand.*/
EXIT

CHAIN VICON25J _bMazzyVicSex3No2
@390 /*I would be quiet as a mouse. But fine, I can see when I am not wanted. You may do your business alone*/
EXIT

CHAIN MAZZY25J _bMazzyVicSex3Yes1
@391 /*<CHARNAME>! This is most forward.*/
= @392 /*But I suppose it will not do any harm. We are, after all, long-time travelling companions. Yes, Viconia, you may observe away next time.*/
DO ~SetGlobal("_bVicWatch","GLOBAL",1)~
EXIT

CHAIN MAZZY25J _bMazzyVicSex3Yes2
@393 /*<CHARNAME>!*/ 
== VICON25J @394 /*Well... your ssinssrigg has had an interesting idea, my paladin. Shall I join you? You will not find my skills... unappealing.*/
== MAZZY25J @395 /*Join us? I admit you are attractive but I would have preferred to discuss this in advance. I am not sure how to respond.*/
== VICON25J @396 /*You will respond by grabbing my hair, my skin, and my breasts and screaming, “Yes! Viconia! Oh yes! More! More!” That is what surfacers usually do when I turn my attentions onto them.*/
= @397 /*I will admit that I have never used my skills upon a female, but I assume they will have the same results.*/
== MAZZY25J @398 /*Perhaps. However, there is a darkness inside you, Viconia, and I am not sure if I can manage it.*/
== VICON25J @399 /*You... you already do, my paladin. You do it every single day. When I am with you, I feel contained and safe. I am no longer lost in the great vastness of this world.*/
= @400 /*I have never felt that before. Please... I cannot be alone again. */
== MAZZY25J @401 /*Very well, with Arvoreen's blessing, my light will outshine everything else.*/
= @402 /*But what about <CHARNAME>? Currently, I am enjoying the full extent of <PRO_HISHER> efforts. Must I share?*/
== VICON25J @403 /*Hah! With a tiny fraction of my power, I can keep <CHARNAME> going for hours... days... <PRO_HESHE> will pleasure you longer than <PRO_HESHE> ever has before and still have energy left over for me.*/
= @404 /*As for <PRO_HISHER> romantic gestures and loving affection, you may keep that for yourself. I have no interest in such weak mewling.*/
== MAZZY25J @405 /*Then I agree. Next time we lay together, you may join us as well.*/
DO ~SetGlobal("_bVicJoin","GLOBAL",1)~
EXIT

//Post Sex Talk
APPEND MAZZY25J 
	IF WEIGHT #-1 ~Global("_bMVSexTalk3","GLOBAL",3) Global("_bVicWatch","GLOBAL",1)~ THEN _bMVPostSex1
	SAY @406 /*<CHARNAME>, Viconia, I will admit that you were both correct and I was mistaken. Having Viconia there to offer advice produced a wonderful result. We should do that again soon.*/
	IF ~Gender(Player1,MALE) !Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,ELF)~ THEN EXTERN VICON25J _bMVPostSex3
	IF ~OR(4) Gender(Player1,FEMALE) Race(Player1,GNOME) Race(Player1,HALFLING) Race(Player1,ELF)~ DO ~SetGlobal("_bMVSexTalk3","GLOBAL",4) SetGlobal("_bVicMaz3Some","GLOBAL",1)~ EXIT
	END

	IF WEIGHT #-1 ~Global("_bMVSexTalk3","GLOBAL",3) Global("_bVicJoin","GLOBAL",1)~ THEN _bMVPostSex2
	SAY @407 /*<CHARNAME>, inviting Viconia to join us was a grand idea. We should do that again some time.*/
	= @408 /*And Viconia, you were not boasting in the least. You are amazing and your skills produced a wonderful result.*/
	IF ~Gender(Player1,MALE) !Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,ELF)~ THEN EXTERN VICON25J _bMVPostSex3
	IF ~OR(4) Gender(Player1,FEMALE) Race(Player1,GNOME) Race(Player1,HALFLING) Race(Player1,ELF)~ DO ~SetGlobal("_bMVSexTalk3","GLOBAL",4) SetGlobal("_bVicMaz3Some","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bMVPostSex4
	SAY @423 /*Really? <CHARNAME>, you are wonderful and you never cease to amaze me. You heard him, Viconia. Shape away. May I offer suggestions as you work?*/
	IF ~~ THEN EXTERN VICON25J _bMVPostSex6
	END
	
	IF ~~ THEN _bMVPostSex5
	SAY @424 /*I would never ask that of you, <CHARNAME>. But if you could do it for me, Viconia, I would be grateful. I would like to be able to throw myself at him with abandon. May I offer input as you work?*/
	IF ~~ THEN EXTERN VICON25J _bMVPostSex6
	END
END
  
CHAIN VICON25J _bMVPostSex3
@409 /*I can do better than that. <CHARNAME> does not really make a good fit for a halfling, does he? I noticed that you two do not really match.*/
== MAZZY25J @410 /*We are managing, Viconia. I purchased oil which helps and <CHARNAME> has been considerate enough to go slowly, pay careful attention, and kiss me there for as long as I require.*/
== MAZZY25J IF ~Race(Player1,DWARF)~ THEN @411 /*But, yes, you are correct. It is not so much the length as the width and I simply cannot manage to take him comfortably. I never thought of dwarves as being that much larger than halflings, but I did not consider the girth. Dwarven women must be more flexible.*/
== MAZZY25J IF ~OR(3) Race(Player1,HUMAN) Race(Player1,HALFORC) Race(Player1,HALF_ELF)~ THEN @412 /*But, yes, you are correct. It is too long and too wide, and I simply cannot manage to take him comfortably. It is an annoying reminder that I am not as large as I would like.*/
== VICON25J @413 /*As usual your capacity for understatement borders on the ridiculous. I have seen rivvin females mate with ogres with greater ease and the weaklings were all dying by morning.*/
= @414 /*I on the other hand endured the entire band's affections and am here to tell the tale. The ogres all died in agony, of course, but I had to wait until they slept to make my move.*/
== MAZZY25J @415 /*Your tales remain as morbid as ever. I suppose you will now tell me the secret? Some fantastic drow enchantment that allows you to lie with any species you so choose?*/
== VICON25J @416 /*Hah! I am a priestess, one of untold power and knowledge who's refined her skills over hundreds of years. My flesh bends to my whim and when I saw what sort of swords those ogres were brandishing, I quickly made myself their equal.*/
= @417 /*With <CHARNAME> you have another option; I could simply shrink his sword to fit your matching sheath. This should also keep him loyal. If he abandons you, I will simply refuse to shape it back.*/
END
	++ @418 /*Work your magic, Viconia. Anything to make Mazzy more comfortable.*/ EXTERN MAZZY25J _bMVPostSex4
	++ @419 /*Sure, why not? That sounds interesting*/ EXTERN MAZZY25J _bMVPostSex4
	++ @420 /*Umm, I would prefer not to have Viconia turn my... uh... sword  into a dagger.*/ EXTERN MAZZY25J _bMVPostSex5
	++ @421 /*No. No flesh-shaping magic. That seems wrong.*/ EXTERN MAZZY25J _bMVPostSex5
	++ @422 /*You are not putting your hands anywhere near my “sword”.*/ EXTERN MAZZY25J _bMVPostSex5
	
CHAIN VICON25J _bMVPostSex6
@425 /*I will require assistance and feedback from both of you. Now prepare, you surfacers have a... fantastically low pain tolerance and this will probably hurt. Try not to scream.*/
DO ~SetGlobal("_bMVSexTalk3","GLOBAL",4) SetGlobal("_bVicMaz3Some","GLOBAL",1) SetGlobal("bVicShaped","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-2 ~Global("_bMVSexTalk3","GLOBAL",6)~ THEN VICON25J _bMVPostSex7
@426 /*There. You may thank me later.*/
DO ~SetGlobal("_bMVSexTalk3","GLOBAL",7)~
EXIT

//Post 3Some Talk
CHAIN IF WEIGHT #-1 ~Global("_bPostMV3Talk","GLOBAL",2)~ THEN VICON25J _bMV3Talk
@427 /*You, <CHARNAME>. You wish to say something to me?*/
END
	++ @428 /*Viconia, I...*/ + _bMV3Talk1
	++ @429 /*Viconia, we...*/ + _bMV3Talk1
	++ @430 /*Viconia, you...*/ + _bMV3Talk1
	
CHAIN VICON25J _bMV3Talk1
@431 /*On second thought, <CHARNAME>, do not talk. I am enjoying a fantastic <DAYNIGHTALL> and you will undoubtedly say something to ruin it.*/
DO ~SetGlobal("_bPostMV3Talk","GLOBAL",3)~
= @432 /*You will want to know what our coupling means.*/
= @434 /*It means nothing, <CHARNAME>. It was an enjoyable physical experience and I would be willing to do it again, but it changes nothing between us.*/
== VICON25J @436 /*That is all.*/
END
	++ @437 /*Yes, but...*/ + _bMV3Talk2
	++ @438 /*No, but...*/ + _bMV3Talk2
	++ @439 /*Okay.*/ EXIT
	
CHAIN VICON25J _bMV3Talk2
@440 /*Nothing, <CHARNAME>. We continue exactly as before.*/
EXIT


//Mazzy-Viconia Neutral Change Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",40)~ THEN VICON25J _bMVicNeutral
@441 /*I asked you once, long ago, what you saw in your future. Now that it has come closer, have you changed your mind on it? Do you even see one for you, for us, hm?*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",41)~
== MAZZY25J @442 /*Viconia, once again I do not have the slightest idea to what you are referring.*/
== VICON25J @443 /*Your current future is to die, and die soon. You charge into death heedlessly, again and again. One of these days I will be unable to return you to life.*/
= @444 /*And where does that leave me? I serve Shar to have some measure of power, but she barely protects me from the Spider Queen. And in death, I know Lolth will reclaim me.*/
= @445 /*You protect me; when I am near you I know peace. But after you are gone...*/
== MAZZY25J @446 /*I would say that I am charging into battle at the side of my friends in order to bring justice to the world. I would hardly think that I am trying to die.*/
== VICON25J @447 /*Hah, you profess to always tell the truth, but you lie to yourself every day.*/
= @448 /*Look me in the eye and tell me how you wish to live a long full life. After that, you may tell me how you dislike violence and always seek a peaceful resolution.*/
== MAZZY25J @449 /*Of course, I...*/
= @450 /*I mean I...*/
= @451 /*Oh, by Arvoreen...*/
= @452 /**sigh* You are right. I seek death. I seek violence. I love the feel of battle and do not mind killing those of evil intent.*/
= @453 /*No... it is more than that... I love the killing. I love that the world is full of tall folk who foolishly attack me. I love the surprise on their face when I defeat them and end their lives.*/
= @454 /*Perhaps I am not as good as I believe myself to be...*/
== VICON25J @455 /**smiles* You are absolutely as good as you believe yourself to be, my tiny paladin. I did not mean to make you doubt your motivation.*/
= @456 /*No, I wish to offer you... a deal. If you choose to value your own life then I will choose to change as well.*/
== MAZZY25J @457 /*Change? In what way?*/
== VICON25J @458 /*I am not sure exactly. Perhaps I will finally shake off the things that made me drow. To respect the lives of the weak and useless surface-dwellers around me, to become... a better person.*/
== MAZZY25J @459 /*I would like to see that. I am here for you, Viconia, and I will help you.*/
DO ~ChangeAlignment("Viconia",NEUTRAL)~
== VICON25J @460 /*Then... then I will try. I will try to be a better person, my little paladin. For you. For us. Let us... let us move onwards before I change my mind.*/
EXIT


//Mazzy-Viconia Renouncing Shar Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",43)~ THEN VICON25J _bMVicShar
@461 /*Hold for a moment, Mazzy, <CHARNAME>. I have been thinking and I have come to a decision. I wish to renounce Shar and choose Arvoreen as my god. I have done this procedure before, but I am afraid.*/
= @462 /*When I renounced Lolth, I lost all of my power. I was weak and helpless. It was only after I found Shar that I regained my strength. I can renounce Shar and ask to serve Arvoreen but what if he rejects me? I will have nothing again. I cannot go back to that.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",44)~
== MAZZY25J @463 /*I would not ask you to, but can you still serve Shar and live as you are?*/
== VICON25J @464 /*No, I cannot. But what if I fail? I will be powerless. I will be useless. What do you think, <CHARNAME>? Should I try? Will you cast me out if I fail?*/
END
	+ ~Global("ViconiaRomanceActive","GLOBAL",2)~ + @465 /*Of course not, Viconia. I love you no matter who you serve or what spells you memorize. If you wish to cast off Shar, then I will stand behind you.*/ + _bMVicShar1
	++ @466 /*You are my friend, Viconia, and I want you to be happy. I think you should try.*/ + _bMVicShar1
	++ @467 /*Don't worry. I'm sure I'll still find a use for you.*/ + _bMVicShar1
	++ @468 /*I have too many enemies already. I won't fight Lolth and Shar as well. If Arvoreen rejects you, then you will have to go.*/ + _bMVicShar2
	++ @469 /*Sorry, Viconia. I will not endanger the rest of my companions by dragging your dead weight. If you lose your powers, you must leave.*/ + _bMVicShar2
	++ @470 /*This is a bad idea. You should stick with what you know.*/ + _bMVicShar2
	
APPEND VICON25J IF ~~ THEN _bMVicShar1
	SAY @471 /*Thank you, <CHARNAME>. Your support means a lot to me.*/
	IF ~~ THEN + _bMVicShar3
	END
	
	IF ~~ THEN _bMVicShar2
	SAY @472 /*I am sorry to hear that, but this is a risk that I must take.*/
	IF ~~ THEN + _bMVicShar3 
	END
END

CHAIN VICON25J _bMVicShar3
@473 /*I will need your help, Mazzy. When the time comes, I will need to talk to Arvoreen through you.*/
== MAZZY25J @474 /*Of course. Just say the word.*/
== VICON25J @475 /*Everyone stand back. I must call upon Shar first and she will likely be displeased with my request.*/
= @476 /*Shar! It is Viconia of House DeVir! I call on you! Speak with me now!*/
= @477 /***OF COURSE, VICONIA, MY DARLING. YOU HAVE OFTEN PLEASED ME. WHAT DO YOU ASK OF ME?***/
= @478 /*You have aided me greatly during my time of need but I cannot continue in good faith. I have had a change of heart and direction and thus I ask to return your power and be released from your service.*/
= @479 /***CERTAINLY, MY DARLING. IT WILL BE A RELIEF NOT TO HAVE THAT PESKY SPIDER QUEEN CRAWLING AROUND MY DOMAIN IN SEARCH OF YOU. SHE LEAVES HER WEBS WHEREVER SHE GOES. IT GRIEVES ME TO LOSE SO DELECTABLE A FOLLOWER, BUT IF THIS IS WHAT YOU WISH...***/
= @480 /*It is. I am ready. I thank you for understanding my wish to change deities...*/
= @481 /***CHANGE DEITIES? UNGRATEFUL WRETCH! I TOOK YOU IN WHEN YOU HAD NOTHING AND NO ONE AND NOW YOU ACQUIRE THIS BASTARD CHILD OF A GOD AND THIS SORRY EXCUSE FOR A PALADIN AND YOU THINK THAT YOU NO LONGER NEED ME?***/
= @482 /***YOU DO NOT GET TO REJECT ME LIGHTLY, DROW! I WILL TAKE MY POWER BACK. I WILL RIP IT OUT THROUGH THE VERY FABRIC OF YOUR SOUL! YOU WILL SUFFER, VICONIA.***/
= @483 /*You do not scare me, Shar! I am Viconia of House DeVir! Whatever minor tortures you can inflict will be nothing compared to what... AAAAGH!*/
== MAZZY25J @484 /*Viconia!*/
== VICON25J @485 /*That was... better than I feared. She is gone now. I am empty again.*/
END
	++ @486 /*Are you okay? Did she hurt you?*/ + _bMVicShar4
	++ @487 /*So you're powerless now? You'd better get some new spells before I run out of patience.*/ + _bMVicShar5
	++ @488 /*Well, that was interesting. I've never seen a god speak before. What did it feel like?*/ + _bMVicShar6
	
APPEND VICON25J IF ~~ THEN _bMVicShar4
	SAY @489 /*For a moment, my entire body was burning from my bones out to my skin.*/
	IF ~~ THEN EXTERN MAZZY25J _bMVicShar7
	END
	
	IF ~~ THEN _bMVicShar5
	SAY @490 /*I will try. But I must recover for a moment. It felt like my entire body was burning, from my bones out to my skin.*/
	IF ~~ THEN EXTERN MAZZY25J _bMVicShar7 
	END
	
	IF ~~ THEN _bMVicShar6
	SAY @491 /*Like my whole body was burning, from my bones out to my skin.*/
	IF ~~ THEN EXTERN MAZZY25J _bMVicShar7 
	END
END

CHAIN MAZZY25J _bMVicShar7
@492 /*That sounds horrible.*/
== VICON25J @493 /*Ha. One night I dreamed that Lolth hung me from the ceiling on hooks and cut off tiny slivers of my skin, flesh, and bone once a minute for a hundred years. THAT was a painful night; this was nothing. Torture is not one of Shar's specialties.*/
= @494 /*Are you ready, Mazzy? I wish to call on Arvoreen now. There is no point living in uncertainty any longer than I must.*/
== MAZZY25J @495 /*Yes. What do you need me to do?*/
== VICON25J @496 /*Open yourself to Arvoreen so that I may speak with him.*/
= @497 /*Arvoreen! I am Viconia of house DeVir. Please answer my summons!*/
== MAZZY25J @498 /***VICONIA, CHILD, BELOVED FRIEND OF MY FAVOURITE PALADIN. HOW MAY I AID YOU?***/
== VICON25J @499 /*I am a former priestess of Lolth and Shar, but I no longer wish to serve the darkness. I have no god now and so I ask to serve you. Will you have me?*/
== MAZZY25J @500 /***IT IS COMMENDABLE THAT YOU HAVE RENOUNCED YOUR FORMER MASTERS, BUT WHY SERVE ME? YOU ARE NOT ONE OF MY PEOPLE AND I HAVE NEVER HAD A DROW AS A WORSHIPPER, LET ALONE A PRIESTESS.***/
== VICON25J @501 /*There is strength in your people, Arvoreen. Empires rise and fall but they remain. The world could be covered in darkness, yet I believe your followers would not lose heart. I would be honored to be counted among such company.*/
== MAZZY25J @502 /***BUT WOULD THEY BE HONOURED TO BE AMONG YOURS, CHILD? WOULD THEY FIND YOU A WORTHY ALLY AGAINST THE DARKNESS?***/
== VICON25J @503 /*They would! Having me could only help them in battle. Would you turn away someone who wishes to help defend your people in the struggles ahead?*/
== MAZZY25J @504 /***A DEFENDER WHO STANDS AND FIGHTS IS HELPFUL, BUT A DEFENDER WHO RUNS IS NOT. YOU HAVE BEEN RUNNING FOR SO LONG, CHILD. WHY SHOULD I BELIEVE THAT YOU WILL STOP?***/
== VICON25J @505 /*Because I have nowhere left to run! Please, Arvoreen, I want only to find peace.*/
== MAZZY25J @506 /***THERE IS ALWAYS SOMEWHERE ELSE TO RUN, CHILD, AND PEACE IS FOUND WITHIN.***/
== VICON25J @507 /*Let me serve you, Arvoreen, I beg you! Don't leave me alone in the darkness!*/
== MAZZY25J @508 /***SERVE OTHERS, CHILD, AND YOU WILL NEVER BE ALONE. GOODBYE, VICONIA. I DO NOT NEED YOU, BUT I WILL BE BESIDE YOU. WALK IN LIGHT AND KNOW THAT YOU ARE LOVED.***/
= @509 /*He has returned to his plane. I'm so sorry, Viconia. I tried to speak for you but Arvoreen said he already knew all that he needed to. He was right though, you are loved. I will not leave your side.*/
== VICON25J @510 /*I was foolish to think that a halfling god would accept me. Well, <CHARNAME>? I have failed. May I continue in your company or will you reject me as well?*/
END
	++ @511 /*I have never turned you away when you needed help, Viconia. I will not start now.*/ EXTERN VICON25J _bMVicShar8
	++ @512 /*I will not reject you. Mazzy would never forgive me and I do not wish to bring her grief.*/ EXTERN VICON25J _bMVicShar8
	++ @513 /*Of course you may stay, Viconia. I care about you deeply and I do not wish to see you go.*/ EXTERN VICON25J _bMVicShar8
	++ @514 /*I told you, Viconia. I will not fight both Shar and Lolth without another god's assistance. You must leave before you get us killed.*/ EXTERN VICON25J _bMVicShar9
	++ @515 /*Are you kidding? Running around with a halfling pretend-paladin was bad enough without adding a godless cleric too.*/ EXTERN VICON25J _bMVicShar9
	++ @516 /*Without your powers, you are useless. Leave immediately.*/ EXTERN VICON25J _bMVicShar9
	
CHAIN VICON25J _bMVicShar8
@517 /*Thank you, <CHARNAME>. That means a lot to me. But now what do I do? I have always been a priestess. Without my powers, what am I?*/
== MAZZY25J @518 /*I don't know, Viconia, but we can think about it later. I am exhausted and I cannot imagine how you must feel right now. The morning is wiser than the evening and we will all feel better with some rest.*/
DO ~RestParty()~
EXIT

CHAIN VICON25J _bMVicShar9
@519 /*I am sorry to hear that <CHARNAME>. I will go. Thank you for all you have given me, whatever your motivations.*/
== MAZZY25J @520 /*And I will go with you, Viconia. I will not leave you helpless and alone.*/
DO ~SetGlobal("_bVicLeavesForever","GLOBAL",1) SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~
EXIT


CHAIN IF WEIGHT #-1 ~Global("_bMazVicConv","GLOBAL",44)~ THEN VICON25J _bMVicShar10
@521 /*Here I am. The world looks the same, yet Shar is not with me. I feel, lighter, as though I need only push off the ground to soar into the sky and kiss the clouds.*/
DO ~SetGlobal("_bMazVicConv","GLOBAL",45)~
== MAZZY25J @522 /*I am glad to find you in good spirits, but we should figure out where we stand. Can you look inside yourself and see what has changed? Have you any magic left?*/
== VICON25J @523 /*I am... emptier, yet I still feel connected to the divine planes. Maybe I can... yes! The magic is still here. The powers of the gods are still at my disposal!*/
= @524 /*I did not feel it before because the connection is so faint, not like the heavy shadows of Shar or the sticky, painful webs of Lolth, but the magic is there and will respond to my call. Fear me world! Tremble before Viconia DeVir, for I am your master!*/
END
	++ @525 /*I am glad that you are feeling better, though you should probably tone that down a bit.*/ + _bMVicShar11
	++ @526 /*I'm happy for you, Viconia. But maybe you should skip the part about other people cowering?*/ + _bMVicShar11
	++ @527 /*Seriously, I have the weirdest friends. You don't really mean that, right?*/ + _bMVicShar11
	++ @528 /*That's what I like to hear! Let us crush our enemies and bathe in their blood.*/ + _bMVicShar12
	++ @529 /*Yes! I want to do some proper conquering!*/ + _bMVicShar12

CHAIN VICON25J _bMVicShar11
@530 /*Oh... I suppose. Though I would not mind going back to the rivvin who hunted me and hearing them cry and plead for their lives. I would spare them, of course, but it would be a refreshing change.*/
== MAZZY25J @531 /*Forget them, Viconia. They will continue to lead their petty lives and inflict their petty cruelties. Let us concern ourselves with bigger things.*/
END
	++ @534 /*So did Arvoreen accept you? Which god do you serve?*/ + _bMVicShar13
	++ @535 /*I still don't understand. Who gave your magic back?*/ + _bMVicShar13
	++ @536 /*This is all very chummy, but I'd still like to know what happened. Who's your patron now?*/ + _bMVicShar13

CHAIN VICON25J _bMVicShar12
@532 /*It was only a figure of speech, <CHARNAME>. I will still help you defeat our enemies, but my bath will only contain water from now on.*/
== MAZZY25J @533 /*Well that is good, I would hate to continue sharing it with you otherwise.*/
END
	++ @534 /*So did Arvoreen accept you? Which god do you serve?*/ + _bMVicShar13
	++ @535 /*I still don't understand. Who gave your magic back?*/ + _bMVicShar13
	++ @536 /*This is all very chummy, but I'd still like to know what happened. Who's your patron now?*/ + _bMVicShar13
	
CHAIN VICON25J _bMVicShar13
@537 /*I... don't know. Maybe Arvoreen? Maybe more than one god? Maybe myself? I cannot say. I only know that I still have power but it feels quieter and easier to channel than before. It is the power of light and vigilance to protect the ones I love.*/
== MAZZY25J @538 /*That is enough for me. Come you two, let us be off.*/
EXIT
	