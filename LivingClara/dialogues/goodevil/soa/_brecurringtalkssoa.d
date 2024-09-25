//Recurring Talks. Mazzy's line triggers every 4 days.
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_BMazzyFriendship","GLOBAL",1) Global("_bMazzyTalk","GLOBAL",2)~ THEN MAZZYJ _bRecurringTalkMaster
@0 /*Yes, <CHARNAME>? Is there something you wish to say?*/
DO ~SetGlobal("_bMazzyTalk","GLOBAL",0)~
END
	++ @1 /*No, Mazzy. Let's continue.*/ EXIT
	+ ~Global("_bMazzyRomance","GLOBAL",2)~ + @2 /*I just wanted to tell you how beautiful you are.*/ + _bMazzybeautiful
	+ ~Global("_bMazzyRomance","GLOBAL",2)~ + @4 /*May I kiss you?*/ + _bMazzykiss
	+ ~Global("_bMazzyRomance","GLOBAL",2) Global("_bMazGiveFlower","GLOBAL",0)~ + @6 /*I just wanted to give you this flower.*/ + _bMazzyflower
	+ ~Global("_bMazPaladin","GLOBAL",0)~ + @8 /*In my experience, Mazzy, most halflings don't venture out into the world. Shouldn't you be at home, growing crops and raising children?*/ + _bMazzypaladin
	+ ~GlobalGT("PalaCureFound","GLOBAL",2) Global("_bMazzyPala","GLOBAL",0)~ + @20 /*You seem very fond of Pala. Are you and your sister close?*/ + _bMazPala
	+ ~AreaCheck("AR2000") Global("_bMazTrademeet","GLOBAL",0)~ + @31 /*You grew up here in Trademeet? What was it like?*/ + _bMazzyTradeM
	+ ~Global("_bMazzyHome","GLOBAL",1) !Dead("vara") Global("_bMazzyMom","GLOBAL",0)~ + @44 /*I saw your mother, Vara, cast several minor spells. Is she some sort of mage?*/ + _bMazMom
	+ ~Global("_bMazzyHome","GLOBAL",1) !Dead("pala") Global("_bMazSibling","GLOBAL",0)~ + @55 /*Do you have any other siblings?*/ + _bMazSib
	+ ~Global("_bMazzyHome","GLOBAL",1)  !Dead("pala") !Dead("Danno") Global("_bMazDanno","GLOBAL",0)~ + @57 /*Can you tell me about Danno?*/ + _bMazzyDanno
	+ ~Global("_bMazzyDad","GLOBAL",1) Global("_bAskedMazzyDad","GLOBAL",0)~ + @60 /*May I ask what happened to your father?*/ + _bMazAskDad
	+ ~Global("_bMazzyRomance","GLOBAL",2) !AreaType(CITY) AreaType(OUTDOOR) TimeOfDay(DAY) Global("_bMazDaySex","GLOBAL",0)~ + @64 /*I've always wanted to have sex in a place like this.*/ + _bMazDaySex
	+ ~Global("_bMazzyRomance","GLOBAL",2) CheckStatGT(Player1,10,FATIGUE)~ + @67 /*I want you, right here, right now.*/ + _bMazzyTooTired
	+ ~Dead("shadel") Dead("rngshad2d") Global("_bAskedMazPatrick","GLOBAL",0)~ + @69 /*Can you tell me about Patrick?*/ + _bMazPat
	+ ~Global("_bMazzyRomance","GLOBAL",2) Global("_bAskedMazPatrick","GLOBAL",1)~ + @72 /*Are you willing to say more about Patrick?*/ + _bMazPatAsk 
	+ ~Global("_bMazzyRomance","GLOBAL",2) Global("_bMazzyFlatter","GLOBAL",0)~ + @83 /*Just that I love everything about you. Your pleasant smile, your beautiful form, your deadly arrows...*/ + _bMazFlatter
	+ ~Global("_bMazzyRomance","GLOBAL",2) Global("_bMazSexBook","GLOBAL",0)~ + @85 /*Actually, there was something... Back in Candlekeep, there was this book with the most amazing pictures. The book was a manual about couples... uh... coupling and there were some things that seemed quite interesting.*/ + _bSexBook
	+ ~Global("_bMazzyRomance","GLOBAL",2) Global("_bMazFuture","GLOBAL",0)~ + @91 /*Yes, I was thinking about our future.*/ + _bMazzyFuture
	+ ~Global("_bMazzyRomance","GLOBAL",3) Global("_bMazzyForgives","GLOBAL",0) Global("_bMazzyCourted","GLOBAL",6)~ + @131 /*Mazzy, I was a fool to lose you. I want you by my side. Can you please forgive me?*/ + _bMazzyForgives
	+ ~Global("_bMazzyCourted","GLOBAL",2) Global("_bCNNoPromise","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",3)~ + @133 /*I have been thinking, Mazzy, and I wish to be with you after all. I will make any promise you desire as long as you are mine.*/ + _bMazzyFaithful
	+ ~Global("_bMazzyCourted","GLOBAL",2) Global("_bCNMarriage","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",3)~ + @139 /*I have been thinking, Mazzy, and while I still wish to marry you someday, I want to be with you more. I am willing to wait until you are ready, forever if that is what it takes.*/ + _bMazNoWed
	+ ~Global("_bMazzyCourted","GLOBAL",2) Global("_bCNNoSex","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",3)~ + @141 /*I have been thinking, Mazzy, and while I am still not certain if I would enjoy physical relations, I think that I would like to try.*/ + _bMazYesSex
	+ ~Global("_bMazzyCourted","GLOBAL",3) Global("_bCNBalks","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",3)~ + @143 /*I have been thinking, Mazzy, and I would like to be with you after all. I am sorry for refusing earlier.*/ + _bMazYesLove
	+ ~Global("_bMazzyInterest","GLOBAL",1)~ + @146 /*Mazzy, I have decided that I wish to court you after all.*/ + _bMazNoCourt
	+ ~GlobalTimerExpired("_bMazSexTimer","GLOBAL") Global("_bMazzyRomance","GLOBAL",2) !AreaType(DUNGEON)~ + @148 /*I want to talk about sex.*/ + _bMazSexTalk
	+ ~Global("_bMazzyOwesPala","GLOBAL",1)~ + @509 /*Why did your sister say that you took one of hers?*/ + _bMazzyPalaSexTalk
	+ ~Global("_bMazzyRomance","GLOBAL",2) Global("_bMazBedCount","GLOBAL",0) Global("_bMazF3Some","GLOBAL",0) Global("_bMazM3Some","GLOBAL",0)~ + @526 /*Mazzy, how many people have you slept with?*/ + _bMazzyBedCount
	+ ~Global("_bMazHeight","GLOBAL",0)~ + @545 /*Mazzy, how tall are you anyway?*/ + _bMazzyHeight
	+ ~Global("_bMazWeight","GLOBAL",0)~ + @568 /*Mazzy, how much do you weigh?*/ + _bMazzyWeight
	++ @576 /*Do you want to play a game?*/ + _bMazzyGames
	+ ~Global("_bMazViolent","GLOBAL",0)~ + @794 /*You know, Mazzy, for a warrior of virtue, you're a bit violent.*/ + _bMazzyViolent
	+ ~Global("_bMazTruesword","GLOBAL",0)~ + @801 /*Tell me how you became a Truesword of Arvoreen.*/ + _bMazzyTruesword
	++ @816 /*If you were the party leader right now, what would you have us do?*/ GOTO _bMazzyTheLeader
	+ ~Global("_bMazzyHalfOgres","GLOBAL",1) Global("_bMazzyHalfOgresTalk","GLOBAL",0)~ + @364 /*You were going to tell me a story about you and some half-ogres...*/ GOTO _bMazHalfOgreStory
	+ ~Global("_bMazzyRomance","GLOBAL",2) Global("_bMazOnlyLikesSexGlobal","GLOBAL",0)~ + @874 /*Sometimes I feel like our relationship is only about sex.*/ GOTO _bMazOnlyLikesSexComplaint
	+ ~Global("_bMazzyRomance","GLOBAL",2) Global("_bMazNoLikeRomance","GLOBAL",0)~ + @897 /*I feel that our romance is seriously lacking in romance.*/ GOTO _bMazzyNoLikeRomance
	+ ~Global("_bMazzyLoveDiscussion","GLOBAL",0)~ + @910 /*Would you be interested in a philosophical discussion about love?*/ GOTO _bMazzySpeaksLove1
	+ ~Global("_bMazzyLoveDiscussion","GLOBAL",1)~ + @1050 /*Can we continue our philosophical discussion on love?*/ GOTO _bMazzySpeaksLove26
	++ @574 /*Can we stop talking for a while? I need to focus on our quest.*/ + _bMazSilence
	+ ~Global("_bMazzyRomance","GLOBAL",2)~ + @128 /*Actually, Mazzy, I think it would be better if we were no longer together.*/ + _bMazzyBreakup	

	
CHAIN MAZZYJ _bMazzybeautiful
@3 /*Why thank you <CHARNAME>. That lightens my <DAYNIGHTALL>.*/
EXIT

CHAIN MAZZYJ _bMazzykiss
@5 /*Out in the open? Very well, one kiss in public. More kisses in private.*/
EXIT

CHAIN MAZZYJ _bMazzyflower
@7 /*Thank you, <CHARNAME>, I will attach it to my armour. One can never have too many flowers about one's person.*/
DO ~SetGlobal("_bMazGiveFlower","GLOBAL",1)~
EXIT

CHAIN MAZZYJ _bMazzypaladin
@9 /*That was the life laid out before me. I had only to accept it and it would be mine. But I could not live like that, seeing the same people and doing the same things every day, growing old within a few miles of the place where I was born.*/
DO ~SetGlobal("_bMazPaladin","GLOBAL",1)~
= @10 /*I wanted to see the world, <CHARNAME>! I wanted to test myself against those who sought to do others harm. You're going to think me foolish, but I dreamed of becoming a paladin.*/
END
	++ @11 /*I didn't think there were any halfling paladins.*/ + _bMazzypaladin1
	++ @12 /**snort* As if. You are only a halfling, Mazzy, and you should not try to be what you cannot.*/ + _bMazzypaladin2
	++ @13 /*Why would you want to be one of those sticks in the mud?*/ + _bMazzypaladin3
	++ @14 /*Good for you, Mazzy. Everyone should dream that big.*/ + _bMazzypaladin4

CHAIN MAZZYJ _bMazzypaladin2
@16 /*You are not the first to doubt me but I will persist nonetheless. Clearly, though, I should not expect much aid from you.*/
DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3)~
EXIT
	
APPEND MAZZYJ IF ~~ THEN  _bMazzypaladin1
	SAY @15 /*As far as I know, there are not. I will be the first.*/
	IF ~~ THEN + _bMazzypaladinEND
	END 	

	IF ~~ THEN _bMazzypaladin3
	SAY @17 /*Some paladins tend to be overly rule-bound, it is true, but they are still a force for good: protecting the innocent and making the world a better place. It is my calling.*/
	IF ~~ THEN + _bMazzypaladinEND
	END 
	
	IF ~~ THEN _bMazzypaladin4
	SAY @18 /*I have not been entirely successful so far, but I do not regret my choice.*/
	IF ~~ THEN + _bMazzypaladinEND
	END
	
	IF ~~ THEN _bMazzypaladinEND
	SAY @19 /*We can talk about this at greater length another time. For now let us continue.*/
	IF ~~ THEN EXIT
	END
END
	
CHAIN MAZZYJ _bMazPala
@21 /*Yes, we are, though she does not share my need for wandering. Pala dreams of a husband and a family, not of swords and battle, but she has always respected my desires just as I acknowledge hers.*/
= @22 /*Still, she is a powerful fighter and has participated in many skirmishes to protect our home. She is much like our father. He was a great fighter but he always said that true warriors stayed home to protect their loved ones.*/
= @23 /*I have not followed his wishes.*/
DO ~SetGlobal("_bMazzyPala","GLOBAL",1) SetGlobal("_bMazzyDad","GLOBAL",1)~
END
	++ @24 /*I am sure that he would still be proud of you.*/ + _bMazPala1 
	++ @25 /*He sounds amazing, as does Pala. I hope I can get to know her better.*/ + _bMazPala2
	+ ~Global("_bMazzyRomance","GLOBAL",2)~ + @26 /*I wonder what he would think of me.*/ + _bMazPala3
	
CHAIN MAZZYJ _bMazPala1
@27 /*I hope so, though I doubt it.*/
= @28 /*However, I do not wish to speak about this now. Let us go on travelling.*/
EXIT

CHAIN MAZZYJ _bMazPala2
@29 /*I would like that, <CHARNAME>.*/
EXIT

CHAIN MAZZYJ _bMazPala3 
@30 /*Oh, terrible things, most likely. My father never liked anyone who dared to court his daughters. But he taught us to think for ourselves as well and I believe he would have respected my choice.*/
EXIT


CHAIN MAZZYJ _bMazzyTradeM
@32 /*I imagine my childhood was much like any other. I played with my friends and spent time with my sister. My father was part of the local militia so he taught me how to fight. We often visited family in the countryside. It was a normal, happy existence. */
DO ~SetGlobal("_bMazTrademeet","GLOBAL",1) SetGlobal("_bMazzyDad","GLOBAL",1)~
END
	++ @33 /*That does sound nice.*/ EXIT
	++ @34 /*I wish my own childhood had been so idyllic.*/ + _bMazzyTradeM1
	++ @35 /*A normal, happy existence. I wonder what that would have been like.*/ + _bMazzyTradeM1
	
CHAIN MAZZYJ _bMazzyTradeM1
@36 /*You did not like Candlekeep? You have spoken of it fondly in the past.*/
END
	++ @37 /**shrug* It was the only home I ever knew.*/ + _bMazzyTradeM2
	++ @38 /*I was not unhappy. But sometimes I was quite bored.*/ + _bMazzyTradeM3
	++ @39 /*The scholars were more fond of books than children. I think that's why I became so close to Imoen.*/ + _bMazzyTradeM4
	
APPEND MAZZYJ IF ~~ THEN _bMazzyTradeM2
	SAY @40 /*The world is so small when we are children. It's amazing how large it actually is, how little we have seen. I could live one thousand years and not see all of it.*/
	IF ~~ THEN + _bMazzyTradeM5
	END
	
	IF ~~ THEN _bMazzyTradeM3
	SAY @41 /*There are worse things in life than boredom, <CHARNAME>.*/
	IF ~~ THEN + _bMazzyTradeM5
	END
	
	IF ~~ THEN _bMazzyTradeM4
	SAY @42 /*And with that you gained a life-long friend. One that you are willing to venture to the ends of the earth to save. That seems like a worthwhile childhood to me.*/
	IF ~~ THEN + _bMazzyTradeM5
	END
	
	IF ~~ THEN _bMazzyTradeM5
	SAY @43 /*But come, let us move on.*/
	IF ~~ THEN EXIT
	END
END

CHAIN MAZZYJ _bMazMom
@45 /*She is a conjurer and the only halfling spellcaster I know. It is because of her that I always believed I could become a paladin.*/
= @46 /*If you ask her, she will say that she is only a minor mage, but that was still a major feat for the daughter of a farmer. She prefers ordinary, useful magic: spells to till the soil, cook a meal, or repair a hole in the roof. Magic that is used to harm others only poisons the caster, that's what she always says.*/
DO ~SetGlobal("_bMazzyMom","GLOBAL",1)~
END
	++ @47 /*You mother sounds quite sensible. I think we'll get along.*/ + _bMazMom1 
	++ @48 /*From what I have seen, your mother may be right.*/ + _bMazMom2
	++ @49 /*That's why I do all my fighting with weapons instead. Just a good clean stabbing all around.*/ + _bMazMom3
	++ @50 /*But... that's my favorite kind of magic. We'd likely all be dead without offensive spells.*/ + _bMazMom4
	
CHAIN MAZZYJ _bMazMom1
@51 /*I hope so, <CHARNAME>.*/
EXIT

CHAIN MAZZYJ _bMazMom2
@52 /*I believe so too, <CHARNAME>, though I am also willing to inflict death when necessary.*/
EXIT

CHAIN MAZZYJ _bMazMom3 
@53 /**laughs* Some days I quite agree. But you probably shouldn't say that where she can hear.*/
EXIT

CHAIN MAZZYJ _bMazMom4
@54 /*Some days I quite agree. But you probably shouldn't say that where she can hear.*/
EXIT

CHAIN MAZZYJ _bMazSib
@56 /*No, it's just me and my sister. A small family for halflings, I know, but my mother says that two was plenty. We've certainly given her plenty of trouble through the years.*/
DO ~SetGlobal("_bMazSibling","GLOBAL",1)~
EXIT

CHAIN MAZZYJ _bMazzyDanno
@58 /*Danno is a strong fighter, a good soul, and while he is a bit foolish, he loves my sister very much. They met while training together as children in the guardhouse and have been inseparable ever since.*/
= @59 /*My father always loved Danno and trained him like the son he never had.*/
DO ~SetGlobal("_bMazDanno","GLOBAL",1) SetGlobal("_bMazzyDad","GLOBAL",1)~
EXIT

CHAIN MAZZYJ _bMazAskDad
@61 /*You want to know about my father? */
= @62 /*Well... I...*/
= @63 /*No, <CHARNAME>, not today. Another time.*/
DO ~SetGlobal("_bAskedMazzyDad","GLOBAL",1)~
EXIT

CHAIN MAZZYJ _bMazDaySex
@65 /*Lie together? Here?*/
= @66 /*Well, I do like the outdoors. The sun, the sky, the breeze. We will just have to find a place away from prying eyes and ears.*/
DO ~SetGlobal("_bMazDaySex","GLOBAL",1) StartMovie("rest") AdvanceTime(TWO_HOURS) ApplySpellRES("_BTIRED","Mazzy") ApplySpellRES("_BTIRED",Player1)~
EXIT

CHAIN MAZZYJ _bMazzyTooTired
@68 /*And I want you as well, <CHARNAME>, but you are in no condition for us to lie together. We should rest when we can and afterwards there will be time for us to play.*/
EXIT

CHAIN MAZZYJ _bMazPat
@70 /*He was my love, though I knew him only a short while. He was good and kind and beautiful and now he has fallen.*/
= @71 /*But he will always be in my heart. That is all I will say right now.*/
DO ~SetGlobal("_bAskedMazPatrick","GLOBAL",1)~
EXIT

CHAIN MAZZYJ _bMazPatAsk
@73 /*He is no more, <CHARNAME>. That is all that needs to be said.*/
= @74 /*I loved him and I lost him but I shall always carry the memory of his courage and honour with me.*/
DO ~SetGlobal("_bAskedMazPatrick","GLOBAL",2)~
END
	++ @75 /*Thank you, Mazzy. That is all I will ask.*/ EXIT
	++ @76 /*I would know about his life if it is not too painful. How did you meet, what was he like?*/ + _bMazPatAsk1 
	++ @77 /*But why did you love him in the first place?*/ + _bMazPatAsk1 
	++ @78 /*He was the love of your life but I know nothing about him. Will you tell me anything?*/ + _bMazPatAsk1
	
CHAIN MAZZYJ _bMazPatAsk1
@79 /*We met in Trademeet. Patrick was a dashing fighter, clad head to toe in magical Darkmail and wielding Duskblade, a legendary Halbard longer than he was tall. Powerful, handsome, valiant, kind-hearted, loyal to his friends and merciful to his enemies.*/
=@80 /*He always believed that our differences should be solved with words instead of violence whenever possible. That was how we fell so easily into the Shade Lord's trap. Some creatures should not be negotiated with.*/
=@81 /*When he died, he took a part of my heart with him.*/
=@82 /*That will have to be enough for today. Let us move on.*/
EXIT

CHAIN MAZZYJ _bMazFlatter
@84 /*Thank you, <CHARNAME>, I will accept your flattery.*/
DO ~SetGlobal("_bMazzyFlatter","GLOBAL",1)~
EXIT

CHAIN MAZZYJ _bSexBook
@86 /*And now you'd like to try them out?*/
DO ~SetGlobal("_bMazSexBook","GLOBAL",1)~
END
	++ @87 /*If you don't mind.*/ + _bSexBook1 
	++ @88 /*Well, I wouldn't want you to get bored.*/ + _bSexBook1
	++ @89 /*I might not be that flexible, but I think it's worth a shot.*/ + _bSexBook1
	
CHAIN MAZZYJ _bSexBook1
@90 /*I am always up for new things. Next time we are together you must tell me all about it.*/
EXIT
 
CHAIN MAZZYJ _bMazzyFuture
@92 /*What about us?*/
DO ~SetGlobal("_bMazFuture","GLOBAL",1)~
END
	++ @93 /*Mazzy, what do you want from me? From us?*/ + _bMazzyFuture1
	++ @94 /*Are you serious about us? Or is this just a bit of fun?*/ + _bMazzyFuture2
	++ @95 /*I was just thinking about how much I love you and that I would never give you up.*/ + _bMazzyFuture3
	
APPEND MAZZYJ IF ~~ THEN _bMazzyFuture1
	SAY @96 /*I want what we have now. This is the life I have always dreamed of. We are seeing the world, protecting those in need, and killing those who live to cause pain to innocents.*/
	= @97 /*I love the rush of battle, of pushing my body and my skills to their limits. I love seeing the joy of the people we aid when their prayers are finally answered. And I love falling asleep every night, exhausted and satisfied in your arms.*/
	IF ~~ THEN + _bMazzyFuture4
	END
	
	IF ~~ THEN _bMazzyFuture2
	SAY @98 /*I am having fun, <CHARNAME>, but I am also serious. This is the life I have always wanted. We are seeing the world, protecting those in need, and ridding these lands of those who live to cause pain to others.*/
	= @97 /*I love the rush of battle, of pushing my body and my skills to their limits. I love seeing the joy of the people we aid when their prayers are finally answered. And I love falling asleep every night, exhausted and satisfied in your arms.*/
	IF ~~ THEN + _bMazzyFuture4
	END
	
	IF ~~ THEN _bMazzyFuture3
	SAY @99 /*I love you too, <CHARNAME>, but I will not pretend that I can keep you forever. Change, after all, is the only constant in our lives. I know you are here today and that is enough for me.*/
	= @100 /*I am happy. This is the life I have always wanted, <CHARNAME>. We are seeing the world, protecting those in need, and ridding these lands of those who live to cause pain to others.*/
	= @97 /*I love the rush of battle, of pushing my body and my skills to their limits. I love seeing the joy of the people we aid when their prayers are finally answered. And I love falling asleep every night, exhausted and satisfied in your arms.*/
	IF ~~ THEN + _bMazzyFuture4
	END
	
	IF ~~ THEN _bMazzyFuture4
	SAY @101 /*Does that answer your concerns?*/
	++ @102 /*And the future?*/ + _bMazzyFuture5
	++ @103 /*What about tomorrow? And the next day after that?*/ + _bMazzyFuture5
	++ @104 /*I'm glad to hear it. I feel much the same.*/ EXIT
	END
	
	IF ~~ THEN _bMazzyFuture5
	SAY @105 /*The future will be what it will be. Odds are that we will both die bravely within the year.*/
	++ @106 /*Well, I hope we survive longer than that. I have enjoyed my time with you.*/ EXIT
	++ @107 /*Oh good, I feared you were getting emotionally attached.*/ + _bMazzyFuture6
	++ @108 /*You know what I mean. After this is all over, do you see a life with me?*/ + _bMazzyFuture7
	++ @109 /*As long as we fall together, I can live with that. Or die, as it may be.*/ + _bMazzyFuture8
	++ @110 /*I promise I'll avenge you, if you should perish first.*/ + _bMazzyFuture9
	END
	
	IF ~~ THEN _bMazzyFuture6
	SAY @111 /*I am emotionally attached, <CHARNAME>. I love and care for you and if you die or leave me, I will be sad and grieve.  But then I will move on. Do not worry, I do not wish to take anything that you do not want to give me, and if I want something that you cannot provide then I will simply say goodbye.*/
	= @112 /*As of right now we are together, and that is enough for me.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazzyFuture7
	SAY @113 /*I do not know. That will depend on what I decide I want from my life and what you want from yours. If our visions of the future are compatible, then we may stay together. If not, then we will not.*/
	= @114 /*All I can say for sure is that today we are together and I am happy. Let that be enough.*/
	++ @115 /*It is.*/ + _bMazzyFuture10
	++ @116 /*I suppose that will do for now.*/ + _bMazzyFuture11
	++ @117 /*I am sorry, but it's not.*/ + _bMazzyFuture12
	END
	
	IF ~~ THEN _bMazzyFuture10
	SAY @118 /*Thank you.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazzyFuture11
	SAY @119 /*"For now" is all I ask.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazzyFuture12
	SAY @120 /*Accept me on my terms or end things between us; those are your choices.*/
	++ @121 /*In that case, I will manage.*/ EXIT
	++ @122 /*If those are my only options then I will take what I can get.*/ EXIT
	++ @123 /*All right, Mazzy. I love you too much to leave.*/ EXIT
	++ @124 /*Then I must choose to say goodbye.*/ DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
	++ @125 /*Oh, we're down to ultimatums, are we? In that case, we are done.*/ DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bMazzyFuture8
	SAY @126 /*I expect we will fall together. If you die alone, I will do everything possible to raise you and I assume you will do the same.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazzyFuture9
	SAY @127 /*Vengeance is not required, <CHARNAME>. Just continue to live in a way that would make me proud.*/
	IF ~~ THEN EXIT
	END
END
	
CHAIN MAZZYJ _bMazzyBreakup
@790 /*Are you sure about this, <CHARNAME>? I do not wish to lose you.*/
END
	++ @791 /*Sorry, I misspoke. I wish to continue our relationship.*/ + _bMazzyBreakup2
	++ @792 /*Yes, I am certain. It is time for us to end.*/ + _bMazzyBreakup3
	
CHAIN MAZZYJ _bMazzyBreakup2
@793 /*I am glad to hear that. Try to speak more carefully next time.*/
EXIT

CHAIN MAZZYJ _bMazzyBreakup3
@129 /*Oh. Well... fine then. If that's what you want.*/
= @130 /*Now let's be off, I need to stab something.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~ 
EXIT

CHAIN MAZZYJ _bMazzyForgives
@132 /*Just this one time, <CHARNAME>. Once is a mistake, twice is a pattern.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",2) SetGlobal("_bMazzyForgives","GLOBAL",1)~ 
EXIT

CHAIN MAZZYJ _bMazzyFaithful
@134 /*I am glad to hear that, <CHARNAME>. If you can truly promise to be faithful, then I am still willing to be with you. Just do not change your mind again. And to answer the question I assume is on your lips, I would be happy to spend the night with you.*/
= @135 /*But first we must bathe so let us find an inn. We are both covered in dirt, filth, and blood and I would prefer to be at least somewhat clean before we know each other intimately.*/
DO ~SetGlobal("_bCNNoPromise","GLOBAL",2) SetGlobal("_bMazzyRomance","GLOBAL",1) SetGlobal("_bCNBalks","GLOBAL",1)~
END
	++ @136 /*That sounds good to me.*/ EXIT
	++ @137 /*I can't wait.*/ EXIT
	++ @138 /*To the inn!*/ EXIT
	
CHAIN MAZZYJ _bMazNoWed
@140 /*I am glad to hear that, <CHARNAME>. That day may never come, but I would be pleased to enjoy your company for now. And to answer the question I assume is on your lips, I would be happy to spend the night with you.*/
= @135 /*But first we must bathe so let us find an inn. We are both covered in dirt, filth, and blood and I would prefer to be at least somewhat clean before we know each other intimately.*/
DO ~SetGlobal("_bCNMarriage","GLOBAL",2) SetGlobal("_bMazzyRomance","GLOBAL",1) SetGlobal("_bCNBalks","GLOBAL",1)~
END
	++ @136 /*That sounds good to me.*/ EXIT
	++ @137 /*I can't wait.*/ EXIT
	++ @138 /*To the inn!*/ EXIT
	
CHAIN MAZZYJ _bMazYesSex
@142 /*I do not wish to make you uncomfortable, <CHARNAME>, but if you are truly willing, I would be glad to spend a night with you.*/
= @135 /*But first we must bathe so let us find an inn. We are both covered in dirt, filth, and blood and I would prefer to be at least somewhat clean before we know each other intimately.*/
DO ~SetGlobal("_bCNNoSex","GLOBAL",2) SetGlobal("_bMazzyRomance","GLOBAL",1) SetGlobal("_bCNBalks","GLOBAL",1)~
END
	++ @136 /*That sounds good to me.*/ EXIT
	++ @137 /*I can't wait.*/ EXIT
	++ @138 /*To the inn!*/ EXIT
	
CHAIN MAZZYJ _bMazYesLove 
@144 /*Thank you, <CHARNAME>. I appreciate the apology and I would still be glad to lie with you. However, my heart cannot take this back and forth. If you balk again, you will not have another chance to join me in my bed.*/
= @145 /*Let us find another inn. We are both covered in dirt, filth, and blood and I would still prefer to be clean before we know each other intimately.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",1)~
END
	++ @136 /*That sounds good to me.*/ EXIT
	++ @137 /*I can't wait.*/ EXIT
	++ @138 /*To the inn!*/ EXIT
	
CHAIN MAZZYJ _bMazNoCourt
@147 /*I am sorry <CHARNAME>. I will always care about you, but it is too late for that. You shall have to be content with friendship.*/
DO ~SetGlobal("_bMazzyInterest","GLOBAL",2)~
END


CHAIN MAZZYJ _bMazSexTalk
@149 /*Always a worthy topic. Communication is important in a relationship. What would you like to discuss?*/
END
	+ ~Gender(Player1,FEMALE)~ + @150 /*Could we change how we do it?*/ + _bMazFemChoices
	+ ~Gender(Player1,FEMALE) Global("_bMazF3Some","GLOBAL",0)~ + @1820 /*Would you ever be open to including a man with us?*/ + _bMazFFM3
	+ ~Gender(Player1,FEMALE) Global("_bMazF3Some","GLOBAL",1)~ + @293 /*I've been feeling the urge for a man again.*/ + _bMazFFM3Again
	+ ~Gender(Player1,FEMALE) Global("_bMazFFF3Some","GLOBAL",0)~ + @295 /*How would you feel about taking another woman to our bed?*/ + _bMazFFF3
	+ ~Gender(Player1,FEMALE) Global("_bMazFFF3Some","GLOBAL",1)~ + @323 /*I'd still like to invite another woman to join us.*/ + _bMazFFF3Again
	+ ~Gender(Player1,MALE) Global("_bBJTale","GLOBAL",0)~ + @325 /*I just need to know, how did you learn to do...what you do... with your mouth?*/ + _bMazBJTale 
	+ ~Gender(Player1,MALE) Global("_bBJTale","GLOBAL",1)~ + @361 /*I think I would like to hear about your experience with other men after all.*/ GOTO _bMazBJTale5
	+ ~Gender(Player1,MALE) Global("_bBJTale","GLOBAL",2)~ + @362 /*Are you willing to continue your story? You ended with your army buddies teaching you techniques.*/ GOTO _bMazBJTale2nd 
	+ ~Gender(Player1,MALE) !Global("_bMazzyOwesPala","GLOBAL",2) Global("_bBJTale","GLOBAL",3)~ + @363 /*So what happened after the circus?*/ GOTO _bMazBJTale3rd
	+ ~Gender(Player1,MALE)~ + @150 /*Could we change how we do it?*/ + _bMazMaleChoices
	+ ~Gender(Player1,MALE) Global("_bMazM3Some","GLOBAL",0)~ + @501 /*Would you be open to inviting another person to our bed?*/ + _bMazMF3Some
	+ ~Gender(Player1,MALE) Global("_bMazM3Some","GLOBAL",1)~ + @502 /*Can we discuss sleeping with someone else again?*/ + _bMazMF3Again
	++ @414 /*I changed my mind. I don't want to talk about this after all.*/ + _bMazMaleChoicesEnd

CHAIN MAZZYJ _bMazFemChoices
@151 /*Of course. What would you like to do next time we lie together?*/
END
	++ @152 /*Well, could I straddle your face as you lick me?*/ + _bMazFemLickYou
	++ @153 /*Would you straddle my face while I lick you?*/ + _bMazFemLickHer
	++ @154 /*Could we try facing in opposite directions so we can pleasure each other at the same time?*/ + _bMazFemBoth
	++ @155 /*When you use your mouth, can you put a finger or two inside me pressing upward and move them slowly?*/ + _bMazFemFinger
	++ @156 /*Could you use your mouth on my breasts while rubbing me below?*/ + _bMazFemBreast
	+ ~!Race(Player1,HALFLING) !Race(Player1,GNOME)~ + @157 /*While your mouth is between my legs, could you also play with my breasts?*/ + _bMazFemTall
	+ ~OR(2)Race(Player1,HALFLING) Race(Player1,GNOME)~ + @157 /*While your mouth is between my legs, could you also play with my breasts?*/ + _bMazFemShort
	++ @158 /*Okay, here goes: I want you to work your whole hand inside me, one finger at a time while your mouth is on me. We'll need some oil and it may take a while.*/ + _bMazFemKinky
	++ @159 /*I would like to spend more time kissing each other. You always busy your mouth elsewhere too soon.*/ + _bMazFemKiss
	++ @160 /*Could you kiss and touch me everywhere? Slowly and completely? Take as long as you want.*/ + _bMazFemKissAll
	++ @161 /*No offense meant to your fingers, but I sometimes I really want something else inside of me.*/ + _bMazFemOther
	++ @162 /*Could we just hold each other? Sometimes I don't want any more than that.*/ + _bMazFemHold
	++ @163 /*Nevermind. Let's keep going.*/ + _bMazFemChoiceEnd
	
APPEND MAZZYJ IF ~~ THEN _bMazFemLickYou
	SAY @164 /*Of course, just remember to let me breathe on occasion.*/
	++ @165 /*Very well.*/ + _bMazFemAnd
	++ @166 /*Just breathe through your nose. Pausing is not allowed.*/ + _bMazFemLickYou1
	END
	
	IF ~~ THEN _bMazFemLickYou1
	SAY @167 /*Hah, now you sound like me.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemAnd 
	SAY @168 /*Is there anything else?*/
	++ @152 /*Well, could I straddle your face as you lick me?*/ + _bMazFemLickYou
	++ @153 /*Would you straddle my face while I lick you?*/ + _bMazFemLickHer
	++ @154 /*Could we try facing in opposite directions so we can pleasure each other at the same time?*/ + _bMazFemBoth
	++ @155 /*When you use your mouth, can you put a finger or two inside me pressing upward and move them slowly?*/ + _bMazFemFinger
	++ @156 /*Could you use your mouth on my breasts while rubbing me below?*/ + _bMazFemBreast
	+ ~!Race(Player1,HALFLING) !Race(Player1,GNOME)~ + @157 /*While your mouth is between my legs, could you also play with my breasts?*/ + _bMazFemTall
	+ ~OR(2)Race(Player1,HALFLING) Race(Player1,GNOME)~ + @157 /*While your mouth is between my legs, could you also play with my breasts?*/ + _bMazFemShort
	++ @158 /*Okay, here goes: I want you to work your whole hand inside me, one finger at a time while your mouth is on me. We'll need some oil and it may take a while.*/ + _bMazFemKinky
	++ @159 /*I would like to spend more time kissing each other. You always busy your mouth elsewhere too soon.*/ + _bMazFemKiss
	++ @160 /*Could you kiss and touch me everywhere? Slowly and completely? Take as long as you want.*/ + _bMazFemKissAll
	++ @161 /*No offense meant to your fingers, but I sometimes I really want something else inside of me.*/ + _bMazFemOther
	++ @162 /*Could we just hold each other? Sometimes I don't want any more than that.*/ + _bMazFemHold
	++ @169 /*That's enough for now. Let's keep going.*/ + _bMazFemFinal
	END
	
	IF ~~ THEN _bMazFemLickHer
	SAY @170 /*Anytime you'd like.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemBoth
	SAY @171 /*Naturally. Although, I hope you do not mind me being on top.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemFinger
	SAY @172 /*That is a reasonable request, though I assume you wish me to wait until you are suitably wet before I start. Personally, I do not want anything inside me until I've finished at least once, sometimes twice*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemBreast
	SAY @173 /*I thought I had done that already, but I will gladly do it again.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemTall
	SAY @174 /*I tried last time, my love, but I simply cannot reach. I'm sorry. You can do it for me though.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemShort
	SAY @175 /*Yes, of course, anything to promote shoulder flexibility.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemKinky
	SAY @176 /*Oh... wow... that is quite a request. Very well, we will attempt this, but I am not sure we will succeed.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemKiss
	SAY @177 /*Sorry, I forgot. I've spent the last however-many years laying only with men and they have always wanted me elsewhere as fast as possible.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemKissAll
	SAY @178 /*I will meander my way along your skin for hours. Days if you prefer.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemOther
	SAY @179 /*I am sure there are merchants who sell a variety of options. We can watch for them as we travel.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemHold
	SAY @180 /*Of course, my lady. A knight always aims to please.*/
	IF ~~ THEN + _bMazFemAnd
	END
	
	IF ~~ THEN _bMazFemChoiceEnd
	SAY @181 /*I suppose this is not the time. However, please do not hesitate to speak up in the future about your preferences.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazFemFinal
	SAY @182 /*Of course, <CHARNAME>, discussing this was my pleasure. Although, I hope you don't wait too long to call a rest. We should put these words into practice after all.*/
	IF ~~ THEN EXIT
	END
END

APPEND MAZZYJ IF ~~ THEN _bMazFFM3
	SAY @183 /*To be honest with you, my love, sometimes all I want is to have a man inside me. But it would depend on the man. I am afraid I am picky at times.*/
	IF ~~ THEN DO ~SetGlobal("_bMazF3Some","GLOBAL",1)~ + _bMaz3SomeChoose
	END

	IF ~~ THEN _bMaz3SomeChoose
	SAY @184 /*Who would you like to ask?*/
	+ ~IfValidForPartyDialogue("DORN") Global("_bCNChoosesDorn3","GLOBAL",0)~ + @185 /*Dorn.*/ + _bMazDorn3SomeNo
	+ ~IfValidForPartyDialogue("Korgan") Global("_bCNChoosesKorgan3","GLOBAL",0)~ + @186 /*Korgan.*/ + _bMazKorgan3SomeNo
	+ ~IfValidForPartyDialogue("Edwin") Global("_bCNChoosesEdwin3","GLOBAL",0) Gender("Edwin",MALE)~ + @187 /*Edwin.*/ + _bMazEdwin3SomeNo
	+ ~IfValidForPartyDialogue("Minsc") Global("_bCNChoosesMinsc3","GLOBAL",0)~ + @188 /*Minsc.*/ + _bMazMinsc3SomeNo
	+ ~IfValidForPartyDialogue("Cernd") Global("_bCNChoosesCernd3","GLOBAL",0) Global("CerndPlot","GLOBAL",0)~ + @189 /*Cernd.*/ + _bMazCernd3SomeNo
	+ ~IfValidForPartyDialogue("Cernd") Global("_bCNChoosesCernd3","GLOBAL",0) !Global("CerndPlot","GLOBAL",0)~ + @189 /*Cernd.*/ + _bMazCerndWifeNo
	+ ~IfValidForPartyDialogue("RASAAD") Global("_bCNChoosesRasaad3","GLOBAL",0)~ + @190 /*Rasaad.*/ + _bMazRas3SomeNo
	+ ~IfValidForPartyDialogue("Keldorn") Global("_bCNChoosesKeldorn3","GLOBAL",0)~ + @191 /*Keldorn.*/ + _bMazKeld3SomeNo
	+ ~IfValidForPartyDialogue("Anomen") Global("_bCNChoosesAnomen3","GLOBAL",0) !Global("AnomenIsKnight","GLOBAL",1)~ + @192 /*Anomen.*/ + _bAno3SomeNo
	+ ~IfValidForPartyDialogue("Anomen") Global("_bCNChoosesAnomen3","GLOBAL",0) Global("_bCNWantsAno3Some","GLOBAL",0) Global("AnomenIsKnight","GLOBAL",1)~ + @192 /*Anomen.*/ + _bAno3SomeYes
	+ ~IfValidForPartyDialogue("Anomen") Global("_bCNChoosesAnomen3","GLOBAL",1)~ + @1920 /*I would like Anomen again.*/ + _bAno3SomeAgain
	+ ~IfValidForPartyDialogue("Anomen") Global("_bCNChoosesAnomen3","GLOBAL",0) Global("_bCNWantsAno3Some","GLOBAL",1)~ + @193 /*I already told you that I wanted Anomen.*/ + _bAno3SomeDuh
	+ ~IfValidForPartyDialogue("Jan") Global("_bCNChoosesJan3","GLOBAL",0)~ + @194 /*Jan.*/ + _bJan3Some
	+ ~IfValidForPartyDialogue("Jan") Global("_bCNChoosesJan3","GLOBAL",1)~ + @1940 /*Jan again!*/ + _bJan3SomeAgain
	+ ~IfValidForPartyDialogue("HaerDalis") Global("_bCNChoosesHD3","GLOBAL",0) Global("_bCNWantsHD3Some","GLOBAL",0) !Global("_bHDChoseAerie","GLOBAL",1) !Global("_bDornSaidUggh","GLOBAL",1) OR(2) !Global("_bNotWODorn","GLOBAL",1) IfValidForPartyDialog("Dorn")~ + @195 /*Haer'Dalis.*/ + _bHD3Some
	+ ~IfValidForPartyDialogue("HaerDalis") Global("_bCNWantsHD3Some","GLOBAL",0) InPartyAllowDead("Aerie") Global("_bHDChoseAerie","GLOBAL",1) !Global("_bDornSaidUggh","GLOBAL",1) OR(2) !Global("_bNotWODorn","GLOBAL",1) IfValidForPartyDialog("Dorn")~ + @195 /*Haer'Dalis.*/ + _bHD3SomeAerie	
	+ ~IfValidForPartyDialogue("HaerDalis") !InPartyAllowDead("Aerie") Global("_bCNWantsHD3Some","GLOBAL",0) Global("_bHDChoseAerie","GLOBAL",1) !Global("_bDornSaidUggh","GLOBAL",1) OR(2) !Global("_bNotWODorn","GLOBAL",1) IfValidForPartyDialog("Dorn")~ + @195 /*Haer'Dalis.*/ + _bHD3SomeAerieGone
	+ ~IfValidForPartyDialogue("HaerDalis") Global("_bCNChoosesHD3","GLOBAL",1) !Global("_bHDChoseAerie","GLOBAL",1) !Global("_bDornSaidUggh","GLOBAL",1) OR(2) !Global("_bNotWODorn","GLOBAL",1) IfValidForPartyDialog("Dorn")~ + @1950 /*Haer'Dalis again.*/ + _bHD3SomeAgain
	+ ~IfValidForPartyDialogue("HaerDalis") Global("_bCNChoosesHD3","GLOBAL",0) Global("_bCNWantsHD3Some","GLOBAL",1) !Global("_bDornSaidUggh","GLOBAL",1) OR(2) !Global("_bNotWODorn","GLOBAL",1) IfValidForPartyDialog("Dorn")~ + @196 /*Haer'Dalis, of course. I told you that earlier.*/ + _bHD3SomeDuh
	+ ~IfValidForPartyDialogue("Valygar") Global("_bCNChoosesValyg3","GLOBAL",0)~ + @197 /*Valygar.*/ + _bValg3Some
	+ ~IfValidForPartyDialogue("Valygar") Global("_bCNChoosesValyg3","GLOBAL",1)~ + @1970 /*I want Valygar again.*/ + _bValg3SomeAgain
	++ @198 /*Nevermind. I can't think of anyone.*/  + _bNo3Some
	END
	
	IF ~~ THEN _bMazDorn3SomeNo
	SAY @199 /*Dorn? He's an evil, vile murderer. That he is even in our group makes my insides churn.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesDorn3","GLOBAL",1)~ + _bMazNewChoice
	END
	
	IF ~~ THEN _bMazNewChoice //If this reads funny in game, can add this line onto all the no responses instead.
	SAY @200 /*Choose someone else.*/
	IF ~~ THEN + _bMaz3SomeChoose
	END
	
	IF ~~ THEN _bMazKorgan3SomeNo
	SAY @201 /*Korgan? Korgan!? Absolutely not. He is a drunkard. A rapist. A villain. A self-serving mercenary of the worst sort.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesKorgan3","GLOBAL",1)~ + _bMazNewChoice
	END
	
	IF ~~ THEN _bMazEdwin3SomeNo
	SAY @202 /*You must be joking. I would not sleep with Edwin if he was the last man on earth and for all the gold in the world.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesEdwin3","GLOBAL",1)~ + _bMazNewChoice
	END	
	
	IF ~~ THEN _bMazMinsc3SomeNo
	SAY @203 /*Minsc is sweet, and Boo is adorable, but the man is twice my size and goes berserk when he's excited. That seems a bad idea.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesMinsc3","GLOBAL",1)~ + _bMazNewChoice
	END
	
	IF ~~ THEN _bMazCernd3SomeNo
	SAY @204 /*He's married.*/
	++ @205 /*No he's not.*/ + _bMazCernd3SomeNo2
	++ @206 /*How do you know?*/ + _bMazCernd3SomeNo2
	END
	
	IF ~~ THEN _bMazCernd3SomeNo2
	SAY @207 /*I have seen enough married men to know one when I see one. He's married, but he abandoned his wife. Trust me on this and choose someone else.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesCernd3","GLOBAL",1)~ + _bMaz3SomeChoose
	END
	
	IF ~~ THEN _bMazCerndWifeNo
	SAY @208 /*Cernd? A man who abandoned his wife? Absolutely not.*/
	++ @209 /*I guess you're right.*/ + _bMazCerndWifeNo1
	++ @210 /*So he's a bad husband. He might still be a good lover.*/ + _bMazCerndWifeNo2
	END
	
	IF ~~ THEN _bMazCerndWifeNo1
	SAY @211 /*Of course I am. Choose someone else.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesCernd3","GLOBAL",1)~ + _bMaz3SomeChoose
	END
	
	IF ~~ THEN _bMazCerndWifeNo2
	SAY @212 /*No, <CHARNAME>. Choose someone else.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesCernd3","GLOBAL",1)~ + _bMaz3SomeChoose
	END
	
	IF ~~ THEN _bMazRas3SomeNo
	SAY @213 /*Rasaad was once a good man but he has gone down too dark a path of late for me to wish him with us.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesRasaad3","GLOBAL",1)~ + _bMazNewChoice
	END
	
	IF ~~ THEN _bMazKeld3SomeNo
	SAY @214 /*No, <CHARNAME>. While I admire Keldorn greatly and he has been one of my heroes for years, I truly do not think of him like that.*/
	IF ~Global("_bMazNotKeld","GLOBAL",0)~ THEN DO ~SetGlobal("_bCNChoosesKeldorn3","GLOBAL",1)~ + _bMazNewChoice
	IF ~Global("_bMazNotKeld","GLOBAL",1)~ THEN DO ~SetGlobal("_bCNChoosesKeldorn3","GLOBAL",1)~ + _bMazKeld3SomeNo1
	END
	
	IF ~~ THEN _bMazKeld3SomeNo1
	SAY @215 /*Also, that would be most inappropriate considering that you left the man for me. Please choose someone else.*/
	IF ~~ THEN +  _bMaz3SomeChoose
	END
	
	IF ~~ THEN _bAno3SomeNo
	SAY @216 /*That self-serving, arrogant, excuse for a priest of Helm? Absolutely not.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesAnomen3","GLOBAL",1)~ + _bMazNewChoice
	END
	
	IF ~~ THEN _bAno3SomeYes
	SAY @217 /*Anomen... When we first started travelling together, I was not fond of him, but I admit he has matured.*/
	= @218 /*Yes, we can give him a try, assuming that he is willing to listen.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesAnomen3","GLOBAL",1) SetGlobal("_brestcheck","GLOBAL",2)~ + _bAno3SomeYes1
	END
	
	IF ~~ THEN _bAno3SomeDuh
	SAY @219 /*Yes, I suppose you did. I admit, I was not fond of him when we first met, but I admit he has matured.*/
	= @220 /*All right, I agree. We can ask him to share our bed, assuming that he is willing to listen to instructions properly.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesAnomen3","GLOBAL",1) SetGlobal("_brestcheck","GLOBAL",2)~ + _bAno3SomeYes1
	END
	
	IF ~~ THEN _bAno3SomeYes1
	SAY @221 /*Excuse me, Anomen. <CHARNAME> and I have a proposal for you. We wish you to join us in our bed for one night, doing exactly as we ask. Are you interested? Can you do that?*/
	IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOMENJ _bAno3SomeFFMHeckYes
	IF ~Gender(Player1,FEMALE) !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOMENJ _bAno3SomeFFMYes
	IF ~Gender(Player1,MALE) !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOMENJ _bAno3SomeFMMYes
	END
	
	IF ~~ THEN _bJan3Some
	SAY @229 /*Jan? Really? I did not expect that. He is somewhat old and I am not sure he is right in the head.*/
	++ @230 /*Age just means experience and you can't deny that his hands are talented.*/ + _bJan3Some1
	+ ~Gender(Player1,FEMALE)~ + @231 /*He's an eccentric bachelor, but I believe he likes women. Please! He won't refuse two young women together and I have always wanted him.*/ + _bJan3Some1
	+ ~Gender(Player1,MALE)~ + @232 /*He may be eccentric, but I believe he won't refuse us. Or at least, it cannot hurt to ask.*/ + _bJan3Some1
	END
	
	IF ~~ THEN _bJan3Some1
	SAY @233 /*Very well, but only if he does what we say and you take him first. I will reserve judgment until then.*/
	IF ~~ THEN DO ~SetGlobal("_brestcheck","GLOBAL",2)~ + _bJan3Some2
	END
	
	IF WEIGHT #-1 ~Global("_bJanAwesome","GLOBAL",1)~ THEN _bJanApology
	SAY @248 /*Jan, I owe you an apology. When you stop talking, you are actually as talented as you claim. You were a wonderful addition to our bed and I would not be adverse to doing this again.*/
	IF ~~ THEN DO ~SetGlobal("_bJanAwesome","GLOBAL",2)~ EXIT
	END
	
	IF ~~ THEN _bHD3Some
	SAY @254 /*Well he is handsome and somewhat charming, though he tries too hard...*/
	= @255 /*...very well, he will do.*/
	IF ~~ THEN + _bHD3Some1
	END
	
	IF ~~ THEN _bHD3SomeAerie
	SAY @256 /*He already told us no, <CHARNAME>, and as long as we are travelling with Aerie, I do not think he'll change his mind.*/
	= @257 /*Perhaps the fickle bard is not so fickle after all.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bHD3SomeAerieGone
	SAY @258 /*Now that Aerie is gone, I suppose he may be willing. Very well, we shall ask.*/
	IF ~Global("_bCNChoosesHD3","GLOBAL",0) ~ THEN + _bHD3Some1
	IF ~Global("_bCNChoosesHD3","GLOBAL",1)~ THEN + _bHD3SomeAgain
	END
	
	IF ~~ THEN _bHD3SomeDuh
	SAY @259 /*So you did, <CHARNAME>. I can admit that he is handsome and somewhat charming... He tries too hard in my opinion but there must be some substance beneath the flash for you to love him as you do.*/
	= @260 /*Very well, we will ask him to share our bed tonight.*/
	IF ~~ THEN + _bHD3Some1
	END
	
	IF ~~ THEN _bHD3Some1
	SAY @261 /*Excuse me, Haer'Dalis? <CHARNAME> and myself were wondering if you would like to join us in our bed when we stop to rest. We think you would be a worthy addition to our nightly activities.*/
	IF ~!Global("_bHDDORNROMANCE","GLOBAL",2) InPartyAllowDead("Aerie") !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN HAERDAJ _bHD3SomeNo
	IF ~!Global("_bHDDORNROMANCE","GLOBAL",2) OR(3) !InPartyAllowDead("Aerie") Global("LS_HaerDalisRomanceActive","GLOBAL",2) !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN HAERDAJ _bHD3SomeYes
	IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN EXTERN HAERDAJ _bHD3SomeDorn
	IF ~!IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN EXTERN HAERDAJ _bHD3SomeDornAsk
	END
	
	IF ~~ THEN _bValg3Some
	SAY @277 /*Yes, that is who I was thinking of exactly.*/
	= @278 /*Squire Valygar! <CHARNAME> and I have a job for you. Would you join us this night and do everything we require?*/
	IF ~~ THEN EXTERN VALYGARJ _bValg3SomeYes
	END
	
	IF ~~ THEN _bNo3Some
	SAY @292 /*Maybe we will find someone more acceptable in the future. We should continue travelling for now.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazFFM3Again
	SAY @294 /*Of course, my love. I would be glad to discuss our options.*/
	IF ~~ THEN + _bMaz3SomeChoose
	END
END
	
CHAIN MAZZYJ _bAno3SomeAgain
@226 /*With pleasure, he was the perfect model of chivalry before.*/
= @227 /*Oh, Anomen, would you mind joining us? We once again have need of you.*/
== ANOMENJ @228 /*Of course, my lady. A knight must always serve when needed.*/
DO ~SetGlobal("_brestcheck","GLOBAL",2) RestParty() ApplySpellRES("_BTIRED","Mazzy") ApplySpellRES("_BTIRED",Player1) ApplySpellRES("_BTIRED","Anomen")~ 
EXIT
	
APPEND ANOMENJ IF ~~ THEN _bAno3SomeFFMHeckYes
	SAY @222 /*Fair knight, my ears hear your words with joy. Of course I will join you and I hope that my efforts prove worthy of the trust you place in me.*/
	= @223 /*I have been waiting for this ever since <CHARNAME> spoke of <PRO_HISHER> love and we agreed to share.*/
	IF ~~ THEN DO ~RestParty() ApplySpellRES("_BTIRED","Mazzy") ApplySpellRES("_BTIRED",Player1) ApplySpellRES("_BTIRED","Anomen")~ EXIT
	END
	
	IF ~~ THEN _bAno3SomeFFMYes
	SAY @224 /*Fair knight, you speak most bluntly. I was not expecting such a direct invitation, but perhaps this once we can put aside propriety.*/
	= @225 /*I will join you as requested and I hope that my poor efforts prove worthy of the trust that both of you have placed in me.*/
	IF ~~ THEN DO ~RestParty() ApplySpellRES("_BTIRED","Mazzy") ApplySpellRES("_BTIRED",Player1) ApplySpellRES("_BTIRED","Anomen")~ EXIT
	END
	
	IF ~~ THEN _bAno3SomeFMMYes
	SAY @234 /*You speak most bluntly, Mazzy. I was not expecting such an invitation.*/
	= @235 /*However, as you seem intent on casting aside propriety this <DAYNIGHTALL>, then yes, I believe that I will join you. I only hope that my poor efforts prove worthy of the trust that you have placed in me.*/
	IF ~~ THEN DO ~RestParty() ApplySpellRES("_BTIRED","Mazzy") ApplySpellRES("_BTIRED",Player1) ApplySpellRES("_BTIRED","Anomen")~ EXIT
	END
END

CHAIN MAZZYJ _bJan3Some2
@236 /*Jan! A word.*/
== JANJ @237 /*You must be thinking of someone else, Mazzy. When have I been known to say only one word, when there are so many words to choose from? In fact this reminds me of the time...*/
== MAZZYJ @238 /*No. Be silent and listen. Jan, <CHARNAME> wants you to join us tonight, sexually, and I have acquiesced.*/
= @239 /*You must do exactly what we say, exactly as we say it. We are making no promises, we will not be in any sort of relationship, and it may never happen again.*/
= @240 /*If it does happen again, it will only be at our discretion, and we do not want to be bothered or pestered about it ever. In fact, it would be best if you join us and then forget it ever happened.*/
== JANJ @241 /*Well, Mazzy, that is the most you've said to me since we started traveling together. If you keep this up, you will become more loquacious than my second-cousin. She was never given a name at birth and made up for it by...*/
== MAZZYJ @242 /*You are already making me regret this. I have stated our proposition and I require an answer!*/
== JANJ @243 /*Yes.*/
== MAZZYJ @244 /*Just, “yes”? No, “Yes, and I have a story...” or, “Wow that reminds me of the time...”, or some story about turnips?!*/
== JANJ IF ~Gender(Player1,FEMALE)~ THEN @245 /*Two beautiful lasses just asked me to join them for a night. Is there really anything else that needs to be said?*/
== JANJ IF ~Gender(Player1,MALE)~ THEN @246 /*A beautiful lass and a handsome lad just asked me to join them for a night. Is there really anything else that needs to be said?*/
== MAZZYJ @247 /*I suppose not. Let us get this over with.*/
DO ~SetGlobal("_bCNChoosesJan3","GLOBAL",1) RestParty() ApplySpellRES("_BTIRED","Mazzy") ApplySpellRES("_BTIRED",Player1) ApplySpellRES("_BTIRED","Jan")~
EXIT

CHAIN MAZZYJ _bJan3SomeAgain
@249 /*I will not object to that. Where is that old lecher?*/
= @250 /*Jan. We require your talents again. Keep silent and prepare yourself.*/
== JANJ IF ~Gender(Player1,FEMALE)~ THEN @251 /*Prepare myself how, Mazzy? Prepare for camp? Prepare for an assault on our lives by monsters while we are otherwise distracted? Prepare for an evening with two domineering but enchanting lasses who are determined to work me to death until my old bones crack and my heart fails?*/
== JANJ IF ~Gender(Player1,MALE)~ THEN @252 /*Prepare myself how, Mazzy? Prepare for camp? Prepare for an assault on our lives by monsters while we are otherwise distracted? Prepare for an evening with two domineering but delectable young folk who are determined to work me to death until my old bones crack and my heart fails?*/
== MAZZYJ @253 /*All of the above, Jan. Prepare for everything.*/
DO ~RestParty() ApplySpellRES("_BTIRED","Mazzy") ApplySpellRES("_BTIRED",Player1) ApplySpellRES("_BTIRED","Jan")~
EXIT

CHAIN HAERDAJ _bHD3SomeNo
@262 /*This sparrow is intrigued but must decline. My dove would sing with sorrow if I left her to seek pleasure with other wings out in the dark.*/
= @263 /*Ask again, my fierce hawk, if my dove and I should ever part.*/
DO ~SetGlobal("_bHDChoseAerie","GLOBAL",1)~
EXIT

CHAIN HAERDAJ _bHD3SomeDorn
@2620 /*Hmm, a most intriguing proposition. This sparrow would be glad to soar the winds with raptors... a tinge of danger always sharpens the pleasures of the flesh.*/
== DORNJ @2621 /*What is the meaning of this, tiefling? I knew you were a fickle creature, but this is a step too far!*/
== HAERDAJ @2622 /*Your fury is misaimed, my vulture... and rather baffling. Did you not wish to lay with <CHARNAME>? Only a blind man or a fool would invite one of us without the other and you have often expressed your admiration for our brave leader's form.*/
== DORNJ IF ~Global("DornRomanceActive","GLOBAL",3)~ THEN @2624 /*<CHARNAME> had <PRO_HISHER> chance already. I will not go crawling back.*/
== DORNJ IF ~!Global("DornRomanceActive","GLOBAL",3)~ THEN @2625 /*If it were <CHARNAME> alone, that might be acceptable.*/
== MAZZYJ @2626 /*I will not sleep with the blackguard! I would sooner stab myself with my own blade!*/
== DORNJ @2627 /*The disgust is mutual, halfling.*/ 
DO ~SetGlobal("_bDornSaidUggh","GLOBAL",1)~
== HAERDAJ @2628 /*Ah...  it seems this bard misjudged the situation. I apologize, <CHARNAME>, but you shall have to seek your pleasure without this sparrow at your side.*/
EXIT

CHAIN HAERDAJ _bHD3SomeDornAsk
@2629  /*This sparrow is intrigued but must decline the invitation. My grim vulture is most possessive and so my wings must stay within this nest while he cannot join in.*/
DO ~SetGlobal("_bNotWODorn","GLOBAL",1)~
= @2630 /*Perhaps you might ask again another time.*/
EXIT


CHAIN HAERDAJ _bHD3SomeYes
@264 /*A hawk and raven ask a sparrow to play? But can a little sparrow survive the games of giants or will he be devoured alive?*/
== MAZZYJ @266 /*You will be devoured alive. Are you in or not?*/
== HAERDAJ @267 /*This sparrow is not yet in, but I hope to be soon. And if I should die this day, I will look back on my end and I will exclaim...*/
= @268 /*..."It was a fitting death to a life lived well."*/
== HAERDAJ IF ~Global("LS_HaerDalisRomanceActive","GLOBAL",2)~ THEN @265 /*The raven alone has proved to be consuming in our physical delights. The three of us will burn with ecstasy as sharp as the blades I carry at my side.*/
== MAZZYJ @269 /*<CHARNAME>, I cannot believe what we are about to get ourselves into, but let's do it. He is who-knows-how-old; maybe he's picked up a few tricks along the way.*/
DO ~SetGlobal("_bCNChoosesHD3","GLOBAL",1) RestParty()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bHDAwesome","GLOBAL",1) !Global("LS_HaerDalisRomanceActive","GLOBAL",2)~ THEN MAZZYJ _bHDApology
@270 /*Haer'Dalis, we approve. I think I speak for the both of us when I say that you should become a permanent addition to our bed.*/
== HAERDAJ @271 /*This sparrow cannot be caged, my hawk, or its beak would droop and its colors dull. But if you call, I will come.*/
DO ~SetGlobal("_bHDAwesome","GLOBAL",2)~ 
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bHDAwesome","GLOBAL",1) Global("LS_HaerDalisRomanceActive","GLOBAL",2)~ THEN MAZZYJ _bHDApology2
@272 /*Haer'Dalis, I heartily approve. I now understand exactly what <CHARNAME> sees in you. We will likely ask you to join us in our bed again.*/
== HAERDAJ @273 /*This sparrow sings most sweetly with my raven but I am glad to hear my efforts did not disappoint. I would be pleased to share such delightful tricks from across the planes again another time. Once my plumage has recovered from such sweet devouring, simply call and I will come.*/
DO ~SetGlobal("_bHDAwesome","GLOBAL",2)~ 
EXIT

APPEND MAZZYJ IF ~~ THEN _bHD3SomeAgain
SAY @274 /*A good choice. Where has that mad bard gone?*/
= @275 /*Haer'Dalis, <CHARNAME> and I require your services again.*/
	IF ~InPartyAllowDead("Aerie") !Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2) !Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN EXTERN HAERDAJ  _bHD3SomeNo
	IF ~!Global("_bHDDORNROMANCE","GLOBAL",2) OR(3) !InPartyAllowDead("Aerie") Global("LS_HaerDalisRomanceActive","GLOBAL",2) !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN HAERDAJ _bHD3SomeAgainYes
	IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN EXTERN HAERDAJ _bHD3SomeDorn
	IF ~!IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN EXTERN HAERDAJ _bHD3SomeDornAsk
	END
END

CHAIN HAERDAJ _bHD3SomeAgainYes
@276 /*Of course, my hawk. As promised, this sparrow will answer your sweet call.*/
DO ~RestParty() ApplySpellRES("_BTIRED","HaerDalis")~
EXIT

CHAIN VALYGARJ _bValg3SomeYes
@279 /*Is sleeping with their knight one of the jobs of a squire? I haven't heard of this before.*/
== MAZZYJ IF ~Gender(Player1,FEMALE)~ THEN @280 /*Well, most knights and squires are men, Valygar, though you might be surprised how rarely that stops them. We, however, are two attractive women, and while we are enjoying each other's company tremendously, we have been thinking that you would make an exciting addition.*/
== MAZZYJ IF ~Gender(Player1,MALE)~ THEN @281 /*Although most knights and squires are men, you might be surprised how rarely that stops them. And if you truly are not interested, we need speak no more of this. However, while <CHARNAME> and I have been enjoying each other's company tremendously, we believe that you would make an exciting addition to our bed.*/
== MAZZYJ @282 /*If you perform your duties well, it may even become a regular occurrence.*/
== VALYGARJ IF ~Gender(Player1,FEMALE)~ THEN @283 /*As my ladies command.*/
== VALYGARJ IF ~Gender(Player1,MALE)~ THEN @284 /*You need not fear my sensibilities. I am more interested in a person than the trappings that they wear.*/
== VALYGARJ @285 /*I would be honored to join you both this <DAYNIGHTALL>.*/
DO ~SetGlobal("_bCNChoosesValyg3","GLOBAL",1) RestParty() ApplySpellRES("_BTIRED","Mazzy") ApplySpellRES("_BTIRED",Player1) ApplySpellRES("_BTIRED","Valygar")~
EXIT

CHAIN MAZZYJ _bValg3SomeAgain
@286 /*As do I.*/
== VALYGARJ @287 /*It is a good thing I am here then.*/
== MAZZYJ @288 /*It really is ungentlemanly to sneak up on us like that.*/
== VALYGARJ @289 /*My apologies, mistress.*/
== MAZZYJ @290 /*I am only joking. Your ability to slip in and out unnoticed is one of your many fine attributes. You are everything a knight could want.*/
= @291 /*Now, let us set up camp and get out of our clothes.*/
DO ~RestParty() ApplySpellRES("_BTIRED","Mazzy") ApplySpellRES("_BTIRED",Player1) ApplySpellRES("_BTIRED","Valygar")~
EXIT

APPEND MAZZYJ IF ~~ THEN _bMazFFF3
	SAY @296 /*Perhaps. <CHARNAME>. But I have never been fond of sharing my lovers with other women.*/
	IF ~~ THEN DO ~SetGlobal("_bMazFFF3Some","GLOBAL",1)~ + _bMazFFChoice
	END
	
	IF ~~ THEN _bMazFFChoice
	SAY @297 /*Who did you have in mind?*/
	+ ~Global("_bMazzyVicFriends","GLOBAL",2) IfValidForPartyDialogue("Viconia") Global("_bVicMaz3Some","GLOBAL",0)~ + @298 /*How about Viconia? I know you two are close.*/ + _bMazFFFVic
	+ ~Global("_bCNWantsVic3Some","GLOBAL",1) Global("_bMazzyVicFriends","GLOBAL",2) !Global("_bMVSexTalk3","GLOBAL",2) IfValidForPartyDialogue("Viconia") Global("_bVicMaz3Some","GLOBAL",0)~ + @299 /*I want Viconia. I already told you that.*/ + _bMazFFFVic
	+ ~IfValidForPartyDialogue("Edwin") Global("_bCNChoosesEdwin3","GLOBAL",0) Gender("Edwin",FEMALE)~ + @300 /*What about Edwin? He makes an attractive lady and it's a once-in-a-lifetime opportunity.*/ + _bMazFFFNotEd
	+ ~IfValidForPartyDialogue("_bClara")~ + @301 /*Clara.*/ + _bMazFFFNotLes
	+ ~IfValidForPartyDialogue("Aerie") !Global("_bMazNotAerie","GLOBAL",1)~ + @302 /*Aerie.*/ + _bMazFFFNotLes
	+ ~IfValidForPartyDialogue("Jaheira") !Global("_bMazNotJaheira","GLOBAL",1)~ + @303 /*Jaheira.*/ + _bMazFFFNotLes
	+ ~IfValidForPartyDialogue("NEERA") !Global("_bMazNotNeera","GLOBAL",1)~ + @304 /*Neera.*/ + _bMazFFFNotLes
	+ ~IfValidForPartyDialogue("Nalia") !Global("_bMazNotNalia","GLOBAL",1)~ + @305 /*Nalia.*/ + _bMazFFFNotLes
	+ ~IfValidForPartyDialogue("HEXXAT") Global("_bCNChoosesHex3","GLOBAL",0)~ + @306 /*Hexxat.*/ + _bMazFFFNotHex
	+ ~!Global("_bMazzyVicFriends","GLOBAL",2) IfValidForPartyDialogue("Viconia")~ + @307 /*Viconia.*/ + _bMazFFFNotVic
	+ ~OR(2) Global("ImoenRomanceActive","GLOBAL",1) Global("ImoenRomanceActive","GLOBAL",2) IfValidForPartyDialog("Imoen2") Global("_bCNChoosesIm3","GLOBAL",0) OR(2) Global("_bImoenMazzyRomance","GLOBAL",0) Global("_bImoenMazzyRomance","GLOBAL",3)~ + @308 /*Imoen.*/ + _bMazFFFNotIm
	+ ~OR(2) Global("ImoenRomanceActive","GLOBAL",1) Global("ImoenRomanceActive","GLOBAL",2) IfValidForPartyDialog("Imoen2") Global("_bCNChoosesIm3","GLOBAL",0) OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2) Global("_bImoenWants3","GLOBAL",0)~ + @308 + _bMazFFFLaterIm
	+ ~Global("ImoenRomanceActive","GLOBAL",2) IfValidForPartyDialog("Imoen2") Global("_bImoenMazzyRomance","GLOBAL",2) Global("_bImoenWants3","GLOBAL",1)~ + @308 + _bMazFFFYesIm
	+ ~Global("ImoenRomanceActive","GLOBAL",2) IfValidForPartyDialog("Imoen2") Global("_bImoenMazzyRomance","GLOBAL",2) Global("_bImoenWants3","GLOBAL",2)~ + @308 + _bMazFFFDuhIm
	+ ~IfValidForPartyDialogue("Aerie") Global("_bMazNotAerie","GLOBAL",1)~ + @302 /*Aerie.*/ + _bMazFFFWTF
	+ ~IfValidForPartyDialogue("Jaheira") Global("_bMazNotJaheira","GLOBAL",1)~ + @303 /*Jaheira.*/ + _bMazFFFWTF
	+ ~IfValidForPartyDialogue("NEERA") Global("_bMazNotNeera","GLOBAL",1)~ + @304 /*Neera.*/ + _bMazFFFWTF
	+ ~IfValidForPartyDialogue("Nalia") Global("_bMazNotNalia","GLOBAL",1)~ + @305 /*Nalia.*/ + _bMazFFFWTF
	+ ~Global("_bMazzyVicFriends","GLOBAL",2) IfValidForPartyDialogue("Viconia") !Global("_bVicMaz3Some","GLOBAL",0)~ + @309 /*We could ask Viconia again.*/ + _bMazFFFVicAgain
	++ @310 /*Nevermind. I do not like our options.*/ + _bNo3Some
	END
	
	IF ~~ THEN _bMazFFFVic
	SAY @311 /*I will not deny she is attractive, but I would like to keep you to myself awhile longer. Perhaps in the future that might be possible.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazFFFNotEd
	SAY @312 /*Do not even joke about such things. Male or female, I will not sleep with Edwin. Choose someone else instead.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesEdwin3","GLOBAL",1)~ + _bMazFFChoice
	END
	
	IF ~~ THEN _bMazFFFNotLes
	SAY @313 /*While she is quite attractive, I do not believe she cares for women in that way.*/
	= @317
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazFFFWTF
	SAY @314 /*I cannot believe you would suggest that, <CHARNAME>. Considering that you chose me over her, that would merely twist the knife.*/
	= @317
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazFFFNotHex
	SAY @315 /*Travelling with a vampire is bad enough, <CHARNAME>, I will not sleep with one. Choose someone else instead.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesHex3","GLOBAL",1)~ + _bMazFFChoice
	END
	
	IF ~~ THEN _bMazFFFNotVic
	SAY @316 /*Viconia's beauty is that of a poisonous spider. Lovely, but best to look at from a distance. Should we take her to our bed, I am not sure that I'd survive.*/
	= @317 /*We should continue travelling but we can discuss this again another time.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazFFFNotIm 
	SAY @318 /*I admire Imoen's spirit and it's true she might be willing, but I would prefer to keep you to myself for now. That friendship is too new to test with jealousy.*/
	= @317
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesIm3","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bMazFFFLaterIm 
	SAY @3180 /*Not yet, <CHARNAME>. Perhaps in the future when Imoen is ready.*/
	= @317
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesIm3","GLOBAL",1)~ EXIT
	END	
	
	IF ~~ THEN _bMazFFFYesIm
	SAY @3181 /*So you've finally grown tired of spending every third night alone? I am sure she'll be overjoyed.*/
	IF ~~ THEN DO ~SetGlobal("_bImoenWants3","GLOBAL",2)~ EXIT
	END	
	
	IF ~~ THEN _bMazFFFDuhIm
	SAY @3182 /*So as usual, then. Of course.*/
	IF ~~ THEN EXIT
	END	
	
	IF ~~ THEN _bMazFFF3Again
	SAY @324 /*All right. We can discuss our options once again.*/
	IF ~~ THEN + _bMazFFChoice
	END
END

CHAIN MAZZYJ _bMazFFFVicAgain
@319 /*A good choice. It was quite diverting last time and I would be pleased to share our bed with Viconia again.*/
= @320 /*Viconia, would you like to join <CHARNAME> and I when we stop to rest?*/
== VICONIJ @321 /*Of course, my tiny paladin. I knew you would not be able to resist now that you have seen my skill. Indeed, I must make sure that <CHARNAME> has not forgotten <PRO_HISHER> lessons in how to pleasure a lover properly.*/
= @322 /*Tell <CHARNAME> we are resting now. I do not wish to wait.*/
DO ~RestParty()~
EXIT

//Re-writing this whole block. Use @326 through @372
CHAIN MAZZYJ _bMazBJTale
	@326 /*Well like mastering any skill, it required practice. Vast amounts of enthusiastic practice.*/
	DO ~SetGlobal("_bBJTale","GLOBAL",1)~
END
	++ @327 /*You whore! I can't believe I ever liked you.*/ GOTO _bMazBJTale1
	++ @328 /*Oh, okay then. Not that I'm complaining. We should stop and practice more.*/ GOTO _bMazBJTale2
	++ @329 /*I don't suppose you'd mind me asking more about it...*/ GOTO _bMazBJTale3

CHAIN MAZZYJ _bMazBJTale1
@330 /*Excuse me? You want your woman to be skilled, yet do not want her to have the experience necessary to gain that skill?*/
= @331 /*I think you will be sleeping alone from now on.*/
DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~
EXIT

CHAIN MAZZYJ _bMazBJTale2
@332 /*You are the leader. You may call for a rest whenever you like.*/
END

CHAIN MAZZYJ _bMazBJTale3
@333 /*Are you asking for an intimate history of how I learned my skills? That seems somewhat prying, <CHARNAME>, are you sure you wish to know?*/
END
	++ @334 /*On second thought... no.*/ GOTO _bMazBJTale4
	++ @335 /*Yes, please.*/ GOTO _bMazBJTale5

CHAIN MAZZYJ _bMazBJTale4
	@336 /*A wise choice. Let us be on our way.*/
EXIT

CHAIN MAZZYJ _bMazBJTale5
	@337 /*Well then... When I was much younger, I was part of an army. There were not many women there so we all camped together as a unit for protection.*/ 
	DO ~SetGlobal("_bBJTale","GLOBAL",2)~
	= @338 /*Some of the women had intimate relations with the male soldiers for money. Due to the massive imbalance between male and female soldiers, they could charge extremely high prices, be somewhat demanding as to their own pleasure, and still have no shortage of eager customers.*/
	= @339 /*I was one of the youngest women there, and the only halfling, so the others looked out for me and protected me from the attentions of the men. However, having only minimal experience myself, I was somewhat intrigued.*/
	= @340 /*A couple of the women and I became good friends and I sometimes watched the techniques they used with their customers. There was no privacy in those quarters.*/
	= @341 /*I was never comfortable enough to do much myself, but the theoretical knowledge was helpful in my later endeavours.*/  
END
	++ @342 /*So what were the later endeavours?*/ GOTO _bMazBJTale6
	++ @343 /*Charming story, but I think I've heard enough for today.*/ GOTO _bMazBJTale4
	++ @344 /*What happened to your friends?*/ GOTO _bMazBJTale7

CHAIN MAZZYJ _bMazBJTale6
	@345 /*I am not telling that story today, <CHARNAME>. Perhaps another time.*/ 
EXIT

CHAIN MAZZYJ _bMazBJTale7
	@346 /*Regretfully, I was forced to slay both of them.*/
END
	++ @347 /*You were what?*/ GOTO _bMazBJTale6
	++ @348 /*So where did you apply your theoretical knowledge?*/ GOTO _bMazBJTale6


CHAIN MAZZYJ _bMazBJTale2nd
	@349 /*Did I? Well... some time after the war, my sister and I worked in the circus as sword swallowers.*/
	= @350 /*Except that the "swords" were polished and oiled life-like models of different sizes and the whole thing was risqué even by halfling standards.*/
DO ~SetGlobal("_bBJTale","GLOBAL",3)~
END
	++ @351 /*You were in a circus?*/ + _bMazBJTale2nd1
	++ @352 /*Was your act popular?*/ + _bMazBJTale2nd2
	++ @353 /*Thank you for telling me.*/ EXIT
	
CHAIN MAZZYJ _bMazBJTale2nd1
@354 /*It was only for a year, but you try working your way up to a barbarian-sized "sword" and see how talented you are.*/
END
	++ @355 /*Was your act popular?*/ GOTO _bMazBJTale2nd2
	++ @356 /*Well, I guess we'd better be off.*/ EXIT
	
CHAIN MAZZYJ _bMazBJTale2nd2
	@357 /*Oh very much so. It was sexual, hilarious, and rather impressive. Any one of those will sell, but to do all three at the same time is a ticket to large crowds and instant fame.*/
	= @358 /*But a year of that was enough. The crowds were as large as ever, but we were ready to move on to other things.*/
EXIT 

CHAIN MAZZYJ _bMazBJTale3rd
	@359 /*Let me see... Next would be Korrich, my former betrothed. He was the first man I truly loved, and since we spent many lazy days together in blissful passion, he is responsible for most of what I know of men.*/
	= @360 /*Well... except for my half-ogres, Glounder and Farooq. I will tell you about them another time. Today I am speaking about Korrich.*/
DO ~SetGlobal("_bMazzyOwesPala","GLOBAL",2) SetGlobal("_bMazzyHalfOgres","GLOBAL",1)~
= @511 /*I first met him one night at home. Palo and Danno were making a horrible din as usual and I was so annoyed that I marched right into their room and asked them to keep it down because I was trying to sleep.*/
= @512 /*Korrich was there as well. He looked up, and without missing a beat he asked me to join them instead, and at that moment, I knew I wanted him.*/
= @513 /*I do not know what fit of boldness came over me, but I clearly remember myself saying, "Absolutely not, I am going to bed. However, should you wish to leave these fools and join me, I would not object."*/
= @514 /*Korrich got up, right then and there, much to the shock of his bedmates, and followed me to my room where we spent the rest of the night in frenzied passion. He never went back to Danno and Pala again.*/
= @515 /*He's a good man, I miss him.*/
END
	++ @516 /*When did he pass away?*/ + _bFirstMazzyPalaSexTalk1
	++ @517 /*It sounds like it. What happened?*/ + _bFirstMazzyPalaSexTalk2
	++ @518 /*Why aren't you still together?*/ + _bFirstMazzyPalaSexTalk2
	+ ~!Race(Player1,HALFLING)~ + @519 /*Halflings are so strange.*/ + _bFirstMazzyPalaSexTalk3
	
APPEND MAZZYJ IF ~~ THEN _bFirstMazzyPalaSexTalk1
	SAY @520 /*He didn't. I broke off our engagement and went into service at the temple of Arvoreen.*/
	IF ~~ THEN + _bFirstMazzyPalaSexTalk4
	END
	
	IF ~~ THEN _bFirstMazzyPalaSexTalk2
	SAY @521 /*I broke off our engagement and went into service at the temple of Arvoreen.*/
	IF ~~ THEN + _bFirstMazzyPalaSexTalk4
	END
	
	IF ~~ THEN _bFirstMazzyPalaSexTalk3	
	SAY @522 /*And many other races are quite prudish. Should Korrich and I not have enjoyed our time together?*/
	IF ~~ THEN + _bFirstMazzyPalaSexTalk4
	END
END

CHAIN MAZZYJ _bFirstMazzyPalaSexTalk4
@523 /*He is married now, with a beautiful wife and three intelligent and adorable children. They are happy and successful and are loved and respected by everyone who knows them.*/
= @524 /*I still see him from time to time and think, “That could have been me.” But it was not the life I wanted.*/
= @525 /*I think I am done with this topic today. Let us move on.*/
EXIT

CHAIN MAZZYJ _bMazHalfOgreStory
@365 /*Ahh, my sweet half ogres, Farooq and Glounder. I met them at the temple of Arvoreen where they had been brought up.*/
DO ~SetGlobal("_bMazzyHalfOgresTalk","GLOBAL",1)~
	= @366 /*This temple was high in the mountains and was a tiny, insular community of halflings. One of the monks had stumbled across young Farooq and Glounder during his travels, and in an act of compassion and foolishness, he brought the orphaned half-ogres back to the temple.*/
	= @367 /*The first time I was there, I found them to be good-natured children, always helpful and friendly. Despite their young age, they were much bigger and stronger than everyone else in the temple, and they took pride in their strength, doing difficult jobs with ease.*/
	= @368 /*The pair took an instant liking to me and I trained them to fight, which they practised first with me and then daily with each other. They cried when I left and returned to my family.*/
	= @369 /*Some years later when I returned, Farooq and Glounder had grown into young men. At nearly eight feet tall and four hundred pounds of solid muscle, they were impressive creatures, and while they were like halflings in their speech and mannerisms, the sheer size and strength disparity between them and those around them kept them somewhat apart.*/
	= @370 /*All three of us lacked romantic partners and this led us together. They had no experience with women, but were quick and eager studies, and had practice being extremely gentle with the miniature people and world they had grown up with.*/ 
	= @371 /*Their company was both safely familiar and so completely different from the relationship I had fled that I found them appealing.*/
	= @372 /*Doing things the usual way was a logistical impossibility, but we experimented as we could and eventually found mutual satisfaction.*/
== MAZZYJ IF ~Gender(Player1,MALE) Global("_bMazzyRomance","GLOBAL",2)~ THEN @372000 /*I did eventually manage success with my mouth and to tell the truth, my love, after them you are hardly a challenge.*/
== MAZZYJ @372001 /*Their fighting skills improved tremendously as well and eventually they felt it was time to see the world. They travelled to the south, hoping to take jobs as mercenaries in a nearby kingdom that hired their kind.*/
	= @372002 /*I didn't realize how attached I had become to them until they left but I was miserable for weeks after their departure. I never did see them again, though I found out later, third-hand, that they had found work as guards.*/
	= @372003 /*I still miss them... though I suppose I am lucky they did not die young... like most of my friends have.*/
	= @372004 /*My apologies, <CHARNAME>, I think I am done speaking on this for now.*/
EXIT
	
APPEND MAZZYJ IF ~~ THEN _bMazMaleChoices
	SAY @373 /*Change it? We always make some adjustments as the moment requires, but the basic plan has sound reasoning behind every step.*/
	= @374 /*However, I suppose I should try to compromise. Let us walk through our usual experience so you may make suggestions and perhaps I can be more obliging.*/
	IF ~Global("_bSkipBJ","GLOBAL",0)~ THEN + _bMazMalePart1
	IF ~Global("_bSkipBJ","GLOBAL",1)~ THEN + _bMazMalePart2
	END
	
	IF ~~ THEN _bMazMalePart1
	SAY @375 /*First, after becoming as clean as our accommodations allow, I take you in my mouth. I perform with my normal impressive skill, modifying my movements as you request, until you are finished.*/
	IF ~~ THEN + _bMazMalePart10
	END
	
	IF ~~ THEN _bMazMalePart10
	SAY @376 /*Are you with me so far?*/
	++ @377 /*Why are you so calm and analytical about this? Shouldn't you be at least a little embarrassed?*/ + _bMazMalePart11
	++ @378 /*What is your obsession with cleanliness? We are adventurers! Adventuring is not clean.*/ + _bMazMalePart12
	++ @379 /*Um, why do you always start with that? Not that I'm complaining, mind you...*/ + _bMazMalePart13
	++ @380 /*You don't have to start that way. I'd prefer to start with you.*/ + _bMazMalePart14
	++ @381 /*Last time when my hands were on your head, you smacked them away and I don't know why.*/ + _bMazMalePart15
	++ @382 /*You can spit it out when you're done if you want to. You don't have to swallow.*/ + _bMazMalePart16
	++ @383 /*I have no complaints with this part. Let's move on.*/ + _bMazMalePart2
	++ @414 /*I changed my mind. I don't want to talk about this after all.*/ + _bMazMaleChoicesEnd
	END

	IF ~~ THEN _bMazMalePart11
	SAY @384 /*Like an innocent blushing maiden? Life is too short for games, my love. If you want someone tentative and afraid, you will have to look elsewhere.*/
	IF ~~ THEN + _bMazMalePart10
	END
	
	IF ~~ THEN _bMazMalePart12
	SAY @385 /*Just because I spend each day drenched head-to-toe in the dust of the road and the blood of my enemies does not mean that I enjoy it, <CHARNAME>. It is disgusting to sleep covered in sweat and blood and I will continue to avoid it as much as possible.*/
	= @386 /*Every day I am thankful that our occupation pays well enough that whenever we reach civilization, I can afford the cleanest room available and a hot bath.*/
	IF ~~ THEN + _bMazMalePart10
	END

	IF ~~ THEN _bMazMalePart13
	SAY @387 /*Because you are are young and overly-eager and after this, you gain a measure of relaxation and patience. This way you can take your time as you pleasure me.*/
	++ @388 /*Well, I have no complaints. Let's move on.*/ + _bMazMalePart2
	++ @389 /*But why and how do you manage me entirely? I have known women twice your size who could only do that half as well.*/ + _bMazMalePart17
	END
	
	IF ~~ THEN _bMazMalePart17
	SAY @390 /*Why not? In truth, I am demanding enough that I aim to please where I can. Besides, I am good at it and I take pride in my skill.*/
	= @392 /*As to how I do what I do, I will only say that practice makes perfect and I am considerably older than you are.*/
	IF ~~ THEN + _bMazMalePart10
	END
	
	IF ~~ THEN _bMazMalePart14
	SAY @393 /*Well, I do it because you are young and more enthusiastic than needed at times. Once we finish this, you are more willing to take the time I require before entering me.*/
	= @394 /*But if you promise to be patient and do what I ask without any hurry, we could start with the next step.*/
	++ @395 /*Yes I can do that.*/ DO ~SetGlobal("_bSkipBJ","GLOBAL",1)~ + _bMazMalePart18
	++ @396 /*Actually, no. If it's going to take a while, I'd rather continue as we were.*/ + _bMazMalePart18
	END
	
	IF ~~ THEN _bMazMalePart18
	SAY @397 /*All right, <CHARNAME>. Then I will move on.*/
	IF ~~ THEN + _bMazMalePart2
	END
	
	IF ~~ THEN _bMazMalePart15
	SAY @398 /*It takes focus and skill to do what I do, <CHARNAME>, and I do not need you pushing my head down like some three-gold-whore, disrupting my rhythm, and causing me to gag. Have some patience and let me work. I will manage all of you, I promise.*/
	IF ~~ THEN + _bMazMalePart10
	END
	
	IF ~~ THEN _bMazMalePart16
	SAY @399 /*Thank you, my love, but if I am going to do this, I prefer to do it to the best of my abilities. I take pride in excellence.*/
	= @400 /*And honestly the taste of you or any man is not that bad compared to the horrible excuses for food that we consume on a daily basis.*/
	IF ~~ THEN + _bMazMalePart10
	END
	
	IF ~~ THEN _bMazMalePart2
	SAY @401 /*We kiss each other repeatedly, followed by you exploring my body as I direct. Your mouth eventually finds its way my breasts and then between my legs where you lick for as long as I require. If your hands stroke my breasts while doing so, that is also enjoyable.*/
	= @402 /*Alternately, I may decide to keep your mouth on my breasts while your hand rubs in-between my legs with a liberal application of oil.*/
	= @403 /*Any problems with this?*/
	++ @404 /*Do I have to lick you down there?*/ + _bMazMalePart21
	++ @405 /*Do we have to kiss for so long and so slowly? Can't we just get to the good stuff?*/ + _bMazMalePart22
	++ @406 /*The problem is I'm really not sure where or how to kiss. There are too many options and I'm lost.*/ + _bMazMalePart23
	++ @407 /*Last time I tried to put a finger inside you and you moved my hand away. Why?*/ + _bMazMalePart24
	++ @408 /*It takes too long! My tongue gets tired.*/ + _bMazMalePart25
	++ @409 /*You always say: "between my legs," but I am not sure where you mean.*/ + _bMazMalePart26
	+ ~Global("_bSkipBJ","GLOBAL",1)~ + @410 /*I know I said I wanted to start with this step, but can you start with your mouth.*/ + _bMazMalePart27
	++ @411 /*I have no complaints about this part.*/ + _bMazMaleFinal
	++ @414 /*I changed my mind. I don't want to talk about this after all.*/ + _bMazMaleChoicesEnd
	END
	
	IF ~~ THEN _bMazMalePart20
	SAY @412 /*Any other complaints?*/
	++ @404 /*Do I have to lick you down there?*/ + _bMazMalePart21
	++ @405 /*Do we have to kiss for so long and so slowly? Can't we just get to the good stuff?*/ + _bMazMalePart22
	++ @406 /*The problem is I'm really not sure where or how to kiss. There are too many options and I'm lost.*/ + _bMazMalePart23
	++ @407 /*Last time I tried to put a finger inside you and you moved my hand away. Why?*/ + _bMazMalePart24
	++ @408 /*It takes too long! My tongue gets tired.*/ + _bMazMalePart25
	++ @409 /*You always say: "between my legs," but I am not sure where you mean.*/ + _bMazMalePart26
	+ ~Global("_bSkipBJ","GLOBAL",1)~ + @410 /*I know I said I wanted to start with this step, but can you start with your mouth.*/ + _bMazMalePart27
	++ @413 /*No. Let's move on to the next part.*/ + _bMazMaleFinal
	++ @414 /*I changed my mind. I don't want to talk about this after all.*/ + _bMazMaleChoicesEnd
	END
	
	IF ~~ THEN _bMazMaleChoicesEnd
	SAY @415 /*Of course, <CHARNAME>. As long as you continue to follow my lead in bed.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazMalePart21
	SAY @416 /*Why wouldn't you? It is only fair for us to pleasure each other equally.*/
	= @417 /*Clearly the humans who raised you did not explain things properly. Most humans seem to think that only men should have any fun in bed. But that's quite short-sighted of them and this relationship will only last if we both enjoy ourselves.*/
	++ @418 /*Well, I will not do it.*/ + _bMazMalePart28
	++ @419 /*Oh, that makes sense. I'm sure I'll learn to appreciate the experience more.*/ + _bMazMalePart29
	++ @420 /*I want you to be happy, but I really hate doing THAT. Can I pleasure you another way instead?*/ + _bMazMalePart30
	END

	IF ~~ THEN _bMazMalePart28
	SAY @421 /*Hah, well then you cannot have me. Will you reconsider?*/
	++ @422 /*No. I'm sorry this has come between us.*/ + _bMazMalePart31
	++ @423 /*Whoa, let's not get drastic. I'm sure I'll enjoy it more with practice.*/ + _bMazMalePart29
	++ @420 /*I want you to be happy, but I really hate doing THAT. Can I pleasure you another way instead?*/ + _bMazMalePart30
	END
	
	IF ~~ THEN _bMazMalePart31
	SAY @424 /*As am I.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bMazMalePart29
	SAY @425 /*Excellent. I am glad to hear that.*/
	IF ~~ THEN + _bMazMalePart20
	END
	
	IF ~~ THEN _bMazMalePart30
	SAY @426 /*Well, I certainly don't want to force you into something you despise. With practice and persistence, we'll find something that works for both of us. For now, I suppose your hands will do.*/
	IF ~~ THEN + _bMazMalePart20
	END
	
	IF ~~ THEN _bMazMalePart22
	SAY @427 /*You're so impatient; foreplay is half the fun. That is why I like to start by pleasing you.*/
	++ @418 /*Well, I will not do it.*/ + _bMazMalePart32
	++ @428 /*I will do it. I can learn patience.*/ + _bMazMalePart29
	END
	
	IF ~~ THEN _bMazMalePart32
	SAY @429 /*Seriously? Well then you cannot have me. Will you please reconsider?*/
	++ @422 /*No. I'm sorry this has come between us.*/ + _bMazMalePart31
	++ @430 /*No, don't cut me off. I will do it. I can learn patience.*/ + _bMazMalePart29
	END
	
	IF ~~ THEN _bMazMalePart23
	SAY @431 /*You are adorable. If I am telling you nothing, then you can keep moving as the wind takes you. Do not be afraid of making a mistake; I will let you know if I want something different.*/
	IF ~~ THEN + _bMazMaleFinal
	END
	
	IF ~~ THEN _bMazMalePart24
	SAY @432 /*It was earlier than I desired. I prefer to be dripping wet before you enter me.*/
	IF ~~ THEN + _bMazMalePart20
	END
	
	IF ~~ THEN _bMazMalePart25
	SAY @433 /*You poor thing. Very well, you may rest your tongue as needed. Over time, you will gain in strength and stamina.*/
	IF ~~ THEN + _bMazMalePart20
	END
	
	IF ~~ THEN _bMazMalePart26
	SAY @434 /*Sometimes I forget that you really do know nothing. When I am on my back and you are looking at my sex, there is a small nub between the two vertical lips. That is what I mean.*/
	++ @435 /*Got it.*/ + _bMazMalePart20
	++ @436 /*So you're on your back. I'm looking at you from the front. And then... something about lips...*/ + _bMazMalePart33
	END
	
	IF ~~ THEN _bMazMalePart33
	SAY @437 /**sigh * Next time we are together, I will show you exactly where. The only required skill is the ability to follow directions.*/
	IF ~~ THEN + _bMazMalePart20
	END
	
	IF ~~ THEN _bMazMalePart27
	SAY @438 /*Not as patient as you thought, my love? But yes, I can begin with that.*/
	IF ~~ THEN DO ~SetGlobal("_bSkipBJ","GLOBAL",0)~ + _bMazMalePart20
	END
	
	IF ~~ THEN _bMazMaleFinal
	SAY @439 /*All right then. Once I have had enough foreplay, my body writhes in pleasure, my back arches, and I pull away. Then I am ready to have you inside me.*/
	= @440 /*You lie down on your back, I mount you like any good knight should, and ride you to our mutual satisfaction.*/
	IF ~~ THEN + _bMazMaleFinalSet
	END
	
	IF ~~ THEN _bMazMaleFinalSet 
	SAY @441 /*Do you have any thoughts on this?*/
	+ ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,ELF) !Global("bVicShaped","GLOBAL",1)~ + @442 /*This is my favorite part, but could we try another position?*/ + _bMazMaleFinal1
	+ ~OR(4) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,ELF) Global("bVicShaped","GLOBAL",1)~ + @442 /*This is my favorite part, but could we try another position?*/ + _bMazMaleFinal2
	++ @443 /*Would it be okay, Mazzy, if I  tried... you know... the other hole?*/ + _bMazMaleFinal3
	++ @444 /*It seems like I often finish and then go soft while you still wish to continue. Is there anything I can do?*/ + _bMazMaleFinal4
	++ @445 /*I think that is everything.*/ + _bMazMaleFinal5
	++ @414 /*I changed my mind. I don't want to talk about this after all.*/ + _bMazMaleChoicesEnd
	END
	
	IF ~~ THEN _bMazMaleFinal1
	SAY @446 /*I am sorry, <CHARNAME>, you are so much larger than me and it is such a tight fit even with you covered in oil and me dripping wet. In that position, I can move at my own pace... were we in another position, I worry you might hurt me.*/
	++ @447 /*I wouldn't want that. I will be your steed.*/ + _bMazMaleFinal6
	++ @448 /*That makes sense. Whatever makes you happiest.*/ + _bMazMaleFinal6
	++ @449 /*Sorry, I can't always be beneath you. You will have to find someone else to play with.*/ + _bMazMaleFinal7
	++ @450 /*But I could be exceedingly careful and gentle. Moving slowly and stopping as soon as you said.*/ + _bMazMaleFinal8
	END
	
	IF ~~ THEN _bMazMaleFinal6
	SAY @451 /*Thank you, <CHARNAME>. I appreciate your understanding.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinalSet0
	SAY @452 /*Is there anything else you'd like to ask?*/
	+ ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,ELF) !Global("bVicShaped","GLOBAL",1)~ + @442 /*This is my favorite part, but could we try another position?*/ + _bMazMaleFinal1
	+ ~OR(4) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,ELF) Global("bVicShaped","GLOBAL",1)~ + @442 /*This is my favorite part, but could we try another position?*/ + _bMazMaleFinal2
	++ @443 /*Would it be okay, Mazzy, if I  tried... you know... the other hole?*/ + _bMazMaleFinal3
	++ @444 /*It seems like I often finish and then go soft while you still wish to continue. Is there anything I can do?*/ + _bMazMaleFinal4
	++ @445 /*I think that is everything.*/ + _bMazMaleFinal5
	END
	
	IF ~~ THEN _bMazMaleFinal7
	SAY @453 /*I am sorry that we did not work out.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
	END

	IF ~~ THEN _bMazMaleFinal8
	SAY @454 /*I know you would, and I love you, but we barely know each other. I need more time to trust.*/
	++ @455 /*I understand. I will be your steed.*/ + _bMazMaleFinal6
	++ @456 /*I can be patient. This will work for now.*/ + _bMazMaleFinal6
	++ @449 /*Sorry, I can't always be beneath you. You will have to find someone else to play with.*/ + _bMazMaleFinal7
	END
		
	IF ~~ THEN _bMazMaleFinal2
	SAY @457 /*Of course, I only started on top because I was worried that I would find your tool a little large, but now I know that I have nothing to worry about.*/
	IF ~~ THEN + _bMazMaleFinal2Set
	END

	IF ~~ THEN _bMazMaleFinal2Set
	SAY @458 /*What would you like to try?*/
	+ ~Global("_bToolJoke","GLOBAL",0)~ + @459 /*Wait... are you saying that I have a small... um... tool?*/ + _bMazMaleTool
	++ @460 /*I would like you on all fours with me behind you.*/ + _bMazMaleFinal2Set1
	++ @461 /*I want to lie down, you beneath me, with your legs on my shoulders.*/ + _bMazMaleFinal2Set2
	++ @462 /*I want you beneath me, legs open.*/ + _bMazMaleFinal2Set3
	++ @463 /*I want to carry you.*/ + _bMazMaleFinal2Set4
	++ @464 /*I want you on your stomach as I enter you from behind.*/ + _bMazMaleFinal2Set5
	++ @465 /*We both lie on our sides and I take you from behind.*/ + _bMazMaleFinal2Set6
	++ @466 /*Can you sit on my lap with your legs wrapped around me?*/ + _bMazMaleFinal2Set7
	END
	
	
	IF ~~ THEN _bMazMaleTool
	SAY @467 /*I am saying that it is a perfectly good tool for the job, my love. It is functional and non-threatening. Were it too large, it would limit our options.*/
	IF ~~ THEN DO ~SetGlobal("_bToolJoke","GLOBAL",1)~ + _bMazMaleFinal2Set
	END
	
	IF ~~ THEN _bMazMaleFinal2Set1
	SAY @468 /*Like a hound or a stallion? Of course, my love, that can be arranged.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal2Set2
	SAY @469 /*One of my favourites.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal2Set3
	SAY @470 /*Ahh, the classic human pose. Man riding, woman meekly accepting. Sure, why not? It would be an interesting change, though do make sure to support your own weight.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal2Set4
	SAY @471 /*Well there are some worthwhile options here. I can wrap my legs around you with you supporting my bottom, which is always enjoyable.*/
	= @472 /*Or I can have my legs higher with you holding me at the knees and supporting my back.*/
	= @473 /*Oh I know, I can have my ankles around your neck as you carry me.*/
	= @474 /*All of them; we will have to do all of them.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal2Set5
	SAY @475 /*Oh I have not done that in a while. Just remember to enter the correct place.*/
	++ @476 /*And if I try the other one?*/ + _bMazMaleFinal2Set8
	++ @477 /*Will do.*/ + _bMazMaleFinalSet0
	++ @478 /*Fair enough.*/ + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal2Set8
	SAY @479 /*I will stab you. We barely know each other, <CHARNAME>, and that requires trust built over time... and oil, vast quantities of oil.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal2Set6
	SAY @480 /*The spoons! Just remember to hold tight.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal2Set7
	SAY @481 /*While I bounce, yes. Though I will need your help to raise me as well. That position can be a bit awkward.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal3
	SAY @482 /*My arse? You really were raised by monks.*/
	= @483 /*I am joking. Yes I have done it before, but trying to get clean afterward is impossible and truthfully, I never want you there more than I want you the other way. Now, if it were you and another man, things might be different, but no... ideas such as that require trust and we are not there yet.*/
	++ @484 /*I understand.*/ + _bMazMaleFinalSet0
	++ @485 /*Wait... did you just casually mention being taken by two men at the same time?*/ + _bMazMaleFinal9
	++ @486 /*Are you saying there were other men you trusted more than me?*/ + _bMazMaleFinal10
	END
	
	IF ~~ THEN _bMazMaleFinal9
	SAY @487 /*I am a halfling, <CHARNAME>, we have at least two festivals that are largely excuses for orgies, and it is generally accepted that a woman has a better chance of being satisfied by two men than one alone.*/
	= @487000 /*However, I usually prefer my men to take turns.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN  _bMazMaleFinal10
	SAY @488 /*You are not the centre of the known realms, <CHARNAME>, and we have not been together long. Of course there were other men I trusted more than you.*/
	= @489 /*Please get over yourself and enjoy what you have.*/
	++ @490 /*You slut, I can't believe I ever cared for you.*/ + _bMazMaleFinal11
	++ @491 /*Of course, Mazzy. I was just surprised.*/ + _bMazMaleFinal12
	END
	
	IF ~~ THEN  _bMazMaleFinal11
	SAY @492 /**sigh * Clearly we are done here.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyRomance","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bMazMaleFinal12
	SAY @493 /*I hope I never stop surprising you, my love.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal4
	SAY @494 /*Try harder? I am sorry, love; I am not a man, and I cannot give you advice on that. But there are many things you can do for me until you are ready to go again, and you should be able to last longer over time.*/
	= @495 /*Practice will make perfect, I believe.*/
	++ @496 /*I hope you are right.*/ + _bMazMaleFinalSet0
	++ @497 /*So why are we still talking and not practicing?*/ + _bMazMaleFinal13
	END
	
	IF ~~ THEN _bMazMaleFinal13
	SAY @498 /*You are the leader, my love. You decide when we rest, not me.*/
	IF ~~ THEN + _bMazMaleFinalSet0
	END
	
	IF ~~ THEN _bMazMaleFinal5
	SAY @499 /*Good. Working this out was a pleasure.*/
	= @500 /*Please call a rest as soon as you can. I have never wanted you more.*/
	IF ~~ THEN EXIT
	END

	IF ~~ THEN  _bMazMF3Some
	SAY @503 /*Perhaps, <CHARNAME>. But I have never been that fond of sharing my lovers, particularly not with other women.*/
	IF ~~ THEN DO ~SetGlobal("_bMazM3Some","GLOBAL",1)~ + _bMazMFFChoice
	END
	
	IF ~~ THEN _bMazMFFChoice
	SAY @297 /*Who did you have in mind?*/
	+ ~Global("_bMazMM3Some)","GLOBAL",0)~ + @504 /*Actually, I wanted to ask another man.*/ + _bMazMM3
	+ ~Global("_bMazMM3Some)","GLOBAL",1)~ + @505 /*I was hoping to discuss other men again.*/ + _bMaz3SomeChoose
	+ ~Global("_bMazzyVicFriends","GLOBAL",2) IfValidForPartyDialog("Viconia") Global("_bVicMaz3Some","GLOBAL",0)~ + @298 /*How about Viconia? I know you two are close.*/ + _bMazFFFVic
	+ ~Global("_bCNWantsVic3Some","GLOBAL",1) Global("_bMazzyVicFriends","GLOBAL",2) IfValidForPartyDialog("Viconia") Global("_bVicMaz3Some","GLOBAL",0)~ + @299 /*I want Viconia. I already told you that.*/ + _bMazFFFVic
	+ ~IfValidForPartyDialog("Edwin") Global("_bCNChoosesEdwin3","GLOBAL",0) Gender("Edwin",FEMALE)~ + @300 /*What about Edwin? He makes an attractive lady and it's a once-in-a-lifetime opportunity.*/ + _bMazFFMNotEd
	+ ~IfValidForPartyDialog("_bClara")~ + @301 /*Clara.*/ + _bMazFFFNotLes
	+ ~IfValidForPartyDialog("Aerie") !Global("_bMazNotAerie","GLOBAL",1)~ + @302 /*Aerie.*/ + _bMazMFF3No
	+ ~IfValidForPartyDialog("Jaheira") !Global("_bMazNotJaheira","GLOBAL",1)~ + @303 /*Jaheira.*/ + _bMazMFF3No
	+ ~IfValidForPartyDialog("NEERA") !Global("_bMazNotNeera","GLOBAL",1)~ + @304 /*Neera.*/ + _bMazMFF3No
	+ ~IfValidForPartyDialog("Nalia") !Global("_bMazNotNalia","GLOBAL",1)~ + @305 /*Nalia.*/ + _bMazMFF3No
	+ ~IfValidForPartyDialog("HEXXAT") Global("_bCNChoosesHex3","GLOBAL",0)~ + @306 /*Hexxat.*/ + _bMazFFMNotHex
	+ ~!Global("_bMazzyVicFriends","GLOBAL",2) IfValidForPartyDialog("Viconia")~ + @307 /*Viconia.*/ + _bMazFFFNotVic
	+ ~Global("ImoenRomanceActive","GLOBAL",2) IfValidForPartyDialog("Imoen2") Global("_bCNChoosesIm3","GLOBAL",0) OR(2) Global("_bImoenMazzyRomance","GLOBAL",0) Global("_bImoenMazzyRomance","GLOBAL",3)~ + @308 /*Imoen.*/ + _bMazFFFNotIm
	+ ~Global("ImoenRomanceActive","GLOBAL",2) IfValidForPartyDialog("Imoen2") Global("_bCNChoosesIm3","GLOBAL",0) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenWants3","GLOBAL",0)~ + @308 /*Imoen.*/ + _bMazFFFLaterIm
	+ ~Global("ImoenRomanceActive","GLOBAL",2) IfValidForPartyDialog("Imoen2") Global("_bImoenMazzyRomance","GLOBAL",2) Global("_bImoenWants3","GLOBAL",1)~ + @308 /*Imoen.*/ + _bMazFFFYesIm
	+ ~Global("ImoenRomanceActive","GLOBAL",2) IfValidForPartyDialog("Imoen2") Global("_bImoenMazzyRomance","GLOBAL",2) Global("_bImoenWants3","GLOBAL",2)~ + @308 /*Imoen.*/ + _bMazFFFDuhIm
	+ ~IfValidForPartyDialog("Aerie") Global("_bMazNotAerie","GLOBAL",1)~ + @302 /*Aerie.*/ + _bMazFFFWTF
	+ ~IfValidForPartyDialog("Jaheira") Global("_bMazNotJaheira","GLOBAL",1)~ + @303 /*Jaheira.*/ + _bMazFFFWTF
	+ ~IfValidForPartyDialog("NEERA") Global("_bMazNotNeera","GLOBAL",1)~ + @304 /*Neera.*/ + _bMazFFFWTF
	+ ~IfValidForPartyDialog("Nalia") Global("_bMazNotNalia","GLOBAL",1)~ + @305 /*Nalia.*/ + _bMazFFFWTF
	+ ~Global("_bMazzyVicFriends","GLOBAL",2) IfValidForPartyDialog("Viconia") !Global("_bVicMaz3Some","GLOBAL",0)~ + @309 /*We could ask Viconia again.*/ + _bMazFFFVicAgain
	++ @310 /*Nevermind. I do not like our options.*/ + _bNo3Some
	END
	
	IF ~~ THEN _bMazFFMNotEd
	SAY @312 /*Do not even joke about such things. Male or female, I will not sleep with Edwin. Choose someone else instead.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesEdwin3","GLOBAL",1)~ + _bMazMFFChoice
	END
	
	IF ~~ THEN _bMazFFMNotHex
	SAY @315 /*Travelling with a vampire is bad enough, <CHARNAME>, I will not sleep with one. Choose someone else instead.*/
	IF ~~ THEN DO ~SetGlobal("_bCNChoosesHex3","GLOBAL",1)~ + _bMazMFFChoice
	END
	
	IF ~~ THEN _bMazMFF3No
	SAY @506 /*While she is quite attractive, I do not believe she cares for women and I do not wish to end up watching the two of you together. The goal of this is pleasure, not bitter jealousy.*/
	= @317 /*We should continue travelling but we can discuss this again another time.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN  _bMazMM3
	SAY @507 /*I suppose that is a possibility. But it would depend on the man. As you know, I am quite picky about who I allow into my bed.*/
	IF ~~ THEN + _bMaz3SomeChoose
	END
	
	IF ~~ THEN  _bMazMF3Again
	SAY @508 /*Of course, <CHARNAME>. We can talk about our options, though I reserve the right to tell you no.*/
	IF ~~ THEN + _bMazMFFChoice
	END
END


CHAIN MAZZYJ _bMazzyPalaSexTalk
@510 /*One of “theirs”, hers and Danno's, and she is referring to Korrich, my former betrothed.*/
DO ~SetGlobal("_bMazzyOwesPala","GLOBAL",2)~
= @511 /*I first met him one night at home. Palo and Danno were making a horrible din as usual and I was so annoyed that I marched right into their room and asked them to keep it down because I was trying to sleep.*/
= @512 /*Korrich was there as well. He looked up, and without missing a beat he asked me to join them instead, and at that moment, I knew I wanted him.*/
= @513 /*I do not know what fit of boldness came over me, but I clearly remember myself saying, "Absolutely not, I am going to bed. However, should you wish to leave these fools and join me, I would not object."*/
= @514 /*Korrich got up, right then and there, much to the shock of his bedmates, and followed me to my room where we spent the rest of the night in frenzied passion. He never went back to Danno and Pala again.*/
= @515 /*He's a good man, I miss him.*/
END
	++ @516 /*When did he pass away?*/ + _bMazzyPalaSexTalk1
	++ @517 /*It sounds like it. What happened?*/ + _bMazzyPalaSexTalk2
	++ @518 /*Why aren't you still together?*/ + _bMazzyPalaSexTalk2
	+ ~!Race(Player1,HALFLING)~ + @519 /*Halflings are so strange.*/ + _bMazzyPalaSexTalk3
	
APPEND MAZZYJ IF ~~ THEN _bMazzyPalaSexTalk1
	SAY @520 /*He didn't. I broke off our engagement and went into service at the temple of Arvoreen.*/
	IF ~~ THEN + _bMazzyPalaSexTalk4
	END
	
	IF ~~ THEN _bMazzyPalaSexTalk2
	SAY @521 /*I broke off our engagement and went into service at the temple of Arvoreen.*/
	IF ~~ THEN + _bMazzyPalaSexTalk4
	END
	
	IF ~~ THEN _bMazzyPalaSexTalk3	
	SAY @522 /*And many other races are quite prudish. Should Korrich and I not have enjoyed our time together?*/
	IF ~~ THEN + _bMazzyPalaSexTalk4
	END
END

CHAIN MAZZYJ _bMazzyPalaSexTalk4
@523 /*He is married now, with a beautiful wife and three intelligent and adorable children. They are happy and successful and are loved and respected by everyone who knows them.*/
= @524 /*I still see him from time to time and think, “That could have been me.” But it was not the life I wanted.*/
= @525 /*I think I am done with this topic today. Let us move on.*/
EXIT

CHAIN MAZZYJ  _bMazzyBedCount
@527 /*This seems like a rather prying question, <CHARNAME>.*/
DO ~SetGlobal("_bMazBedCount","GLOBAL",1)~
== MAZZYJ IF ~OR(2) Gender(Player1,FEMALE) !Race(Player1,HALFLING)~ THEN @528 /*However, I have been romantically involved with three halfling men.*/
== MAZZYJ IF ~Gender(Player1,MALE) Race(Player1,HALFLING)~ THEN @529 /*However, before you I was romantically involved with three other halfling men.*/
= @530 /*One was Patrick, who was possessed by the Shade Lord. One was Korrich; we were once engaged. And the last was just a boy who I knew growing up.*/
END
	++ @531 /*Are any of them still alive?*/ + _bMBC1
	++ @532 /*And how many women have you slept with?*/ + _bMBC2
	++ @533 /*Really? You always act like you're so experienced.*/ + _bMBC3
	++ @534 /*Have you ever had more than one man at the same time?*/ + _bMBC4
	++ @535 /*You said three *halfling* men. How about non-halflings?*/ + _bMBC5
	++ @536 /*Sorry, I'll stop prying.*/ EXIT
	
CHAIN MAZZYJ _bMBC1
@537 /*One. And this conversation is over.*/
EXIT

CHAIN MAZZYJ _bMBC2
@538 /*You want me to count? It is common for halfling girls to play together in that way and I had many friends.*/
END
	++ @534 /*Have you ever had more than one man at the same time?*/ + _bMBC4
	++ @535 /*You said three *halfling* men. How about non-halflings?*/ + _bMBC5
	++ @536 /*Sorry, I'll stop prying.*/ EXIT
	
CHAIN MAZZYJ _bMBC3
@539 /*I was with each one more than once, my love.*/
END
	++ @531 /*Are any of them still alive?*/ + _bMBC1
	++ @532 /*And how many women have you slept with?*/ + _bMBC2
	++ @534 /*Have you ever had more than one man at the same time?*/ + _bMBC4
	++ @535 /*You said three *halfling* men. How about non-halflings?*/ + _bMBC5
	++ @536 /*Sorry, I'll stop prying.*/ EXIT
	
CHAIN MAZZYJ _bMBC4
@540 /*Hah, you just get more and more personal, do you not? If you must know, I prefer my men to take turns.*/
END
	++ @541 /*You answered a slightly different question than I asked.*/ + _bMBC6
	++ @532 /*And how many women have you slept with?*/ + _bMBC2
	++ @535 /*You said three *halfling* men. How about non-halflings?*/ + _bMBC5
	++ @536 /*Sorry, I'll stop prying.*/ EXIT

CHAIN MAZZYJ _bMBC5
@542000 /*How many non-halfling men? I shall have to think...*/
== MAZZYJ  @542 /*Other than my pair of half-ogres? None, none at all.*/ 
	DO ~SetGlobal("_bMazzyHalfOgres","GLOBAL",1)~ 
	= @543 /*Let's move on.*/
EXIT

CHAIN MAZZYJ _bMBC6
@544 /*I did, didn't I?*/
= @543 /*Let's move on.*/
EXIT


CHAIN MAZZYJ _bMazzyHeight
@546 /*What? Why?*/
DO ~SetGlobal("_bMazHeight","GLOBAL",1)~
END
	++ @547 /*Just curious.*/ + _bMH1
	++ @548 /*You're so touchy about it, I thought it would be nice to know.*/ + _bMH1
	++ @549 /*You cannot let it bother you so much, Mazzy. So tell me, please.*/ + _bMH1
	++ @550 /*Sorry, I won't pry.*/ EXIT
	
CHAIN MAZZYJ _bMH1
@551 /*If you must know, I am three feet, one inch tall. Are you happy?*/
END
	++ @552 /*Very, thank you.*/ EXIT
	++ @553 /*Above three feet! That is a major milestone.*/ + _bMH2
	
CHAIN MAZZYJ _bMH2
@554 /*Actually, I am a little shorter than average for a halfling woman.*/
= @555 /*I am trying to make my peace with it.*/
END
	++ @556 /*You cannot let it bother you so much. No one is going to be above average in everything.*/ + _bMH3
	++ @557 /*From a human perspective, you're all short so what's a couple of inches?*/ + _bMH4
	
APPEND MAZZYJ IF ~~ THEN _bMH3
	SAY @558 /*This is true. Even a tall halfling makes for an awfully short human.*/
	IF ~~ THEN + _bMH4
	END
END

CHAIN MAZZYJ _bMH4
@559 /*It is how the humans mock us that annoys me. Not just me, but all of the smaller races. They think that we cannot be taken seriously. No matter how many humans I kill, they will never consider me a great warrior.*/
END
	++ @560 /*You mean no matter how many evil creatures you kill?*/ + _bMH5
	++ @561 /*Maybe you haven't killed enough of them.*/ + _bMH6
	++ @562 /*We should probably move on.*/ EXIT
	
CHAIN MAZZYJ _bMH5
@563 /*Yes. Isn't that what I said? No matter how many evil creatures I vanquish...*/
END
	++ @564 /*Actually you said, "No matter how many humans I kill..."*/ + _bMH7
	++ @562 /*We should probably move on.*/ EXIT
 
CHAIN MAZZYJ _bMH6
@565 /*It will never be enough. I could single-handedly defeat an army of ogres and the next peasant I met would still see a silly halfling lass pretending to be a warrior.*/
= @566 /**sigh * I suppose I must accept that. Let's move on for now.*/
EXIT

CHAIN MAZZYJ _bMH7
@567 /*Oh. Well I meant evil humans, naturally. I could single-handedly defeat an army of ogres and the next peasant I met would still see a silly halfling lass pretending to be a warrior.*/
= @566 /**sigh * I suppose I must accept that. Let's move on for now.*/
EXIT


CHAIN MAZZYJ _bMazzyWeight
@569 /*Last time I weighed myself I was sixty-one pounds. Why?*/
DO ~SetGlobal("_bMazWeight","GLOBAL",1)~
END
	++ @570 /*No reason, just curious.*/ + _bMW1
	++ @571 /*You answered that so easily. I assumed you'd be touchier about it.*/ + _bMW2
	
CHAIN MAZZYJ _bMW1
@572 /*Well now you know.*/
EXIT

CHAIN MAZZYJ _bMW2
@573 /*It's just weight. Who's touchy about their weight?*/
EXIT


CHAIN MAZZYJ _bMazSilence
@575 /*If that is what you wish, <CHARNAME>. I shall check back in several weeks.*/
DO ~SetGlobal("_bMazzySilent","GLOBAL",1)~
EXIT


CHAIN MAZZYJ _bMazzyGames
@577 /*Right now, <CHARNAME>? Shouldn't we focus on our mission?*/
END
	++ @578 /*Yeah, you're probably right.*/ EXIT
	++ @579 /*And we will. But everyone needs a break sometimes.*/ + _bMG1
	++ @580 /*What? Are you afraid you'll lose?*/ + _bMG2
	++ @581 /*Come on, it'll be fun.*/ + _bMG3

APPEND MAZZYJ IF ~~ THEN _bMG1
	SAY @582 /*I suppose you are correct. What did you want to play?*/
	IF ~~ THEN EXTERN PLAYER1 _bMGChoose
	END
	
	IF ~~ THEN _bMG2
	SAY @583 /*You think I'M going to lose? I accept your challenge, <CHARNAME>. Choose your field of battle.*/
	IF ~~ THEN EXTERN PLAYER1 _bMGChoose
	END
	
	IF ~~ THEN _bMG3
	SAY @584 /*I guess I could have... fun. Did you have something in mind?*/
	IF ~~ THEN EXTERN PLAYER1 _bMGChoose
	END
END

CHAIN PLAYER1 _bMGChoose
@585 /*I would like to play:*/
END
	+ ~RandomNum(3,1)~ + @586 /*Dragon Chess.*/ EXTERN MAZZYJ _bMDC1
	+ ~RandomNum(3,2)~ + @586 EXTERN MAZZYJ _bMDC2
	+ ~RandomNum(3,3)~ + @586 EXTERN MAZZYJ _bMDC3
	+ ~RandomNum(3,1)~ + @587 /*A game of dice.*/ EXTERN MAZZYJ _bMD1
	+ ~RandomNum(3,2)~ + @587 EXTERN MAZZYJ _bMD2
	+ ~RandomNum(3,3)~ + @587 EXTERN MAZZYJ _bMD3
	+ ~RandomNum(3,1)~ + @588 /*I Spy. We can play while traveling.*/ EXTERN MAZZYJ _bMIS1
	+ ~RandomNum(3,2)~ + @588 EXTERN MAZZYJ _bMIS2
	+ ~RandomNum(3,3)~ + @588 EXTERN MAZZYJ _bMIS3
	+ ~RandomNum(3,1)~ + @589 /*Cards.*/ EXTERN MAZZYJ _bMC1
	+ ~RandomNum(3,2)~ + @589 EXTERN MAZZYJ _bMC2
	+ ~RandomNum(3,3)~ + @589 EXTERN MAZZYJ _bMC3
	
CHAIN MAZZYJ _bMDC1
@590 /*All right. Set up the board and let's begin.*/
END
	+ ~RandomNum(3,1)~ + @593 /*All right. Peasant to Red Five.*/ + _bMDC4
	+ ~RandomNum(3,2)~ + @593 + _bMDC5
	+ ~RandomNum(3,3)~ + @593 + _bMDC6
	+ ~RandomNum(3,1)~ + @594 /*Okay... Knight to White Cleric.*/ + _bMDC7
	+ ~RandomNum(3,2)~ + @594 + _bMDC8
	+ ~RandomNum(3,3)~ + @594 + _bMDC9
	
CHAIN MAZZYJ _bMDC2
@591 /*Agreed. You may go first.*/
END
	+ ~RandomNum(3,1)~ + @593 /*All right. Peasant to Red Five.*/ + _bMDC4
	+ ~RandomNum(3,2)~ + @593 + _bMDC5
	+ ~RandomNum(3,3)~ + @593 + _bMDC6
	+ ~RandomNum(3,1)~ + @594 /*Okay... Knight to White Cleric.*/ + _bMDC7
	+ ~RandomNum(3,2)~ + @594 + _bMDC8
	+ ~RandomNum(3,3)~ + @594 + _bMDC9
	+ ~RandomNum(3,1)~ + @595 /*Why don't you go first instead?*/ + _bMDC10
	+ ~RandomNum(3,2)~ + @595 + _bMDC11
	+ ~RandomNum(3,3)~ + @595 + _bMDC12
	
CHAIN MAZZYJ _bMDC3	
@592 /*A proper game of strategy. I approve. You make take the attackers. I like a challenge.*/
END
	+ ~RandomNum(3,1)~ + @593 /*All right. Peasant to Red Five.*/ + _bMDC4
	+ ~RandomNum(3,2)~ + @593 + _bMDC5
	+ ~RandomNum(3,3)~ + @593 + _bMDC6
	+ ~RandomNum(3,1)~ + @594 /*Okay... Knight to White Cleric.*/ + _bMDC7
	+ ~RandomNum(3,2)~ + @594 + _bMDC8
	+ ~RandomNum(3,3)~ + @594 + _bMDC9
	+ ~RandomNum(3,1)~ + @595 /*Why don't you go first instead?*/ + _bMDC10
	+ ~RandomNum(3,2)~ + @595 + _bMDC11
	+ ~RandomNum(3,3)~ + @595 + _bMDC12
	
CHAIN MAZZYJ _bMDC4
@596 /*A good opener. This shall be fun after all.*/
END
	+ ~RandomNum(3,1)~ + @608 /*I do have a plan.*/ + _bMDC16
	+ ~RandomNum(3,2)~ + @608 + _bMDC17
	+ ~RandomNum(3,3)~ + @608 + _bMDC18
	+ ~RandomNum(3,1)~ + @609 /*Beginner's luck will get me through.*/ + _bMDC19
	+ ~RandomNum(3,2)~ + @609 + _bMDC20
	+ ~RandomNum(3,3)~ + @609 + _bMDC21

CHAIN MAZZYJ _bMDC5
@597 /*This may be harder than I thought.*/
END
	+ ~RandomNum(3,1)~ + @608 /*I do have a plan.*/ + _bMDC16
	+ ~RandomNum(3,2)~ + @608 + _bMDC17
	+ ~RandomNum(3,3)~ + @608 + _bMDC18
	+ ~RandomNum(3,1)~ + @609 /*Beginner's luck will get me through.*/ + _bMDC19
	+ ~RandomNum(3,2)~ + @609 + _bMDC20
	+ ~RandomNum(3,3)~ + @609 + _bMDC21

CHAIN MAZZYJ _bMDC6
@598 /*Good. You know what you are doing. My Peasant shall do the same.*/
END
	+ ~RandomNum(3,1)~ + @608 /*I do have a plan.*/ + _bMDC16
	+ ~RandomNum(3,2)~ + @608 + _bMDC17
	+ ~RandomNum(3,3)~ + @608 + _bMDC18
	+ ~RandomNum(3,1)~ + @609 /*Beginner's luck will get me through.*/ + _bMDC19
	+ ~RandomNum(3,2)~ + @609 + _bMDC20
	+ ~RandomNum(3,3)~ + @609 + _bMDC21

CHAIN MAZZYJ _bMDC7
@599 /*I see this will be quick. Well, let us get it over with.*/
END	
	+ ~RandomNum(3,1)~ + @607 /*Wait and see. The game isn't finished yet.*/ + _bMDC13
	+ ~RandomNum(3,2)~ + @607 + _bMDC14
	+ ~RandomNum(3,3)~ + @607 + _bMDC15
	+ ~RandomNum(3,1)~ + @608 /*I do have a plan.*/ + _bMDC16
	+ ~RandomNum(3,2)~ + @608 + _bMDC17
	+ ~RandomNum(3,3)~ + @608 + _bMDC18
	+ ~RandomNum(3,1)~ + @609 /*Beginner's luck will get me through.*/ + _bMDC19
	+ ~RandomNum(3,2)~ + @609 + _bMDC20
	+ ~RandomNum(3,3)~ + @609 + _bMDC21

CHAIN MAZZYJ _bMDC8
@600 /*A poor beginning. Your Knight will be captured on its own.*/
END
	+ ~RandomNum(3,1)~ + @607 /*Wait and see. The game isn't finished yet.*/ + _bMDC13
	+ ~RandomNum(3,2)~ + @607 + _bMDC14
	+ ~RandomNum(3,3)~ + @607 + _bMDC15
	+ ~RandomNum(3,1)~ + @608 /*I do have a plan.*/ + _bMDC16
	+ ~RandomNum(3,2)~ + @608 + _bMDC17
	+ ~RandomNum(3,3)~ + @608 + _bMDC18
	+ ~RandomNum(3,1)~ + @609 /*Beginner's luck will get me through.*/ + _bMDC19
	+ ~RandomNum(3,2)~ + @609 + _bMDC20
	+ ~RandomNum(3,3)~ + @609 + _bMDC21

CHAIN MAZZYJ _bMDC9
@601 /*You do know the rules? That was a foolish move to make.*/
END
	+ ~RandomNum(3,1)~ + @607 /*Wait and see. The game isn't finished yet.*/ + _bMDC13
	+ ~RandomNum(3,2)~ + @607 + _bMDC14
	+ ~RandomNum(3,3)~ + @607 + _bMDC15
	+ ~RandomNum(3,1)~ + @608 /*I do have a plan.*/ + _bMDC16
	+ ~RandomNum(3,2)~ + @608 + _bMDC17
	+ ~RandomNum(3,3)~ + @608 + _bMDC18
	+ ~RandomNum(3,1)~ + @609 /*Beginner's luck will get me through.*/ + _bMDC19
	+ ~RandomNum(3,2)~ + @609 + _bMDC20
	+ ~RandomNum(3,3)~ + @609 + _bMDC21

CHAIN MAZZYJ _bMDC10
@602 /*I suppose you may choose since you made the invitation. But next time, red is mine. So, Peasant to Red Five. The standard opening. Do you have a counter?*/
END
	+ ~RandomNum(3,1)~ + @607 /*Wait and see. The game isn't finished yet.*/ + _bMDC13
	+ ~RandomNum(3,2)~ + @607 + _bMDC14
	+ ~RandomNum(3,3)~ + @607 + _bMDC15
	+ ~RandomNum(3,1)~ + @608 /*I do have a plan.*/ + _bMDC16
	+ ~RandomNum(3,2)~ + @608 + _bMDC17
	+ ~RandomNum(3,3)~ + @608 + _bMDC18
	+ ~RandomNum(3,1)~ + @609 /*Beginner's luck will get me through.*/ + _bMDC19
	+ ~RandomNum(3,2)~ + @609 + _bMDC20
	+ ~RandomNum(3,3)~ + @609 + _bMDC21

CHAIN MAZZYJ _bMDC11
@603 /*Not this time, <CHARNAME>. Perhaps later, if we decide to play again. Now make your move.*/
= @604 /*Hmm, Peasant to Red Five. A boring choice, but practical.*/
END
	+ ~RandomNum(3,1)~ + @607 /*Wait and see. The game isn't finished yet.*/ + _bMDC13
	+ ~RandomNum(3,2)~ + @607 + _bMDC14
	+ ~RandomNum(3,3)~ + @607 + _bMDC15
	+ ~RandomNum(3,1)~ + @608 /*I do have a plan.*/ + _bMDC16
	+ ~RandomNum(3,2)~ + @608 + _bMDC17
	+ ~RandomNum(3,3)~ + @608 + _bMDC18
	+ ~RandomNum(3,1)~ + @609 /*Beginner's luck will get me through.*/ + _bMDC19
	+ ~RandomNum(3,2)~ + @609 + _bMDC20
	+ ~RandomNum(3,3)~ + @609 + _bMDC21

CHAIN MAZZYJ _bMDC12
@605 /*You are comfortable in your skills. I like that. But if we must play chess, I will be playing the defenders. Which means that you move first; what will you choose?*/
= @606 /*Knight to White Cleric; that is interesting. Bold, but risky.*/
END
	+ ~RandomNum(3,1)~ + @607 /*Wait and see. The game isn't finished yet.*/ + _bMDC13
	+ ~RandomNum(3,2)~ + @607 + _bMDC14
	+ ~RandomNum(3,3)~ + @607 + _bMDC15
	+ ~RandomNum(3,1)~ + @608 /*I do have a plan.*/ + _bMDC16
	+ ~RandomNum(3,2)~ + @608 + _bMDC17
	+ ~RandomNum(3,3)~ + @608 + _bMDC18
	+ ~RandomNum(3,1)~ + @609 /*Beginner's luck will get me through.*/ + _bMDC19
	+ ~RandomNum(3,2)~ + @609 + _bMDC20
	+ ~RandomNum(3,3)~ + @609 + _bMDC21

CHAIN MAZZYJ _bMDC13
@610 /*I move here... you counter there. I take the Dragon, my Knight is captured. And then...*/
= @611 /*Yes, your Castle falls. Well fought, my friend, but I have my victory.*/
= @612 /*That was... entertaining. We may play again sometime.*/
DO ~AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
EXIT

CHAIN MAZZYJ _bMDC14
@613 /*All right, show me what you can do.*/
= @614 /*...A foolish choice. I have your Cleric...*/
= @615 /*...My Knight! How did I miss that?*/
= @616 /*I must protect my Castle. Perhaps, if I move here...*/
= @617 /*No! You have beaten me! I must have a rematch later on.*/
DO ~AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
EXIT

CHAIN MAZZYJ _bMDC15
@618 /*Yes, it is. I have you. Three moves and we are done.*/
= @619 /*You must have been distracted, my friend. That was no challenge. If we are to do this again, you must put up a better fight.*/
DO ~AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
EXIT

CHAIN MAZZYJ _bMDC16
@620 /*Why don't I believe you? But we shall see. Cleric to Grey Seven. Your move.*/
= @621 /*Knight to Peasant? Truly?.. Well, I answer you in kind... White Knight to Black Six.*/
= @622 /*Dragon takes Knight... My wizard? No, you are tricky... My Castle?! You have won but I fought fairly. I would not mind another game later on.*/
DO ~AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
EXIT

CHAIN MAZZYJ _bMDC17
@623 /*That's what you always say, yet your plans fall to pieces at the first clash of blades. This shall be no different. Knight to Black Seven. What say you now?*/
= @624 /*...Dragon takes Cleric. A bold choice... Hah, I have your Knights... You thought I would fall for that?*/
= @625 /*And my Peasant storms the Castle. This game is mine. Well played, but MY plan won out. Let this be a reminder when you ignore my strategies.*/
DO ~AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
EXIT

CHAIN MAZZYJ _bMDC18
@626 /*Perhaps you do. But I shall win anyway. Wizard to Grey Four.*/
= @627 /*... Cleric takes Knight... Peasant turns to Squire... You may have my Wizard, but I have your Dragon in exchange. You will pay dearly for each square.*/
= @628 /*If I move... no... How about... no... What if... No. I cannot move, but I have trapped you. I suppose this is a tie. I did not expect that outcome, but I did enjoy myself.*/
DO ~AddXPObject("Mazzy",1000) AddXPObject(Player1,1000)~
EXIT

CHAIN MAZZYJ _bMDC19
@629 /*I'm afraid that it will not. Five moves and we are done; I can see it now.*/
= @630 /*If we do this again, I expect a better fight.*/
DO ~AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
EXIT

CHAIN MAZZYJ _bMDC20
@631 /*Perhaps. Perhaps not. Peasant to Grey Three.*/
= @632 /*...Dragon to Black Two? Why would you?... My Peasant for your Cleric. A poor trade, my friend... Wizard to Grey Four; I have you on the defensive.*/
= @633 /*Knight to take your Cleric. You return as I expected. My Dragon to your Castle and I have won. You need more practice, <CHARNAME>. We shall have to play again another time.*/
DO ~AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
EXIT

CHAIN MAZZYJ _bMDC21
@634 /*We shall see. Knight to Black Six. What say you?*/
= @635 /*Cleric to Red Peasant? Are you simply placing your pieces randomly? But you have removed your hand; the move is done... My Wizard takes your Cleric and threatens both your Knights.*/
= @636 /*Dragon to Black Five. Your move.... Knight to Grey Four... And mine.. I- I- I am checkmated. That is most unexpected. I must think on this before we play again.*/
DO ~AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
EXIT

CHAIN MAZZYJ _bMD1
@637 /*I do not like dice. There is too much luck involved. But I suppose we can play once.*/
END
	+ ~RandomNum(4,1)~ + @640 /*Great, I call evens.*/ + _bMD4
	+ ~RandomNum(4,2)~ + @640 + _bMD5
	+ ~RandomNum(4,3)~ + @640 + _bMD6
	+ ~RandomNum(4,4)~ + @640 + _bMD7
	+ ~RandomNum(4,1)~ + @641 /*I call odds.*/ + _bMD4
	+ ~RandomNum(4,2)~ + @641 + _bMD5
	+ ~RandomNum(4,3)~ + @641 + _bMD6
	+ ~RandomNum(4,4)~ + @641 + _bMD7
	+ ~RandomNum(4,1)~ + @642 /*One of each, that's my bet.*/ + _bMD4
	+ ~RandomNum(4,2)~ + @642 + _bMD5
	+ ~RandomNum(4,3)~ + @642 + _bMD6
	+ ~RandomNum(4,4)~ + @642 + _bMD7
	+ ~Global("_bMazzyRomance","GLOBAL",2) RandomNum(3,1)~ + @643 + _bMD8
	+ ~Global("_bMazzyRomance","GLOBAL",2) RandomNum(3,2)~ + @643 + _bMD9
	+ ~Global("_bMazzyRomance","GLOBAL",2) RandomNum(3,3)~ + @643 + _bMD10

CHAIN MAZZYJ _bMD2
@638 /*That will do. Call your bet and roll.*/
END
	+ ~RandomNum(4,1)~ + @640 /*Great, I call evens.*/ + _bMD4
	+ ~RandomNum(4,2)~ + @640 + _bMD5
	+ ~RandomNum(4,3)~ + @640 + _bMD6
	+ ~RandomNum(4,4)~ + @640 + _bMD7
	+ ~RandomNum(4,1)~ + @641 /*I call odds.*/ + _bMD4
	+ ~RandomNum(4,2)~ + @641 + _bMD5
	+ ~RandomNum(4,3)~ + @641 + _bMD6
	+ ~RandomNum(4,4)~ + @641 + _bMD7
	+ ~RandomNum(4,1)~ + @642 /*One of each, that's my bet.*/ + _bMD4
	+ ~RandomNum(4,2)~ + @642 + _bMD5
	+ ~RandomNum(4,3)~ + @642 + _bMD6
	+ ~RandomNum(4,4)~ + @642 + _bMD7
	+ ~Global("_bMazzyRomance","GLOBAL",2) RandomNum(3,1)~ + @643 + _bMD8
	+ ~Global("_bMazzyRomance","GLOBAL",2) RandomNum(3,2)~ + @643 + _bMD9
	+ ~Global("_bMazzyRomance","GLOBAL",2) RandomNum(3,3)~ + @643 + _bMD10

CHAIN MAZZYJ _bMD3
@639 /*All right. Let us get this over with. Three rolls to finish quickly.*/
END
	+ ~RandomNum(4,1)~ + @640 /*Great, I call evens.*/ + _bMD4
	+ ~RandomNum(4,2)~ + @640 + _bMD5
	+ ~RandomNum(4,3)~ + @640 + _bMD6
	+ ~RandomNum(4,4)~ + @640 + _bMD7
	+ ~RandomNum(4,1)~ + @641 /*I call odds.*/ + _bMD4
	+ ~RandomNum(4,2)~ + @641 + _bMD5
	+ ~RandomNum(4,3)~ + @641 + _bMD6
	+ ~RandomNum(4,4)~ + @641 + _bMD7
	+ ~RandomNum(4,1)~ + @642 /*One of each, that's my bet.*/ + _bMD4
	+ ~RandomNum(4,2)~ + @642 + _bMD5
	+ ~RandomNum(4,3)~ + @642 + _bMD6
	+ ~RandomNum(4,4)~ + @642 + _bMD7
	+ ~Global("_bMazzyRomance","GLOBAL",2) RandomNum(3,1)~ + @643 + _bMD8
	+ ~Global("_bMazzyRomance","GLOBAL",2) RandomNum(3,2)~ + @643 + _bMD9
	+ ~Global("_bMazzyRomance","GLOBAL",2) RandomNum(3,3)~ + @643 + _bMD10

CHAIN MAZZYJ _bMD4
@644 /*You have this round. But the next is mine.*/
END
	+ ~RandomNum(3,1)~ + @651 /*A total of ten with Tymora's favor.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @651 + _bMD12
	+ ~RandomNum(3,3)~ + @651 + _bMD13
	+ ~RandomNum(3,1)~ + @652 /*Evens. Dice don't fail me now*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @652 + _bMD12
	+ ~RandomNum(3,3)~ + @652 + _bMD13
	+ ~RandomNum(3,1)~ + @653 /*I will take odds. Two out of out three.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @653 + _bMD12
	+ ~RandomNum(3,3)~ + @653 + _bMD13
	+ ~RandomNum(3,1)~ + @654 /*A five for the point. I'm feeling lucky.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @654 + _bMD12
	+ ~RandomNum(3,3)~ + @654 + _bMD13

CHAIN MAZZYJ _bMD5
@645 /*Hah! Your bet is lost. My turn to roll.*/
END
	+ ~RandomNum(3,1)~ + @651 /*A total of ten with Tymora's favor.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @651 + _bMD12
	+ ~RandomNum(3,3)~ + @651 + _bMD13
	+ ~RandomNum(3,1)~ + @652 /*Evens. Dice don't fail me now*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @652 + _bMD12
	+ ~RandomNum(3,3)~ + @652 + _bMD13
	+ ~RandomNum(3,1)~ + @653 /*I will take odds. Two out of out three.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @653 + _bMD12
	+ ~RandomNum(3,3)~ + @653 + _bMD13
	+ ~RandomNum(3,1)~ + @654 /*A five for the point. I'm feeling lucky.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @654 + _bMD12
	+ ~RandomNum(3,3)~ + @654 + _bMD13

CHAIN MAZZYJ _bMD6
@646 /*The dice are in my favour today.*/
END
	+ ~RandomNum(3,1)~ + @651 /*A total of ten with Tymora's favor.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @651 + _bMD12
	+ ~RandomNum(3,3)~ + @651 + _bMD13
	+ ~RandomNum(3,1)~ + @652 /*Evens. Dice don't fail me now*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @652 + _bMD12
	+ ~RandomNum(3,3)~ + @652 + _bMD13
	+ ~RandomNum(3,1)~ + @653 /*I will take odds. Two out of out three.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @653 + _bMD12
	+ ~RandomNum(3,3)~ + @653 + _bMD13
	+ ~RandomNum(3,1)~ + @654 /*A five for the point. I'm feeling lucky.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @654 + _bMD12
	+ ~RandomNum(3,3)~ + @654 + _bMD13

CHAIN MAZZYJ _bMD7
@647 /*This time the roll is yours. Call again.*/
END
	+ ~RandomNum(3,1)~ + @651 /*A total of ten with Tymora's favor.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @651 + _bMD12
	+ ~RandomNum(3,3)~ + @651 + _bMD13
	+ ~RandomNum(3,1)~ + @652 /*Evens. Dice don't fail me now*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @652 + _bMD12
	+ ~RandomNum(3,3)~ + @652 + _bMD13
	+ ~RandomNum(3,1)~ + @653 /*I will take odds. Two out of out three.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @653 + _bMD12
	+ ~RandomNum(3,3)~ + @653 + _bMD13
	+ ~RandomNum(3,1)~ + @654 /*A five for the point. I'm feeling lucky.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @654 + _bMD12
	+ ~RandomNum(3,3)~ + @654 + _bMD13

CHAIN MAZZYJ _bMD8
@648 /*Seven. Tymora smiles on you today. You shall have your kiss.*/
END
	+ ~RandomNum(3,1)~ + @651 /*A total of ten with Tymora's favor.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @651 + _bMD12
	+ ~RandomNum(3,3)~ + @651 + _bMD13
	+ ~RandomNum(3,1)~ + @652 /*Evens. Dice don't fail me now*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @652 + _bMD12
	+ ~RandomNum(3,3)~ + @652 + _bMD13
	+ ~RandomNum(3,1)~ + @653 /*I will take odds. Two out of out three.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @653 + _bMD12
	+ ~RandomNum(3,3)~ + @653 + _bMD13
	+ ~RandomNum(3,1)~ + @654 /*A five for the point. I'm feeling lucky.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @654 + _bMD12
	+ ~RandomNum(3,3)~ + @654 + _bMD13

CHAIN MAZZYJ _bMD9
@649 /*The dice fall otherwise, but I shall kiss you anyway.*/
END
	+ ~RandomNum(3,1)~ + @651 /*A total of ten with Tymora's favor.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @651 + _bMD12
	+ ~RandomNum(3,3)~ + @651 + _bMD13
	+ ~RandomNum(3,1)~ + @652 /*Evens. Dice don't fail me now*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @652 + _bMD12
	+ ~RandomNum(3,3)~ + @652 + _bMD13
	+ ~RandomNum(3,1)~ + @653 /*I will take odds. Two out of out three.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @653 + _bMD12
	+ ~RandomNum(3,3)~ + @653 + _bMD13
	+ ~RandomNum(3,1)~ + @654 /*A five for the point. I'm feeling lucky.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @654 + _bMD12
	+ ~RandomNum(3,3)~ + @654 + _bMD13

CHAIN MAZZYJ _bMD10
@650 /*Sorry, my love. Roll again.*/
END
	+ ~RandomNum(3,1)~ + @651 /*A total of ten with Tymora's favor.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @651 + _bMD12
	+ ~RandomNum(3,3)~ + @651 + _bMD13
	+ ~RandomNum(3,1)~ + @652 /*Evens. Dice don't fail me now*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @652 + _bMD12
	+ ~RandomNum(3,3)~ + @652 + _bMD13
	+ ~RandomNum(3,1)~ + @653 /*I will take odds. Two out of out three.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @653 + _bMD12
	+ ~RandomNum(3,3)~ + @653 + _bMD13
	+ ~RandomNum(3,1)~ + @654 /*A five for the point. I'm feeling lucky.*/ + _bMD11 
	+ ~RandomNum(3,2)~ + @654 + _bMD12
	+ ~RandomNum(3,3)~ + @654 + _bMD13
	
CHAIN MAZZYJ _bMD11
@655 /*You have it. One more roll and we shall see. Call your bet again.*/
END
	+ ~RandomNum(4,1)~ + @658 /*Evens for the win.*/ + _bMD14
	+ ~RandomNum(4,2)~ + @658 + _bMD15
	+ ~RandomNum(4,3)~ + @658 + _bMD16
	+ ~RandomNum(4,4)~ + @658 + _bMD17
	+ ~RandomNum(4,1)~ + @659 /*Go big or go home. I shall bet eighteen.*/ + _bMD14
	+ ~RandomNum(4,2)~ + @659 + _bMD15
	+ ~RandomNum(4,3)~ + @659 + _bMD16
	+ ~RandomNum(4,4)~ + @659 + _bMD17
	+ ~RandomNum(4,1)~ + @660 /*I call a majority of odds. The final roll.*/ + _bMD14
	+ ~RandomNum(4,2)~ + @660 + _bMD15
	+ ~RandomNum(4,3)~ + @660 + _bMD16
	+ ~RandomNum(4,4)~ + @660 + _bMD17


CHAIN MAZZYJ _bMD12
@656 /*The point is mine. Are you ready to end this nonsense?*/
END
	+ ~RandomNum(3,1)~ + @659 /*Go big or go home. I shall bet eighteen.*/ + _bMD14
	+ ~RandomNum(3,2)~ + @659 + _bMD16
	+ ~RandomNum(3,3)~ + @659 + _bMD17
	+ ~RandomNum(3,1)~ + @660 /*I call a majority of odds. The final roll.*/ + _bMD14
	+ ~RandomNum(3,2)~ + @660 + _bMD16
	+ ~RandomNum(3,3)~ + @660 + _bMD17

CHAIN MAZZYJ _bMD13
@657 /*One toward, one against and the last is cocked. I shall count that as a tie.*/
END
	+ ~RandomNum(4,1)~ + @658 /*Evens for the win.*/ + _bMD14 
	+ ~RandomNum(4,2)~ + @658 + _bMD15
	+ ~RandomNum(4,3)~ + @658 + _bMD16
	+ ~RandomNum(4,4)~ + @658 + _bMD17
	+ ~RandomNum(4,1)~ + @659 /*Go big or go home. I shall bet eighteen.*/ + _bMD14
	+ ~RandomNum(4,2)~ + @659 + _bMD15
	+ ~RandomNum(4,3)~ + @659 + _bMD16
	+ ~RandomNum(4,4)~ + @659 + _bMD17
	+ ~RandomNum(4,1)~ + @660 /*I call a majority of odds. The final roll.*/ + _bMD14 
	+ ~RandomNum(4,2)~ + @660 + _bMD15
	+ ~RandomNum(4,3)~ + @660 + _bMD16
	+ ~RandomNum(4,4)~ + @660 + _bMD17
	
CHAIN MAZZYJ _bMD14
@661 /*The dice have fallen in your favour. Congratulations. I wish to continue now.*/
DO ~AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
EXIT

CHAIN MAZZYJ _bMD15
@662 /*This is why I do not play dice. There is no skill in winning via luck. But you may celebrate your victory if you must.*/
DO ~AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
EXIT

CHAIN MAZZYJ _bMD16
@663 /*And we have tied. I suppose that was somewhat diverting, but we should continue on.*/
DO ~AddXPObject("Mazzy",1000) AddXPObject(Player1,1000)~
EXIT

CHAIN MAZZYJ _bMD17
@664 /*Hmm, I have won. Perhaps dice games are not so annoying after all.*/
DO ~AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
EXIT

CHAIN MAZZYJ _bMIS1
@665 /*Interesting choice, <CHARNAME>. A fine game with which to test our skills at observation. That will prove useful later on.*/
END
	+ ~RandomNum(3,1)~ + @668 /*I spy with my little eye something beginning with A.*/ + _bMIS4
	+ ~RandomNum(3,2)~ + @668 + _bMIS5
	+ ~RandomNum(3,3)~ + @668 + _bMIS6
	+ ~RandomNum(3,1)~ + @669 /*How about something that is red?*/ + _bMIS7
	+ ~RandomNum(3,2)~ + @669 + _bMIS8
	+ ~RandomNum(3,3)~ + @669 + _bMIS9
	+ ~RandomNum(3,1)~ + @670 /*Something small and deadly, that's my choice this time.*/ + _bMIS10
	+ ~RandomNum(3,2)~ + @670 + _bMIS11
	+ ~RandomNum(3,3)~ + @670 + _bMIS12

CHAIN MAZZYJ _bMIS2
@666 /*I suppose this will make the trip pass faster. You may begin.*/
END
	+ ~RandomNum(3,1)~ + @668 /*I spy with my little eye something beginning with A.*/ + _bMIS4
	+ ~RandomNum(3,2)~ + @668 + _bMIS5
	+ ~RandomNum(3,3)~ + @668 + _bMIS6
	+ ~RandomNum(3,1)~ + @669 /*How about something that is red?*/ + _bMIS7
	+ ~RandomNum(3,2)~ + @669 + _bMIS8
	+ ~RandomNum(3,3)~ + @669 + _bMIS9
	+ ~RandomNum(3,1)~ + @670 /*Something small and deadly, that's my choice this time.*/ + _bMIS10
	+ ~RandomNum(3,2)~ + @670 + _bMIS11
	+ ~RandomNum(3,3)~ + @670 + _bMIS12


CHAIN MAZZYJ _bMIS3
@667 /*You're on. Choose your first item.*/
END
	+ ~RandomNum(3,1)~ + @668 /*I spy with my little eye something beginning with A.*/ + _bMIS4
	+ ~RandomNum(3,2)~ + @668 + _bMIS5
	+ ~RandomNum(3,3)~ + @668 + _bMIS6
	+ ~RandomNum(3,1)~ + @669 /*How about something that is red?*/ + _bMIS7
	+ ~RandomNum(3,2)~ + @669 + _bMIS8
	+ ~RandomNum(3,3)~ + @669 + _bMIS9
	+ ~RandomNum(3,1)~ + @670 /*Something small and deadly, that's my choice this time.*/ + _bMIS10
	+ ~RandomNum(3,2)~ + @670 + _bMIS11
	+ ~RandomNum(3,3)~ + @670 + _bMIS12
	
CHAIN MAZZYJ _bMIS4
@671 /*That is too easy, <CHARNAME>. The answer is an arrow.*/
END
	+ ~RandomNum(2,1)~ + @675 /*That's right. I guess you've won. Time for us to move on.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @675 + _bMISWON2
	+ ~RandomNum(3,1)~ + @676 /*No, that's not the answer.*/ + _bMIS13
	+ ~RandomNum(3,2)~ + @676 + _bMIS14
	+ ~RandomNum(3,3)~ + @676 + _bMIS15
	+ ~RandomNum(3,1)~+ @677 /*Guess again.*/ + _bMIS13
	+ ~RandomNum(3,2)~ + @677 + _bMIS14
	+ ~RandomNum(3,3)~ + @677 + _bMIS15
	
CHAIN MAZZYJ _bMIS5
@672 /*Something beginning with A.... Anger... Aerie... Anomen...*/
= @673 /*No. It would not be one of those. Are you thinking of an apple?*/
END
	+ ~RandomNum(2,1)~ + @675 /*That's right. I guess you've won. Time for us to move on.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @675 + _bMISWON2
	+ ~RandomNum(3,1)~ + @676 /*No, that's not the answer.*/ + _bMIS13
	+ ~RandomNum(3,2)~ + @676 + _bMIS14
	+ ~RandomNum(3,3)~ + @676 + _bMIS15
	+ ~RandomNum(3,1)~+ @677 /*Guess again.*/ + _bMIS13
	+ ~RandomNum(3,2)~ + @677 + _bMIS14
	+ ~RandomNum(3,3)~ + @677 + _bMIS15

CHAIN MAZZYJ _bMIS6 
@674 /*Nothing too complicated. An acorn?*/
END
	+ ~RandomNum(2,1)~ + @675 /*That's right. I guess you've won. Time for us to move on.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @675 + _bMISWON2
	+ ~RandomNum(3,1)~ + @676 /*No, that's not the answer.*/ + _bMIS13
	+ ~RandomNum(3,2)~ + @676 + _bMIS14
	+ ~RandomNum(3,3)~ + @676 + _bMIS15
	+ ~RandomNum(3,1)~+ @677 /*Guess again.*/ + _bMIS13
	+ ~RandomNum(3,2)~ + @677 + _bMIS14
	+ ~RandomNum(3,3)~ + @677 + _bMIS15
	
CHAIN MAZZYJ _bMISWON1
@678 /*A quick game. But diverting enough. We may play again later on.*/
DO ~AddXPObject("Mazzy",1000) AddXPObject(Player1,1000)~
EXIT

CHAIN MAZZYJ _bMISWON2
@679 /*Next time you must try harder, <CHARNAME>. If we are to waste our time on games, then they must be challenging.*/
DO ~AddXPObject("Mazzy",1000) AddXPObject(Player1,1000)~
EXIT

CHAIN MAZZYJ _bMIS13
@680 /*Hmm. This is surprisingly difficult... But I know, is it an axe?*/
END
	+ ~RandomNum(2,1)~ + @683 /*Sorry, that's still wrong.*/ + _bMISQUIT1
	+ ~RandomNum(2,2)~ + @683 +  _bMISQUIT2
	+ ~RandomNum(2,1)~ + @684 /*Correct. You've gotten it.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @684 + _bMISWON2
	
	
CHAIN MAZZYJ _bMIS14
@681 /*All right. I believe you're looking at the antidote hanging on my belt.*/
END
	+ ~RandomNum(2,1)~ + @683 /*Sorry, that's still wrong.*/ + _bMISQUIT1
	+ ~RandomNum(2,2)~ + @683 +  _bMISQUIT2
	+ ~RandomNum(2,1)~ + @684 /*Correct. You've gotten it.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @684 + _bMISWON2

CHAIN MAZZYJ _bMIS15
@682 /*Ants, <CHARNAME>. There are ants everywhere.*/
END
	+ ~RandomNum(2,1)~ + @683 /*Sorry, that's still wrong.*/ + _bMISQUIT1
	+ ~RandomNum(2,2)~ + @683 +  _bMISQUIT2
	+ ~RandomNum(2,1)~ + @684 /*Correct. You've gotten it.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @684 + _bMISWON2
	
CHAIN MAZZYJ _bMISQUIT1
@685 /**sigh* I do not have time for this nonsense. I concede the victory. May we continue now?*/
DO ~AddXPObject("Mazzy",1000) AddXPObject(Player1,1000)~
EXIT

CHAIN MAZZYJ _bMISQUIT2 
@686 /*Then I suppose you have won this round. Next time you will lose.*/
DO ~AddXPObject("Mazzy",1000) AddXPObject(Player1,1000)~
EXIT

CHAIN MAZZYJ _bMIS7
@687 /*Something red? There are many options here.*/
== MAZZYJ IF ~InParty("Edwin")~ THEN @688 /*Is it the wizard, Edwin? He takes great pride in those red robes.*/
== MAZZYJ IF ~!InParty("Edwin")~ THEN @689 /*Are you thinking about the Red Wizards? If one is near, we should attack.*/
= @690 /*Do I have the answer now?*/
END
	+ ~InParty("Edwin") RandomNum(2,1)~ + @675 /*That's right. I guess you've won. Time for us to move on.*/ + _bMISWON1
	+ ~InParty("Edwin") RandomNum(2,2)~ + @675 + _bMISWON2
	+ ~RandomNum(3,1)~ + @676 /*No, that's not the answer.*/ + _bMIS16
	+ ~RandomNum(3,2)~ + @676 + _bMIS17
	+ ~RandomNum(3,3)~ + @676 + _bMIS18
	+ ~RandomNum(3,1)~ + @677 /*Guess again.*/ + _bMIS16 
	+ ~RandomNum(3,2)~ + @677 + _bMIS17 
	+ ~RandomNum(3,3)~ + @677 + _bMIS18 

CHAIN MAZZYJ _bMIS8
@691 /*Are you thinking of an autumn leaf? There's probably one around here somewhere and those are often red as flame.*/
END
	+ ~RandomNum(2,1)~ + @675 /*That's right. I guess you've won. Time for us to move on.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @675 + _bMISWON2
	+ ~RandomNum(3,1)~ + @676 /*No, that's not the answer.*/ + _bMIS16
	+ ~RandomNum(3,2)~ + @676 + _bMIS17
	+ ~RandomNum(3,3)~ + @676 + _bMIS18
	+ ~RandomNum(3,1)~ + @677 /*Guess again.*/ + _bMIS16 
	+ ~RandomNum(3,2)~ + @677 + _bMIS17 
	+ ~RandomNum(3,3)~ + @677 + _bMIS18

CHAIN MAZZYJ _bMIS9
@692 /*Hmm, an apple would be too easy and my arrows are fletched with black today.*/
= @693 /*Is it the red flag over there?*/
END
	+ ~RandomNum(2,1)~ + @675 /*That's right. I guess you've won. Time for us to move on.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @675 + _bMISWON2
	+ ~RandomNum(3,1)~ + @676 /*No, that's not the answer.*/ + _bMIS16
	+ ~RandomNum(3,2)~ + @676 + _bMIS17
	+ ~RandomNum(3,3)~ + @676 + _bMIS18
	+ ~RandomNum(3,1)~ + @677 /*Guess again.*/ + _bMIS16 
	+ ~RandomNum(3,2)~ + @677 + _bMIS17 
	+ ~RandomNum(3,3)~ + @677 + _bMIS18
	
CHAIN MAZZYJ _bMIS16
@694 /*All right.... My gloves then. They have a reddish shade.*/
END
	+ ~RandomNum(2,1)~ + @683 /*Sorry, that's still wrong.*/ + _bMISQUIT1
	+ ~RandomNum(2,2)~ + @683 +  _bMISQUIT2
	+ ~RandomNum(2,1)~ + @684 /*Correct. You've gotten it.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @684 + _bMISWON2

CHAIN MAZZYJ _bMIS17
@695 /*Hmm, really? I was sure I had it right.*/
= @696 /*But if not, were you thinking of an apple after all?*/
END
	+ ~RandomNum(2,1)~ + @683 /*Sorry, that's still wrong.*/ + _bMISQUIT1
	+ ~RandomNum(2,2)~ + @683 +  _bMISQUIT2
	+ ~RandomNum(2,1)~ + @684 /*Correct. You've gotten it.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @684 + _bMISWON2


CHAIN MAZZYJ _bMIS18
@697 /*I know. Is it the beads tied in my hair? That was a tricky choice, <CHARNAME>, but technically allowed.*/
END
	+ ~RandomNum(2,1)~ + @683 /*Sorry, that's still wrong.*/ + _bMISQUIT1
	+ ~RandomNum(2,2)~ + @683 +  _bMISQUIT2
	+ ~RandomNum(2,1)~ + @684 /*Correct. You've gotten it.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @684 + _bMISWON2

CHAIN MAZZYJ _bMIS10
@698 /*Seriously, <CHARNAME>? You are not supposed to choose me. Though I suppose small and deadly is slightly flattering.*/
END
	+ ~RandomNum(2,1)~ + @675 /*That's right. I guess you've won. Time for us to move on.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @675 + _bMISWON2
	+ ~RandomNum(3,1)~ + @676 /*No, that's not the answer.*/ + _bMIS19
	+ ~RandomNum(3,2)~ + @676 + _bMIS20
	+ ~RandomNum(3,3)~ + @676 + _bMIS21
	+ ~RandomNum(3,1)~+ @677 /*Guess again.*/ + _bMIS19
	+ ~RandomNum(3,2)~ + @677 + _bMIS20
	+ ~RandomNum(3,3)~ + @677 + _bMIS21

CHAIN MAZZYJ _bMIS11
@699 /*Small and deadly? A dagger. That is an easy choice.*/
END
	+ ~RandomNum(2,1)~ + @675 /*That's right. I guess you've won. Time for us to move on.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @675 + _bMISWON2
	+ ~RandomNum(3,1)~ + @676 /*No, that's not the answer.*/ + _bMIS19
	+ ~RandomNum(3,2)~ + @676 + _bMIS20
	+ ~RandomNum(3,3)~ + @676 + _bMIS21
	+ ~RandomNum(3,1)~+ @677 /*Guess again.*/ + _bMIS19
	+ ~RandomNum(3,2)~ + @677 + _bMIS20
	+ ~RandomNum(3,3)~ + @677 + _bMIS21

CHAIN MAZZYJ _bMIS12
@700 /*We are adventurers. Everything is deadly in our hands. But if I had to choose one thing, a wand would fit the bill.*/
END
	+ ~RandomNum(2,1)~ + @675 /*That's right. I guess you've won. Time for us to move on.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @675 + _bMISWON2
	+ ~RandomNum(3,1)~ + @676 /*No, that's not the answer.*/ + _bMIS19
	+ ~RandomNum(3,2)~ + @676 + _bMIS20
	+ ~RandomNum(3,3)~ + @676 + _bMIS21
	+ ~RandomNum(3,1)~+ @677 /*Guess again.*/ + _bMIS19
	+ ~RandomNum(3,2)~ + @677 + _bMIS20
	+ ~RandomNum(3,3)~ + @677 + _bMIS21
	
CHAIN MAZZYJ _bMIS19	
@701 /*Okay, then. I see a snake there in the shadows. Is that your lethal choice?*/
END
	+ ~RandomNum(2,1)~ + @683 /*Sorry, that's still wrong.*/ + _bMISQUIT1
	+ ~RandomNum(2,2)~ + @683 +  _bMISQUIT2
	+ ~RandomNum(2,1)~ + @684 /*Correct. You've gotten it.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @684 + _bMISWON2

CHAIN MAZZYJ _bMIS20
@702 /*Well, if that's not the right choice, then how about that poison on your belt? It's a dishonourable way to fight but I can't deny its deadliness.*/
END
	+ ~RandomNum(2,1)~ + @683 /*Sorry, that's still wrong.*/ + _bMISQUIT1
	+ ~RandomNum(2,2)~ + @683 +  _bMISQUIT2
	+ ~RandomNum(2,1)~ + @684 /*Correct. You've gotten it.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @684 + _bMISWON2

CHAIN MAZZYJ _bMIS21
@703 /*Hmm, this is harder than I thought. Small and deadly.... an arrow? You know those are quite lethal in my hands.*/
END
	+ ~RandomNum(2,1)~ + @683 /*Sorry, that's still wrong.*/ + _bMISQUIT1
	+ ~RandomNum(2,2)~ + @683 +  _bMISQUIT2
	+ ~RandomNum(2,1)~ + @684 /*Correct. You've gotten it.*/ + _bMISWON1
	+ ~RandomNum(2,2)~ + @684 + _bMISWON2
	
CHAIN MAZZYJ _bMC1
@704 /*Shall we play Go Fish?*/
END
	+ ~RandomNum(3,1)~ + @707 /*Sure. I haven't played since Candlekeep.*/ + _bMCGF1
	+ ~RandomNum(3,2)~ + @707 + _bMCGF2
	+ ~RandomNum(3,3)~ + @707 + _bMCGF3
	+ ~RandomNum(3,1)~ + @708 /*That's not what I expected. But why not?*/ + _bMCGF1
	+ ~RandomNum(3,2)~ + @708 + _bMCGF2
	+ ~RandomNum(3,3)~ + @708 + _bMCGF3
	+ ~RandomNum(3,1)~ + @709 /*Sounds good. I'll deal a hand.*/ + _bMCGF1
	+ ~RandomNum(3,2)~ + @709 + _bMCGF2
	+ ~RandomNum(3,3)~ + @709 + _bMCGF3
	
CHAIN MAZZYJ _bMCGF1
@710 /*Hmm. Do you have any Twos?*/
END
	++ @713 /*Sorry, go fish.*/ + _bMCGF4
	+ ~RandomNum(4,1)~ + @714 /*Yes, I do. Here you are.*/ + _bMCGF5
	+ ~RandomNum(4,2)~ + @714 + _bMCGF6
	+ ~RandomNum(4,3)~ + @714 + _bMCGF7
	+ ~RandomNum(4,4)~ + @714 + _bMCGF8
	
CHAIN MAZZYJ _bMCGF2
@711 /*Four Aces to start, <CHARNAME>, I think I have the lead. But the game must continue; do you have any Knaves?*/
END
	++ @713 /*Sorry, go fish.*/ + _bMCGF4
	+ ~RandomNum(4,1)~ + @714 /*Yes, I do. Here you are.*/ + _bMCGF5
	+ ~RandomNum(4,2)~ + @714 + _bMCGF6
	+ ~RandomNum(4,3)~ + @714 + _bMCGF7
	+ ~RandomNum(4,4)~ + @714 + _bMCGF8

CHAIN MAZZYJ _bMCGF3
@712 /*My move first, then. Do you have any Queens?*/
END
	++ @713 /*Sorry, go fish.*/ + _bMCGF4
	+ ~RandomNum(4,1)~ + @714 /*Yes, I do. Here you are.*/ + _bMCGF5
	+ ~RandomNum(4,2)~ + @714 + _bMCGF6
	+ ~RandomNum(4,3)~ + @714 + _bMCGF7
	+ ~RandomNum(4,4)~ + @714 + _bMCGF8
	
CHAIN MAZZYJ _bMCGF4
@715 /*All right. It's your turn, <CHARNAME>.*/
END
	+ ~RandomNum(4,1)~ + @716 /*Okay, do you have any Kings?*/ + _bMCGF9
	+ ~RandomNum(4,2)~ + @716 + _bMCGF10
	+ ~RandomNum(4,3)~ + @716 + _bMCGF11
	+ ~RandomNum(4,4)~ + @716 + _bMCGF12
	+ ~RandomNum(4,1)~ + @717 /*Got any Threes?*/ + _bMCGF9
	+ ~RandomNum(4,2)~ + @717 + _bMCGF10
	+ ~RandomNum(4,3)~ + @717 + _bMCGF11
	+ ~RandomNum(4,4)~ + @717 + _bMCGF12
	+ ~RandomNum(4,1)~ + @718 /*I'm feeling lucky. Do you have a Seven?*/ + _bMCGF9
	+ ~RandomNum(4,2)~ + @718 + _bMCGF10
	+ ~RandomNum(4,3)~ + @718 + _bMCGF11
	+ ~RandomNum(4,4)~ + @718 + _bMCGF12
	
CHAIN MAZZYJ _bMCGF5
@719 /*Thank you, <CHARNAME>... Now, what should I ask now?*/
== PLAYER1 @720 /**Twenty minutes later, the battle has been hard fought. But you have been unable to catch Mazzy's early lead.**/
== MAZZYJ @721 /*And there's the last pair. I've beaten you. I admit, that was diverting. But we should keep moving now.*/
DO ~AdvanceTime(TWENTY_MINUTES) AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
EXIT

CHAIN MAZZYJ _bMCGF6
@722 /*Hmmm, choices, choices.... Do you have any Fives?*/
== PLAYER1 @723 /**Fifteen minutes later, the sweat drips from your brow as you frown in concentration. One more question and the game is yours.**/
DO ~AdvanceTime(FIFTEEN_MINUTES) AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
== MAZZYJ @724 /*I can't believe it. I almost never lose Go Fish. You owe me a rematch later on.*/
EXIT
	
CHAIN MAZZYJ _bMCGF7
@725 /*Let's finish this quickly. Give me your Tens.*/
== PLAYER1 @726 /**Five minutes later, you look down at your cards in disbelief. This game has been a rout from start to finish and you can only hope that Mazzy finishes you off painlessly.**/
DO ~AdvanceTime(FIVE_MINUTES) AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
== MAZZYJ @727 /*Well, I suppose that was quick, though I was not expecting to win that easily. We should do this again another time.*/
EXIT

CHAIN MAZZYJ _bMCGF8
@728 /*You know. I believe I am actually having fun now.*/
== PLAYER1 @729 /**Ten minutes later, you are paying more attention to Mazzy's grin than to your questions. Which may be why her take is far outstripping yours.**/
DO ~AdvanceTime(TEN_MINUTES) AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
== MAZZYJ @730 /*Yes, very fun. This game is mine. We may play again in the future, but we should not take too much time. There are many souls in need of help.*/
EXIT
	
CHAIN MAZZYJ _bMCGF9
@731 /*No, <CHARNAME>. Go fish. I guess it's my turn again. Do you have a Nine?*/
== PLAYER1 @732 /**Ten minutes later, you've discovered that Mazzy is unreadable and her skills at Go Fish are far better than your own.*/
DO ~AdvanceTime(TEN_MINUTES) AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
== MAZZYJ @733 /*A good game, but you're dealing with a master. Now that I've won, we should be going anyway.*/
EXIT

CHAIN MAZZYJ _bMCGF10
@734 /*Unfortunately, yes. Take this and ask again.*/
== PLAYER1 @735 /**Twenty minutes later, Lady Tymora has been smiling down upon you. Despite Mazzy's best efforts, nearly every card has been matched and laid down on your side.**/
DO ~AdvanceTime(TWENTY_MINUTES) AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
== MAZZYJ @736 /*You've beaten me. That's impossible. I'll get you on the rematch, wait and see.*/
EXIT

CHAIN MAZZYJ _bMCGF11
@737 /*Here you are. Your next request?*/
== PLAYER1 @738 /**Fifteen minutes later, the game has passed in jokes and banter as Mazzy's competitive side rushes to the fore. Apparently no one trash talks quite as fiercely as a Truesword of Arvoreen.**/
DO ~AdvanceTime(FIFTEEN_MINUTES) AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
== MAZZYJ @739 /*And the game is mine, just as expected. Let us continue travelling.*/
EXIT

CHAIN MAZZYJ _bMCGF12
@740 /*Hah! Go fish! Now what should I choose...*/
== PLAYER1 @741 /**Ten minutes later, a string of bad draws has put a storm cloud on your companion's face. She is now losing badly in terms of matches played.**/
DO ~AdvanceTime(TEN_MINUTES) AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
== MAZZYJ @742 /*How? I was doing so well... I do not like games of luck. We had best be moving on.*/
EXIT
	

CHAIN MAZZYJ _bMC2
@705 /*I am a fair hand at poker. That shall do.*/
END
	+ ~RandomNum(3,1)~ + @743 /*Poker really? I did not expect that.*/ + _bMCPK1
	+ ~RandomNum(3,2)~ + @743 + _bMCPK2
	+ ~RandomNum(3,3)~ + @743 + _bMCPK3
	+ ~RandomNum(3,1)~ + @744 /*All right, we'll see who's better then.*/ + _bMCPK4
	+ ~RandomNum(3,2)~ + @744 + _bMCPK5
	+ ~RandomNum(3,3)~ + @744 + _bMCPK6
	+ ~RandomNum(3,1)~ + @745 /*Sure thing. Just tell me the rules.*/ + _bMCPK7
	+ ~RandomNum(3,2)~ + @745 + _bMCPK8
	+ ~RandomNum(3,3)~ + @745 + _bMCPK9

CHAIN MAZZYJ _bMCPK1
@746 /*My family used to play when I was younger. The games grew quite vicious sometimes so I learned to hold my own.*/
END
	+ ~RandomNum(3,1)~ + @755 /*Good to know. Would you deal?*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @755 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @755 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @756 /*I still think it's weird. But we can play anyway.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @756 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @756 EXTERN PLAYER1 _bMCPKEND3

CHAIN MAZZYJ _bMCPK2
@747 /*I have spent much time with soldiers, <CHARNAME>. It's not truly that surprising. While I don't believe in gambling, the rules aren't difficult.*/
END
	+ ~RandomNum(3,1)~ + @755 /*Good to know. Would you deal?*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @755 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @755 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @756 /*I still think it's weird. But we can play anyway.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @756 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @756 EXTERN PLAYER1 _bMCPKEND3
	
CHAIN MAZZYJ _bMCPK3
@748 /*You don't know everything about me, <CHARNAME>. I'm glad I can still surprise you now and then.*/
END
	+ ~RandomNum(3,1)~ + @757 /*So am I, Mazzy. Now let's play.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @757 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @757 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @755 /*Good to know. Would you deal?*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @755 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @755 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @756 /*I still think it's weird. But we can play anyway.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @756 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @756 EXTERN PLAYER1 _bMCPKEND3

CHAIN MAZZYJ _bMCPK4
@749 /*You've laid down the challenge, <CHARNAME>, but I assure you I shall win.*/
END
	+ ~RandomNum(3,1)~ + @758 /*Okay, I will deal.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @758 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @758 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @759 /*Let me start.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @759 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @759 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @760 /*Dealer goes first. Make your move.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @760 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @760 EXTERN PLAYER1 _bMCPKEND3

CHAIN MAZZYJ _bMCPK5
@750 /*You are very confident. That is a dangerous stance to take.*/
END
	+ ~RandomNum(3,1)~ + @758 /*Okay, I will deal.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @758 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @758 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @759 /*Let me start.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @759 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @759 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @760 /*Dealer goes first. Make your move.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @760 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @760 EXTERN PLAYER1 _bMCPKEND3
	
CHAIN MAZZYJ _bMCPK6
@751 /*Hah! You are right, my friend. We shall see.*/
END
	+ ~RandomNum(3,1)~ + @758 /*Okay, I will deal.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @758 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @758 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @759 /*Let me start.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @759 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @759 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @760 /*Dealer goes first. Make your move.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @760 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @760 EXTERN PLAYER1 _bMCPKEND3

CHAIN MAZZYJ _bMCPK7
@752 /*Do not worry, <CHARNAME>. We shall play an easy variation and I'll walk you through the steps.*/
END
	+ ~RandomNum(3,1)~ + @761 /*Okay, I trust you.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @761 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @761 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @762 /*Show me what to do.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @762 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @762 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @763 /*Great. This should be fun.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @763 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @763 EXTERN PLAYER1 _bMCPKEND3

CHAIN MAZZYJ _bMCPK8
@753 /*Right, I often forget that you were raised by monks and librarians. But the rules are fairly simple so I believe you will be fine.*/
END
	+ ~RandomNum(3,1)~ + @761 /*Okay, I trust you.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @761 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @761 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @762 /*Show me what to do.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @762 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @762 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @763 /*Great. This should be fun.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @763 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @763 EXTERN PLAYER1 _bMCPKEND3

CHAIN MAZZYJ _bMCPK9
@754 /*This is your lucky day, <CHARNAME>. I will treat you kindly and teach you how to play.*/
END
	+ ~RandomNum(3,1)~ + @761 /*Okay, I trust you.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @761 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @761 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @762 /*Show me what to do.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @762 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @762 EXTERN PLAYER1 _bMCPKEND3
	+ ~RandomNum(3,1)~ + @763 /*Great. This should be fun.*/ EXTERN PLAYER1 _bMCPKEND1
	+ ~RandomNum(3,2)~ + @763 EXTERN PLAYER1 _bMCPKEND2
	+ ~RandomNum(3,3)~ + @763 EXTERN PLAYER1 _bMCPKEND3

APPEND PLAYER1 IF ~~ THEN _bMCPKEND1
	SAY @764 /**One hour later, both you and Mazzy have won your share of hands. You think several of your other companions may have been betting on the outcome, but you've decided to let it slide for now.**/
	IF ~~ THEN DO ~AddXPObject("Mazzy",1000) AddXPObject(Player1,1000)~ EXTERN MAZZYJ _bMCPKEND
	END
	
	IF ~~ THEN _bMCPKEND2
	SAY @765 /**One hour later, Mazzy has destroyed you. If you were gambling for money, she would be much richer now.**/
	IF ~~ THEN DO ~AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~ EXTERN MAZZYJ _bMCPKEND
	END
	
	IF ~~ THEN _bMCPKEND3
	SAY @766 /**One hour later, you have won more than you lost. Although you weren't playing cards for money, it has been entertaining anyway.**/
	IF ~~ THEN DO ~AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~ EXTERN MAZZYJ _bMCPKEND
	END
END

CHAIN MAZZYJ _bMCPKEND
@767 /*That was fun, <CHARNAME>. Perhaps you were right about relaxing. But we should continue now.*/
DO ~AdvanceTime(ONE_HOUR)~
EXIT


CHAIN MAZZYJ _bMC3
@706 /*If we're going to play then I choose Three Dragon Ante. That should be quick at least.*/
END
	+ ~RandomNum(3,1)~ + @768 /*Okay, that works for me.*/ + _bMC3DA1
	+ ~RandomNum(3,2)~ + @768 + _bMC3DA2
	+ ~RandomNum(3,3)~ + @768 + _bMC3DA3
	+ ~RandomNum(3,1)~ + @769 /*Good choice. I enjoy that game.*/ + _bMC3DA1
	+ ~RandomNum(3,2)~ + @769 + _bMC3DA2
	+ ~RandomNum(3,3)~ + @769 + _bMC3DA3
	+ ~RandomNum(3,1)~ + @770 /*If that's what you want.*/ + _bMC3DA1
	+ ~RandomNum(3,2)~ + @770 + _bMC3DA2
	+ ~RandomNum(3,3)~ + @770 + _bMC3DA3
	
CHAIN MAZZYJ _bMC3DA1
@771 /*Okay. I shall deal first. Two Dragons and a Knave. Your move?*/
END
	+ ~RandomNum(4,1)~ + @774 /*Another card.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @774 + _bMC3DA5
	+ ~RandomNum(4,3)~ + @774 + _bMC3DA6 
	+ ~RandomNum(4,4)~ + @774 + _bMC3DA7 
	+ ~RandomNum(4,1)~ + @775 /*I will hold.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @775 + _bMC3DA5
	+ ~RandomNum(4,3)~ + @775 + _bMC3DA6
	+ ~RandomNum(4,4)~ + @775 + _bMC3DA7
	+ ~RandomNum(4,1)~ + @776 /*Two cards and I will raise a walnut.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @776 + _bMC3DA5 
	+ ~RandomNum(4,3)~ + @776 + _bMC3DA6
	+ ~RandomNum(4,4)~ + @776 + _bMC3DA7
	+ ~RandomNum(4,1)~ + @777 /*Ante, nothing more.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @777 + _bMC3DA5
	+ ~RandomNum(4,3)~ + @777 + _bMC3DA6
	+ ~RandomNum(4,4)~ + @777 + _bMC3DA7
	
CHAIN MAZZYJ _bMC3DA2
@772 /*A Three, a Two, and a Five. What's your call?*/
END
	+ ~RandomNum(4,1)~ + @774 /*Another card.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @774 + _bMC3DA5
	+ ~RandomNum(4,3)~ + @774 + _bMC3DA6 
	+ ~RandomNum(4,4)~ + @774 + _bMC3DA7 
	+ ~RandomNum(4,1)~ + @775 /*I will hold.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @775 + _bMC3DA5
	+ ~RandomNum(4,3)~ + @775 + _bMC3DA6
	+ ~RandomNum(4,4)~ + @775 + _bMC3DA7
	+ ~RandomNum(4,1)~ + @776 /*Two cards and I will raise a walnut.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @776 + _bMC3DA5 
	+ ~RandomNum(4,3)~ + @776 + _bMC3DA6
	+ ~RandomNum(4,4)~ + @776 + _bMC3DA7
	+ ~RandomNum(4,1)~ + @777 /*Ante, nothing more.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @777 + _bMC3DA5
	+ ~RandomNum(4,3)~ + @777 + _bMC3DA6
	+ ~RandomNum(4,4)~ + @777 + _bMC3DA7

CHAIN MAZZYJ _bMC3DA3
@773 /*Two Tens and a King. Your bet?*/
END
	+ ~RandomNum(4,1)~ + @774 /*Another card.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @774 + _bMC3DA5
	+ ~RandomNum(4,3)~ + @774 + _bMC3DA6 
	+ ~RandomNum(4,4)~ + @774 + _bMC3DA7 
	+ ~RandomNum(4,1)~ + @775 /*I will hold.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @775 + _bMC3DA5
	+ ~RandomNum(4,3)~ + @775 + _bMC3DA6
	+ ~RandomNum(4,4)~ + @775 + _bMC3DA7
	+ ~RandomNum(4,1)~ + @776 /*Two cards and I will raise a walnut.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @776 + _bMC3DA5 
	+ ~RandomNum(4,3)~ + @776 + _bMC3DA6
	+ ~RandomNum(4,4)~ + @776 + _bMC3DA7
	+ ~RandomNum(4,1)~ + @777 /*Ante, nothing more.*/ + _bMC3DA4
	+ ~RandomNum(4,2)~ + @777 + _bMC3DA5
	+ ~RandomNum(4,3)~ + @777 + _bMC3DA6
	+ ~RandomNum(4,4)~ + @777 + _bMC3DA7
	
CHAIN MAZZYJ _bMC3DA4
@778 /*I will take another card.*/
END
	+ ~RandomNum(4,1)~ + @782 /*Just deal me a new hand.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @782 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @782 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @782 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @783 /*I will hold and raise three cashews.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @783 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @783 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @783 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @784 /*One more card, please.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @784 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @784 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @784 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @785 /*My cards are terrible. Ante.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @785 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @785 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @785 + _bMC3DA11
	

CHAIN MAZZYJ _bMC3DA5
@779 /*I deal a Knave. Your move again.*/
END
	+ ~RandomNum(4,1)~ + @782 /*Just deal me a new hand.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @782 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @782 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @782 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @783 /*I will hold and raise three cashews.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @783 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @783 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @783 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @784 /*One more card, please.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @784 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @784 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @784 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @785 /*My cards are terrible. Ante.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @785 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @785 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @785 + _bMC3DA11

CHAIN MAZZYJ _bMC3DA6
@780 /*I will raise you two acorns. Do you wish to match?*/
END
	+ ~RandomNum(4,1)~ + @782 /*Just deal me a new hand.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @782 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @782 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @782 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @783 /*I will hold and raise three cashews.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @783 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @783 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @783 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @784 /*One more card, please.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @784 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @784 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @784 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @785 /*My cards are terrible. Ante.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @785 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @785 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @785 + _bMC3DA11

CHAIN MAZZYJ _bMC3DA7
@781 /*Ante only.*/
END
	+ ~RandomNum(4,1)~ + @782 /*Just deal me a new hand.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @782 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @782 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @782 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @783 /*I will hold and raise three cashews.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @783 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @783 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @783 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @784 /*One more card, please.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @784 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @784 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @784 + _bMC3DA11
	+ ~RandomNum(4,1)~ + @785 /*My cards are terrible. Ante.*/ + _bMC3DA8
	+ ~RandomNum(4,2)~ + @785 + _bMC3DA9
	+ ~RandomNum(4,3)~ + @785 + _bMC3DA10
	+ ~RandomNum(4,4)~ + @785 + _bMC3DA11
	
CHAIN MAZZYJ _bMC3DA8 
@786 /*Set down your cards, <CHARNAME>... I have beaten you. Hand over your nuts.*/
DO ~AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
EXIT

CHAIN MAZZYJ _bMC3DA9
@787 /*You have won, <CHARNAME>. The cards are in your favour.*/
DO ~AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
EXIT

CHAIN MAZZYJ _bMC3DA10
@788 /*A poor hand for both of us. But I believe that I have victory.*/
DO ~AddXPObject("Mazzy",1500) AddXPObject(Player1,500)~
EXIT

CHAIN MAZZYJ _bMC3DA11
@789 /*A close game, but you have won, <CHARNAME>. Congratulations.*/
DO ~AddXPObject("Mazzy",500) AddXPObject(Player1,1500)~
EXIT


CHAIN MAZZYJ _bMazzyViolent
@795 /*Excuse me? There are many dangers in the world and I fight them. What would you have me do?*/
DO ~SetGlobal("_bMazViolent","GLOBAL",1)~
END
	++ @796 /*You're right, forget I said anything.*/ EXIT
	++ @797 /*Yes, but you seem to really enjoy combat. You always want to find evil to fight and you're bored and miserable otherwise.*/ + _bMazzyViolent1
	++ @798 /*Sometimes there are peaceful solutions. You don't always have to reach for an arrow.*/ + _bMazzyViolent1
	
CHAIN MAZZYJ _bMazzyViolent1
@799 /*I fight because it is the right thing to do. I enjoy saving the innocent and defeating those that prey on them, and I refuse to believe that might be wrong.*/
= @800 /*When all the lords of evil are dead, you may try a peaceful approach. Until then, I will be here to help you end their existence.*/
EXIT


CHAIN MAZZYJ _bMazzyTruesword
@802 /*I once spent a year at a temple of Arvoreen, high in the mountains some distance from Trademeet. They took me in during a difficult time.*/
DO ~SetGlobal("_bMazTruesword","GLOBAL",1)~
= @803 /*It was more of a monastery than a temple; they were almost completely self-sufficient and had little contact with the outside world.*/
= @804 /*The halflings there prayed and served the occasional visitor from the outside community, but mountain halflings are insular, even for halflings. Most spend their whole lives without ever travelling more than a few miles from where they were born.*/
= @805 /*It was peaceful there, but they received almost no news from the outside world and I missed my family. I spent my days praying and studying.*/
= @806 /*When I arrived, I knew very little about the halfling god; I'd never even known a halfling Cleric, but there was a peace there that I found nowhere else.*/
= @807 /*Some years later, I returned to finish my training and dedicate my life to Arvoreen as a Truesword.*/
END
	++ @808 /*You make it sound as if you went to the temple before you knew you wanted to be a Truesword. Why were you there?*/ + _bMazzyTruesword1
	++ @809 /*Thank you for telling me. That sounds like a good memory.*/ + _bMazzyTruesword2
	++ @810 /*I just can't see you in a monastery.*/ + _bMazzyTruesword3
	++ @811 /*I am glad you found your calling. I might not have met you otherwise.*/ + _bMazzyTruesword4
	
CHAIN MAZZYJ _bMazzyTruesword1
@812 /*That, <CHARNAME>, is a story for another time.*/
EXIT

CHAIN MAZZYJ _bMazzyTruesword2
@813 /*In truth, I have not thought about that place in many years, but sometimes it is good to be reminded of peace as well as war.*/
EXIT

CHAIN MAZZYJ _bMazzyTruesword3
@814 /*It was certainly an adjustment. But even I must rest sometimes.*/
EXIT

CHAIN MAZZYJ _bMazzyTruesword4
@815 /*It hasn't always been the easiest road, but I am glad as well.*/
EXIT

CHAIN MAZZYJ _bMazzyTheLeader
	@817 /*You wish my advice?*/
== MAZZYJ IF ~GlobalGT("Pala","GLOBAL",0) Global("PalaCureFound","GLOBAL",0)~ THEN @818 /*My sister lies dying! Saving her must be our utmost priority!*/
	/*Add a quest into Setup. The quest name shall be: @819 Mazzy the Leader*/
	DO ~AddJournalEntry(@820,QUEST)~ /*Mazzy wants us to save her sister before we do anything else.*/

== MAZZYJ IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) !Dead("shadel")~ THEN @821 /*The Shade Lord who killed my friends still lives. We must defeat him!*/
	DO ~AddJournalEntry(@822,QUEST)~ /*Mazzy would like us to confront and defeat the Shade Lord who killed her last party.*/

== MAZZYJ IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") !Dead("ShaDra01")~ THEN @823 /*The Shade Lord is dead, but Thaxll'ssillyia, the shadow dragon who killed my friends, still lives. We must slay Thaxll'ssillyia and avenge them!*/
	DO ~AddJournalEntry(@824,QUEST)~ /*Mazzy wants us to confront and slay the Shadow Dragon that defeated her last party.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",0)~ THEN @825 /*Now that my friends have been avenged, we should return to my house in Trademeet. I know my family worries about me.*/
	DO ~RevealAreaOnMap("AR2000") AddJournalEntry(@826,QUEST)~ /*Mazzy would like to visit her family at the Fentan home in Trademeet.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",0)
~ THEN @827 /*My home is under an economic blockade, <CHARNAME>, and without trade, my town is doomed. We must stop this!*/
	DO ~AddJournalEntry(@828,QUEST)~ /*Mazzy wishes us to solve Trademeet's trade problem.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) !Dead("cefald01")
~ THEN @829 /*My town is under attack by wild beasts! We must save it!*/
	DO ~AddJournalEntry(@830,QUEST)~ /*Mazzy wishes to end the animal attacks on Trademeet.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") OR(2) !Dead("Lehtinan") !Global("FreeSlaves","GLOBAL",1)
~ THEN @831 /*The slums of Athkatla are home to slavers. We should root them out and destroy all parts of their organization.*/
	DO ~AddJournalEntry(@832,QUEST)~ /*Mazzy would like to destroy all of the slavers in the slums of Athkatla and free all of the slaves. I should start asking around in the Copper Coronet.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") Dead("Lehtinan") Global("FreeSlaves","GLOBAL",1) Global("_bmazkel","GLOBAL",0)~ THEN @833 /*I have heard that the legendary paladin, Keldorn Firecam, is in Athkatla. We should see if we can assist him with his tasks... perhaps if we do so, he will agree to travel with us.*/
	DO ~AddJournalEntry(@834,QUEST)~ /*Mazzy wishes to find Keldorn Firecam and invite him into the party.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") Dead("Lehtinan") Global("FreeSlaves","GLOBAL",1) GlobalGT("_bmazkel","GLOBAL",0) Global("_bMazzyNeedsSponsors","GLOBAL",0) !InPartyAllowDead("Keldorn")~ THEN @835 /*I would have us find Keldorn Firecam and invite him to travel with us again. The opportunity to train with a paladin of his stature is too good to pass up. Even if only for a couple of weeks, it would be life-changing.*/
	DO ~AddJournalEntry(@836,QUEST)~ /*Mazzy wishes to invite Keldorn into the group again so that she may learn from him.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") Dead("Lehtinan") Global("FreeSlaves","GLOBAL",1) OR(2) GlobalGT("_bMazzyNeedsSponsors","GLOBAL",0) InPartyAllowDead("Keldorn") GlobalLT("AsylumPlot","GLOBAL",40)~ THEN @837 /*Should we not rescue your friend Imoen from the Cowled Wizards? How long are you going to let the poor girl suffer in prison?*/
	DO ~AddJournalEntry(@838,QUEST)~ /*Mazzy raised a valid point; I really have let Imoen rot in prison for far too long. I should go rescue her.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") Dead("Lehtinan") Global("FreeSlaves","GLOBAL",1) GlobalGT("_bMazzyNeedsSponsors","GLOBAL",0) GlobalGT("AsylumPlot","GLOBAL",39) GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN @839 /*We must return to Athkatla and find allies, <CHARNAME>. We cannot defeat Bodhi and Jon Irenicus without aid.*/
	DO ~AddJournalEntry(@840,QUEST)~ /*Mazzy believes our best chance of defeating Irenicus and Bodhi is to return to Athkatla and find allies to assist us in this fight.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") Dead("Lehtinan") Global("FreeSlaves","GLOBAL",1) GlobalGT("_bMazzyNeedsSponsors","GLOBAL",0) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) !Dead("c6bodhi")~ THEN @841 /*Let us gather allies and defeat Bodhi in her lair. That will free Imoen's soul and weaken Jon Irenicus as well.*/
	DO ~AddJournalEntry(@842,QUEST)~ /*Mazzy advises me to find allies and attack Bodhi's lair in the Graveyard District of Athkatla.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") Dead("Lehtinan") Global("FreeSlaves","GLOBAL",1) GlobalGT("_bMazzyNeedsSponsors","GLOBAL",0) Dead("c6bodhi") Global("_BFightThieves","GLOBAL",0) OR(2) !Dead("aran") !Dead("MaeVar") OR(2) AreaCheck("AR0808") AreaCheck("AR0809")~ THEN @843 /*Let us get out of this horrible place, <CHARNAME>. I cannot find the peace to think in here.*/
	DO ~AddJournalEntry(@844,QUEST)~ /*Mazzy would like to leave Bodhi's Hideout and return to the surface.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") Dead("Lehtinan") Global("FreeSlaves","GLOBAL",1) GlobalGT("_bMazzyNeedsSponsors","GLOBAL",0) Dead("c6bodhi") Global("_BFightThieves","GLOBAL",0) OR(2) !Dead("aran") !Dead("MaeVar") !AreaCheck("AR0808") !AreaCheck("AR0809")~ THEN @845 /*Let us go to Secretary Ewenn in the Council of Six Building. He can give us official permission to arrest the Shadow Thieves. I have been planning this for a long time and would like to do it properly.*/
	DO ~AddJournalEntry(@846,QUEST)~ /*Mazzy wishes us to go to the Council of Six Building in the Government District and speak with Secretary Ewenn about destroying the Shadow Thieves.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") Dead("Lehtinan") Global("FreeSlaves","GLOBAL",1) GlobalGT("_bMazzyNeedsSponsors","GLOBAL",0) Dead("c6bodhi") GlobalGT("_BFightThieves","GLOBAL",0) !Dead("aran") !Dead("MaeVar")~ THEN @847 /*We must go to the docks and destroy both guilds of Shadow Thieves. It has been my life's mission to do so. If we need a key for Aran's hideout, we should visit Gaelan Bayle in the slums.*/
	DO ~AddJournalEntry(@848,QUEST)~ /*Mazzy wishes us to eliminate the Shadow Thieves, both the main guild and Mae'Var's as well. If we need a key to get into Aran's underground hideout, we should check with Gaelan Bayle in the Slums District.*/

== MAZZYJ  IF ~OR(2) !GlobalGT("Pala","GLOBAL",0) !Global("PalaCureFound","GLOBAL",0) Dead("shadel") Dead("ShaDra01") Global("_bMazzyHome","GLOBAL",1) Global("geniesgone","GLOBAL",1) Dead("cefald01") Dead("Lehtinan") Global("FreeSlaves","GLOBAL",1) GlobalGT("_bMazzyNeedsSponsors","GLOBAL",0) Dead("c6bodhi") Dead("aran") Dead("MaeVar")~ THEN @849 /*We must save Suldanessellar, <CHARNAME>! The elves are depending on us!*/
	DO ~AddJournalEntry(@850,QUEST)~ /*Mazzy encouraged us to save the elves of Suldanessellar from Jon Irenicus. That this will also gain me back my soul is apparently just a bonus.*/

== MAZZYJ @851 /*Let us move out!*/
EXIT


CHAIN MAZZYJ _bMazOnlyLikesSexComplaint
	@875 /*Oh? And do you feel that is less than ideal?*/
		DO ~SetGlobal("_bMazOnlyLikesSexGlobal","GLOBAL",1)~
END
	++ @876 /*Nope, that's exactly how I like it.*/ GOTO  _bMazOnlyLikesSexComplaint1
	++ @877 /*Yes, I want to matter to you as a person.*/ GOTO _bMazOnlyLikesSexComplaint2
	++ @8770 /*Of course. I want you to love me as much as I love you.*/ GOTO _bMazOnlyLikesSexComplaint2

CHAIN MAZZYJ _bMazOnlyLikesSexComplaint1
	@878 /*Then I am glad that we have found a mutually beneficial arrangement.*/
	= @879 /*However, you should know that I find myself caring about you more and more with each passing day.*/
EXIT

CHAIN MAZZYJ _bMazOnlyLikesSexComplaint2
	@880 /*You do matter to me, <CHARNAME>, and despite my best efforts to remain distant and unattached, I find myself falling more in love with you each day.*/
END
	++ @881 /*Oh, I'm glad to hear it. Carry on then.*/ EXIT
	++ @882 /*Wait, why are you trying not to love me?*/ GOTO _bMazOnlyLikesSexComplaint3

CHAIN MAZZYJ _bMazOnlyLikesSexComplaint3
	@883 /*Because the more I love you, the more pain it will cause me when you die.*/
	= @884 /*How can I bear your loss when I still hurt daily from all of the others who have fallen before you?*/
	= @885 /*I fell in love with Patrick. I knew him only briefly, but I loved him more than I have ever loved anyone before... or since. When I watched him fall, a piece of myself died with him.*/
	= @886 /*I do not know how I could survive that again.*/
END
	++ @887 /*That's a good reason. I take back what I said.*/ GOTO _bMazOnlyLikesSexComplaint4
	++ @888 /*I won't die, Mazzy. You have my word.*/ GOTO _bMazOnlyLikesSexComplaint5
	++ @889 /*We all die, Mazzy, but love makes life worth living.*/ GOTO _bMazOnlyLikesSexComplaint6

CHAIN MAZZYJ _bMazOnlyLikesSexComplaint4
	@890 /*Thank you, <CHARNAME>. I do love you, just... just be patient with me.*/
EXIT

CHAIN MAZZYJ _bMazOnlyLikesSexComplaint5
	@891 /*I should trust you not to die?*/
	= @892 /*I may be a halfling, my love, but I am not *that* foolish.*/
	= @893 /*Still, I do love you, <CHARNAME>. Please just be patient with me.*/
EXIT

CHAIN MAZZYJ _bMazOnlyLikesSexComplaint6
	@894 /*That was rather poetic of you, and you are correct.*/
	= @895 /**sigh* I suppose one cannot be a hero and expect one's friends to live out long, full lives. Death is an occupational hazard...*/
	= @896 /*...but that does not make it any less painful for those who survive...*/
	= @893 /*I do love you, <CHARNAME>. Please just be patient with me.*/ 
EXIT


CHAIN MAZZYJ _bMazzyNoLikeRomance
	@898 /*My love? I do not understand.*/
		DO ~SetGlobal("_bMazNoLikeRomance","GLOBAL",1)~
	= @899 /*We say we love each other and we spend each night in blissful passion.*/
	= @900 /*What else is missing in our relationship?*/
END
	++ @901 /*I suppose you're right. Forget I said anything.*/ EXIT
	++ @902 /*Poems, flowers, extravagant romantic gestures that show how much I mean to you!*/ GOTO _bMazzyNoLikeRomance1
	++ @9020 /*You never give me compliments or whisper sweet nothings in my ears.*/ GOTO _bMazzyNoLikeRomance1

CHAIN MAZZYJ _bMazzyNoLikeRomance1
	@903 /*I love you, <CHARNAME>, and you can trust that I mean it because I do not lie.*/
	= @904 /*I have found that the more romantic embellishment there is in someone's speech and actions, the less sincere their heart. I prefer simple truth.*/
	= @905 /*If that is not enough then I do not know how to help you.*/
END 
	++ @906 /*That is enough for me.*/ EXIT
	++ @907 /*You still could be more romantic. I'll show you.*/ GOTO _bMazzyNoLikeRomance2
	++ @9070 /*Come on ,Mazzy. Let's at least try to keep the spark alive.*/ GOTO _bMazzyNoLikeRomance2

CHAIN MAZZYJ _bMazzyNoLikeRomance2
	@908 /**sigh* I suppose that I should attempt to make an effort if this is important to you.*/
	= @909 /*Very well, <CHARNAME>, show me what to do and I will try my best to sweep you off your feet.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove1
	@911 /*A discussion about love? In Common? I could not imagine anything more frustrating.*/
	DO ~SetGlobal("_bMazzyLoveDiscussion","GLOBAL",1)~
	= @912 /*Common has but one word for all the many kinds of love in the world...*/
	= @913 /*Most seem to have no direct translation at all and I must use several sentences to describe them.*/
	= @914 /*The entire process is exhausting.*/
END
	++ @915 /*What kinds of love are there?*/ GOTO _bMazzySpeaksLove2
	++ @916 /*Do you mean that Common is not your mother tongue?*/ GOTO _bMazzySpeaksLove3
	++ @917 /*Can we try to discuss love anyway?*/ GOTO _bMazzySpeaksLove4
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove2
	@918 /*Too many to list. In my own language, they're broken into broad categories, roughly translated as love of family, love of friends, love of lovers, and love of the world.*/
	= @919 /*Perhaps we should narrow it down?*/
END
	++ @920 /*Tell me about love between lovers.*/ GOTO _bMazzySpeaksLove5
	++ @921 /*Let's talk about love for your family.*/ GOTO _bMazzySpeaksLove6
	++ @922 /*I want to speak of the general feeling of love. For everything around us.*/ GOTO _bMazzySpeaksLove7
	++ @923 /*We should speak about love between friends.*/ GOTO _bMazzySpeaksLove8
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove3
	@924 /*Goodness, no. Of course it isn't. What halfling grows up only speaking Common?*/
	= @925 /*Common is the language used outside of the clan... the language every race and tribe has in common.*/
	= @926 /*It is not the language of the home and hearth, and certainly not the language of love.*/
END
	+ ~Race(Player1,HALFLING)~ +  @927 /*I'm a halfling and I only speak Common.*/ GOTO _bMazzySpeaksLove9
	++ @928 /*Can we try to speak about love anyway?*/ GOTO _bMazzySpeaksLove4
	+ ~!Race(Player1,HALFLING)~ + @929 /*Could you teach me your language? Does it have a name?*/ GOTO _bMazzySpeaksLove10a
	+ ~Race(Player1,HALFLING)~ + @929 /*Could you teach me your language? Does it have a name?*/ GOTO _bMazzySpeaksLove10b
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove4
	@930 /*I suppose there is no harm in trying. Which kind of love did you wish to discuss?*/
END
	++ @915 /*What kinds of love are there?*/ GOTO _bMazzySpeaksLove2
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove5
	@932 /**chuckles* "Lovers" is an excellent Common term, but also an example of my problem. There are so many kinds of lovers. I do not even know where to begin.*/
END
	+ ~GlobalLT("_bMazzyPastLoversLove","GLOBAL",5)~ + @933 /*You could start with your past lovers?*/ GOTO _bMazzySpeaksLove11
	+ ~Global("_bMazzyRomance","GLOBAL",2)~ + @934 /*So how do you feel about me?*/ GOTO _bMazzySpeaksLove12
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove6
	@935 /*I have been lucky to know so many kinds. For my father, my mother, my sister, and even for Danno.*/
	= @936 /*Maybe we should pick one.*/
END
	++ @937 /*How about for your father?*/ GOTO _bMazzySpeaksLove13
	+ ~!Dead("vara")~ + @938 /*Your mother, Vara.*/ GOTO _bMazzySpeaksLove14
	+ ~!Dead("pala") !Dead("pala02")~ + @939 /*What about your sister, Pala?*/ GOTO _bMazzySpeaksLove15
	+ ~!Dead("Danno")~ + @940 /*Danno?*/ GOTO _bMazzySpeaksLove16
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove7
	@941 /*Ah, "baongubo", the love that allows the world to continue to turn.*/
	= @942 /*The opposite of fear and hate, and the sister of kindness, this love is the true source of power in the battle between good and evil.*/
	= @943 /*My people use it to cast charms and spells of protection and healing. In fact, that is how I channel the power of Arvoreen to heal myself and give courage to my allies.*/
	= @944 /*The more I learn to channel baongubo, the more I can align myself with the powers of light in this world.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove8
	@945 /*I am afraid that I know of that the least. I find it difficult to form bonds of friendship...*/
END
	++ @946 /*What about me?*/ GOTO _bMazzySpeaksLove17
	+ ~InPartyAllowDead("Aerie")~ + @947 /*You seem friendly with Aerie.*/ GOTO _bMazzySpeaksLove18
	+ ~Global("_BJahMazFriends","GLOBAL",1) InPartyAllowDead("Jaheira")~ + @948 /*You and Jaheira get along well.*/ GOTO _bMazzySpeaksLove19
	+ ~Global("_bMazzyVicFriends","GLOBAL",2) InPartyAllowDead("Viconia")~ + @949 /*Are you and Viconia not friends?*/ GOTO _bMazzySpeaksLove20
	+ ~InPartyAllowDead("Imoen2") Global("_bImoenMazzyRomance","GLOBAL",1)~ + @950 /*You and Imoen seem quite friendly...*/ GOTO _bMazzySpeaksLove21a
	+ ~InPartyAllowDead("Imoen2") Global("_bImoenMazzyRomance","GLOBAL",2)~ + @950 /*You and Imoen seem quite friendly...*/ GOTO _bMazzySpeaksLove21b
	+ ~InPartyAllowDead("Valygar") GlobalGT("MazzyValygar","GLOBAL",0)~ +
@950001 /*What about Valygar?*/ GOTO _bMazzySpeaksLove22
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove9
	@951 /*Yes... about that...*/
	= @952 /*You were born a halfling, it is true, but you were raised by humans and you are human in speech, dress, and mannerisms.*/
	= @953 /*However, I should not be one to judge. How many halflings dress in mail and dream of being paladins?*/
END
	++ @954 /*Can we speak of love? What kinds of love are there?*/ GOTO _bMazzySpeaksLove2
	+ ~!Race(Player1,HALFLING)~ + @929 /*Could you teach me your language? Does it have a name?*/ GOTO _bMazzySpeaksLove10a
	+ ~Race(Player1,HALFLING)~ + @929 /*Could you teach me your language? Does it have a name?*/ GOTO _bMazzySpeaksLove10b
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove10a
	@955 /*Teach a non-halfling? That would be highly improper. We don't even speak our language in front of outsiders.*/ 
	= @95500 /*No non-halfling must learn so much as a phrase. Come to think of it, I'm stretching tradition even by saying individual words.*/
END
	++ @956 /*Well then, can we speak of love? What kinds of love are there?*/ GOTO _bMazzySpeaksLove2
	+ ~Global("_bMazzyRomance","GLOBAL",2)~ + @957 /*Even though we're together? Do halflings never teach their language to their non-halfling spouses no matter how long they're wed?*/ GOTO _bMazzySpeaksLove23
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove10b
	@958 /*Of course, I would be glad to teach you! We can practice as we travel.*/ 
	= @959 /*Though tradition demands that we not speak halfling in front of the big folk. No non-halfling must learn so much as a phrase, though I suppose there's no harm in individual words.*/
	= @960 /*It will take some time, but do not be discouraged. This shall be fun!*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove11
	@961 /*My lovers? I shall have to think.*/
== MAZZYJ IF ~Global("_bMazzyPastLoversLove","GLOBAL",0)~ THEN @962 /*There was Patrick, of course, the love of my life.*/
	= @963 /*My love for him was so intense. We call it "viettatchu", where you want a person's company as much as you want to eat or even breathe.*/
	= @964 /*It is a hunger, passionate and all-consuming, like a fire... and like a fire it cannot last forever. It will either burn out or transform.*/
	= @965 /*But poor Patrick died before it could do either.*/
== MAZZYJ IF ~Global("_bMazzyPastLoversLove","GLOBAL",1)~ THEN @966 /*Before Patrick were my half-ogres, Glounder and Farooq. That love was calmer, and it blossomed during a time of peace and study.*/
	DO ~SetGlobal("_bMazzyHalfOgres","GLOBAL",1)~
	= @967 /**chuckle* We have a word, "bungbatcoc", which roughly translated means "a teacher in love with a former student who has become her equal."*/ 
	= @968 /*It's something of a pejorative, but I've never been one overly concerned about the opinions of my neighbours... and in this case, it is rather applicable.*/
	= @969 /*I taught that pair to fight when they were younger, mere boys... but when I saw them many years later, they were such... men.*/
	= @970 /*I was somewhat in awe of what they had become; half-ogres are always big and strong, but they had grace and skill to match.*/
	= @971 /*So I taught them something new... and I still love them very much.*/
== MAZZYJ IF ~Global("_bMazzyPastLoversLove","GLOBAL",2)~ THEN @972 /*Before my half-ogres was Korrich, my "thuchiendung".*/
	= @973 /*"Thuchiendung", refers to the love for someone you have chosen to yoke yourself to forever. And as always, it can also refer to the object of that affection as well.*/
	= @974 /*The image is of two horses, cows, or oxen, who pulling together can move far more than their individual strengths combined.*/
	= @975 /*It also refers to a family, a home... to a joint farm or business run by a married couple.*/
	= @976 /*And, of course, to growing old together... and seeing your children have children of their own.*/
	= @977 /*It is the love for a person with whom you have chosen to experience life...*/
	= @978 /*I felt that for Korrich,.. I swear by Arvoreen's name that I really did... but then I left him anyway...*/
== MAZZYJ IF ~Global("_bMazzyPastLoversLove","GLOBAL",3)~ THEN @979 /*I suppose before Korrich there was Perrin, a boy I knew when growing up.*/
	= @980 /*It was not a strong love, merely, "nongcaycokhieu", which is yet another pejorative.*/
	= @981 /*It literally means, "The love of two young people who believe they're strongly in love only because they have nothing to compare it to."*/
	= @982 /*This was true, of course; my love for him was shallow compared to that which followed, but it was still real.*/
	= @983 /*He was murdered by bandits and I cried for days. This is one of the many, many reasons that I despise bandits and thugs of every form.*/
	= @984 /*You may have noticed, <CHARNAME>, that there are few things I enjoy quite as much as a bandit ambush.*/
	= @985 /*They attack our group believing, for some inexplicable reason, that we will be easy prey, and then we slaughter them, ending their reign of murder, rape, and general misery.*/
	= @986 /*And with every one I kill, I think to myself, "I eliminated another one for you, Perrin..."*/
	= @987 /*...and I smile.*/
== MAZZYJ IF ~Global("_bMazzyPastLoversLove","GLOBAL",4)~ THEN @988 /*That is it. I have told you about every lover of any importance.*/
	= @989 /*The rest were all "totthanmat", merely friends with whom one is sexually involved.*/
	= @990 /*Girls, mostly... I was popular growing up and had many friends...*/
	= @991 /*But those were careless nights of meaningless passion and pleasure... after all, sleeping with another is usually preferable to sleeping alone...*/
== MAZZYJ @992 /*And I believe that is all I shall say about that. We can talk more on this topic another day.*/ 
DO ~IncrementGlobal("_bMazzyPastLoversLove","GLOBAL",1)~ 
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove12
	@993 /*How do I feel about you? You wish to know what kind of love I feel?*/
	= @994 /*I...*/
	= @995 /*I'm...*/
	= @996 /*I'm sorry, I do not know the answer.*/
END
	++ @997 /*Your language has a hundred words for love and you don't know?*/ GOTO _bMazzySpeaksLove24
	++ @998 /*Seriously?*/ GOTO _bMazzySpeaksLove24
	++ @999 /*Hah, I don't believe I've ever seen you so speechless before.*/ GOTO _bMazzySpeaksLove24

CHAIN MAZZYJ _bMazzySpeaksLove13
	@1000 /*"Bidaoco", the love of a daughter for an honourable and respected father.*/
	= @1001 /*It includes the gratitude for raising me and teaching me about the world...*/
	= @1002 /*The pride I felt when I saw the esteem with which he was held in our community...*/
	= @1003 /*And the knowledge that I was absolutely and completely safe under his protection.*/
	DO ~SetGlobal("_bMazzyDad","GLOBAL",1)~
	= @1004 /*I miss him very much.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove14
	@1005 /*For my mother, I feel "donghieng", the love of a daughter for the mother who bore her, raised her, and taught her how to be a woman by example.*/
	= @1006 /*It includes my thanks for her inspiration as the only halfling mage I have ever met. She showed me that the impossible was not truly out of reach.*/
	= @1007 /*She was a source of kindness and caring as far back as I remember, not to mention the source of my food and shelter.*/
	= @1008 /*Without her, I would not be here, and she has become in many ways a close friend.*/
	= @1009 /*We should visit her again soon.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove15
	@1010 /*"Hoangtucong", the love of an older sister for a younger one.*/
	= @1011 /*Pala can be trying at times, as all sisters are, but I am very protective of her.*/
== MAZZYJ IF ~GlobalGT("PalaCureFound","GLOBAL",2)~ THEN @1012 /*I cannot thank you enough for helping me save her life.*/
== MAZZYJ @1013 /*Her love for me is "caodienvan," since I am the elder. That word implies the emulation of me as a role model rather than protectiveness.*/
	= @1014 /*We should visit her again soon.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove16
	@1015 /*My love for Danno is "banmausu", love for someone who brings happiness to an immediate family member.*/
	= @1016 /*Should my mother ever remarry, I would hope to develop the same love for her husband.*/ 
	= @1017 /*Pala and Danno have been inseparable for years, but their love always seemed like "totthanmat", what we call the light playful love between friends who are romantically involved.*/
	= @1018 /*It is only recently that this has evolved into something stronger and more enduring. I don't think either has strayed into another bed for quite some time; they are thoroughly attached to one another.*/
	= @1019 /*I expect we will be invited to their wedding within a year.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove17
	@1020 /*Of course. How foolish of me.*/
== MAZZYJ IF ~!Global("_bMazzyRomance","GLOBAL",2) !Global("_bMazzyRomance","GLOBAL",1)~ THEN @1021 /*You are my friend, <CHARNAME>, not to mention the one who saved my life.*/
	= @1022 /*I suppose my love for you would be "buoigiet", the love between comrades-in-arms who have fought death together. We have saved each other's lives, and we trust each other in battle.*/
== MAZZYJ IF ~Global("_bMazzyRomance","GLOBAL",1)~ THEN @1023 /*A friend who hopes to be something more? That love is reciprocal; I desire the same thing. And that makes it "dedat".*/
== MAZZYJ IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @1024 /*I would hope that you consider us more than friends, <CHARNAME>. At the very least we are a romantic couple.*/
== MAZZYJ @1025 /*Thank you for the reminder. Sometimes I think myself alone against the world.*/ 
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove18
@1026 /*You are right, <CHARNAME>, I am quite protective of her, and she is partial to my company as well.*/
	= @1027 /*I would consider our love for each other to be true "buoigiet", the love between warriors who would gladly die fighting back-to-back.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove19
	@1028 /*My little cousin. She is my "buoigiet", of course. Someone I trust to fight at my back.*/
	= @1029 /*But she is also a "dichechlam", a friend with whom I share sorrow.*/
	= @1030 /*Each term can be used multiple ways. Jaheira is my dichechlam. I feel dichechlam for her. I could even say that we are dichechlam. It is all the same.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove20
	@1031 /*Viconia? Well I suppose I must feel "buoigiet" for her; the love one feels for the soldier next to them. But it is also "radino", the love for someone who needs me.*/
	= @1032 /*As a knight in shining armour, I do have a weakness for damsels in distress, even terrifying ones.*/
	= @1033 /*Viconia is a gateway to a plane of darkness. It is my duty to stand watch and defend the world from what may escape.*/
	= @1034 /*But I also care for her, and believe that she has been misjudged. She is not as evil as humans believe her to be, and she can be saved.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove21a
	@1035 /*Silly me, how could I forget about Imoen. She is a good friend, though she would like to be more.*/
	= @1036 /*I have not yet decided how I feel about that. If I decide I feel the same way then we would be "dedat", but I am not there yet.*/
	= @1037 /*The love I feel for her is primarily "radino", a protective love for someone who looks to me for aid.*/ 
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove21b
	@1038 /*I had classified Imoen more as a romantic partner than a friend.*/
	= @1039 /*Though I believe what she feels for me is "totthanmat", love for a friend with whom she is also intimately involved.*/
	= @1040 /*I am, as usual, becoming more attached than I would prefer.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove22
	@1041 /*My faithful squire... Yes, I suppose I have grown to care for him.*/
	= @1042 /*Certainly it is my duty to protect him. Therefore I declare my love for him to be "toaquy", love for someone you are sworn to protect.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove23
	@1043 /*I... I do not know. I have never, ever, heard of a halfling marrying a member of another race. Never.*/
END
	++ @956 /*Well then, can we speak of love? What kinds of love are there?*/ GOTO _bMazzySpeaksLove2
	+ ~Global("_bMazzyRomance","GLOBAL",2)~ + @1044 /*Well then, after we get married, you should teach me. There's no rule that says you can't.*/ GOTO _bMazzySpeaksLove25
	++ @931 /*Let's not talk about this any more today.*/ EXIT

CHAIN MAZZYJ _bMazzySpeaksLove24
	@1045 /*At a time like this, I take comfort in the fact that Common only has one word for love. You are <CHARNAME>, you saved my life, and I am fully in love with you.*/
	= @1046 /*I do not wish to limit what we could be by naming that love now.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove25
	@1047 /*IF we get married...*/
	= @1048 /*...then yes. Yes, I will teach you.*/
	= @1049 /*And that is as far as this conversation is going to go today.*/
EXIT

CHAIN MAZZYJ _bMazzySpeaksLove26
	@1051 /*Again, <CHARNAME>? Why not a discussion on botany in Dwarvish?*/
	= @1052 /*There are so many kinds of love and this silly language has only one word for all of them.*/
END
	++ @915 /*What kinds of love are there?*/ GOTO _bMazzySpeaksLove2
	++ @916 /*Do you mean that Common is not your mother tongue?*/ GOTO _bMazzySpeaksLove3
	++ @917 /*Could we try anyway?*/ GOTO _bMazzySpeaksLove4
	
	