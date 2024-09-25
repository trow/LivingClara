//First talk
CHAIN IF WEIGHT #-1 ~Global("_bIMLoveTalk","GLOBAL",2)~ THEN IMOEN25J _bImoenMazzy1
@1 /*Mazzy! You're here!*/
== MAZZY25J @2 /*Yes, it seems that <CHARNAME> needed us both.*/
== IMOEN25J @11 /*I'm really glad you're here too. Ever since I got my essence back from Bodhi, the walls have been breaking down or are covered with blood. I'm having so many murder dreams I can't tell what's real any more.*/
= @12 /*Mazzy, can I stay next to you? You make me feel better; I'm not sure why. Makes me feel like I might actually live through this.*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @13 /*You are drawn to her because you are the bastard offspring of a god and the little paladin provides an aura of calm. A protection against gods, if you will.*/
= @14 /*She is the flame which draws lost creatures such as ourselves.*/
== IMOEN25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @15 /*Oh hi, Viconia, I didn't see you there.*/
= @16 /*You have god problems too? I never knew that.*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @17 /*Lolth has a piece of my soul in her clutches. She uses it to track me down and torture me on occasion.*/
== IMOEN25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @18 /*Wait... what? Wow. We traveled together for so long and yet I know nothing about you. We should talk more.*/
= @19 /*Also are you nicer now? You've never talked this much to me before and I have so many questions.*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @20 /*We never converse because you are an over-curious puppy who chatters enough for the both of us. Look at you, your mind is shattering and you look like you haven't slept in weeks, yet you want to stop and ask me questions.*/
== IMOEN25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @21 /*Aww, I missed you too, Viconia.*/
= @22 /*Mazzy, can I rest on your shoulder for a moment? I'm still not quite sure what's real here, and Viconia is right, I haven't slept a full night in so long.*/
== MAZZY25J @23 /*Of course, Imoen. I will support you.*/
DO ~SetGlobal("_bIMLoveTalk","GLOBAL",3)~
EXIT

//Imoen & Viconia Talk
CHAIN IF WEIGHT #-1 ~Global("_bImVicTalk","GLOBAL",2)~ THEN IMOEN25J _bImoenVic1
@24 /*So, hey, you're the new nicer Viconia now?*/
= @25 /*I mean, it seems to come and go since occasionally you're as vile as ever. But some of the things you say to us are almost pleasant. Like we're your... *gasp*... friends!*/
DO ~SetGlobal("_bImVicTalk","GLOBAL",3)~
== VICON25J IF ~GlobalGT("_bMazzyVicFriends","GLOBAL",0)~ @26 /*Mazzy convinced me that it would be in my best interests to occasionally be nicer to those who do not wish me dead.*/
== VICON25J IF ~Global("_bMazzyVicFriends","GLOBAL",0)~ @260 /*<CHARNAME> convinced me that it would be in my best interests to occasionally be nicer to those who do not wish me dead.*/
== IMOEN25J @27 /*Aww, you're saying that I don't wish you dead? That's so sweet. I mean, you're right, I don't want you dead, though sometimes when you're really mean to me, I don't like you very much.*/
= @28 /*I can just see the internal conflict going on in your head. You're saying to yourself, "I really want to say something to make Imoen cry, but then she'll be more likely to abandon me to an angry mob."*/
== VICON25J @29 /*Making you cry is hardly an accomplishment. For one as weak and pathetic as yourself, it is much more difficult to keep you from shattering like a mirror.*/
== IMOEN25J @30 /*Yeah. But what doesn't kill me makes me stronger, right? I mean look at you! You've been tortured way more than I have and you're super-tough: like one giant emotional scar.*/
= @31 /*I mean, you have a habit of driving people away, it's hard for you to care for anyone, and you're probably going to die unloved and alone, but at least you're tough, right?*/
= @32 /*Oh wow, that was sarcastic and... mean! I'm turning into you. I'm the new tougher Imoen!*/
== VICON25J @33 /*You should be so lucky. You would need to be captured by a hundred more Irenicuses to achieve that, but I suppose one was a start.*/
= @34 /*I could toughen you up if you would like. I do not have the proper tools for really meaningful torture, but I could... improvise.*/
== IMOEN25J @35 /*Um... no. No, thanks. Your words cut well enough.*/
== VICON25J @36 /*A pity. Consider it an open offer if you ever change your mind.*/
EXIT

//2nd Mazzy Talk
CHAIN IF WEIGHT #-1 ~Global("_bIMLoveTalk","GLOBAL",4)~ THEN IMOEN25J _bImoenMazzy2
@37 /*Mazzy, do you mind if I sleep next to you?*/
== MAZZY25J @38 /*Of course not. You're welcome to snuggle up with me anytime you'd like.*/
== MAZZY25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @39 /*That is, assuming you do not mind the company.*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @40 /*She is referring to me.*/
== IMOEN25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @41 /*Oh, I don't want to intrude, I didn't realize you two were... you know...*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @42 /*Hah, you are mistaken. In all my many years with the drow, I never acquired a taste for females; most of them were either useless whining slaves or were trying to kill me.*/
= @43 /*Mazzy, however, wants nothing more than to rip off my clothes and bury her tongue between my thighs, but she restrains herself due to some misguided sense of propriety.*/
== MAZZY25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @44 /*Viconia!*/
== IMOEN25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @45 /**laughs* Is that true?*/
== MAZZY25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @46 /*It is true that we are not together. The rest of it I will not dignify with a response.*/
= @47 /*So, yes Imoen, you may sleep here with us for as long as you'd like. No harm will come to you.*/
== IMOEN25J @48 /*Thanks. I feel awful.*/
== MAZZY25J @49 /*I believe under the circumstances that is warranted.*/
DO ~SetGlobal("_bIMLoveTalk","GLOBAL",5) RestParty()~
EXIT


//Imoen-Mazzy Permission
CHAIN IF WEIGHT #-1 ~Global("_bIMTBTalk","GLOBAL",1)~ THEN IMOEN25J _bImoenAsksBlessing
@500 /*<CHARNAME>, you may have noticed that I've been spending a lot of time with Mazzy...*/
DO ~SetGlobal("_bIMTBTalk","GLOBAL",2)~
END
	++ @501 /*Noticed. Don't care.*/ GOTO _bImoenMazzyCN1
	++ @502 /*I think it's great you've made a friend.*/ GOTO _bImoenMazzyCN1
	++ @503 /*Actually, it's making me kind of jealous.*/ GOTO _bImoenMazzyCNJealous

CHAIN IMOEN25J _bImoenMazzyCN1
@504 /*Good, then you won't mind if I jump her bones.*/
END
	++ @505 /*Correct. Go have fun.*/ EXIT
	++ @506 /*Wait... since when do you like women?*/ GOTO _bCNImoenLikesWomen
	++ @507 /*Are you sure you're ready for a relationship?*/ GOTO _bCNImoenRelationship
	++ @508 /*That would make me jealous.*/ GOTO _bImoenMazzyCNJealous
	++ @509 /*Why Mazzy?*/ GOTO _bCNImoenLikesMazzy
	++ @510 /*Why are you asking me?*/ GOTO _bCNImoenAskingCN
	++ @511 /*What makes you think Mazzy will accept you?*/ GOTO _bCNImoenMazzyAccept
	++ @512 /*I think Mazzy is still mourning her dead lover, Patrick.*/ GOTO _bCNImoenPatrick
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bCNImoenLikesWomen
@514 /*Since forever! I've slept with how many girls since Candlekeep and you never noticed?*/
= @515 /*I mean, yeah I slept with a couple of cute guys too... but it's mostly been women and it's not like I've tried to hide it...*/
= @516 /*I guess you've always been focused on your own problems... like our whole adventure is just about you and your choices and the rest of us hardly matter...*/
= @517 /*... but you know now. I'm Imoen, I like girls, and I want Mazzy.*/
= @518 /*So what do you say? Can I have her?*/
END
	++ @519 /*Of course. Go have fun.*/ EXIT
	++ @507 /*Are you sure you're ready for a relationship?*/ GOTO _bCNImoenRelationship
	++ @508 /*That would make me jealous.*/ GOTO _bImoenMazzyCNJealous
	++ @509 /*Why Mazzy?*/ GOTO _bCNImoenLikesMazzy
	++ @510 /*Why are you asking me?*/ GOTO _bCNImoenAskingCN
	++ @511 /*What makes you think Mazzy will accept you?*/ GOTO _bCNImoenMazzyAccept
	++ @512 /*I think Mazzy is still mourning her dead lover, Patrick.*/ GOTO _bCNImoenPatrick
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bCNImoenRelationship
@520 /*Am I sure I'm ready for a relationship? *laughs* Are you kidding me?*/
= @551 /*Of course I'm not ready! I'm barely controlling this soul of a dead god inside of me! I'm having murder dreams even when I'm awake!*/
= @522 /*I am, however, very, very ready to have someone safe to hold me and love me so I can forget about the future. Someone like Mazzy.*/
= @518 /*So what do you say? Can I have her?*/
END
	++ @519 /*Of course. Go have fun.*/ EXIT
	++ @506 /*Wait... since when do you like women?*/ GOTO _bCNImoenLikesWomen
	++ @508 /*That would make me jealous.*/ GOTO _bImoenMazzyCNJealous
	++ @509 /*Why Mazzy?*/ GOTO _bCNImoenLikesMazzy
	++ @510 /*Why are you asking me?*/ GOTO _bCNImoenAskingCN
	++ @511 /*What makes you think Mazzy will accept you?*/ GOTO _bCNImoenMazzyAccept
	++ @512 /*I think Mazzy is still mourning her dead lover, Patrick.*/ GOTO _bCNImoenPatrick
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bImoenMazzyCNJealous
@523 /*So you're jealous because you want to spend more time with me or because you want to spend more time with her?*/
END
	++ @524 /*I want to spend more time with you.*/ GOTO _bCNJealousImoen
	++ @525 /*I want to spend more time with her.*/ GOTO _bCNJealousMazzy
	++ @526 /*Both.*/ GOTO _bCNJealousImoenMazzy
	
CHAIN IMOEN25J _bCNJealousImoen
@527 /*Awww, I'm not going anywhere, <CHARNAME>. I'll be by your side for as long as you want me.*/
= @528 /*But I didn't take a vow of celibacy and I really want to sleep with Mazzy.*/
= @518 /*So what do you say? Can I have her?*/
END
	++ @519 /*Of course. Go have fun.*/ EXIT
	++ @506 /*Wait... since when do you like women?*/ GOTO _bCNImoenLikesWomen
	++ @507 /*Are you sure you're ready for a relationship?*/ GOTO _bCNImoenRelationship
	++ @509 /*Why Mazzy?*/ GOTO _bCNImoenLikesMazzy
	++ @510 /*Why are you asking me?*/ GOTO _bCNImoenAskingCN
	++ @511 /*What makes you think Mazzy will accept you?*/ GOTO _bCNImoenMazzyAccept
	++ @512 /*I think Mazzy is still mourning her dead lover, Patrick.*/ GOTO _bCNImoenPatrick
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bCNJealousMazzy
@529 /*I knew it! You want her! Well I'm sure you'll get your chance.*/
= @530 /*But I want to sleep with Mazzy now.... I know! I can put in a good word for you, and if she likes you too, I suppose we could share her... if she's okay with that. I mean, I owe you my life so the least I could do is share my girlfriend, right?*/
= @518 /*So what do you say? Can I have her?*/
END
	++ @519 /*Of course. Go have fun.*/ EXIT
	++ @506 /*Wait... since when do you like women?*/ GOTO _bCNImoenLikesWomen
	++ @507 /*Are you sure you're ready for a relationship?*/ GOTO _bCNImoenRelationship
	++ @509 /*Why Mazzy?*/ GOTO _bCNImoenLikesMazzy
	++ @510 /*Why are you asking me?*/ GOTO _bCNImoenAskingCN
	++ @511 /*What makes you think Mazzy will accept you?*/ GOTO _bCNImoenMazzyAccept
	++ @512 /*I think Mazzy is still mourning her dead lover, Patrick.*/ GOTO _bCNImoenPatrick
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bCNJealousImoenMazzy
@531 /*Aww, so when we're together you feel all left out. Alone... friendless...*/
= @532 /*Well, don't worry. How about this? I sleep with Mazzy now and we both stay here with you, but I'll put in a good word for you and if she likes you too, maybe we can share her.*/
= @533 /*I mean... if Mazzy's okay with that, of course. All I know is that I want her and I want her now.*/
= @518 /*So what do you say? Can I have her?*/
END
	++ @519 /*Of course. Go have fun.*/ EXIT
	++ @506 /*Wait... since when do you like women?*/ GOTO _bCNImoenLikesWomen
	++ @507 /*Are you sure you're ready for a relationship?*/ GOTO _bCNImoenRelationship
	++ @509 /*Why Mazzy?*/ GOTO _bCNImoenLikesMazzy
	++ @510 /*Why are you asking me?*/ GOTO _bCNImoenAskingCN
	++ @511 /*What makes you think Mazzy will accept you?*/ GOTO _bCNImoenMazzyAccept
	++ @512 /*I think Mazzy is still mourning her dead lover, Patrick.*/ GOTO _bCNImoenPatrick
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bCNImoenLikesMazzy
@534 /*Why not? She's perfect. She's super attractive... She's safe... I mean really safe... She's got perfect self-control... She's tiny and adorable, yet tough and invincible...*/
= @535 /*Mazzy has got this aura about her that seems to ward away evil... like I actually become a normal, functional human being when I'm near her... I don't feel like I'm about to lose my mind and shatter into a million pieces...*/
= @536 /*She's got that peaceful halfling-village vibe, even though she tries to hide it... not like the horrible murder-vibe I'm used to. That's not to say you're not great, but we're children of murder so it's nice to be with someone who isn't, you know?*/
= @537 /*And she's been with other women before... no I'm not psychic, it came up in normal conversation... possibly because I brought it up...*/
= @538 /*I think I'm rambling but the point is that I want her. She's exactly what I need to make everything all better.*/
= @518 /*So what do you say? Can I have her?*/
END
	++ @519 /*Of course. Go have fun.*/ EXIT
	++ @506 /*Wait... since when do you like women?*/ GOTO _bCNImoenLikesWomen
	++ @507 /*Are you sure you're ready for a relationship?*/ GOTO _bCNImoenRelationship
	++ @508 /*That would make me jealous.*/ GOTO _bImoenMazzyCNJealous
	++ @510 /*Why are you asking me?*/ GOTO _bCNImoenAskingCN
	++ @511 /*What makes you think Mazzy will accept you?*/ GOTO _bCNImoenMazzyAccept
	++ @512 /*I think Mazzy is still mourning her dead lover, Patrick.*/ GOTO _bCNImoenPatrick
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bCNImoenAskingCN
@539 /*Well... I thought that you might like her too.*/
= @540 /*And while we could always share... assuming that's okay with Mazzy and she likes you... sharing might get complicated.*/
= @541 /*So anyways, given that you saved my life and all, the least I could do is give you first dibs. So I'm offering you the chance to tell me I can't do it, even though I'm hoping you'll agree.*/
= @518 /*So what do you say? Can I have her?*/
END
	++ @519 /*Of course. Go have fun.*/ EXIT
	++ @506 /*Wait... since when do you like women?*/ GOTO _bCNImoenLikesWomen
	++ @507 /*Are you sure you're ready for a relationship?*/ GOTO _bCNImoenRelationship
	++ @508 /*That would make me jealous.*/ GOTO _bImoenMazzyCNJealous
	++ @509 /*Why Mazzy?*/ GOTO _bCNImoenLikesMazzy
	++ @511 /*What makes you think Mazzy will accept you?*/ GOTO _bCNImoenMazzyAccept
	++ @512 /*I think Mazzy is still mourning her dead lover, Patrick.*/ GOTO _bCNImoenPatrick
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bCNImoenMazzyAccept
@542 /*Well, she's been with other women before... no I'm not psychic, it came up in normal conversation... possibly because I brought it up...*/
= @543 /*And I'm a damsel in distress and she's a knight who wants to be a paladin. Saving people like me is kind of what she does, and no one saves damsels that they don't want to sleep with.*/
= @544 /*You're never in distress... always tough and in control. Which is fine. I mean, I like that you're tough... but I think I'm exactly what Mazzy is looking for, and I want her so bad.*/
= @518 /*So what do you say? Can I have her?*/
END
	++ @519 /*Of course. Go have fun.*/ EXIT
	++ @506 /*Wait... since when do you like women?*/ GOTO _bCNImoenLikesWomen
	++ @507 /*Are you sure you're ready for a relationship?*/ GOTO _bCNImoenRelationship
	++ @508 /*That would make me jealous.*/ GOTO _bImoenMazzyCNJealous
	++ @509 /*Why Mazzy?*/ GOTO _bCNImoenLikesMazzy
	++ @510 /*Why are you asking me?*/ GOTO _bCNImoenAskingCN
	++ @512 /*I think Mazzy is still mourning her dead lover, Patrick.*/ GOTO _bCNImoenPatrick
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bCNImoenPatrick
@545 /*Oh yeah, I heard about him... but tell me everything that you know anyway.*/
= @546 /**listens intently**/
= @547 /*That's great! I mean not that he died and all...*/
= @548 /*But I am the perfect replacement! All I want is some light fun, and I'm unlike him in every way. I think Mazzy will totally go for me.*/
= @518 /*So what do you say? Can I have her?*/
END
	++ @519 /*Of course. Go have fun.*/ EXIT
	++ @506 /*Wait... since when do you like women?*/ GOTO _bCNImoenLikesWomen
	++ @507 /*Are you sure you're ready for a relationship?*/ GOTO _bCNImoenRelationship
	++ @508 /*That would make me jealous.*/ GOTO _bImoenMazzyCNJealous
	++ @509 /*Why Mazzy?*/ GOTO _bCNImoenLikesMazzy
	++ @510 /*Why are you asking me?*/ GOTO _bCNImoenAskingCN
	++ @511 /*What makes you think Mazzy will accept you?*/ GOTO _bCNImoenMazzyAccept
	++ @513 /*No, sorry, I'd prefer it if you found someone else.*/ GOTO _bCNSaysNoImoenMazzy
	
CHAIN IMOEN25J _bCNSaysNoImoenMazzy
@549 /*Oh fine, I'll just keep her as a friend then.*/
DO ~SetGlobal("_bIMLoveTalk","GLOBAL",50) SetGlobal("_bImoenMazzyRomance","GLOBAL",3)~ //Ends romance
= @550 /*There's other fish in the sea... I guess.*/
EXIT


//Bath Talk 
CHAIN IF WEIGHT #-1 ~Global("_bIMBathTalk","GLOBAL",1)~ THEN IMOEN25J _bImoenMazzyBath1
@51 /*Civilization! <CHARNAME>, we have to stop. I need clean sheets and a bath.*/
DO ~SetGlobal("_bIMBathTalk","GLOBAL",2) SetGlobal("_brestcheck","GLOBAL",2)~
= @52 /*Though maybe this isn't the right place for either.*/
== MAZZY25J @53 /*Clean sheets and a bath are always obtainable, my dear; that is, if you are willing to pay enough coin. Fortunately, we have coin to spare.*/
== IMOEN25J @54 /*Oh good. Would you join me, Mazzy? The last time I bathed, I saw the water turn into blood and little skulls began swimming in it.*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @55 /*A bath will do us all some good. The stench is becoming nearly unbearable. I swear even I was beginning to stink.*/
== MAZZY25J @56 /*I will check with the innkeeper. I am sure he will see reason if enough coin is passed his way.*/
== IMOEN25J @58 /*I can't wait.*/
EXIT

//After floating
CHAIN IF WEIGHT #-1 ~Global("_bIMBathTalk","GLOBAL",4)~ THEN MAZZY25J _bImoenMazzyBath2
@59 /*This is what I needed. Clean, finally.*/
DO ~UndoExplore()~
== IMOEN25J @60 /*I could stay here all day, except the water is already starting to get cold.*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @62 /*So march out, unclothed and dripping, and order some hapless male to heat more. */
== IMOEN25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @63 /*I could, or I could just rest against you two and...*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @64 /*And she's already asleep. She wants you, you know. You should stop moping after your dead male and take her.*/
== MAZZY25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @65 /*Your advice is as insensitive as usual, Viconia. She has been through a horrible ordeal, and while I might be interested in some light fun, she is emotionally fragile right now and I would not like to hurt her.*/
= @66 /*Not to mention that I am still mourning Patrick.*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @67 /*You do not fool me with your pathetic excuses. I buried four husbands, and I assure you that nothing helps you get over a dead male like getting under a new one.*/
= @68 /*Or... a female in this case.*/
= @69 /*But fine, ignore my advice. Our water is cold. Help me pick up our sleeping companion, so we can slowly and sensuously dry off her wet skin and slip into bed with her.*/
== MAZZY25J @70 /*You're right. I suppose we'd better dry off and get to sleep.*/
DO ~SetGlobal("_bIMBathTalk","GLOBAL",5) RestParty() Explore()~
EXIT


//3rd Mazzy Talk
CHAIN IF WEIGHT #-1 ~Global("_bIMLoveTalk","GLOBAL",7)~ THEN IMOEN25J _bImoenMazzy3
@71 /*Mazzy, you must be the most unhalfling-like halfing ever.*/
	DO ~SetGlobal("_bIMLoveTalk","GLOBAL",8) SetGlobal("_bImoenMazzyRomance","GLOBAL",1)~
== MAZZY25J @72 /*Oh? And I suppose you are an expert on my people? Did you read a book about us in Candlekeep?*/
== IMOEN25J @73 /*Actually, I did! It said that the lives of nearly all halflings are spent pursuing their five cultural passions: delicious food, strong drink, frequent and adventurous sex, pipe-weed, and farming. I think the author was jealous.*/
= @74 /*But the book also said that if halflings do go adventuring, they always take on the role of the party's thief or rogue, using their soft steps and small size to help them sneak around unnoticed.*/
= @75 /*Except you're some sort of paladin, I've never seen you drink or smoke heavily, you mostly eat adventuring-rations, and even though we've been sharing a bed for days, you've kept your hands entirely to yourself.*/
== MAZZY25J @76 /*Well, that just shows how reading books can differ from actual experience.*/
== IMOEN25J @77 /*But I do have experience! Up near Baldur's Gate, I met lots of halflings!*/
	= @77000 /*First there was Montaron... He was a nasty piece of work. I don't think I ever slept well with him around. You remember him, right <CHARNAME>?*/
END
	++ @77001 /*Montaron... Montaron... no I don't think we ever travelled with a Montaron.*/ GOTO _bImoenMazzyNoMontaron 
	++ @77002 /*Oh yeah, evil halfling thief. Him and that crazy wizard of his.*/ GOTO _bImoenMazzyMontaronWizard
	+ ~Global("FoundMontaronBody","GLOBAL",1)~ + @77003 /*He's dead, you know. The harpers killed him.*/ GOTO _bImoenMazzyFoundMontaron1

APPEND IMOEN25J IF ~~ THEN _bImoenMazzyNoMontaron
	SAY @77004 /*What? Sometimes I don't know why I bother talking with you at all.*/
	IF ~~ THEN GOTO _bImoenMazzyGullykin1
	END
	
	IF ~~ THEN _bImoenMazzyMontaronWizard
	SAY @77005 /*Yeah, they really were a cute couple... well for insane murderers.*/
	IF ~~ THEN GOTO _bImoenMazzyGullykin1
	END

	IF ~~ THEN _bImoenMazzyFoundMontaron1
	SAY @77006 /*Montaron? Well, knowing him they probably had good reason.*/
	IF ~~ THEN GOTO _bImoenMazzyGullykin1
	END
END

CHAIN IMOEN25J _bImoenMazzyGullykin1
	@77007 /*Some time after that, we found the halfling town of Gullykin.*/
	= @77008 /*It was south of Ulcaster... full of farmers mostly. After we saved them from an army of kobolds, they held a big celebration where we all drank, smoke, and ate, and I slept with half the town.*/
== VICON25J IF ~IfValidForPartyDialog("Viconia")~ THEN @77009 /*When was this? Did you really participate in a massive orgy and forget to invite me? That was... impolite.*/
== IMOEN25J IF ~IfValidForPartyDialog("Viconia")~ THEN @77010 /*That was just before we met you, Viconia, I'm sorry. We might have missed meeting you entirely, but we had to leave the halflings so that we could find those bandits.*/
== MINSC25J IF ~IfValidForPartyDialog("Minsc")~ THEN @77011 /*Minsc and Boo remember! It was a mighty party of miniature proportions. Food! Music! Singing! Dynaheir and I danced the night away, towering over our hosts like drunken titans!*/
== IMOEN25J IF ~IfValidForPartyDialog("Minsc")~ THEN @77012 /*And Boo ate himself into a stupor. He was the toast of the town! I have never seen your hamster so happy.*/
== JAHEI25J IF ~IfValidForPartyDialog("Jaheira")~ THEN @77013 /*I remember Khalid and I thanked our hosts and retired. Such parties are for the young... and single.*/
== NEERA25J IF ~IfValidForPartyDialog("NEERA")~ THEN  @77014 /*Gullykin. Was. Awesome! And that's all I'm going to say about that.*/
== RASAA25J IF ~IfValidForPartyDialog("RASAAD")~ THEN @77015 /*It was good to take our mind off of our troubles for a few hours.*/
== IMOEN25J IF ~IfValidForPartyDialog("RASAAD")~ THEN @77016 /*I think I even remember you smiling... though that may have been a trick of the light.*/
== DORN25J IF ~IfValidForPartyDialog("Dorn")~ THEN @77017 /*They rewarded us as heroes should be rewarded. That is how the weak should treat us lest we lose patience and slaughter them all.*/
== EDWIN25J IF ~IfValidForPartyDialog("Edwin")~ THEN @77018 /*The pleasures of Gullykin were merely what Edwin Odesseiron was due for his efforts. (Why am I wasting my time down here? I should go back.)*/
== MAZZY25J @83 /*I will admit our celebrations can be somewhat boisterous.*/
== IMOEN25J @84 /*It was wonderful. I had spent all that time in Candlekeep surrounded by nothing but dirty old men, though they knew well enough to leave me alone.*/
	= @85 /*And now I was a hero, I was loved and adored by every halfling boy and girl.*/
	= @86 /*It also helped that there were no consequences. I couldn't get pregnant, the local halfling temple cured diseases for free, and I knew that word of my exploits would never leave the village.*/
	= @87 /*I think even <CHARNAME> enjoyed <PRO_HIMHER>self.*/
END
	++ @88 /*I did. Gullykin was a good time.*/ GOTO _bImoenMazzyAlora
	++ @89 /*I suppose it was okay. I was happy to leave though.*/ GOTO _bImoenMazzyAlora
	++ @89000 /*I don't remember any of that. I remember finishing our quests, resting, and heading on our way.*/ GOTO _bImoenMazzyCNNoGullykin

APPEND IMOEN25J IF ~~ THEN _bImoenMazzyCNNoGullykin
	SAY @89001 /*Of course that's what you remember... you and your sixteen-hour rests. Do you think the rest of us just do nothing while you're lying around?*/
	IF ~~ THEN GOTO _bImoenMazzyAlora
	END
END

CHAIN IMOEN25J _bImoenMazzyAlora
	@89002 /*And then came Alora. We met her in Baldur's Gate. Like Montaron, she was a thief and acted exactly like my book said a halfling should.*/
	= @89003 /*She was also really nice. We hit it off immediately and before I knew what was happening, there she was in my bed.*/
= @90 /*It was kinda sad actually. I really started to care for her, you know? But then one day she just up and left. "Thanks for the fun, Imoen. Hope we meet again."*/
= @91 /*And that was it, like we weren't anything special. It really hurt, although having people constantly trying to kill me was a good distraction.*/
== IMOEN25J IF ~InParty("CMAlora")~ THEN @910 /*She's back now, but things are different. Alora hasn't brought it up and I'm afraid to ask. I don't want to find out that I meant nothing after all.*/
== MAZZY25J @92 /*In Alora's defence, she probably didn't mean to hurt you. Halfling girls regularly play together, but it is rarely considered to have any special meaning. Usually they all grow up, find good husbands, and raise families.*/
== IMOEN25J @93 /*Oh. Well that's disappointing.*/
= @3 /*Mazzy... I'm tired of sleeping alone.*/
== MAZZY25J @94 /*You haven't been sleeping alone, you have been right beside me.*/
== IMOEN25J @95 /*You know what I mean!*/
= @96 /*I like you and I think you like me, and I've tried being subtle but you're just oblivious to all of it.*/
== MAZZY25J @97 /*Imoen, while you are attractive and I enjoy your friendship, I am somewhat worried about your emotional state.*/
== IMOEN25J @99 /*No! You do not get to worry about that. I am walking the edge of the abyss... about to shatter into a thousand pieces at a moment's notice and I do not need your worry.*/
= @100 /*What I need is something to think about other than blood, murder, and dismembered body parts.*/
= @101 /**sigh* I want you. Do you want me?*/
== MAZZY25J @102 /*It is not that easy. I must sort my feelings. Give me some time.*/
DO ~SetGlobal("_bIMLoveTalk","GLOBAL",8)~
EXIT

//Pre-romance Crush Talk
CHAIN IF WEIGHT #-1 ~!Global("ImoenRomanceActive","GLOBAL",2) Global("_bMazzyRomance","GLOBAL",0) Global("_BMazzyFriendship","GLOBAL",1) Global("bImMazCrushTalk","GLOBAL",2)~ THEN MAZZY25J _bImoenMazzyCrush3
@104 /*There may be a situation developing that could derail your plans for us.*/
DO ~SetGlobal("bImMazCrushTalk","GLOBAL",3)~
== IMOEN25J @105 /*Oh?*/
== MAZZY25J @106 /*<CHARNAME>.*/
== IMOEN25J @115 /*You mean because <PRO_HESHE> likes you?*/
== MAZZY25J @122 /*Yes... I mean I have seen that possibility but I have not confirmed it either way.*/
== IMOEN25J @123 /*If you do end up with <CHARNAME>, would that mean I've lost my chance?*/
== MAZZY25J @124 /*No. I have not yet made my decision, and depending on the outcome, <CHARNAME> may simply have to decide if <PRO_HESHE> can share.*/
== IMOEN25J @125 /*At different times though... I mean it'd be weird for me and <CHARNAME> to both be with you... together... at the same time... you know what I mean!*/
== MAZZY25J @126 /*Yes, do not worry. I believe I would have enough energy for the both of you.*/
EXIT

//If Mazzy Dies
CHAIN IF WEIGHT #-10 ~Global("_bImoenSawMazzyDie","GLOBAL",1)~ THEN IMOEN25J _bMazzyNoooo
@127 /*No, not Mazzy! I swear I will raise you.*/
DO ~SetGlobal("_bImoenSawMazzyDie","GLOBAL",2)~
EXIT

//If Imoen Dies
CHAIN IF WEIGHT #-10 ~Global("_bMazzySawImoenDie","GLOBAL",1)~ THEN MAZZY25J _bMazzyNoooo
@128 /*Imoen! I have failed my duty. You will live again!*/
DO ~SetGlobal("_bMazzySawImoenDie","GLOBAL",2)~
EXIT

//Mazzy-Imoen Final Romance 
CHAIN IF WEIGHT #-1 ~Global("_bIMKiss","GLOBAL",1)~ THEN IMOEN25J _bImoenMazzyCourted
@157 /*Mazzy, it's time for a decision.*/
DO ~SetGlobal("_bIMKiss","GLOBAL",2) SetGlobal("_bImoenMazzyRomance","GLOBAL",2)~
== IMOEN25J IF ~Global("_bImoenSawMazzyDie","GLOBAL",2)~ THEN @158 /*You died! And the way you rush into every battle with a death wish, you're probably going to die again.*/
== IMOEN25J IF ~Global("_bMazzySawImoenDie","GLOBAL",2)~ THEN @159 /*I died! And next time it could be permanent.*/
== IMOEN25J @160 /*You wanted time but we don't have any. I need someone and I've chosen you. Do you accept or do I look elsewhere?*/
== MAZZY25J @161 /*Well, when you phrase it like that... I accept.*/
== IMOEN25J @162 /*So... does that mean we're together? Are you my girlfriend?*/
== MAZZY25J @163 /*If you would like that, then I suppose it does.*/
== IMOEN25J @164 /*Well if I'm your girlfriend, shouldn't you kiss me?*/
== MAZZY25J @165 /**sigh* I cannot kiss you, Imoen. The taller person must initiate the kiss.*/
== IMOEN25J @166 /*Hehe, you can't reach. So... does that mean I can kiss you?*/
== MAZZY25J @167 /*In public? Why?*/
== IMOEN25J @168 /*Because kissing is fun, because I haven't kissed anyone worth kissing in far too long, and most importantly, to publicize the fact that I have successfully won you to anyone who's watching.*/
== MAZZY25J @169 /*Very well. I will allow one kiss in public. Just one.*/
== IMOEN25J @170 /*Okay, just one, but you didn't define the duration. Too late now!*/
== MAZZY25J @171 /*But... mmhhmmm.*/
== NALIA25J IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @172 /*That does not seem a proper display for a lady, but I think I approve nevertheless.*/
== NEERA25J IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN @173 /*Imoen! You go girl!*/
== DORN25J IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @174 /*Ahh, well they deserve each other.*/
== HEXXA25J IF ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ 
THEN @175 /*Hmm... delicious.*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ 
THEN @176 /*Hah! If that silences the puppy-dog, then I approve heartily.*/
== WILSO25J IF ~InMyArea("Wilson") IfValidForPartyDialog("Wilson")~
THEN @17600 /*Snuffle... snort!*/
== EDWIN25J IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @177 /*Interesting. I have had this dream. (My dream came true. I am a prophet!)*/
== _BCLA25J IF ~InMyArea("_bClara") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @178 /*And so the knight and the fair maiden lived happily ever after.*/
== HAERD25J IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ 
THEN @179 /*The hawk swooping down to pluck the sweet wildflower, a classic tale. But the wildflower plucking the hawk? That is a story seldom told.*/
== KORGA25J IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN @180 /*Well, that be a surprise fer old Korgan. I half-expected th' mighty lass had taken a vow of celibacy. Turns out she jus' wanted someone wit' less beard.*/
== JAHEI25J IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @181 /*After so much suffering, those two deserve all the happiness they can find.*/
== CERND25J IF ~InMyArea("Cernd") InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @182 /*Two creatures find each other. That is the way of nature. However, this is not a common pairing.*/
== MINSC25J IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @183 /*Boo knew this would happen! He is a smart hamster.*/
== KELDO25J IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @184 /*This is not a move that I would advise two young women such as yourselves to make. You may not be of noble blood but I am sure you can still find acceptable husbands.*/
== ANOME25J IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ 
THEN @185 /*Commoners will commit all sorts of lewd behavior out in the open.*/
== VALYG25J IF ~InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @186 /*Well, I cannot disapprove. Imoen is a pretty maiden, worthy of any knight. Though her being a wizard is a mark against her.*/
== JAN25J IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @187 /*Relationships with tall folk never work out... though Imoen must be the shortest tall person ever. Why, she could be an honorary gnome! Which reminds me of that time...*/
== AERIE25J IF ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @188 /*That's so sweet. I'm happy for you both.*/
== IMOEN25J @189 /*There. You're mine! I've declared it to the world.*/
== MAZZY25J @190 /*I am yours for today; I refuse to make long-term promises. But for the moment, I believe I have been thoroughly claimed.*/
EXIT

//Post CN Sex Talk (Mazzy) 
CHAIN IF WEIGHT #-1 ~Global("_bIMCNSexTalk2","GLOBAL",2)~ THEN IMOEN25J _bImoenMazzyCNSexed2
@147 /*So... Mazzy. You and <CHARNAME>...*/
DO ~SetGlobal("_bIMCNSexTalk2","GLOBAL",3)~
== MAZZY25J @148 /*Yes, me and <CHARNAME>, just as we discussed. I hope you have not changed your mind about sharing. I do not wish to lose you.*/
== IMOEN25J @149 /*No! No, I don't want to lose you either and I'm still happy to take turns. I just wanted to make sure that you were happy and I don't need to threaten <CHARNAME> on your behalf.*/
== MAZZY25J @150 /**chuckle* I appreciate the thought but that is not necessary. <CHARNAME> was a perfect gentle<PRO_MANWOMAN> and followed my lead throughout. It was quite lovely actually.*/
== IMOEN25J @151 /*Good. And... you still want me too, right? Even though you've got the hero now?*/
== MAZZY25J @152 /*Of course. You are not the same and cannot be compared. I care about you both and I would miss you terribly.*/
== IMOEN25J @153 /*Great! That's all I wanted to know. I guess I better go find <CHARNAME> and work out a Mazzy schedule. I have to make sure that I get my fair share.*/
= @154 /*Kiss me goodbye?*/
== MAZZY25J @155 /* As you wish. Try not to traumatise the poor <PRO_GIRLBOY> too much.*/
== IMOEN25J @156 /*I'll try but I make no promises.*/
EXIT

//CN 3Some Talk
CHAIN IF WEIGHT #-1 ~Global("_bIM3Some","GLOBAL",2)~ THEN IMOEN25J _bImoenMazzyCN
@191 /*Mazzy, do you have time for a question?*/
DO ~SetGlobal("_bIM3Some","GLOBAL",3) SetGlobal("_bImoenWants3","GLOBAL",1)~
== MAZZY25J @192 /*Of course, Imoen, I'm surprised you felt the need to ask.*/
== IMOEN25J @193 /*Well, I've been thinking, I mean I am sleeping with <CHARNAME>... and you are also sleeping with <CHARNAME>... and we are also sleeping with each other...*/
= @194 /*But so far we've all been taking turns and this seems... you know... inefficient.*/
== MAZZY25J @195 /*All correct. What is your question?*/
== IMOEN25J @196 /*Weeelll... why do you always make me say it!?*/
== MAZZY25J @197 /*Being afraid but overcoming that fear and speaking anyway builds character.*/
== IMOEN25J @198 /*Of course. You would say that. So fine, I'll say it. We should all be sleeping together. The three of us.*/
== MAZZY25J @199 /*Agreed, but that was still not a question.*/
== IMOEN25J @200 /*I abandoned the question and made it a statement. Where's <CHARNAME>?*/
= @201 /*Ahh there. <CHARNAME>!*/
= @202 /*Mazzy and I think we should all be sleeping together. Otherwise one of us is always sitting out.*/
= @203 /*Also, we should do this right now.*/
END
	++ @204 /*Excellent idea.*/ DO ~SetGlobal("_bImoenWants3","GLOBAL",2) RestParty()~ EXIT
	++ @205 /*Hell, yes. I've been waiting for this.*/ DO ~SetGlobal("_bImoenWants3","GLOBAL",2) RestParty()~ EXIT
	++ @206 /*Actually, Imoen, I really prefer to focus on a single person.*/ + _bImoenMazzyCN2 
	++ @207 /*Sorry, I think that would just be too awkward.*/ + _bImoenMazzyCN2
	
CHAIN IMOEN25J _bImoenMazzyCN2 
@208 /*Well I don't! This is silly. One of us sitting alone in a tent while the other two have fun.*/
= @209 /*We should just be a giant, sweaty, three-person mess, all tangled together in passion.*/
= @210 /*No more sleeping alone!*/
END
	++ @211 /*Well when you put it that way... okay.*/ DO ~SetGlobal("_bImoenWants3","GLOBAL",2) RestParty()~ EXIT
	++ @212 /*No, I only want one of you at a time.*/ + _bImoenMazzyCN3

CHAIN IMOEN25J _bImoenMazzyCN3
@213 /*Well fine then! You're as stupid and stubborn as always!*/
= @214 /*You two go play together. I'll just play by myself.*/
= @215 /*......*/
= @216 /*Don't take me out of the rotation though, I still want my turns with both of you.*/
= @217 /*(Stupid stubborn <CHARNAME>. I should've romanced the hamster.)*/
EXIT


//Rasaad Threesome Talk
CHAIN IF WEIGHT #-1 ~Global("_bIMRTalk","GLOBAL",2)~ THEN IMOEN25J _bImWantsRas
@220 /*So... Mazzy... tell me... is there a good reason why we're not sleeping with Rasaad?*/
DO ~SetGlobal("_bIMRTalk","GLOBAL",3)~
== MAZZY25J @221 /*Imoen! We cannot sleep with everyone!*/
= @222 /*But to answer your question, while Rasaad is a good person and quite attractive, his path has become too dark for me. I do not wish to be part of his tragedy.*/
== IMOEN25J @223 /*So... is there a good reason why *I'm* not sleeping with Rasaad?*/
== MAZZY25J @224 /*You mean beside the fact that you are in a committed relationship with me?*/
= @225 /*The darkness engulfing his soul would pull you into the abyss with him. He is like a beautiful but poisonous flower; fine to look at, but deadly to hold.*/
== IMOEN25J @226 /*Oh fine, you're probably right... as always.*/
= @227 /*Though the abyss might not be so bad if it's full of Rasaads.*/
EXIT


//Final Romance Talk (all versions triggers by same script)
//Version 1, IM but no CN friendship, romance, or Aerie
CHAIN IF WEIGHT #-1 ~Global("_bFinalImoenMazzyTalk","GLOBAL",2) Global("_bImoenMazzyRomance","GLOBAL",2) !Global("_BMazzyFriendship","GLOBAL",1) !Global("ImoenRomanceActive","GLOBAL",2) !GlobalGT("IRTImAerTalks","GLOBAL",7)~ THEN IMOEN25J _bFinalTalk1
@228 /*Mazzy, what will we do after this is over?*/
DO ~SetGlobal("_bFinalImoenMazzyTalk","GLOBAL",3)~
== MAZZY25J @229 /*First, I would like to return home. I have not seen my family in far too long.*/
= @230 /*After that, I suppose I will continue adventuring.*/
== IMOEN25J @231 /*And me? What will I do?*/
== MAZZY25J @232 /*That is entirely up to you. If you would like to stay with me for a time, you are more than welcome.*/
== IMOEN25J @233 /*Thanks, Mazzy, I might just do that.*/
= @234 /*Or I might not, but it's nice to have the option, you know?*/
DO ~RestParty()~
EXIT

//Version 2, IM & CN Friendship, but no romance/Aerie
CHAIN IF WEIGHT #-1 ~Global("_bFinalImoenMazzyTalk","GLOBAL",2) Global("_bImoenMazzyRomance","GLOBAL",2) Global("_BMazzyFriendship","GLOBAL",1) !Global("_BMazzyRomance","GLOBAL",2)
!Global("ImoenRomanceActive","GLOBAL",2) !GlobalGT("IRTImAerTalks","GLOBAL",7)~ THEN IMOEN25J _bFinalTalk2
@228 /*Mazzy, what will we do after this is over?*/
DO ~SetGlobal("_bFinalImoenMazzyTalk","GLOBAL",3)~
== MAZZY25J @229 /*First, I would like to return home. I have not seen my family in far too long.*/
= @235 /*After that, I suppose I will settle down and start a family of my own.*/
== IMOEN25J @236 /*Really? You?  I thought you had tried that and sworn it off forever?*/
== MAZZY25J @237 /*Yes... well... I changed my mind.*/
= @238 /*Once I thought that I would adventure until the end of my life, but I am weary of fighting.*/
== IMOEN25J @239 /*Wow. I don't think I'm ready for that.*/
== MAZZY25J @240 /*I did not expect you to be. We are many years apart in age and at very different places in our lives.*/
= @241 /*But it is a large world and I will find someone.*/
== IMOEN25J @242 /*Oh... so does this mean we're saying goodbye?*/
== MAZZY25J @243 /*Not as of yet. We still have many days together, if you want us to.*/
== IMOEN25J @244 /*Then why are we wasting precious time talking when we could be canoodling? Come here!*/
== MAZZY25J @245 /*As you wish.*/
DO ~RestParty()~
EXIT

//Version 3, IM & Mazzy-CN, but no Aerie
CHAIN IF WEIGHT #-1 ~Global("_bFinalImoenMazzyTalk","GLOBAL",2) Global("_bImoenMazzyRomance","GLOBAL",2) Global("_BMazzyRomance","GLOBAL",2) !Global("ImoenRomanceActive","GLOBAL",2) !GlobalGT("IRTImAerTalks","GLOBAL",7)~ THEN IMOEN25J _bFinalTalk3
@228 /*Mazzy, what will we do after this is over?*/
DO ~SetGlobal("_bFinalImoenMazzyTalk","GLOBAL",3)~
== MAZZY25J @229 /*First, I would like to return home. I have not seen my family in far too long.*/
= @235 /*After that, I suppose I will settle down and start a family of my own.*/
== IMOEN25J @246 /*Really? You?*/
= @247 /*And you mean with <CHARNAME>, right? I don't think I'm ready for a family. Maybe I'll never be.*/
== MAZZY25J @248 /*With <CHARNAME>, if <PRO_HESHE> is interested. But if not with <PRO_HIMHER> then with someone else. The world is a large place.*/
= @238 /*Once I thought that I would adventure until the end of my life, but I am weary of fighting.*/
== IMOEN25J @249 /*But if you settle down and I still want to run around that means we'll have to say goodbye...*/
== MAZZY25J @250 /*Eventually, if we live that long. More than likely your and <CHARNAME>'s insane god-quest will kill us all first.*/
== IMOEN25J @251 /*So our time together is precious?*/
== MAZZY25J @252 /*Very much so.*/
== IMOEN25J @253 /*Then why are we wasting time talking when we could be canoodling? Come here!*/
== MAZZY25J @245 /*As you wish.*/
DO ~RestParty()~
EXIT

//Version 4, IM & Mazzy & CN, but not AERIE25J or CN-Mazzy
CHAIN IF WEIGHT #-1 ~Global("_bFinalImoenMazzyTalk","GLOBAL",2) Global("_bImoenMazzyRomance","GLOBAL",2) !Global("_BMazzyFriendship","GLOBAL",1) Global("ImoenRomanceActive","GLOBAL",2)~ THEN IMOEN25J _bFinalTalk4
@254 /*Mazzy, what do you think of <CHARNAME>?*/
DO ~SetGlobal("_bFinalImoenMazzyTalk","GLOBAL",3)~
== MAZZY25J @255 /*I think you and he are in love and I am happy for you. I also think you find that terrifying which is why you are in my bed instead.*/
== IMOEN25J @256 /*I suppose you're right.... So what will you do after all of this?*/
== MAZZY25J @229 /*First, I would like to return home. I have not seen my family in far too long.*/
= @230 /*After that, I suppose I will continue adventuring.*/
== IMOEN25J @257 /*So... is this the end of us?*/
== MAZZY25J @258 /*It should be. Go be in love and stop wasting your time with me.*/
== IMOEN25J @259 /*Okay... but it wasn't a waste. I enjoyed it very much.*/
= @260 /*Goodbye, Mazzy.*/
== MAZZY25J @261 /*I would say it in return but you are making no effort to leave.*/
== IMOEN25J @262 /*Well... of course not. We haven't had our goodbye sex. Now come here and canoodle me!*/
== MAZZY25J @245 /*As you wish.*/
DO ~RestParty()~
EXIT

//Version 5, IM & Mazzy & CN, no Aerie
CHAIN IF WEIGHT #-1 ~Global("_bFinalImoenMazzyTalk","GLOBAL",2) Global("_bImoenMazzyRomance","GLOBAL",2) Global("_BMazzyFriendship","GLOBAL",1) !Global("_BMazzyRomance","GLOBAL",2) 
Global("ImoenRomanceActive","GLOBAL",2)~ THEN IMOEN25J _bFinalTalk5
@254 /*Mazzy, what do you think of <CHARNAME>?*/
DO ~SetGlobal("_bFinalImoenMazzyTalk","GLOBAL",3)~
== MAZZY25J @255 /*I think you and he are in love and I am happy for you. I also think you find that terrifying which is why you are in my bed instead.*/
== IMOEN25J @256 /*I suppose you're right.... So what will you do after all of this?*/
== MAZZY25J @229 /*First, I would like to return home. I have not seen my family in far too long.*/
= @235 /*After that, I suppose I will settle down and start a family of my own.*/
== IMOEN25J @236 /*Really? You?  I thought you had tried that and sworn it off forever?*/
== MAZZY25J @237 /*Yes... well... I changed my mind.*/
= @238 /*Once I thought that I would adventure until the end of my life, but I am weary of fighting.*/
== IMOEN25J @257 /*So... is this the end of us?*/
== MAZZY25J @258 /*It should be. Go be in love and stop wasting your time with me.*/
== IMOEN25J @259 /*Okay... but it wasn't a waste. I enjoyed it very much.*/
= @260 /*Goodbye, Mazzy.*/
== MAZZY25J @261 /*I would say it in return but you are making no effort to leave.*/
== IMOEN25J @262 /*Well... of course not. We haven't had our goodbye sex. Now come here and canoodle me!*/
== MAZZY25J @245 /*As you wish.*/
DO ~RestParty()~
EXIT

//Version 6, IM & Mazzy, CN & Mazzy, CN & IMOEN25J
CHAIN IF WEIGHT #-1 ~Global("_bFinalImoenMazzyTalk","GLOBAL",2) Global("_bImoenMazzyRomance","GLOBAL",2) Global("_BMazzyRomance","GLOBAL",2) Global("ImoenRomanceActive","GLOBAL",2)~ THEN IMOEN25J _bFinalTalk6
@228 /*Mazzy, what will we do after this is over?*/
DO ~SetGlobal("_bFinalImoenMazzyTalk","GLOBAL",3)~
== MAZZY25J @229 /*First, I would like to return home. I have not seen my family in far too long.*/
= @235 /*After that, I suppose I will settle down and start a family of my own.*/
== IMOEN25J @246 /*Really? You?*/
= @263 /*And you mean with <CHARNAME>, right? I don't think I'm the "family" type.*/
== MAZZY25J @248 /*With <CHARNAME>, if <PRO_HESHE> is interested. But if not with <PRO_HIMHER> then with someone else. The world is a large place.*/
= @238 /*Once I thought that I would adventure until the end of my life, but I am weary of fighting.*/
== IMOEN25J @264 /*So... what will I do?*/
== MAZZY25J @265 /*Whatever you would like. You and <CHARNAME> are very much in love. If you wanted to start a family together, I would not stand in your way.*/
== IMOEN25J @266 /*A family? I'm not ready for a family. Maybe I'll never be.*/
= @267 /*Okay... new idea! We don't think or talk about the future ever because it's terrifying!*/
== MAZZY25J @245 /*As you wish.*/
DO ~RestParty()~
EXIT

//Aerie Talks, Separate Trigger
CHAIN IF WEIGHT #-1 ~Global("_bFinalImoenMazzyTalk","GLOBAL",5)~ THEN IMOEN25J _bImoenWantsAerie
@268 /*Mazzy can I ask you something? Promise me you won't get mad?*/
DO ~SetGlobal("_bFinalImoenMazzyTalk","GLOBAL",5) SetGlobal("_bImoenMazzyRomance","GLOBAL",3)~
== MAZZY25J @269 /*I cannot promise that, but I can swear not to act upon that anger.*/
== IMOEN25J @270 /*How do you know if you've fallen in love with someone?*/
== MAZZY25J @271 /*Oh, you poor dear. Aerie?*/
== IMOEN25J @272 /*Is it that obvious?*/
== MAZZY25J @273 /*I used the process of elimination; while you enjoy our time together, I know you are not in love with me...*/
== IMOEN25J @274 /*I'm so sorry... please, please, please don't hate me.*/
== MAZZY25J @275 /*...that and you've been following Aerie around, completely lovesick. It's been obvious, to everyone except Aerie, of course.*/
== MAZZY25J IF ~!Gender("Imoen2",FEMALE)~ THEN @291 /*I'm not angry, my love. She's perfect for you in every way.*/
== MAZZY25J IF ~Gender("Imoen2",FEMALE)~ THEN @276 /*I'm not angry, my love. She's perfect for you in every way... except for the fact that she's not attracted to women.*/
== IMOEN25J IF ~Gender("Imoen2",FEMALE)~ THEN @277 /*But she *could* be, right? I have to try.*/
== MAZZY25J @278 /**sighs* Well you cannot be with me at the same time. If you are going to try for her, you must commit fully.*/
= @279 /*Any half-hearted attempts are sure to fail.*/
== IMOEN25J @280 /*Yeah... that makes sense.*/
== IMOEN25J IF ~Gender("Imoen2",FEMALE)~ THEN @281 /*I'm going to fail anyway, aren't I?*/
== MAZZY25J IF ~Gender("Imoen2",FEMALE)~ THEN @282 /*Almost certainly... but don't let that stop you. If we only tried what we knew we could succeed at, we'd never accomplish the impossible.*/
== IMOEN25J @283 /*Mazzy, thanks. I know you love me.*/
== MAZZY25J @284 /*I love everyone, Imoen. It is my weakness... and my strength.*/
== IMOEN25J @285 /*Is this goodbye?*/
= @286 /*That's my choice, isn't it? It's goodbye if I want it to be... if I want to try for her...*/
= @287 /*Can I decide tomorrow morning?*/
== MAZZY25J @288 /*You already know what you will do.*/
== IMOEN25J @289 /*Could you love me? One last time?*/
== MAZZY25J @245 /*As you wish.*/
DO ~SetGlobal("_bImoenMazzyRomance","GLOBAL",3)~
== IMOEN25J @290 /*Mazzy? Thank you. For everything.*/
DO ~RestParty()~
EXIT
