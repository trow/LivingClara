//1st Talk, if injured
CHAIN IF WEIGHT #-1 ~Global("_bAerieVicArmTalk","GLOBAL",1)~ THEN AERIE25J _bVicAerie1
@1 /*Oh the blood, there's so much blood. Let me help you, Viconia. Oh, her arm is missing. Where's her arm? I'm going to be sick.*/
= @2 /*She's dying, help her!*/
= @3 /*No one will help her. I have to. Okay... you can do this Aerie. You just need to stop the bleeding.*/
DO ~ActionOverride("Viconia",ApplySpell("Viconia",CLERIC_CURE_MEDIUM_WOUNDS))~
= @4 /*There! Did that help?*/
== VICON25J @5 /*I'll be fine. I just need... aaagghh!*/
== AERIE25J @6 /*What are you doing?*/
== VICON25J @7 /*Silence! I need to concentrate.*/
DO ~ApplySpell("Viconia",CLERIC_REGENERATE) SetGlobal("_bAerieVicArmTalk","GLOBAL",2)~
== AERIE25J @8 /*Oh wow, she's regrowing her arm. It's growing back. This is amazing!*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieVicArmTalk","GLOBAL",3)~ THEN VICON25J _bVicAerie1B
@9 /*There. By Shar, regenerating the arm was almost as painful as losing it.*/
== AERIE25J @900 /*Why do all of your spells hurt? No one else's healing spells hurt.*/
== VICON25J @901 /*Pain keeps you alert and alive.*/
= @12 /*Why are you looking at me like that?*/
== AERIE25J @10 /*You can regenerate limbs!*/
== VICON25J @11 /*Any high level priestess can regenerate the body, though it has been some time since I had enough power.*/
== AERIE25J @13 /*When I lost my wings, Quayle took me to the local temple, but they said they couldn't help me. They said the muscles had atrophied and it wasn't possible.*/
== VICON25J @14 /*Most rivvin believe that anything they cannot do is impossible. It's why they remain weak. It would be difficult, but I have done it before.*/
= @15 /*You could as well, if you spent more time honing your skills and less time whining and moping.*/
== AERIE25J @16 /*I don't know how, but you do!*/
== VICON25J @17 /*Yes... so what?*/
== AERIE25J @18 /*You could give me back my wings.*/
== VICON25J @19 /*Quit bothering me.*/
== AERIE25J @20 /*Please, give me my wings!*/
== VICON25J @21 /*No!*/
== AERIE25J @22 /*But... why?*/
== VICON25J @23 /*Because you are a useless broken bird. You think that all you must do is stand there, weak and helpless, and someone will rescue you.*/
= @24 /*If you want wings, then you regenerate them!*/
= @25 /*The world owes you nothing! I owe you nothing!*/
= @26 /*Everyone suffers. Everyone loses. Now leave me be.*/
DO ~SetGlobal("_bAerieVicArmTalk","GLOBAL",4)~
EXIT

//2nd Talk w/ CN
CHAIN IF WEIGHT #-1 ~Global("_bAerieVicArmTalk","GLOBAL",6)~ THEN AERIE25J _bVicAerie2
@27 /*<CHARNAME>, could you please talk to Viconia? She could give me back my wings; she knows how to regrow them, but she won't because she's... she's mean and vile and she hates me.*/
= @28 /*But she likes you. Please, beg her to help me. I'll do anything she asks.*/
DO ~SetGlobal("_bAerieVicArmTalk","GLOBAL",7)~
END
	++ @29 /*Sorry, Aerie. I can't be bothered.*/ + _bCNNoHelp
	++ @30 /*I think it's best if I don't get involved.*/ + _bCNNoHelp
	++ @31 /*Okay, I'll ask her.*/ + _bCNHelp
	++ @32 /*All right, if it will make you happy.*/ + _bCNHelp
	
CHAIN AERIE25J _bCNNoHelp
@33 /*But... but... fine! Be that way! I don't need you.*/
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT

CHAIN AERIE25J _bCNHelp
@34 /*Really! Thank you so much.*/
= @35 /*Maybe soon I will fly again...*/
DO ~SetGlobal("_bAerieVicHelp","GLOBAL",1)~
EXIT

//3rd Talk
CHAIN IF WEIGHT #-1 ~Global("_bAerieVicHelp","GLOBAL",3)~ THEN VICON25J _bVicAerie3
@36 /*So you want to ask me to regrow the weakling's wings.*/
DO ~SetGlobal("_bAerieVicHelp","GLOBAL",4)~
END
	++ @37 /*How did you know?*/ + _bVicGrowWings1
	++ @38 /*Actually, yes. Can you?*/ + _bVicGrowWings2
	++ @39 /*Nah, I've decided that I don't care.*/ EXIT
	
APPEND VICON25J IF ~~ THEN _bVicGrowWings1
	SAY @40 /*That is unimportant.*/
	IF ~~ THEN + _bVicGrowWings2 
	END
	
	IF ~~ THEN _bVicGrowWings2
	SAY @41 /*It would be difficult, but I could do it. What of it?*/
	++ @42 /*Will you help her? It would mean a lot to Aerie.*/ + _bVicGrowWings3
	++ @43 /*I order you to give Aerie her wings back!*/ + _bVicGrowWings3
	END
	
	IF ~~ THEN _bVicGrowWings3
	SAY @44 /*Why should I?*/
	++ @45 /*You would make her happy.*/ + _bVicGrowWings4
	++ @46 /*It would make the world a better place.*/ + _bVicGrowWings4
	++ @47 /*I could give you money.*/ + _bVicGrowWings5
	++ @48 /*Do it for me.*/ + _bVicGrowWings6
	END
	
	IF ~~ THEN _bVicGrowWings4
	SAY @49 /*Is that my job? To make every person who hates me happy?*/
	= @50 /*Should I walk through the slums of the city closing every wound, bringing the fallen back to life? Should I spend the rest of my life healing other people's misery?*/
	IF ~~ THEN + _bVicGrowWings6
	END
	
	IF ~~ THEN _bVicGrowWings5
	SAY @51 /*I do not require money.*/
	++ @45 /*You would make her happy.*/ + _bVicGrowWings4
	++ @46 /*It would make the world a better place.*/ + _bVicGrowWings4
	++ @48 /*Do it for me.*/ + _bVicGrowWings6
	END
	
	IF ~~ THEN _bVicGrowWings6
	SAY @52 /*Bah. You require me to keep her alive so I do. Trying to regrow the broken bird's wings would be a waste of time.*/
	= @54 /*We used to cut the wings off her kind and grow them back for practice. The ones who didn't die lost their minds from the pain.*/
	++ @55 /*That's horrible! You're a monster!*/ + _bVicGrowWings7
	++ @56 /*Aerie is stronger than you think. She wants this more than life itself!*/ + _bVicGrowWings8
	END
	
	IF ~~ THEN _bVicGrowWings7
	SAY @57 /*Hah. You insult me and that is supposed to make me want to help Aerie?*/
	= @58 /*You still have not given me a reason why I should bother.*/
	++ @56 /*Aerie is stronger than you think. She wants this more than life itself!*/ + _bVicGrowWings8
	++ @59 /*This is your chance to make up for your past crimes. And Aerie wants it desperately.*/ + _bVicGrowWings8
	END
	
	IF ~~ THEN _bVicGrowWings8
	SAY @60 /*So she would pay anything...*/
	= @61 /*...but she has nothing I want.*/
	= @62 /*I will not do it. She should be able to heal herself.*/
	++ @63 /*She can't yet. Perhaps you could teach her?*/ + _bVicGrowWings9
	++ @64 /*I guess we should give up on the whole idea.*/ EXIT
	++ @65 /*All right. I tried. That should be enough.*/ EXIT
	END
END

CHAIN VICON25J _bVicGrowWings9
@66 /*Teach the wingless bird. That would be an even bigger waste of time than healing her.*/
= @67 /**sigh* Fine. I shall do as you ask.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieVicHelp","GLOBAL",5)~ THEN VICON25J _bVicAerie3
@68 /*Wingless sister of light! Talk to me, I know you are listening.*/
== AERIE25J @69 /*What... what do you want?*/
DO ~SetGlobal("_bAerieVicHelp","GLOBAL",6) SetGlobal("_bAerieRefuseVic","GLOBAL",1)~
== VICON25J @70 /*You want to regrow your wings.*/
== AERIE25J @71 /*Yes.*/
== VICON25J @72 /*You want this more than life itself.*/
== AERIE25J @73 /*Yes...*/
== VICON25J @74 /*I will teach you how, but you will owe me.*/
== AERIE25J @75 /*You will! What... what is the cost?*/
== VICON25J @76 /*You. If I teach you this, I will own you. Your body, your soul, your past, your future, they will all belong to me. In this life and every one to follow until the worlds end.*/
== AERIE25J @77 /*I... I...*/
= @78 /*No! I will never again be a slave!*/
== VICON25J @79 /*<CHARNAME> was right, you are tougher than I thought.*/
= @80 /*But if you are not willing to pay the price, then we are done here. Be free, maimed bird.*/
= @81 /*Be free.*/
EXIT


CHAIN IF WEIGHT #-1 ~Global("_bAerieRefuseVic","GLOBAL",3)~ THEN AERIE25J _bVicAerie4
@82 /*<CHARNAME>, do you think she can really do it?*/
DO ~SetGlobal("_bAerieRefuseVic","GLOBAL",4)~
END
	++ @83 /*Do what?*/ + _bAerieWings1
	++ @84 /*Have you been thinking about this for the last two days?*/ + _bAerieWings2
	++ @85 /*Who?*/ + _bAerieWings3
	
APPEND AERIE25J IF ~~ THEN _bAerieWings1
	SAY @86 /*Regrow my wings! Can Viconia regrow my wings?*/
	IF ~~ THEN + _bAerieWings4
	END
	
	IF ~~ THEN _bAerieWings2
	SAY @87 /*I've been thinking about nothing but this. Do you think she can do it? Can Viconia regrow my wings?*/
	IF ~~ THEN + _bAerieWings4
	END
	
	IF ~~ THEN _bAerieWings3
	SAY @88 /*Viconia! Can Viconia regrow my wings?*/
	IF ~~ THEN + _bAerieWings4
	END
	
	IF ~~ THEN _bAerieWings4
	SAY @89 /*I think she was telling the truth. She was telling the truth about everything. About her being able to help me and... and about owning me.*/
	++ @90 /*How can you possibly know that?*/ + _bAerieWings5
	++ @91 /*So lie to her. Refuse to do anything she says after she helps you.*/ + _bAerieWings5
	++ @92 /*I really don't want to listen to this.*/ + _bAerieWings6
	END
	
	IF ~~ THEN _bAerieWings5
	SAY @93 /*There's magic in a promise, <CHARNAME>. It's how I know she was telling the truth, but it's also why I can't agree. If I say she owns me, all of me, forever and ever, it'll be true! I can't just walk away from that.*/
	= @94 /*Forever is too long to be a slave... I think.*/
	IF ~~ THEN + _bAerieWings7
	END
	
	IF ~~ THEN _bAerieWings6
	SAY @95 /*Fine then! Sorry I bothered you.*/
	IF ~~ THEN + _bAerieWings7
	END
	
	IF ~~ THEN _bAerieWings7
	SAY @96 /*You can leave now. I can walk and cry at the same time.*/
	IF ~~ THEN EXIT
	END
END


CHAIN IF WEIGHT #-1 ~Global("_bAerieRefuseVic","GLOBAL",5)~ THEN AERIE25J _bVicAerie5
@97 /*What? What are those?!*/
DO ~SetGlobal("_bAerieRefuseVic","GLOBAL",6)~
== VICON25J @98 /*Do you like them? I think my wings are quite pretty.*/
= @99 /*They move well, but I have not been able to get myself off the ground just yet.*/
= @100 /*Do you think you could offer me some pointers?*/
== AERIE25J @101 /*Why? Why are you doing this to me?!*/
== VICON25J @102 /*Not everything is about you, wingless sister.*/
= @103 /*Our earlier conversation led me to contemplate the act of flight.*/
= @104 /*I have always feared the endless open sky but listening to your constant whining piqued my curiosity.*/
= @105 /*Additionally, drow are not naturally winged so growing these was difficult and the challenge attracted me. They took all night, but I am pleased with the result.*/
= @106 /*Look how the feathers shine, are they not beautiful?*/
== AERIE25J @107 /*No... no! You have to remove them! REMOVE THEM!*/
= @108 /*<CHARNAME>, make her not have wings!*/
END
	++ @109 /*Oh no, don't bring me into this.*/ + _bAERIE25Jealous
	++ @110 /*Viconia created her wings. If you're so jealous, then create your own.*/ + _bAERIE25Jealous2
	++ @111 /*Viconia, you have to remove your wings.*/ EXTERN VICON25J _bAERIE25Jealous3
	++ @112 /*Viconia, either regenerate Aerie's wings or remove yours.*/ EXTERN VICON25J _bAERIE25Jealous3
	
CHAIN AERIE25J _bAERIE25Jealous
@113 /*Fine then, be unhelpful. I just won't look at her.*/
EXIT

CHAIN AERIE25J _bAERIE25Jealous2
@114 /*Maybe I will! And until then, I just won't look at her.*/
EXIT

CHAIN VICON25J _bAERIE25Jealous3
@115 /*Or what, <CHARNAME>?*/
= @116 /*Every command contains a silent threat. What is yours?*/
END
	++ @117 /*Or I'll kill you!*/ + _bAERIE25Jealous4
	++ @118 /*Or you must leave the group.*/ + _bAERIE25Jealous4
	++ @119 /*Or I won't be your friend!*/ + _bAERIE25Jealous4
	++ @120 /*Nevermind. Just keep them.*/ EXIT

CHAIN VICON25J _bAERIE25Jealous4
@121 /*Hah, I do not fear your empty threats.*/
= @122 /*But now that it is SO easy for me to create wings, it is nothing to remove them.*/
= @123 /*However, it will take some time and  I cannot rest until our leader allows me to...*/
END
	++ @124 /*You know what? Just keep the wings.*/ EXIT
	++ @125 /*Fine, we'll rest.*/ DO ~SetGlobal("_bAerieRefuseVic","GLOBAL",7) RestParty()~ EXIT
	
CHAIN IF WEIGHT #-1 ~Global("_bAerieRefuseVic","GLOBAL",8)~ THEN VICON25J _bAERIE25Jealous5
@126 /*Oh my wings are gone... oh, how I wish you could understand how it feels to be bound to the ground, chained and weighted like a miserable prisoner of earth...*/
DO ~SetGlobal("_bAerieRefuseVic","GLOBAL",9)~
= @127 /*I... I have been looking at the scars... on my back. The stumps that were... that were once my wings. They do not... they do not make me truly homely, do they? Am I... am I ugly to you?*/
== AERIE25J @128 /*Why are you imitating my voice? Are you mocking me?*/
== VICON25J @129 /*Of course I am mocking you. I had wings and now I've lost them because of you.*/
= @130 /*However, I have always been chained to the earth and I have no scars because I wield my healing magic with actual competence.*/
= @131 /*Weakness is not a strength, Aerie. You are a pathetic child, demanding that others solve your problems for you.*/
= @132 /*When you are strong, then you will have wings.*/
EXIT

