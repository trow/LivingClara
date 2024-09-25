//When Edwin asks you to kill a cowled wizard
INTERJECT_COPY_TRANS2 EDWIN 8 _bMazzyEdwin1 /*Good. Don't linger about then, get going! (Ugh, motivating these sloths is like pulling teeth.)*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN 
@1 /*Mae'Var's lackey orders us to find and kill a man we've never met, a man who has offered us no harm, and you just agree? I know you dislike the Cowled Wizards and wish to find your friend, and I know the Wizards tend to be arrogant, bullying, and abusive of their powers, but this is wrong and I will take no part in it.*/
= @2 /*Furthermore, killing one of the Wizards could bring the wrath of their entire organization down upon our heads and turn us all into hunted fugitives, which is no doubt why Edwin here refuses to do the task himself. So do what you feel you must, <CHARNAME>, but I am going home.*/
== EDWIN IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@3 /*Your halfling is mouthy, <CHARNAME>; you should beat her more often.*/
= @4 /*However, you are not a normal halfling, are you, Mazzy Fentan? Yes, I know who you are; I know who everyone is.*/
= @5 /*You have sworn to wipe out this guild on multiple occasions. Renal Bloodscalp would normally have killed you on sight but he foolishly hopes to use you and <CHARNAME> for his own ends (as do I).*/
= @501 /*Mae'Var doesn't know who you are; he thinks you are merely agents of Renal Bloodscalp whom he can use to his advantage (and he is too stupid to realize how weak his position truly is).*/
= @6 /*So here is my offer, oh fearless destroyer of evil: Let <CHARNAME> go kill the Wizard while you stay and partake of the full measure of my hospitality (paid for by Mae'Var, of course). This entire floor is shielded from prying ears and we have much to discuss.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN 
@7 /*What could we possibly have to speak about? Why should I not just slice you open right now before I leave?*/
== EDWIN IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@8 /*You would kill me and ruin your best chance at taking down this entire organization? I can tell you more about the Shadow Thieves than even Renal Bloodscalp knows. I will tell you all their secrets and then when it is time, you can slaughter them with ease.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@9 /*"Them," not "us"? Are you not one of them?*/
== EDWIN IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@10 /*For now. Allegiances can change. But come, have refreshments, talk... You may still leave at any time and your home is far away. No one can hear us here and no one will harm you, including myself. (Though hurting you might be exquisitely entertaining.)*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@11 /*Fine, mage, I accept your offer. Let us sit and converse like civilized beings, while <CHARNAME> acts as your dog. I do not suppose you have any tea?*/
DO ~LeaveParty() SetGlobal("KickedOut","LOCALS",1) SetGlobal("MazzyHappy","GLOBAL",1) SetGlobal("_bMazzyGuestEdwin","GLOBAL",1)~
END

//When Mazzy first leaves.
APPEND MAZZYP IF WEIGHT #-1 ~Global("_bMazzyGuestEdwin","GLOBAL",1) Global("KickedOut","LOCALS",1)~ THEN _bMazzyEdwin2
	SAY @12 /*I will wait here, <CHARNAME>. As soon as you are finished with this unfortunate business, return and I will be happy to accompany you once more.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyGuestEdwin","GLOBAL",2)~ EXIT
	END
END

//If you talk to Mazzy before Edwin.
APPEND MAZZYP IF WEIGHT #-1 ~Global("_bMazzyGuestEdwin","GLOBAL",2) Global("KickedOut","LOCALS",1) !Dead("Edwin") AreaCheck("AR0304")~ THEN _bMazzyEdwin3
	SAY @13 /*Ahh <CHARNAME>, you've returned. As soon as you have finished with Edwin's assignment, I will be happy to rejoin you. We've been having an informative discussion about the organization of the evil guilds in Amn.*/
	++ @1301 /*I've decided not to help Edwin. You can join us again.*/ DO ~SetGlobal("KickedOut","LOCALS",0) SetGlobal("_bMazzyGuestEdwin","GLOBAL",3) SetGlobal("MazzyHappy","GLOBAL",0) JoinParty()~ EXIT
	++ @1302 /*Ok, I will see you then.*/ EXIT
	END
END


//Once the quest is finished and Edwin gives you the next quest.
INTERJECT_COPY_TRANS EDWIN 36 _bMazzyEdwin4 /*Well done. An inconvenience that needed to be dealt with. I've another mission for you then, one that does not necessarily involve any bloodshed at all.*/
== MAZZYP IF ~!Global("_bMazzyGuestEdwin","GLOBAL",0) Detect("Edwin") !InParty("Mazzy")~ THEN 
@14 /*In that case, I will participate as well. I have spent more than enough time here and it would be nice to be back on the road.*/
DO ~SetGlobal("KickedOut","LOCALS",0) SetGlobal("_bMazzyGuestEdwin","GLOBAL",3) SetGlobal("MazzyHappy","GLOBAL",0) JoinParty()~
END


//1st Edwin-Mazzy conversation after their 1st in-game banter (SOA & TOB)
CHAIN 
IF WEIGHT #-1 ~Global("_bedwinmazzy","GLOBAL",2)~ THEN EDWINJ _bMazzyEdwin1-1
@15 /*Stand for a moment, little halfling. I have been ruminating over this for some time, but now I am sure of it. You are the perfect image of a halfling girl I used to know.*/
DO ~SetGlobal("_bedwinmazzy","GLOBAL",3)~
== MAZZYJ @16 /*I am saddened to think that any of my people were ever known by you, Edwin.*/
== EDWINJ @17 /*Be that as it may, you could be her twin. In fact, I think she would have been about your age by now. I called her Pella. She was my slave; I purchased her from a traveling merchant.*/
END
	++ @18 /*Dealing in slaves, Edwin? You monster!*/ GOTO _bMazzyEdwin1-2
	++ @19 /*How could you? I should throw you out of this group right now.*/ GOTO _bMazzyEdwin1-2
	++ @20 /*A halfling slave. Why did I not think of that?*/ EXTERN MAZZYJ _bMazzyEdwin1-3
	++ @21 /*And here I thought you were only talk, wizard. Apparently you have some bite as well.*/ EXTERN MAZZYJ _bMazzyEdwin1-3
	++ @22 /**Don't get involved. Stay quiet.**/ GOTO _bMazzyEdwin1-5
	
APPEND EDWINJ IF ~~ THEN _bMazzyEdwin1-2
	SAY @23 /*This is not your conversation, <CHARNAME>, and thus I will not concern myself with the noises that your foolish mouth emits. (Now where was I...?)*/
	IF ~~ THEN GOTO _bMazzyEdwin1-5
	END
END
	
APPEND MAZZYJ IF ~~ THEN _bMazzyEdwin1-3
	SAY @24 /*That is horrible, <CHARNAME>... You are just as monstrous as he.*/ 
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3) SetGlobal("_BMazzyRomance","GLOBAL",3)~ EXTERN EDWINJ _bMazzyEdwin1-4
	END
END

APPEND EDWINJ IF ~~ THEN _bMazzyEdwin1-4
	SAY @25 /*You are interrupting, fool. I am speaking with Mazzy. (Now where was I...?)*/
	IF ~~ THEN GOTO _bMazzyEdwin1-5
	END
END

CHAIN EDWINJ _bMazzyEdwin1-5
@26 /*Ah yes, Pella. She was just a little thing, a tiny copy of a lovely girl. I was bored and thought that having my own concubine would be a welcome change.*/
== MAZZYJ @27 /*I should kill you.*/
== EDWINJ @28 /*But you will not. I purchased Pella legally from a licensed dealer. I paid full price and received papers of ownership in a land where slavery is allowed. I did nothing illegal and your vows prevent you from harming me without cause. (I wonder just how far I can push those vows.)*/
== MAZZYJ @29 /*One day you will give me cause.*/
== EDWINJ @30 /*And on that day you will die.*/
= @31 /*With a wave of my hand, I will obliterate you. Or maybe I will incapacitate you instead and enjoy your sweet body for a while.*/
== MAZZYJ IF ~Gender("Edwin",FEMALE)~ THEN @3101 /**laughs* You would find my body difficult to enjoy in your present condition, would you not?*/
== EDWINJ IF ~Gender("Edwin",FEMALE)~ THEN @3102 /*You think this would stop me? I am Edwin Odesseiron; if you attack me, I will polymorph myself into a flind, a MALE flind, and then use you however I see fit.*/
== MAZZYJ @32 /*You threaten me...*/
== EDWINJ @33 /*It is not a threat. You would enjoy it, Mazzy. Pella spent every night with me moaning in ecstasy. (Perhaps because I charmed her first.)*/
= @34 /*Oh put away your weapons, little girl. You wish so desperately to be a paladin and no paladin would attack an unarmed man.*/
== MAZZYJ @35 /*I hate you, mage.*/
== EDWINJ @36 /*But I do not hate you, pretty Mazzy. I will spend my nights dreaming of you (and you will be wearing far less armor).*/
EXIT


//2nd Edwin-Mazzy conversation.
CHAIN
IF  WEIGHT #-1 ~Global("_bedwinmazzy","GLOBAL",5)~ THEN MAZZYJ _bMazzyEdwin2-1
@37 /*I have been waiting for you to mention it but you have not and so I find myself compelled to ask. What happened to Pella, Edwin?*/
DO ~SetGlobal("_bedwinmazzy","GLOBAL",6)~
== EDWINJ @38 /*Who is Pella?*/
END
	++ @39 /*Yeah, Mazzy, who is Pella?*/ GOTO _bMazzyEdwin2-2
	++ @40 /*Oh, come on. Not this again.*/ GOTO _bMazzyEdwin2-2
	++ @41 /*Pella, Edwin. Your halfling slave. The one who looked like Mazzy.*/ EXTERN EDWINJ _bMazzyEdwin2-3
	++ @42 /*Answer the question, wizard.*/ EXTERN EDWINJ _bMazzyEdwin2-3

APPEND MAZZYJ IF ~~ THEN _bMazzyEdwin2-2
	SAY @43 /*Pella, Edwin. Your halfling slave. You said I looked like her. Where is she now?*/
	IF ~~ THEN EXTERN EDWINJ _bMazzyEdwin2-3
	END
END

CHAIN EDWINJ _bMazzyEdwin2-3
@44 /*Oh, THAT Pella. She's dead.*/
== MAZZYJ @45 /*Why?*/
== EDWINJ @46 /*I trained her to wield a sword and shield and told her to stay in-between me and my enemies. At first, she would not do it and ran from the fight, but I soon persuaded her that this was not in her best interest. (It took quite a while; halflings are so stubborn.)*/
== MAZZYJ @47 /*You tortured her?!*/
== EDWINJ @48 /*I disciplined her when she would not do the task that I assigned her. I was her owner and that was my right.*/
= @49 /*She learned her duty, but one day an ogre smashed her head in with a club. It was a shame to lose such a pretty thing, but better her head than my own.*/
== MAZZYJ @50 /*You hid behind a young halfling girl during combat? You truly are a coward.*/
== EDWINJ @51 /*Mazzy, I am as practical as you are delectable. Someone must stand in front of me and be hit with clubs. That person was Pella and now it is you.*/
END
	++ @52 /*Well said, Edwin. I stand behind Mazzy during battles for the exact same reason.*/ EXTERN MAZZYJ _bMazzyEdwin2-4
	++ @53 /*Battle fodder. Always important for those of us with flimsy builds.*/ EXTERN MAZZYJ _bMazzyEdwin2-4
	++ @54 /**sigh* My last set of lackeys wasn't nearly this much work. I feel like I'm babysitting.*/ EXTERN MAZZYJ _bMazzyEdwin2-5
	++ @55 /*Mazzy protects you, Edwin. You should be grateful that she does.*/ EXTERN MAZZYJ _bMazzyEdwin2-5
	++ @56 /*I expect all my followers to hold their own in battle. You should thank Mazzy for keeping you safe.*/ EXTERN MAZZYJ _bMazzyEdwin2-5
	
APPEND MAZZYJ IF ~~ THEN _bMazzyEdwin2-4
	SAY @57 /*Well, maybe I will let both of you be hit in battle from now on.*/ 
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3) SetGlobal("_BMazzyRomance","GLOBAL",3)~ EXTERN EDWINJ _bMazzyEdwin2-6
	END
	
	IF ~~ THEN _bMazzyEdwin2-5
	SAY @58 /*Maybe I will let the wizard be hit in battle from now on.*/
	IF ~~ THEN EXTERN EDWINJ _bMazzyEdwin2-6
	END
END

CHAIN EDWINJ _bMazzyEdwin2-6
@59 /*No, delicious Mazzy, you will not. I will never be near the front of combat. If a man attacks me with a sword, my moral code allows me to run for my life or cast a spell of illusion to turn my foe aside. Your moral code requires you to charge ahead.*/
= @60 /*You will always stand in-between me and those attempting to do me harm. At least until you die and then I will find another monkey to do my bidding. (Hopefully a larger one who can block more arrows.)*/
== EDWINJ IF ~OR(2) !Race(Player1,HALFLING) !Gender(Player1,FEMALE)~ THEN @62 /*Did you know that when someone hurt her, Pella made the same whimpering sound that you do when you are hit?*/
== EDWINJ IF ~Race(Player1,HALFLING) Gender(Player1,FEMALE)~ THEN @61 /*Did you know that when someone hurt her, Pella made the same whimpering sound that you do when you are hit?  <CHARNAME> makes it too.*/
== EDWINJ @63 /*I wonder if it is universal to all halfling girls. I should get another and compare.*/
END
	++ @64 /*Good idea, Edwin, I wouldn't mind having a slave or two myself.*/ EXTERN MAZZYJ _bMazzyEdwin2-7
	++ @65 /*Only if you let me share.*/ EXTERN MAZZYJ _bMazzyEdwin2-7
	++ @66 /*There will be no slaves for you, Edwin. Not while you are with us.*/ GOTO _bMazzyEdwin2-9
	++ @67 /*Bite your tongue, wizard. Or I will remove it.*/ GOTO _bMazzyEdwin2-9
	++ @68 /*If you were not so useful, Edwin, I would kill you myself.*/ GOTO _bMazzyEdwin2-9
	++ @69 /*Enough of this. I will not have you arguing.*/ GOTO _bMazzyEdwin2-9

APPEND MAZZYJ IF ~~ THEN _bMazzyEdwin2-7
	SAY @70 /*No, no slaves, not so long as I am here.*/ 
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3) SetGlobal("_BMazzyRomance","GLOBAL",3)~ EXTERN EDWINJ _bMazzyEdwin2-8
	END
END

APPEND EDWINJ IF ~~ THEN _bMazzyEdwin2-8
	SAY @71 /*You are not my leader, girl. Let the adults make those decisions. I could charm you and make you my new concubine, though it might be better to tie you up and exchange you for a more obedient servant.*/
	IF ~~ THEN EXTERN MAZZYJ _bMazzyEdwin2-10
	END

	IF ~~ THEN _bMazzyEdwin2-9
	SAY @72 /*(Another reason to spend no more time with you pitiful monkeys than necessary.) Maybe when I leave this group, I will charm you, tie you up, and exchange you for a more obedient servant.*/
	IF ~~ THEN EXTERN MAZZYJ _bMazzyEdwin2-10
	END
END

CHAIN MAZZYJ _bMazzyEdwin2-10
@73 /*You will not find me easy to control!*/ 
== EDWINJ @74 /*You are already easy to control, girl; you have no depth. You are a simple monkey with predictable responses. You wish to kill me, but your code prevents it. You do not possess the intelligence to manage your situation, so instead you hoot loudly and dance in anger.*/ 
= @75 /*Dance, little monkey, dance at the end of my chain. (This is more enjoyable than I previously imagined.)*/
EXIT


//3rd Edwin-Mazzy conversation
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bedwinmazzy","GLOBAL",8)~ THEN _bMazzyEdwin3.1
	SAY @76 /*<CHARNAME>, why is Edwin travelling with us?*/
	++ @77 /*He's a powerful mage. One of the best I've ever seen.*/ GOTO _bMazzyEdwin3.2
	++ @78 /*He's a friend. We've traveled together before.*/ GOTO _bMazzyEdwin3.3
	++ @79 /*Do not worry, Mazzy, I do not agree with Edwin. I am only using him.*/ GOTO _bMazzyEdwin3.4
	++ @80 /*Money, power, magic. Those are the usual reasons.*/ GOTO _bMazzyEdwin3.5
	++ @81 /*I need the company. Even a worm such as Edwin is better than my thoughts. I do not like to be alone.*/ GOTO _bMazzyEdwin3.6
	++ @82 /*Isn't it obvious? I love him. He's so dashing, handsome and charming.*/ GOTO _bMazzyEdwin3.7
	END

	IF ~~ THEN _bMazzyEdwin3.2
	SAY @83 /*Can we not find some other spell-caster, even if they are not quite as proficient? Edwin is a vile human being.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.8
	END
	
	IF ~~ THEN _bMazzyEdwin3.3
	SAY @84 /*A friend? Edwin has no friends but himself. He is a self-centred and vile human being.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.8
	END
	
	IF ~~ THEN _bMazzyEdwin3.4
	SAY @85 /*Perhaps, <CHARNAME>. But I fear that he is using you instead.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.8
	END
	
	IF ~~ THEN _bMazzyEdwin3.5
	SAY @86 /*Sometimes I wonder if I should be staying with you. The ends do not always justify the means.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.8
	END
	
	IF ~~ THEN _bMazzyEdwin3.6
	SAY @87 /*I cannot believe that. The man is evil to his core.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.8
	END
	
	IF ~~ THEN _bMazzyEdwin3.7
	SAY @88 /*Then you have either lost your mind or you are a fool. Edwin loves no one but himself.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.8
	END
	
	IF ~~ THEN _bMazzyEdwin3.8
	SAY @89 /*Also I am worried I might stab him...*/
	++ @90 /*Go right ahead. Edwin could use a good stabbing.*/ GOTO _bMazzyEdwin3.9
	++ @91 /*Don't let him get to you, Mazzy. We're all just pieces on a board to Edwin and your anger gives him joy.*/  GOTO _bMazzyEdwin3.10
	++ @92 /*I will not have you fighting with your fellow party members. You'll have to leave if you cannot work together peacefully.*/  GOTO _bMazzyEdwin3.11
	++ @93 /*Someday, I will give that order. But until then you must have patience. Edwin has not outlived his usefulness.*/  GOTO _bMazzyEdwin3.12
	++ @94 /*Please try to keep your temper. I don't know who would win that battle and raising you from the dead is expensive.*/  GOTO _bMazzyEdwin3.13
	END
	
	IF ~~ THEN _bMazzyEdwin3.9
	SAY @95 /*I cannot attack him without cause, <CHARNAME>. To do so would go against my vows.*/ 
	IF ~~ THEN GOTO _bMazzyEdwin3.14
	END
	
	IF ~~ THEN _bMazzyEdwin3.10
	SAY @96 /*You are correct; I do not wish to give that monster pleasure.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.14
	END
	
	IF ~~ THEN _bMazzyEdwin3.11
	SAY @97 /**sigh* Do not worry, <CHARNAME>. If Edwin dies, it will not be by my hand.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.14
	END
	
	IF ~~ THEN _bMazzyEdwin3.12
	SAY @98 /*I suppose you are right. However, I pray that we will find another wizard soon.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.14
	END
	
	IF ~~ THEN _bMazzyEdwin3.13
	SAY @99 /*Not so expensive that you would fail to do it, I hope. But do not worry, <CHARNAME>, if Edwin dies it will not be by my hand.*/
	IF ~~ THEN GOTO _bMazzyEdwin3.14
	END
	
	IF ~~ THEN _bMazzyEdwin3.14
	SAY @100 /*I really should not let him trouble me. I have put up with worse before. He just has a knack for getting underneath my skin.*/
	=
	@101 /*However, if you insist on letting the wizard travel with us then I will think of him as a test. No matter what he says, I will not react.*/
	IF ~~ THEN DO ~SetGlobal("_bedwinmazzy","GLOBAL",9)~ EXIT
	END
END


//4th Mazzy-Edwin conversation
CHAIN 
IF WEIGHT #-1 ~Global("_bedwinmazzy","GLOBAL",11)~ THEN MAZZYJ _bMazzyEdwin40
@102 /*Good <DAYNIGHTALL>, Edwin. How are you this fine <DAYNIGHT>?*/
DO ~SetGlobal("_bedwinmazzy","GLOBAL",12)~
== EDWINJ @103 /*(The halfling is speaking to me again; she must want something.) What do you want, adorable one?*/
== MAZZYJ @104 /*I am attempting to make pleasant conversation. Since I am stuck with your company, we might as well try to get along.*/
== EDWINJ @105 /*Really? Well then, my perfect doll, what shall we discuss?*/
== MAZZYJ @106 /*Tell me your secret plans. The ones that led you to seek out <CHARNAME> again.*/
== EDWINJ @107 /*<CHARNAME> found me, Mazzy.*/
== MAZZYJ @108 /*You honestly expect me to believe that is coincidence? <PRO_HESHE> meets you on two separate occasions, many months apart, in completely different lands? I am not a fool, Edwin. What are you plotting? What do you want?*/
== EDWINJ @109 /*What possible reason would I have to inform you of my plans? You are comely, but information is not free.*/
== MAZZYJ @110 /*You will tell me because you want me to know of your brilliance. You are bored and lonely and you have no one to speak with other than yourself.*/
== EDWINJ @111 /*(She is annoyingly perceptive.) Very well, my persistent toy soldier, here is your answer: I seek power in an attempt to gain immortality.*/
== MAZZYJ @112 /*That is foolishness. Everyone dies eventually.*/
== EDWINJ @113 /**scoffs* Every halfling, orc, and man dies, but elves live on forever. Gods do as well.*/
= @114 /*I was not fortunate enough to be born to an elf or a god, so I must attempt to gain through my own efforts what others, like your friend <CHARNAME>, were given at birth.*/
== MAZZYJ @115 /*Must you? Well then, how fare your efforts?*/
== EDWINJ @116 /*They continue. I am close, but I have not yet succeeded. The secret lies in transformation; not merely polymorphing one's outside appearance, but in truly transforming the body down to the smallest particle.*/
= @117 /*Alternately, I could switch bodies with someone else. I have completed that incantation already, but it seems to require voluntary commitment from both parties. (I have forced it on plenty of elves, but the stupid creatures keep managing to reject the switch.)*/
== MAZZYJ @118 /*Hmm, maybe you are not quite as insane as you first appear. Will you keep me informed as to your progress?*/
== EDWINJ @119 /*Curiosity kills halflings, Mazzy. Wise people keep their noses in their own business. However, if I ever succeed at this, you will certainly know, assuming, of course, that we are still traveling companions.*/
= @120 /*There is another spell I have been tinkering with as well: permanent mental domination, where I charm another person forever.*/
== MAZZYJ @121 /*That is horrible! Would the person you take over still be conscious? Trapped inside their body and perceiving your commands but unable to act for the remainder of their lives?*/
== EDWINJ @122 /*Possibly. (Or not? I do not know...) As long as I have control, what difference does it make?*/
== MAZZYJ @123 /*As long as I breathe, I will prevent you from succeeding!*/
== EDWINJ @124 /*Ha! You will be unable to prevent it. You will only know I have succeeded when I cast this spell on you and <CHARNAME> and anyone else I desire, creating an army of puppets under my control. You will spend the rest of your life as my sword and shield during the day, and as my bed-warmer at night.*/
= @125 /*But temper your enthusiasm, oh comely smiter-of-evil. That was not truly a threat. Rather, I was merely speculating about a hypothetical situation involving a spell that does not exist. These are not real plans; I am merely trying to make you upset.*/
= @126 /*Which means that I am not a legitimate target and you should lower your weapon. Determination and anger enrich your beauty, but we cannot have you killing me without cause and falling from grace, now can we?*/
== MAZZYJ @127 /*Edwin... thank you for reminding me how little I can trust you.*/
== EDWINJ @128 /*You can always trust me to be me. Pretty little thing that you are, you should still have enough brains to see that. Enjoy your <DAYNIGHTALL>, Mazzy.*/
EXIT
	
//Conversation after meeting Edwin's "mother" in romance
CHAIN IF WEIGHT #-1 ~Global("_bedwinmazzy","GLOBAL",14)~ THEN MAZZYJ _bMazzyEdwin41
@129 /*I'm surprised at you Edwin. I would not have expected you to show your weaknesses.*/
DO ~SetGlobal("_bedwinmazzy","GLOBAL",15)~
== 	EDWINJ @130 /*What are you blathering on about now, halfling?*/
== MAZZYJ @131 /*Your mother, wizard. You allowed <CHARNAME> to meet your mother and bared that blackened heart.*/
== EDWINJ @132 /*Oh, that. That wasn't my real mother.*/
== MAZZYJ @133 /*What?*/
== EDWINJ @134 /*Did you truly think I would introduce this party to my mother? The real Elvira would eat you all alive. However, <CHARNAME> is happier when I pretend at softness and there are plenty of lesser wizards in dire need of coin.*/
= @135 /*Dekaras was real, of course, but my old mentor found the idea quite amusing and the humiliation seemed a small price to pay for the joy of keeping a Bhaalspawn in my bed.*/
== MAZZYJ @136 /*You truly are a devil, aren't you? I should tell <CHARNAME> the truth.*/
== EDWINJ @137 /*You could try but <PRO_HESHE> would not believe you. Love blinds the keenest eyes. Indeed, perhaps this shall be my route to immortality. Give me a few more weeks and I am sure that I can trick <CHARNAME> into swapping <PRO_HISHER> form with me.*/
== MAZZYJ @140 /*I will kill you first.*/
== EDWINJ @141 /*I would like to see you try.*/
== EDWINJ @138 /*(Taunting the halfling is always good entertainment. The dim-witted creature believes every word I say, as though I would be so foolish as to give up <CHARNAME>'s affections for any reason. What use is immortality without <PRO_HIMHER> at my side?)*/
EXIT

//Post Breakup Talk if you dump Edwin for Mazzy
CHAIN IF WEIGHT #-1 ~Global("_bMazNotEdwin","GLOBAL",3)~ THEN EDWINJ _bEdwinDenial
@142 /*No, not that one. Dispel is useless. Perhaps a curse... or some sort of charm. Yes! The halfling must have used a new form of domination. One that is simply undetectable. (Except that I can detect everything. I am Edwin Odesseiron.)*/
DO ~SetGlobal("_bMazNotEdwin","GLOBAL",4)~
== MAZZYJ @143 /*Edwin, what are you muttering about?*/
== EDWINJ @144 /*Don't play coy with me! You know what you have done! What fell magic did you use to take <CHARNAME> away from me?*/
== MAZZYJ @145 /*None. I am not the one that requires spells to lure a <PRO_MANWOMAN> to my bed. <CHARNAME> chose me of <PRO_HISHER> own volition.*/
== EDWINJ @146 /*<CHARNAME> was mine! I refuse to believe that <PRO_HESHE> simply didn't love me after all, not when <PRO_HESHE> passed every test I gave <PRO_HIMHER>!*/
== EDWINJ IF ~GlobalGT("BeginEdElDek","LOCALS",0)~ THEN @147 /*What am I supposed to tell my mother?! That she gave <CHARNAME> her approval and then <PRO_HESHE> left me for some halfling paladin?!*/
== MAZZYJ IF ~Global("_bedwinmazzy","GLOBAL",15)~ THEN @148 /*I thought you said that wasn't your real mother? No matter, that is unimportant now.*/
== MAZZYJ @149 /*I did ask about you when <CHARNAME> began to court me and <PRO_HESHE> chose to continue anyway. So while I am sorry for the circumstances, you must accept that <PRO_HESHE> has moved on.*/
== EDWINJ @150 /*Save your breath. A dimwitted creature such as yourself could never hope to comfort the great Edwin Odesseiron. Offer me your pity and you will eat a fireball.*/
== MAZZYJ @151 /*And then you say something like that and I remember why I hate you. Enjoy your misery, Edwin. You have brought it on yourself.*/
= @152 /*Should it become too much, you are more than welcome to leave this company.*/
== EDWINJ @153 /*As if I would give you that satisfaction. (The halfling lies. It must be magic. I will remain with this group until I have figured out the spell.)*/
EXIT
