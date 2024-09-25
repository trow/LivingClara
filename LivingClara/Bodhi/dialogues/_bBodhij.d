
//Dialogue for turning into mist.
APPEND _bBodhij IF WEIGHT #-1 ~Global("_BBodhiMist","GLOBAL",1)~ THEN BEGIN _bbodhimisttalk1
SAY @0 /*No, no it's mine! This life is mine! [BODHIX41.WAV]*/
	= @1 /*<CHARNAME>, I flee. When I am whole I will find you, if you live.*/
	IF ~~ THEN DO ~ApplySpellRES("_bbomi25",Myself) TransformItem("_bbohair","_bbohar2") SetGlobal("_BBodhiMist","GLOBAL",2) SetGlobal("_BBodhiRemoved","GLOBAL",2) LeaveParty() EscapeAreaMove("AR0810",383,479,S)~ EXIT  //This is the big crypt in the graveyard. Placeholder for now
	END
END

APPEND _bBodhij IF WEIGHT #-1 ~Global("_BBodhiBurns","GLOBAL",1)~ THEN BEGIN _bbodhiburnstalk1
SAY @2 /*The sun, it burns! I will find you later.*/
	IF ~~ THEN DO ~ApplySpellRES("_bbomi25",Myself) TransformItem("_bbohair","_bbohar2") SetGlobal("_BBodhiBurns","GLOBAL",2) SetGlobal("_BBodhiRemoved","GLOBAL",2) LeaveParty() EscapeAreaMove("AR0810",383,479,S)~ EXIT
	END
END

//1st Hexxat Cloak Talk
CHAIN IF WEIGHT #-1 ~Global("_bCloakTalk","GLOBAL",1)~ THEN HEXXATJ _BHexxatWhines
@3 /*You are wearing my cloak.*/
DO ~SetGlobal("_bCloakTalk","GLOBAL",2)~
== _bBodhij @4 /*It was Dragomir's cloak, was it not? <CHARNAME> killed Dragomir which makes it <CHARNAME>'s cloak, and <CHARNAME> gave it to me.*/
== HEXXATJ @5 /*You must return it to me.*/
== _bBodhij @6 /*Must I? It was a treasured gift.*/
= @7 /*I think I will keep it. Any complaints must go to our leader.*/
== HEXXATJ @8 /*This is unacceptable, <CHARNAME>. I cannot move in sunlight without it.*/
END
	++ @9 /*Sorry, Hexxat, I need Bodhi more than you.*/ + _bSIHex
	++ @10 /*You'll just have to find another one.*/ + _bSIHex
	++ @11 /*There's two vampires and one cloak; you'll just have to learn to share.*/ + _bSIHex
	++ @12 /*Hexxat's right, Bodhi, you need to return it.*/ EXTERN _bBodhij _bBodhiSad
	
CHAIN HEXXATJ _bSIHex
@13 /*This is disappointing. I hope you will change your mind.*/
EXIT

CHAIN _bBodhij _bBodhiSad
@14 /*You give it to me only to ask for its return? My heart is broken, <CHARNAME>. With the sun denied me, I will sulk in the dark.*/
DO ~ActionOverride("HEXXAT",TakePartyItem("ohhcloak")) XEquipItem("ohhcloak","_BBodhi",SLOT_CLOAK,EQUIP)~
EXIT

//2nd Hexxat Talk
CHAIN IF WEIGHT #-1 ~Global("_bCloakTalk","GLOBAL",3)~ THEN _bBodhij _BDoubleMintTwins
@15 /*It seems that Dragomir's cloak is not as unique as I thought.*/
DO ~SetGlobal("_bCloakTalk","GLOBAL",4)~
	== HEXXATJ @16 /*He was a large vampire. When I had an opportunity, I recut his cloak and made two. I did not need the spare until now.*/
	= @17 /*It is clear that <CHARNAME> relies on you. I will have to accept your company as well.*/
EXIT

//Dead Lover Talk in Bodhi's Lair
CHAIN IF ~Global("_bBodhiLoverDeadTalk","GLOBAL",1) Global("_bBodhiLoverDeadMale","GLOBAL",1)~ THEN _bBodhij _bBodhiDeadLoverMaleTalk1
	@18 /*Your sweet love is dead. Shall I raise him back to be your mindless slave forever?*/
		DO ~SetGlobal("_bBodhiLoverDeadTalk","GLOBAL",2)~
END
	++ @19 /*Tell me how to cure him!*/ GOTO _bBodhiDeadLoverTalk2
	++ @20 /*I will find a way to restore him!*/ GOTO _bBodhiDeadLoverTalk2

CHAIN IF ~Global("_bBodhiLoverDeadTalk","GLOBAL",1) Global("_bBodhiLoverDeadFemale","GLOBAL",1)~ THEN _bBodhij _bBodhiDeadLoverFemaleTalk1
	@21 /*Your sweet love is dead. Shall I raise her back to be your mindless slave forever?*/
		DO ~SetGlobal("_bBodhiLoverDeadTalk","GLOBAL",2)~
END
	++ @22 /*Tell me how to cure her!*/ GOTO _bBodhiDeadLoverTalk2
	++ @23 /*I will find a way to restore her!*/ GOTO _bBodhiDeadLoverTalk2

CHAIN _bBodhij _bBodhiDeadLoverTalk2
	@24 /*After I acquired Imoen's soul, I researched my condition to see if I could remove my vampirism and become an elf once again.*/
	= @25 /*You will find the results of my research in a chest of tomes in yonder room.*/
EXIT

//Second Dead Lover Talk (After you have books)
CHAIN IF ~Global("_bBodhiLoverDeadTalk","GLOBAL",3)~ THEN _bBodhij _bBodhiDeadLoverBooks1
	@26 /*Ah yes, those are the books. That I had set a trap on their container completely slipped my mind.*/
		DO ~SetGlobal("_bBodhiLoverDeadTalk","GLOBAL",4)~
	= @27 /*The books mention a temple, but I have not yet found it. Perhaps those spineless lackeys of Oghma would know more. I stole the books from their temple in the Docks district.*/
	= @28 /*There is no salvation for me, however, as a needed component is the heart of the vampire who turned me, and my brother obliterated him. Not even his dust remains.*/
END
	++ @29 /*So we need your heart?*/ GOTO _bBodhiDeadLoverBooks2
	
CHAIN _bBodhij _bBodhiDeadLoverBooks2
	@30 /*Yes, but have no fear on that account. I shall remove it for you and then regenerate another. It turns out a heart is not fully necessary for my continued existence.*/ 
		DO ~GiveItemCreate("MISCBP",Player1,0,0,0) ApplySpellRES("_b7dam","_bBodhi")~
	= @31 /*And here you are. You are a lucky <PRO_MANWOMAN>, <CHARNAME>, to hold a beautiful woman's heart within your hands.*/
EXIT

//Talk once you go upstairs in her hideout.
APPEND _bBodhij IF ~Global("_bBodhiHideoutElhanTalk","GLOBAL",1)~ THEN BEGIN _bBodhiAsksAboutPlansElhan1
	SAY @32 /*So what now, <CHARNAME>? Do I return to Elhan, bound and chained? Elhan is not your friend.*/
	IF ~~ THEN DO ~SetGlobal("_bBodhiHideoutElhanTalk","GLOBAL",2)~ GOTO _bElhanNotHappyToSeeBodhi1
	END
END

CHAIN _bBodhij _bElhanNotHappyToSeeBodhi1
	@33 /*And he will not be happy to see me.*/
END
	++ @34 /*Can't we use the Rhynn Lanthorn to just walk to Suldanesselar without him?*/ GOTO _bCNWantstoWalkSuldenesselar1
	++ @35 /*Happy or not, he must help us. Only we can stop Irenicus.*/ GOTO _bElhanNotHappyToSeeBodhi2
	++ @36 /*What's the deal with you and Elhan, anyway?*/ GOTO _bElhanNotHappyToSeeBodhi3
	++ @37 /*You are wearing no chains, Bodhi. You move freely.*/ GOTO _bBodhiNotChainedElhan1
	+~Global("RE_BodhiSex","GLOBAL",1)~+ @38 /*Forget about Elhan. Remember the last time we were in your lair... you led me to your coffin... and we...*/ GOTO _bCNRemembersBodhiSex1
	+~!Global("RE_BodhiSex","GLOBAL",1)~+ @39 /*Forget about Elhan. I have chased you across half the world and now I have you. Let's spend some time alone.*/ GOTO _bCNWantsBodhiSex1
	++ @40 /*Off we go then.*/ EXIT

APPEND _bBodhij IF ~~ THEN BEGIN _bCNWantstoWalkSuldenesselar1
	SAY @41 /*One could, but only if one were an elf of the city, and I... am not. No... we must go to Elhan.*/
	IF ~~ THEN GOTO _bElhanNotHappyToSeeBodhi1
	END
END

APPEND _bBodhij IF ~~ THEN BEGIN _bElhanNotHappyToSeeBodhi2
	SAY @42 /*True, but he is a stubborn fool, and not one you can trust. Were he strong enough, he would kill you in a heartbeat and take the Rhynn Lanthorn for himself.*/ 
	IF ~~ THEN GOTO _bElhanNotHappyToSeeBodhi1
	END
END

APPEND _bBodhij IF ~~ THEN BEGIN _bElhanNotHappyToSeeBodhi3
	SAY @43 /*Nothing so interesting as to concern you, <CHARNAME>... Merely the usual sordid tale of love and betrayal.*/
	IF ~~ THEN GOTO _bElhanNotHappyToSeeBodhi1
	END
END

APPEND _bBodhij IF ~~ THEN BEGIN _bBodhiNotChainedElhan1
	SAY @44 /*Not all chains are visible to the eye. Lead the way and we will meet with Elhan.*/
	IF ~~ THEN GOTO _bElhanNotHappyToSeeBodhi1
	END
END

CHAIN _bBodhij _bCNRemembersBodhiSex1
	@45 /*Yes... the blood of the gods. I drank from you and Imoen while Irenicus held you captive and it was like imbibing pure power... but to have you give your blood to me willingly as you crested the waves of pleasure was especially sublime.*/
END
	++ @46 /*I remember it well. I wanted you then and I want you now.*/ GOTO _bCNRemembersBodhiSex2
	++ @47 /*And ever since then I've been chasing you. Now that I've finally caught you, I want my reward.*/ GOTO _bCNRemembersBodhiSex2
	++ @48 /*You must have enjoyed it a lot since we also did it about a hundred times on the ship to Spellhold...*/ GOTO _bCNRemembersBodhiSex2

CHAIN _bBodhij _bCNRemembersBodhiSex2
	@49 /*But you are not as you were, that divine spark is missing... and I am not as I was either.*/
	= @50 /*As a vampire, I was a beast... an animal... I could feel only the excitement of the hunt.*/
	= @51 /*I remember love, but I cannot experience it. It is the payment for my curse.*/
	= @52 /*The only intimate pleasure I could feel was what I drank from others... like I drank from you. But now even that is denied me...*/
	= @53 /*Imoen's soul awakened the elf inside me, and she remembers. I do not want to rut like a beast of the fields... I want to fly among the clouds on waves of pleasure... the way I used to in my City of Trees.*/
	= @54 /*I want to dance in passion with the most skilled of lovers... those who have spent a lifetime perfecting all of the finer arts...*/
	= @55 /*I want to be loved...*/
END
	++ @56 /*Oh, never mind then.*/ EXIT
	++ @57 /*But I do love you, Bodhi. I stormed Spellhold for you. I braved the dangers of the Underdark. I sacrificed my own sister's soul.*/ GOTO _bCNRemembersBodhiSex3
	
CHAIN _bBodhij _bCNRemembersBodhiSex3
	@58 /*Hmm, perhaps you will do.*/
	= @59 /*It was clear from our previous encounters that while you are proficient at satisfying yourself, you know nearly nothing about the workings of the female body.*/
	= @60 /*But you are a quick study... your progress in so many fields has been nothing short of astounding. Why could you not learn this as well?*/
	= @61 /*All right then, I accept. But you must follow all of my commands exactly. Obsequiousness is the greatest aphrodisiac.*/
END
	++ @62 /*Of course you would say that. Very well.*/ DO ~SetGlobal("_bBodhiVampireSex","GLOBAL",1)~ GOTO _bCNRemembersBodhiSex4
	++ @63 /*As you command, Mistress.*/ DO ~SetGlobal("_bBodhiVampireSex","GLOBAL",1)~ GOTO _bCNRemembersBodhiSex4
	++ @64 /*Nah, I'm not interested.*/ EXIT

CHAIN _bBodhij _bCNRemembersBodhiSex4
	@65 /*Yes, this might work. Love me with all your heart and I shall drink that love in your moments of greatest passion. Perhaps it shall be enough.*/	
EXIT

CHAIN _bBodhij _bCNWantsBodhiSex1
	@66 /*And why should I be interested? I will admit a desire for tasting your divine blood, but that spark is gone. You are merely mortal.*/
END
	++ @67 /*I guess you're right.*/ EXIT
	++ @68 /*I am <CHARNAME> and even without what your brother stole, I was mighty enough to defeat you.*/ GOTO _bCNWantsBodhiSex2
	
CHAIN _bBodhij _bCNWantsBodhiSex2
	@69 /*Before my acquisition of your sister's soul, I might have accepted, but now the elf inside me recoils from the idea.*/
	= @70 /*I do not want to rut like a beast of the fields... I want to fly among the clouds on waves of pleasure... the way I used to in my City of Trees.*/
	= @54 /*I want to dance in passion with the most skilled of lovers... those who have spent a lifetime perfecting all of the finer arts...*/
	= @55 /*I want to be loved...*/
END
	++ @56 /*Oh, never mind then.*/ EXIT
	++ @57 /*But I do love you, Bodhi. I stormed Spellhold for you. I braved the dangers of the Underdark. I sacrificed my own sister's soul.*/ GOTO _bCNWantsBodhiSex3
	
CHAIN _bBodhij _bCNWantsBodhiSex3
	@61 /*All right then, I accept. But you must follow all of my commands exactly. Obsequiousness is the greatest aphrodisiac.*/
END
	++ @62 /*Of course you would say that. Very well.*/ DO ~SetGlobal("_bBodhiVampireSex","GLOBAL",1)~ GOTO _bCNRemembersBodhiSex4
	++ @63 /*As you command, Mistress.*/ DO ~SetGlobal("_bBodhiVampireSex","GLOBAL",1)~ GOTO _bCNRemembersBodhiSex4
	++ @64 /*Nah, I'm not interested.*/ EXIT
	
//Post-Sex Dialogue
CHAIN IF ~Global("_bBodhiPostVampireSexTalk","GLOBAL",1)~ THEN _bBodhij _bBodhiPostSex0
	@71 /*Hmm...*/
		DO ~SetGlobal("_bBodhiPostVampireSexTalk","GLOBAL",2)~
END
	++ @72 /*So how was it for you?*/ GOTO _bBodhiPostSex1
	++ @73 /*Was that a good "hmm" or a bad "hmm"?*/ GOTO _bBodhiPostSex1
	++ @74 /*That was awesome!*/ GOTO _bBodhiPostSex1
	++ @75 /*That didn't work, did it?*/ GOTO _bBodhiPostSex1

APPEND _bBodhij IF ~~ THEN BEGIN _bBodhiPostSex1
	SAY @76 /*That... did not meet my hopes.*/
	= @77 /*Your performance was sufficiently competent. In my old life, I would've considered it a worthwhile experience, but now I am conflicted.*/
	= @78 /*The elf inside of me remembers a love that my vampire heart cannot produce and a pleasure my vampire body cannot experience.*/
	IF ~~ THEN GOTO _bPostSexTopConv1 
	END
END

CHAIN _bBodhij _bPostSexTopConv1
	@79 /*It is enough to make one slaughter a small city in frustration.*/
END
	++ @80 /*Maybe a different partner?*/ GOTO _bBodhiPostSexPartner1
	++ @81 /*So we cure your vampirism!*/ GOTO _bBodhiPostSexVampire1
	++ @82 /*Perhaps we just need to try again!*/ GOTO _bBodhiPostSexRepeat1
	++ @83 /*So what will you do now?*/ GOTO _bBodhiPostSexPlans1
	
APPEND _bBodhij IF ~~ THEN BEGIN _bBodhiPostSexPartner1
	SAY @84 /*You are sweet, but no; that would be a wishful delusion. The problem is most definitely with me. I lost what I was and even a stolen divine soul cannot bring me back.*/
	= @85 /*My brother is no different. He has your soul, but it has not brought him peace. He is empty of all except rage.*/
	= @86 /*I shall just have to accept that sensual pleasures will never again be part of my life.*/
	IF ~~ THEN GOTO _bPostSexTopConv1
	END
END

APPEND _bBodhij IF ~~ THEN BEGIN _bBodhiPostSexVampire1
	SAY @87 /*There is no cure! I poured over dozens of tomes in three different languages and the only recorded instance of vampirism being cured involved someone recently turned and required the heart of their master.*/
	= @88 /*I was turned years ago and I consumed my master's ashes after my brother incinerated him.*/
	= @89 /*There is no hope for me. I will just have to accept that.*/
	IF ~~ THEN GOTO _bPostSexTopConv1
	END
END

APPEND _bBodhij IF ~~ THEN BEGIN _bBodhiPostSexRepeat1
	SAY @90 /*You are persistent, my succulent godling, but a repeat experience would yield a similar result, and the elf within me could not handle the continual disappointment.*/
	= @91 /*The problem is not a lack of practice, technique, or application... the problem is that my heart cannot love. The problem is who I am.*/
	IF ~~ THEN GOTO _bPostSexTopConv1
	END
END

CHAIN _bBodhij _bBodhiPostSexPlans1
	@92 /*At this moment? I shall fly into the night and slaughter the first person unlucky enough to cross my path.*/
	= @93 /*And when they have suffered my wrath, I shall find the next and the next... until my mood improves.*/
END
	++ @94 /*Have fun.*/ GOTO _bBodhiPostSexPlans2
	++ @95 /*Can I come? Killing people always makes me feel better too.*/ GOTO _bBodhiPostSexPlans3
	++ @96 /*Well, I suppose I did sign up for this. Enjoy but try to stay discreet.*/ GOTO _bBodhiPostSexPlans2
	
CHAIN _bBodhij _bBodhiPostSexPlans2
	@97 /*I hope to. Sleep and regain your strength. I shall return before you wake.*/
		DO ~RestParty()~ 
EXIT

CHAIN _bBodhij _bBodhiPostSexPlans3
	@98 /*Not this <DAYNIGHTALL>, <CHARNAME>. This <DAYNIGHTALL> I hunt alone. Sleep and regain your strength. I shall return before you wake.*/
		DO ~RestParty()~ 
EXIT

//Dialogue with Elhan when you first see him and have Bodhi.
CHAIN IF WEIGHT #-1 ~Global("_bc6ElhanBodhiTalk","GLOBAL",1)~ THEN c6Elhan2  _bBodhiC6ElhanTalk1
	@99 /*How could you side with the defiled one, <CHARNAME>? She cannot be trusted!*/
		DO ~SetGlobal("_bc6ElhanBodhiTalk","GLOBAL",2)~
== _bBodhij @100 /*You wound me with your harsh words, my love. I am so cold, will you not warm me in your arms? Am I not worthy of your sweet caresses?*/
END
	++ @101 /*Clearly there is more to this story than you have told me.*/ EXTERN c6Elhan2 _bBodhiC6ElhanTalk2
	++ @102 /*I demand to know what is going on!*/ EXTERN c6Elhan2 _bBodhiC6ElhanTalk2
	++ @103 /*You claimed to know nothing about Bodhi, but she certainly seems to know you. Talk!*/ EXTERN c6Elhan2 _bBodhiC6ElhanTalk2
	
CHAIN c6Elhan2 _bBodhiC6ElhanTalk2 
	@104 /*Bodhi is not known to any elf! Neither is the Exile, Irenicus! They do not exist in our eyes, and you would benefit by shutting yours to them as well!*/
	= @105 /*I can't tell you more, <CHARNAME>. It is not my place to do so. The Exiles, Irenicus and Bodhi, are criminals. Their crime was great, their punishment greater.*/
	= @106 /*If you wish to know more, you'll have to talk to one of those involved.*/
== _bBodhij @107 /**You* were not involved? I suppose in a sense you weren't. To be involved, one must have the spine to actually risk something.*/
== c6Elhan2 @108 /*Demin, the high priestess, she will tell you. We will have to breach the city to find her. Fortunately, my sages have instructed me in the use of the Lanthorn.*/
	= @109 /*We must go, but most of my elves must remain here to hold back the drow. We cannot be struggling on two fronts when we face what is in the city.*/
	= @110 /*The queen pleaded with me in a vision to admit you, no matter who were your companions... But... no, the defiled one running loose about the streets... It would create a panic!*/
	= @111 /*What should I do...?*/
== _bBodhij @112 /*Jon has destroyed your temple, stolen your city, and laid waste to your defenses and you're worried that I might frighten some weak-hearted citizens? How misguidedly touching.*/
== warsage @113 /*I have a spell which will render her disguised to our people, and even to the city's defenses.*/
	= @114 /*As long as she offers them no harm, she will slip their notice and their memory. If they notice her at all, it will be as a nondescript companion of <CHARNAME>.*/
	= @115 /*Even her voice will be heard merely as the sound of the wind whistling through the trees.*/
== _bBodhij @116 /*So they will be saved the indignity of having to pretend they cannot see and hear me as Elhan does? How fortunate for them.*/
== c6Elhan2 @117 /*Yes, that will work. Now give the Lanthorn to me.*/
END
	+~PartyHasItem("C6LANTHO")~+ @118 /*Here you go.*/ EXTERN c6Elhan2 78 /*Follow, <CHARNAME>, we must let the Lanthorn lead us to Suldanessellar. I can only hope that the Exile will have left us a city to find. */
	++ @119 /*You know I must have forgotten it in my other backpack. I'll be back.*/ GOTO _bCNForgotLanthorn

CHAIN c6Elhan2 _bCNForgotLanthorn
	@120 /*You forgot it? Go! Get it now before it is lost to us forever!*/
EXIT

//Dialogue if you bring back the Lanthorn after the previous talk.
CHAIN IF WEIGHT #-1 ~PartyHasItem("C6LANTHO") Global("_bc6ElhanBodhiTalk","GLOBAL",2)~ THEN c6Elhan2 _bCNRememberedLanthorn
	@121 /*You have the Lanthorn! It is in the hands of the murderous vampire Bodhi no longer! I feel the tide of this crisis is certainly changing.*/
== _bBodhij IF ~IfValidForPartyDialog("_bBodhi")~ THEN @122 /*Are you serious, my love? Your ability to have a conversation as if I were not present is truly impressive. If only you put as much effort into more worthwhile pursuits.*/
== c6Elhan2 @123 /*Now give the Lanthorn to me.*/
END
	++ @118 /*Here you go.*/ EXTERN c6Elhan2 78 /*Follow, <CHARNAME>, we must let the Lanthorn lead us to Suldanessellar. I can only hope that the Exile will have left us a city to find.*/
	++ @124 /*Not just yet.*/ EXIT
	


	


