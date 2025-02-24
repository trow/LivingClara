
//First talk
CHAIN IF WEIGHT #-1 ~Global("_bIMLoveTalk","GLOBAL",2)~ THEN IMOEN2J _bImoenMazzy1
@1 /*So you're a knight, huh?*/
DO ~SetGlobal("_bIMLoveTalk","GLOBAL",3)~
== MAZZYJ @2 /*Yes and a Truesword of Arvoreen.*/
== IMOEN2J @3 /*Is that why you came to rescue me? It's what a knight does, right? Rescue people?*/
== MAZZYJ @4 /*I suppose. I have not made a habit of rescuing fair maidens, but I am glad that I came when <CHARNAME> asked.*/
== IMOEN2J @5 /*I'm glad you did too.*/
= @6 /**laughs* I've never been a fair maiden before.*/
= @7 /*Mazzy...?*/
== MAZZYJ @8 /*Yes, Imoen?*/
== IMOEN2J @9 /*I don't think I am going to make it. I can feel myself growing weaker... and colder...*/
== MAZZYJ @10 /*You will be fine. You are missing a part of yourself, but I am sure it will not be fatal. We will retrieve Bhaal's essence, put it back inside you, and then you will feel as good as new.*/
== IMOEN2J @11 /*Because that's what every girl needs, right? The essence of the God of Murder inside her.*/
= @12 /*Mazzy, can I stay next to you? You make me feel better; I'm not sure why. Makes me feel like I might actually live through this.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @13 /*You are drawn to her because your soul was ripped from you and the little paladin has soul to spare.*/
= @14 /*She is the flame which draws lost creatures such as ourselves.*/
== IMOEN2J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @15 /*Oh hi, Viconia, I didn't see you there.*/
= @16 /*Wait did you just imply that you don't have a soul? I mean everyone says that about you, but I thought...*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @17 /*Lolth has a piece of mine in her clutches. She uses it to track me down and torture me on occasion.*/
== IMOEN2J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @18 /*Wait... what? Wow. We traveled together for so long and yet I know nothing about you. We should talk more.*/
= @19 /*Also are you nicer now? You've never talked this much to me before and I have so many questions.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @20 /*We never converse because you are an over-curious puppy who chatters enough for the both of us. Look at you, you can barely stand and yet you want to ask questions.*/
== IMOEN2J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @21 /*Aww, I missed you too, Viconia.*/
= @22 /*Mazzy, can I rest on your shoulder for a moment?*/
== MAZZYJ @23 /*Of course, Imoen. I will support you.*/
EXIT

//Imoen & Viconia Talk
CHAIN IF WEIGHT #-1 ~Global("_bImVicTalk","GLOBAL",2)~ THEN IMOEN2J _bImoenVic1
@24 /*So, hey, you're the new nicer Viconia now?*/
= @25 /*I mean, it seems to come and go since occasionally you're as vile as ever. But some of the things you say to us are almost pleasant. Like we're your... *gasp*... friends!*/
DO ~SetGlobal("_bImVicTalk","GLOBAL",3)~
== VICONIJ IF ~GlobalGT("_bMazzyVicFriends","GLOBAL",0)~ @26 /*Mazzy convinced me that it would be in my best interests to occasionally be nicer to those who do not wish me dead.*/
== VICONIJ IF ~Global("_bMazzyVicFriends","GLOBAL",0)~ @260 /*<CHARNAME> convinced me that it would be in my best interests to occasionally be nicer to those who do not wish me dead.*/
== IMOEN2J @27 /*Aww, you're saying that I don't wish you dead? That's so sweet. I mean, you're right, I don't want you dead, though sometimes when you're really mean to me, I don't like you very much.*/
= @28 /*I can just see the internal conflict going on in your head. You're saying to yourself, "I really want to say something to make Imoen cry, but then she'll be more likely to abandon me to an angry mob."*/
== VICONIJ @29 /*Making you cry is hardly an accomplishment. For one as weak and pathetic as yourself, it is much more difficult to keep you from shattering like a mirror.*/
== IMOEN2J @30 /*Yeah. But what doesn't kill me makes me stronger, right? I mean look at you! You've been tortured way more than I have and you're super-tough: like one giant emotional scar.*/
= @31 /*I mean, you have a habit of driving people away, it's hard for you to care for anyone, and you're probably going to die unloved and alone, but at least you're tough, right?*/
= @32 /*Oh wow, that was sarcastic and... mean! I'm turning into you. I'm the new tougher Imoen!*/
== VICONIJ @33 /*You should be so lucky. You would need to be captured by a hundred more Irenicuses to achieve that, but I suppose one was a start.*/
= @34 /*I could toughen you up if you would like. I do not have the proper tools for really meaningful torture, but I could... improvise.*/
== IMOEN2J @35 /*Um... no. No, thanks. Your words cut well enough.*/
== VICONIJ @36 /*A pity. Consider it an open offer if you ever change your mind.*/
EXIT

//2nd Mazzy Talk
CHAIN IF WEIGHT #-1 ~Global("_bIMLoveTalk","GLOBAL",4)~ THEN IMOEN2J _bImoenMazzy2
@37 /*Mazzy, do you mind if I sleep next to you?*/
== MAZZYJ @38 /*Of course not. You're welcome to snuggle up with me anytime you'd like.*/
= IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @39 /*That is, assuming you do not mind the company.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @40 /*She means me.*/
== IMOEN2J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @41 /*Oh, I don't want to intrude, I didn't realize you two were... you know...*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @42 /*Hah, you are mistaken. In all my many years with the drow, I never acquired a taste for females; most of them were either useless whining slaves or were trying to kill me.*/
= @43 /*Mazzy, however, wants nothing more than to rip off my clothes and bury her tongue between my thighs, but she restrains herself due to some misguided sense of propriety.*/
== MAZZYJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @44 /*Viconia!*/
== IMOEN2J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @45 /**laughs* Is that true?*/
== MAZZYJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @46 /*It is true that we are not together. The rest of it I will not dignify with a response.*/
= @47 /*So, yes Imoen, you may sleep here with us for as long as you'd like. No harm will come to you.*/
== IMOEN2J @48 /*Thanks. I feel awful.*/
== MAZZYJ @49 /*I believe under the circumstances that is warranted. You have been through...*/
= @50 /*Oh, you're asleep already. All right then. Sleep well, Imoen.*/
DO ~SetGlobal("_bIMLoveTalk","GLOBAL",5) RestParty()~
EXIT

//Imoen-Mazzy Permission 
CHAIN IF WEIGHT #-1 ~Global("_bIMTBTalk","GLOBAL",1)~ THEN IMOEN2J _bImoenAsksBlessing
@500 /*<CHARNAME>, you may have noticed that I've been spending a lot of time with Mazzy...*/
DO ~SetGlobal("_bIMTBTalk","GLOBAL",2)~
END
	++ @501 /*Noticed. Don't care.*/ GOTO _bImoenMazzyCN1
	++ @502 /*I think it's great you've made a friend.*/ GOTO _bImoenMazzyCN1
	++ @503 /*Actually, it's making me kind of jealous.*/ GOTO _bImoenMazzyCNJealous

CHAIN IMOEN2J _bImoenMazzyCN1
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
	
CHAIN IMOEN2J _bCNImoenLikesWomen
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
	
CHAIN IMOEN2J _bCNImoenRelationship
@520 /*Am I sure I'm ready for a relationship? *laughs* Are you kidding me?*/
= @521 /*Of course I'm not ready! My soul was ripped from my body! I was tortured in every possible way.*/
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
	
CHAIN IMOEN2J _bImoenMazzyCNJealous
@523 /*So you're jealous because you want to spend more time with me or because you want to spend more time with her?*/
END
	++ @524 /*I want to spend more time with you.*/ GOTO _bCNJealousImoen
	++ @525 /*I want to spend more time with her.*/ GOTO _bCNJealousMazzy
	++ @526 /*Both.*/ GOTO _bCNJealousImoenMazzy
	
CHAIN IMOEN2J _bCNJealousImoen
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
	
CHAIN IMOEN2J _bCNJealousMazzy
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
	
CHAIN IMOEN2J _bCNJealousImoenMazzy
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
	
CHAIN IMOEN2J _bCNImoenLikesMazzy
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
	
CHAIN IMOEN2J _bCNImoenAskingCN
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
	
CHAIN IMOEN2J _bCNImoenMazzyAccept
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
	
CHAIN IMOEN2J _bCNImoenPatrick
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
	
CHAIN IMOEN2J _bCNSaysNoImoenMazzy
@549 /*Oh fine, I'll just keep her as a friend then.*/
DO ~SetGlobal("_bIMLoveTalk","GLOBAL",50) SetGlobal("_bImoenMazzyRomance","GLOBAL",3)~ //Ends romance
= @550 /*There's other fish in the sea... I guess.*/
EXIT
	

//Bath Talk 
CHAIN IF WEIGHT #-1 ~Global("_bIMBathTalk","GLOBAL",1)~ THEN IMOEN2J _bImoenMazzyBath1
@51 /*Civilization! <CHARNAME>, we have to stop. I need clean sheets and a bath.*/
DO ~SetGlobal("_bIMBathTalk","GLOBAL",2) SetGlobal("_brestcheck","GLOBAL",2)~
= @52 /*Though maybe this isn't the right place for either.*/
== MAZZYJ @53 /*Clean sheets and a bath are always obtainable, my dear; that is, if you are willing to pay enough coin. Fortunately, we have coin to spare.*/
== IMOEN2J @54 /*Oh good. Would you join me, Mazzy? I'm a little worried about fainting and drowning.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @55 /*A bath will do us all some good. The stench is becoming nearly unbearable. I swear even I was beginning to stink.*/
== MAZZYJ @56 /*I will check with the innkeeper. I am sure he will see reason if enough coin is passed his way.*/
== MAZZYJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2) OR(2) AreaCheck("AR2202") AreaCheck("AR2203")~ 
THEN @57 /*Or perhaps Viconia would be a better person to arrange this.*/
== IMOEN2J @58 /*I can't wait.*/
EXIT

//After floating text (inn version)
CHAIN IF WEIGHT #-1 ~Global("_bIMBathTalk","GLOBAL",4)  OR(3) AreaCheck("AR1602") AreaCheck("AR2202") AreaCheck("AR2203")~ THEN MAZZYJ _bImoenMazzyBath2
@59 /*This is what I needed. Clean, finally.*/
DO ~UndoExplore()~
== IMOEN2J @60 /*I could stay here all day, except the water is already starting to get cold.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2) AreaCheck("AR1602")~ 
THEN @61 /*So walk out and ask some sailors to heat more. For three naked females, they would walk over hot coals into the mouth of a kraken.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2) !AreaCheck("AR1602")~ 
THEN @62 /*So march out, clothes-less and dripping, and order some hapless male to heat more.*/
== IMOEN2J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @63 /*I could, or I could just rest against you two and...*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @64 /*And she's already asleep. She wants you, you know. You should stop moping after your dead male and take her.*/
== MAZZYJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @65 /*Your advice is as insensitive as usual, Viconia. She has been through a horrible ordeal, and while I might be interested in some light fun, she is emotionally fragile right now and I would not like to hurt her.*/
= @66 /*Not to mention that I am still mourning Patrick.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @67 /*You do not fool me with your pathetic excuses. I buried four husbands, and I assure you that nothing helps you get over a dead male like getting under a new one.*/
= @68 /*Or... a female in this case.*/
= @69 /*But fine, ignore my advice. Our water is cold. Help me pick up our sleeping companion, so we can slowly and sensuously dry off her wet skin and slip into bed with her.*/
== MAZZYJ @70 /*You're right. I suppose we'd better dry off and get to sleep.*/
DO ~SetGlobal("_bIMBathTalk","GLOBAL",5) RestParty() Explore()~
EXIT

//After floating text (gnome version)
CHAIN IF WEIGHT #-1 ~Global("_bIMBathTalk","GLOBAL",4) Detect("udsvir04")~ THEN MAZZYJ _bImoenMazzyBath2
@59 /*This is what I needed. Clean, finally.*/
== IMOEN2J @60 /*I could stay here all day, except the water is already starting to get cold.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2) AreaCheck("AR1602")~ 
THEN @61 /*So walk out and ask some sailors to heat more. For three naked females, they would walk over hot coals into the mouth of a kraken.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2) !AreaCheck("AR1602")~ 
THEN @62 /*So march out, clothes-less and dripping, and order some hapless male to heat more.*/
== IMOEN2J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @63 /*I could, or I could just rest against you two and...*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @64 /*And she's already asleep. She wants you, you know. You should stop moping after your dead male and take her.*/
== MAZZYJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @65 /*Your advice is as insensitive as usual, Viconia. She has been through a horrible ordeal, and while I might be interested in some light fun, she is emotionally fragile right now and I would not like to hurt her.*/
= IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @66 /*Not to mention that I am still mourning Patrick.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @67 /*You do not fool me with your pathetic excuses. I buried four husbands, and I assure you that nothing helps you get over a dead male like getting under a new one.*/
= @68 /*Or... a female in this case.*/
= @69 /*But fine, ignore my advice. Our water is cold. Help me pick up our sleeping companion, so we can slowly and sensuously dry off her wet skin and slip into bed with her.*/
== MAZZYJ @70 /*You're right. I suppose we'd better dry off and get to sleep.*/
DO ~SetGlobal("_bIMBathTalk","GLOBAL",5) RestParty()~
EXIT

//3rd Mazzy Talk -Rewriting most of talk.
CHAIN IF WEIGHT #-1 ~Global("_bIMLoveTalk","GLOBAL",7)~ THEN IMOEN2J _bImoenMazzy3
@71 /*Mazzy, you must be the most unhalfling-like halfing ever.*/
	DO ~SetGlobal("_bIMLoveTalk","GLOBAL",8) SetGlobal("_bImoenMazzyRomance","GLOBAL",1)~
== MAZZYJ @72 /*Oh? And I suppose you are an expert on my people? Did you read a book about us in Candlekeep?*/
== IMOEN2J @73 /*Actually, I did! It said that the lives of nearly all halflings are spent pursuing their five cultural passions: delicious food, strong drink, frequent and adventurous sex, pipe-weed, and farming. I think the author was jealous.*/
= @74 /*But the book also said that if halflings do go adventuring, they always take on the role of the party's thief or rogue, using their soft steps and small size to help them sneak around unnoticed.*/
= @75 /*Except you're some sort of paladin, I've never seen you drink or smoke heavily, you mostly eat adventuring-rations, and even though we've been sharing a bed for days, you've kept your hands entirely to yourself.*/
== MAZZYJ @76 /*Well, that just shows how reading books can differ from actual experience.*/
== IMOEN2J @77 /*But I do have experience! Up near Baldur's Gate, I met lots of halflings!*/
	= @77000 /*First there was Montaron... He was a nasty piece of work. I don't think I ever slept well with him around. You remember him, right <CHARNAME>?*/
END
	++ @77001 /*Montaron... Montaron... no I don't think we ever travelled with a Montaron.*/ GOTO _bImoenMazzyNoMontaron 
	++ @77002 /*Oh yeah, evil halfling thief. Him and that crazy wizard of his.*/ GOTO _bImoenMazzyMontaronWizard
	+ ~Global("FoundMontaronBody","GLOBAL",1)~ + @77003 /*He's dead, you know. The harpers killed him.*/ GOTO _bImoenMazzyFoundMontaron1

APPEND IMOEN2J IF ~~ THEN _bImoenMazzyNoMontaron
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

CHAIN IMOEN2J _bImoenMazzyGullykin1
	@77007 /*Some time after that, we found the halfling town of Gullykin.*/
	= @77008 /*It was south of Ulcaster... full of farmers mostly. After we saved them from an army of kobolds, they held a big celebration where we all drank, smoke, and ate, and I slept with half the town.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @77009 /*When was this? Did you really participate in a massive orgy and forget to invite me? That was... impolite.*/
== IMOEN2J IF ~IfValidForPartyDialog("Viconia")~ THEN @77010 /*That was just before we met you, Viconia, I'm sorry. We might have missed meeting you entirely, but we had to leave the halflings so that we could find those bandits.*/
== MINSCJ IF ~IfValidForPartyDialog("Minsc")~ THEN @77011 /*Minsc and Boo remember! It was a mighty party of miniature proportions. Food! Music! Singing! Dynaheir and I danced the night away, towering over our hosts like drunken titans!*/
== IMOEN2J IF ~IfValidForPartyDialog("Minsc")~ THEN @77012 /*And Boo ate himself into a stupor. He was the toast of the town! I have never seen your hamster so happy.*/
== JAHEIRAJ IF ~IfValidForPartyDialog("Jaheira")~ THEN @77013 /*I remember Khalid and I thanked our hosts and retired. Such parties are for the young... and single.*/
== NEERAJ IF ~IfValidForPartyDialog("NEERA")~ THEN  @77014 /*Gullykin. Was. Awesome! And that's all I'm going to say about that.*/
== RASAADJ IF ~IfValidForPartyDialog("RASAAD")~ THEN @77015 /*It was good to take our mind off of our troubles for a few hours.*/
== IMOEN2J IF ~IfValidForPartyDialog("RASAAD")~ THEN @77016 /*I think I even remember you smiling... though that may have been a trick of the light.*/
== DORNJ IF ~IfValidForPartyDialog("Dorn")~ THEN @77017 /*They rewarded us as heroes should be rewarded. That is how the weak should treat us lest we lose patience and slaughter them all.*/
== EDWINJ IF ~IfValidForPartyDialog("Edwin")~ THEN @77018 /*The pleasures of Gullykin were merely what Edwin Odesseiron was due for his efforts. (Why am I wasting my time down here? I should go back.)*/
== MAZZYJ @83 /*I will admit our celebrations can be somewhat boisterous.*/
== IMOEN2J @84 /*It was wonderful. I had spent all that time in Candlekeep surrounded by nothing but dirty old men, though they knew well enough to leave me alone.*/
	= @85 /*And now I was a hero, I was loved and adored by every halfling boy and girl.*/
	= @86 /*It also helped that there were no consequences. I couldn't get pregnant, the local halfling temple cured diseases for free, and I knew that word of my exploits would never leave the village.*/
	= @87 /*I think even <CHARNAME> enjoyed <PRO_HIMHER>self.*/
END
	++ @88 /*I did. Gullykin was a good time.*/ GOTO _bImoenMazzyAlora
	++ @89 /*I suppose it was okay. I was happy to leave though.*/ GOTO _bImoenMazzyAlora
	++ @89000 /*I don't remember any of that. I remember finishing our quests, resting, and heading on our way.*/ GOTO _bImoenMazzyCNNoGullykin

APPEND IMOEN2J IF ~~ THEN _bImoenMazzyCNNoGullykin
	SAY @89001 /*Of course that's what you remember... you and your sixteen-hour rests. Do you think the rest of us just do nothing while you're lying around?*/
	IF ~~ THEN GOTO _bImoenMazzyAlora
	END
END

CHAIN IMOEN2J _bImoenMazzyAlora
	@89002 /*And then came Alora. We met her in Baldur's Gate. Like Montaron, she was a thief and acted exactly like my book said a halfling should.*/
	= @89003 /*She was also really nice. We hit it off immediately and before I knew what was happening, there she was in my bed.*/
= @90 /*It was kinda sad actually. I really started to care for her, you know? But then one day she just up and left. "Thanks for the fun, Imoen. Hope we meet again."*/
= @91 /*And that was it, like we weren't anything special. It really hurt, although having people constantly trying to kill me was a good distraction.*/
== IMOEN2J IF ~InParty("CMAlora")~ THEN @910 /*She's back now, but things are different. Alora hasn't brought it up and I'm afraid to ask. I don't want to find out that I meant nothing after all.*/
== MAZZYJ @92 /*In Alora's defence, she probably didn't mean to hurt you. Halfling girls regularly play together, but it is rarely considered to have any special meaning. Usually they all grow up, find good husbands, and raise families.*/

== IMOEN2J @93 /*Oh. Well that's disappointing. Here I saw you and figured that you'd be just like her, but a little more mature and well...*/
== MAZZYJ @94 /*We are not interchangeable! Just because you slept with other halflings does not mean that I will jump into your bed. I enjoy your company, but we hardly know each other.*/
== IMOEN2J @95 /*Well... yeah. And from what you said, you've probably given up the foolish girl-play and are ready to settle down with some nice halfling fellow.*/
== IMOEN2J  @96 /*Just as well, I suppose. Ever since I lost my soul, I fall asleep the moment I lie down, sometimes before. I'm in no shape to play with anyone.*/
== MAZZYJ @97 /*I tried settling down. It didn't take.*/
= @98 /*But I am somewhat worried about your emotional state.*/
== IMOEN2J @99 /*No! You do not get to worry about that. I am walking the edge of the abyss... about to shatter into a thousand pieces at a moment's notice and I do not need your worry.*/
= @100 /*What I need is something to think about other than his tortures. Something to look forward to other than a slow death.*/
= @101 /*So will you give me something to look forward to or not?*/
== MAZZYJ @102 /**sigh* It is not that easy.*/
= @103 /*Let us get your soul back and then if you are still interested and I am still interested and neither of us are with someone else, then perhaps we can speak of this again.*/
EXIT

//Pre-romance Crush Talks- Decided to deactivate this talk. Deactivated in _bmazzygoodevil.baf
CHAIN IF WEIGHT #-1 ~Global("ImoenRomanceActive","GLOBAL",1) !Global("_BMazzyFriendship","GLOBAL",1) Global("bImMazCrushTalk","GLOBAL",2)~ THEN MAZZYJ _bImoenMazzyCrush1
@104 /*There may be a situation developing that could derail your plans for us.*/
DO ~SetGlobal("bImMazCrushTalk","GLOBAL",3)~
== IMOEN2J @105 /*Oh?*/
== MAZZYJ @106 /*<CHARNAME>.*/
== IMOEN2J @107 /*How would <CHARNAME> get in the way?*/
== MAZZYJ @108 /*Because there is a good chance that <PRO_HESHE> is hopelessly in love with you.*/
== IMOEN2J @109 /*What? No, we're just really good friends. I mean I've known <PRO_HIMHER> all my life, and it seems <PRO_HESHE>'s sort of my half-<PRO_BROTHERSISTER> or something...*/
= @110 /*I'm not...*/
= @111 /*I will resolve that when I come to it.*/
= @112 /*If I do end up with <CHARNAME>, does that mean you wouldn't want me anymore?*/
== MAZZYJ @113 /*Of course I'd still want you.*/
== IMOEN2J @114 /*Well then, if that happens, <CHARNAME> will just have to decide if <PRO_HESHE> wants to share. There is plenty of Imoen for all.*/
EXIT

//Decided to deactivate this talk. Deactivated in _bmazzygoodevil.baf
CHAIN IF WEIGHT #-1 ~Global("ImoenRomanceActive","GLOBAL",1) Global("_BMazzyFriendship","GLOBAL",1) Global("bImMazCrushTalk","GLOBAL",2)~ THEN MAZZYJ _bImoenMazzyCrush2
@104 /*There may be a situation developing that could derail your plans for us.*/
DO ~SetGlobal("bImMazCrushTalk","GLOBAL",3)~
== IMOEN2J @105 /*Oh?*/
== MAZZYJ @106 /*<CHARNAME>.*/
== IMOEN2J @115 /*You mean because he likes you?*/
== MAZZYJ @116 /*Wait... do you think <PRO_HESHE> likes me? I have seen that possibility but I have not confirmed it either way.*/
= @117 /*But no, no I was going to say that there is a good chance <CHARNAME> is hopelessly in love with you.*/
== IMOEN2J @109 /*What? No, we're just really good friends. I mean I've known <PRO_HIMHER> all my life, and it seems <PRO_HESHE>'s sort of my half-<PRO_BROTHERSISTER> or something...*/
= @110 /*I'm not...*/
= @111 /*I will resolve that when I come to it.*/
= @112 /*If I do end up with <CHARNAME>, does that mean you wouldn't want me anymore?*/
== MAZZYJ @118 /*Of course I'd still want you. If the reverse happens, would you still be interested in me?*/
== IMOEN2J @119 /*What if <PROHESHE> wants both of us?*/
== MAZZYJ @120 /*There is that possibility.*/
= @121 /*Whatever happens, I believe that we will all have to decide if we can share.*/
EXIT

//Decided to deactivate this talk. Deactivated in _bmazzygoodevil.baf
CHAIN IF WEIGHT #-1 ~!Global("ImoenRomanceActive","GLOBAL",1) Global("_BMazzyFriendship","GLOBAL",1) Global("bImMazCrushTalk","GLOBAL",2)~ THEN MAZZYJ _bImoenMazzyCrush3
@104 /*There may be a situation developing that could derail your plans for us.*/
DO ~SetGlobal("bImMazCrushTalk","GLOBAL",3)~
== IMOEN2J @105 /*Oh?*/
== MAZZYJ @106 /*<CHARNAME>.*/
== IMOEN2J @115 /*You mean because he likes you?*/
== MAZZYJ @122 /*Yes... I mean I have seen that possibility but I have not confirmed it either way.*/
== IMOEN2J @123 /*If you do end up with <CHARNAME>, does that mean you wouldn't want me anymore?*/
== MAZZYJ @124 /*Of course I'd still want you. <CHARNAME> will simply have to decide if <PRO_HESHE> can share.*/
== IMOEN2J @125 /*At different times though... I mean it'd be weird for me and <CHARNAME> to both be with you... together... at the same time... you know what I mean!*/
== MAZZYJ @126 /*Yes, do not worry. I believe I have enough energy for the both of you.*/
EXIT

//Drow Sex Talk
CHAIN IF WEIGHT #-1 ~Global("_bIMDrowTalk","GLOBAL",1)~ THEN IMOEN2J _bImoenMazzyDrow
@127 /*Mazzy, I realize I can barely keep my eyes open, but you have to sleep with me now.*/
== MAZZYJ @128 /*Oh? And why is that?*/
== IMOEN2J @129 /*Because look at us! Look at me! I am so hot! When are we going to get this chance again?*/
= @130 /*Plus we're drow, aren't we? Isn't this behavior expected? Shouldn't we be having a giant, shame-free orgy that is completely forgotten about tomorrow?*/
== MAZZYJ @131 /*It takes more than two to make an orgy.*/
== IMOEN2J @132 /*Well, I want you all to myself right now, so prepare to be orgy-ized. Let me just get comfortable and...*/
== MAZZYJ @133 /*...and you are asleep again. Sleep well, Imoen, your orgy will have to wait.*/
DO ~SetGlobal("_bIMDrowTalk","GLOBAL",2) RestParty()~
EXIT

//Post CN Sex Talk (Imoen)
CHAIN IF WEIGHT #-1 ~Global("_bIMCNSexTalk","GLOBAL",2)~ THEN IMOEN2J _bImoenMazzyCNSexed
@134 /*Umm... Mazzy?*/
DO ~SetGlobal("_bIMCNSexTalk","GLOBAL",3)~
== MAZZYJ @135 /*Yes?*/
== IMOEN2J @136 /*You might already know this, but I kind of... you know... with <CHARNAME>.*/
== MAZZYJ @137 /*I was aware. And?*/
== IMOEN2J @138 /*It was amazing!*/
== IMOEN2J IF ~!Dead("c6Bodhi")~ THEN @139 /*I had to drink an entire potion of fortitude to not fall asleep, but it worked.*/
== IMOEN2J IF ~!Dead("c6Bodhi")~ THEN @140 /*Well... I may still have fallen asleep towards the end, but I told <CHARNAME> not to stop if I did... and <PRO_HESHE> didn't! So I count that as success.*/
== IMOEN2J @141 /*But now I have no idea what to do.*/
== MAZZYJ @142 /*That is for you to decide. I will accommodate your choice.*/
== IMOEN2J @143 /*Thanks, Mazzy. I mean I have to stay with <CHARNAME> until <PRO_HESHE> gets <PRO_HISHER> soul back. I owe <PRO_HIMHER> that much at least.*/
= @144 /*But as long as you're here too, I'd like us to be together.*/
== MAZZYJ IF ~!Dead("c6Bodhi")~ THEN @145 /*Well, I cannot be depriving the world of fortitude potions; we must get your soul.*/
== MAZZYJ @146 /*That being said, yes, I would like that too. But what does <CHARNAME> think about the matter? I am not going to intrude...*/
== IMOEN2J @14600 /*I don't know. I don't even know if <CHARNAME> and I are really together or anything yet... it's all so complicated. But I'll let you know when we figure it out.*/
EXIT

//Post CN Sex Talk (Mazzy)
CHAIN IF WEIGHT #-1 ~Global("_bIMCNSexTalk2","GLOBAL",2)~ THEN IMOEN2J _bImoenMazzyCNSexed2
@147 /*So... Mazzy. You and <CHARNAME>...*/
DO ~SetGlobal("_bIMCNSexTalk2","GLOBAL",3)~
== MAZZYJ @148 /*Yes, me and <CHARNAME>, just as we discussed. I hope you have not changed your mind about sharing. I do not wish to lose you.*/
== IMOEN2J @149 /*No! No, I don't want to lose you either and I'm still happy to take turns. I just wanted to make sure that you were happy and I don't need to threaten <CHARNAME> on your behalf.*/
== MAZZYJ @150 /**chuckle* I appreciate the thought but that is not necessary. <CHARNAME> was a perfect gentle<PRO_MANWOMAN> and followed my lead throughout. It was quite lovely actually.*/
== IMOEN2J @151 /*Good. And... you still want me too, right? Even though you've got the hero now?*/
== MAZZYJ @152 /*Of course. You are not the same and cannot be compared. I care about you both and I would miss you terribly.*/
== IMOEN2J @153 /*Great! That's all I wanted to know. I guess I better go find <CHARNAME> and work out a Mazzy schedule. I have to make sure that I get my fair share.*/
= @154 /*Kiss me goodbye?*/
== MAZZYJ @155 /* As you wish. Try not to traumatise the poor <PRO_GIRLBOY> too much.*/
== IMOEN2J @156 /*I'll try but I make no promises.*/
EXIT

//Mazzy-Imoen Final Romance (no others)
CHAIN IF WEIGHT #-1 ~Global("_bIMKiss","GLOBAL",1)~ THEN IMOEN2J _bImoenMazzyCourted
@157 /*Fresh air! Bodhi's dead! I have a soul!*/
DO ~SetGlobal("_bIMKiss","GLOBAL",2) SetGlobal("_bImoenMazzyRomance","GLOBAL",2)~
== MAZZYJ @158 /*Well you seem to be feeling a bit better. Are you back to full health?*/
== IMOEN2J @159 /*Not yet, but I'm getting there.*/
= @160 /*First things first though, Mazzy, I believe you promised to have sex with me. Or at least you implied that this might be a possibility.*/
== MAZZYJ @161 /*Did I? I would hardly wish to break a promise.*/
== IMOEN2J @162 /*So... does that mean we're together? Are you my girlfriend?*/
== MAZZYJ @163 /*I had not given it much thought, but if you would like that, then I suppose it does.*/
== IMOEN2J @164 /*Well if I'm your girlfriend, shouldn't you kiss me?*/
== MAZZYJ @165 /**sigh* I cannot kiss you, Imoen. The taller person must initiate the kiss.*/
== IMOEN2J @166 /*Hehe, you can't reach. So... does that mean I can kiss you?*/
== MAZZYJ @167 /*In public? Why?*/
== IMOEN2J @168 /*Because kissing is fun. But most importantly, to publicize the fact that I have successfully won you to anyone who's watching.*/
== MAZZYJ @169 /*Very well. I will allow one kiss in public. Just one.*/
== IMOEN2J @170 /*Okay, just one, but you didn't define the duration. Too late now!*/
== MAZZYJ @171 /*But... mmhhmmm.*/
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @172 /*That does not seem a proper display for a lady, but I think I approve nevertheless.*/
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN @173 /*Imoen! You go girl!*/
== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @174 /*Ahh, well they deserve each other.*/
== IF_FILE_EXISTS HEXXATJ IF ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ 
THEN @175 /*Hmm... delicious.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ 
THEN @176 /*Hah! If that silences the puppy-dog, then I approve heartily.*/
== WILSONJ IF ~InMyArea("Wilson") IfValidForPartyDialog("Wilson")~
THEN @17600 /*Snuffle... snort!*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @177 /*Interesting. I have had this dream. (My dream came true. I am a prophet!)*/
== IF_FILE_EXISTS _BCLARAJ IF ~InMyArea("_bClara") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @178 /*And so the knight and the fair maiden lived happily ever after.*/
== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ 
THEN @179 /*The hawk swooping down to pluck the sweet wildflower, a classic tale. But the wildflower plucking the hawk? That is a story seldom told.*/
== KORGANJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN @180 /*Well, that be a surprise fer old Korgan. I half-expected th' mighty lass had taken a vow of celibacy. Turns out she jus' wanted someone wit' less beard.*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @181 /*After so much suffering, those two deserve all the happiness they can find.*/
== CERNDJ IF ~InMyArea("Cernd") InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @182 /*Two creatures find each other. That is the way of nature. However, this is not a common pairing.*/
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @183 /*Boo knew this would happen! He is a smart hamster.*/
== KELDORJ IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @184 /*This is not a move that I would advise two young women such as yourselves to make. You may not be of noble blood but I am sure you can still find acceptable husbands.*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ 
THEN @185 /*Commoners will commit all sorts of lewd behavior out in the open.*/
== VALYGARJ IF ~InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @186 /*Well, I cannot disapprove. Imoen is a pretty maiden, worthy of any knight. Though her being a wizard is a mark against her.*/
== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @187 /*Relationships with tall folk never work out... though Imoen must be the shortest tall person ever. Why, she could be an honorary gnome! Which reminds me of that time...*/
== AERIEJ IF ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @188 /*That's so sweet. I'm happy for you both.*/
== IMOEN2J @189 /*There. You're mine! I've declared it to the world.*/
== MAZZYJ @190 /*I am yours for today; I refuse to make long-term promises. But for the moment, I believe I have been thoroughly claimed.*/
EXIT

//CN 3Some Talk
CHAIN IF WEIGHT #-1 ~Global("_bIM3Some","GLOBAL",2)~ THEN IMOEN2J _bImoenMazzyCN
@191 /*Mazzy, do you have time for a question?*/
DO ~SetGlobal("_bIM3Some","GLOBAL",3) SetGlobal("_bImoenWants3","GLOBAL",1)~
== MAZZYJ @192 /*Of course, Imoen, I'm surprised you felt the need to ask.*/
== IMOEN2J @193 /*Well, I've been thinking, I mean I am sleeping with <CHARNAME>... and you are also sleeping with <CHARNAME>... and we are also sleeping with each other...*/
= @194 /*But so far we've all been taking turns and this seems... you know... inefficient.*/
== MAZZYJ @195 /*All correct. What is your question?*/
== IMOEN2J @196 /*Weeelll... why do you always make me say it!?*/
== MAZZYJ @197 /*Being afraid but overcoming that fear and speaking anyway builds character.*/
== IMOEN2J @198 /*Of course. You would say that. So fine, I'll say it. We should all be sleeping together. The three of us.*/
== MAZZYJ @199 /*Agreed, but that was still not a question.*/
== IMOEN2J @200 /*I abandoned the question and made it a statement. Where's <CHARNAME>?*/
= @201 /*Ahh there. <CHARNAME>!*/
= @202 /*Mazzy and I think we should all be sleeping together. Otherwise one of us is always sitting out.*/
= @203 /*Also, we should do this right now.*/
END
	++ @204 /*Excellent idea.*/ DO ~SetGlobal("_bImoenWants3","GLOBAL",2) RestParty()~ EXIT
	++ @205 /*Hell, yes. I've been waiting for this.*/ DO ~SetGlobal("_bImoenWants3","GLOBAL",2) RestParty()~ EXIT
	++ @206 /*Actually, Imoen, I really prefer to focus on a single person.*/ + _bImoenMazzyCN2 
	++ @207 /*Sorry, I think that would just be too awkward.*/ + _bImoenMazzyCN2
	
CHAIN IMOEN2J _bImoenMazzyCN2 
@208 /*Well I don't! This is silly. One of us sitting alone in a tent while the other two have fun.*/
= @209 /*We should just be a giant, sweaty, three-person mess, all tangled together in passion.*/
= @210 /*No more sleeping alone!*/
END
	++ @211 /*Well when you put it that way... okay.*/ DO ~SetGlobal("_bImoenWants3","GLOBAL",2) RestParty()~ EXIT
	++ @212 /*No, I only want one of you at a time.*/ + _bImoenMazzyCN3

CHAIN IMOEN2J _bImoenMazzyCN3
@213 /*Well fine then! You're as stupid and stubborn as always!*/
= @214 /*You two go play together. I'll just play by myself.*/
= @215 /*......*/
= @216 /*Don't take me out of the rotation though, I still want my turns with both of you.*/
= @217 /*(Stupid stubborn <CHARNAME>. I should've romanced the hamster.)*/
EXIT


//Change to ImoenP
EXTEND_BOTTOM IMOEN2P 4 /*If that's what you want. I'll try and find my way to the Copper Coronet, but we'd be better off together.*/ 
IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2)~ THEN EXTERN MAZZYJ _bImtoHouse
END

CHAIN MAZZYJ _bImtoHouse
@218 /*Imoen, if you would prefer to stay in my home, you would be welcome. Just explain everything to my mother; she will understand.*/
== IMOEN2P @219 /*Thanks, Mazzy. I'll do that!*/
DO ~EscapeAreaMove("AR2002",315,443,E) SetGlobal("KickedOut","LOCALS",1)~
EXIT
	
EXTEND_BOTTOM IMOEN2P 3 /*All right, fine. If that's the way you wanna be, go ahead and be pigheaded. I'll be at that bar... the Copper Coronet... you can find me there, I suppose, if you ever want to.*/
IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2)~ THEN EXTERN MAZZYJ _bImtoHouse
END


//Rasaad Threesome Talk
CHAIN IF WEIGHT #-1 ~Global("_bIMRTalk","GLOBAL",2)~ THEN IMOEN2J _bImWantsRas
@220 /*So... Mazzy... tell me... is there a good reason why we're not sleeping with Rasaad?*/
DO ~SetGlobal("_bIMRTalk","GLOBAL",3)~
== MAZZYJ @221 /*Imoen! We cannot sleep with everyone!*/
= @222 /*But to answer your question, while Rasaad is a good person and quite attractive, his path has become too dark for me. I do not wish to be part of his tragedy.*/
== IMOEN2J @223 /*So... is there a good reason why *I'm* not sleeping with Rasaad?*/
== MAZZYJ @224 /*You mean beside the fact that you are in a committed relationship with me?*/
= @225 /*The darkness engulfing his soul would pull you into the abyss with him. He is like a beautiful but poisonous flower; fine to look at, but deadly to hold.*/
== IMOEN2J @226 /*Oh fine, you're probably right... as always.*/
= @227 /*Though the abyss might not be so bad if it's full of Rasaads.*/
EXIT
