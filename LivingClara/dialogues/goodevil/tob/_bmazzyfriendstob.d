//1st conversation, 2 days after meeting - here so recurring talks will start in new game.

APPEND MAZZY25J IF  WEIGHT #-1 ~Global("_bMFT","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN _bmazfriend1
	SAY @1 /*<CHARNAME>, I would like to know you better. May I ask you a question?*/
	++ @2 /*Of course.*/ DO ~SetGlobal("_bMFT","GLOBAL",3)~ GOTO _bmazfriend2
	++ @3 /*Depends on the question.*/ DO ~SetGlobal("_bMFT","GLOBAL",3)~ GOTO _bmazfriend2
	++ @4 /*Hit me.*/ DO ~SetGlobal("_bMFT","GLOBAL",3)~ GOTO _bmazfriend2
	++ @5 /*You can ask. I may not answer.*/ DO ~SetGlobal("_bMFT","GLOBAL",3)~ GOTO _bmazfriend2
	++ @6 /*You don’t need to know anything about me. Just go where I command.*/ DO ~SetGlobal("_bMFT","GLOBAL",3) SetGlobal("_BMazzyFriendship","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazfriend2
	SAY @7 /*I was wondering why you decided to become a hero. What made you set out to purge the wicked from the world?*/
	++ @8 /*Who said anything about smiting evil? I just do this for the gold.*/ GOTO _bmazfriend3
	++ @9 /*It was simple, really. Other people kept trying to kill me and I had to defend myself or die. But it turns out I'm pretty good at this whole questing thing.*/ GOTO _bmazfriend4
	++ @11 /*I've dreamed of being a hero ever since I was a child. I think I read every adventure story in Candlekeep, usually when I was supposed to be at other lessons, and now I'm living one instead.*/ GOTO _bmazfriend6
	++ @12 /*I simply wish to help people. What point is there in living if I don't make the world a better place?*/ GOTO _bmazfriend7
	++ @13 /*I don't want to be a hero. In fact, I plan to retire as soon as possible.*/ GOTO _bmazfriend8
	++ @14 /*Are you kidding? I'm just taking out the competition. I plan to rule the world someday.*/ GOTO _bmazfriend9
	END
	
	IF ~~ THEN _bmazfriend3
	SAY @15 /*Oh, you are joking?*/
	++ @16 /*Of course I'm joking. Knowing that I've helped people is my true reward.*/ GOTO _bmazfriend10
	++ @17 /*The gold is definitely a bonus. But I prefer a moral cause.*/ GOTO _bmazfriend10
	++ @18 /*It wasn't a joke. As long as I get paid, I don't give a damn who's in the right.*/ GOTO _bmazfriend11
	END
	
	IF ~~ THEN _bmazfriend10
	SAY @19 /*I am glad to hear that, <CHARNAME>, although you should not joke about justice when there is so little in this world. Together we may add a little more.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazfriend11
	SAY @20 /*Very well. I am disappointed by your response, but I will continue to travel with you as long as you stay on the moral path.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazfriend6
	SAY @25 /*I had a similar reason for starting my adventures, but I have learned since then that life is not always like the stories. I suppose you have as well.*/
	++ @26 /*I don't know. Gods, villains, long-lost siblings: life has seemed a lot like the story books to me.*/ GOTO _bmazfriend12 
	++ @27 /*I know exactly what you mean. Getting stabbed is such a pain.*/ GOTO _bmazfriend13
	++ @28 /*Yeah, those books never mentioned all the walking, the bad food, or the nights out in the cold.*/ GOTO _bmazfriend13
	END
	
	IF ~~ THEN _bmazfriend12
	SAY @29 /*Perhaps you are right. But if we are living in a story, let us try to ensure that it is not a tragedy.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazfriend13
	SAY @30 /**laughs* I cannot argue with that. Perhaps together we can make our journey a bit more pleasant along the way.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazfriend8
	SAY @33 /*Truly? I did not expect that answer. What do you plan to do instead?*/
	++ @34 /*I want to be a farmer. Give up my weapons and grow something.*/ GOTO _bmazfriend14
	++ @35 /*I've always wanted to be part of the government.*/ GOTO _bmazfriend14
	++ @36 /*When this is finished, I should have enough gold to become a wealthy merchant.*/ GOTO _bmazfriend14
	++ @37 /*I plan to buy a tavern.*/ GOTO _bmazfriend14
	++ @38 /*I'm going to find a nice <PRO_RACE> and settle down.*/ GOTO _bmazfriend14
	++ @39 /*I'm tired of leading groups and making decisions. I want to become a mercenary. Then someone else can tell me who to fight.*/ GOTO _bmazfriend14
	END
	
	IF ~~ THEN _bmazfriend14
	SAY @40 /*Well, I wish you luck with that. I believe you will prove a most interesting travelling companion.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazfriend9
	SAY @41 /*Are you serious?*/
	++ @42 /*Don't worry, Mazzy. It was just a joke. I believe in righteousness.*/ GOTO _bmazfriend15
	++ @43 /*I was only joking. Truth and justice all the way. (I hope she can't tell I'm lying. I need some battle fodder.)*/ GOTO _bmazfriend15
	++ @44 /*Sorry, Mazzy. I'm out for me and me alone.*/ GOTO _bmazfriend16
	END
	
	IF ~~ THEN  _bmazfriend15
	SAY @45 /*Some things you should not joke about, but I am pleased to hear that. We shall travel well together.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN  _bmazfriend16
	SAY @46 /*I am disappointed to hear that. But I will continue to travel with you if only to keep an eye on you. As long as you are doing good work then you have my sword, whatever your motivations.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3)~ EXIT
	END
END
	
CHAIN MAZZY25J _bmazfriend4
@21 /*A good answer, <CHARNAME>. You may have ended up on this path by accident, but I agree that it suits you.*/
= @22 /*If not for that twist of fate, I would most likely have died with my companions. You saved my life and I will return the favour as best I can.*/
DO ~SetGlobal("_BMazzyFriendship","GLOBAL",1)~
EXIT
	
	
CHAIN MAZZY25J _bmazfriend7
@31 /*I agree. We will make the world a better place together.*/
= @32 /*You have the heart of a true hero and I am honoured to travel at your side.*/
DO ~SetGlobal("_BMazzyFriendship","GLOBAL",1)~
EXIT

//Friendship Fix Talk 
APPEND MAZZY25J IF WEIGHT #-1 ~Global("_BMazzyFriendship","GLOBAL",3) Global("_bMazzyForgives","GLOBAL",0) OR(5) !Global("_bMazzyRomance","GLOBAL",3) Global("_bCNNoPromise","GLOBAL",1) Global("_bCNMarriage","GLOBAL",1) Global("_bCNNoSex","GLOBAL",1) !Global("_bCNBalks","GLOBAL",0)~ THEN _bmazfix1
SAY @47 /*I thought we were friends, <CHARNAME>, but you have not treated me as such. From now on, I shall consider us nothing more than travelling companions.*/
	++ @48 /*I am sorry. Please give me a second chance.*/ GOTO _bmazfix3
	++ @49 /*It was a mistake. I spoke in anger and it will not happen again.*/ GOTO _bmazfix3
	++ @50 /*As you wish.*/ DO ~SetGlobal("_bCNNoFix","GLOBAL",1)~ EXIT
	++ @51 /*I did not want your friendship anyway.*/ DO ~SetGlobal("_bCNNoFix","GLOBAL",1)~ EXIT
	END
	
	IF WEIGHT #-1 ~Global("_BMazzyFriendship","GLOBAL",3) Global("_bMazzyForgives","GLOBAL",1)~ THEN _bmazfix2
	SAY @55 /*You told me you would change, <CHARNAME>, and you have not. Therefore, we are friends no longer and I will not change my mind.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyForgives","GLOBAL",2)~ EXIT
	END
	
	IF ~~ THEN _bmazfix3
	SAY @52 /*All right, <CHARNAME>. You may have one more chance. Do not waste it.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyForgives","GLOBAL",1) SetGlobal("_BMazzyFriendship","GLOBAL",1)~ EXIT 
	END
	
	IF WEIGHT #-1 ~Global("_BMazzyFriendship","GLOBAL",3) Global("_bMazzyForgives","GLOBAL",0) Global("_bMazzyRomance","GLOBAL",3) !Global("_bCNNoPromise","GLOBAL",1) !Global("_bCNMarriage","GLOBAL",1) !Global("_bCNNoSex","GLOBAL",1) Global("_bCNBalks","GLOBAL",0)~ THEN _bmazfix4
	SAY @53 /*I would not treat my friends as you have treated me, <CHARNAME>, let alone a lover. I am ending things between us.*/
	++ @48 /*I am sorry. Please give me a second chance.*/ GOTO _bmazfix5
	++ @49 /*It was a mistake. I spoke in anger and it will not happen again.*/ GOTO _bmazfix5
	++ @50 /*As you wish.*/ DO ~SetGlobal("_bCNNoFix","GLOBAL",1)~ EXIT
	++ @54 /*Fine. I was finished with you anyway.*/ DO ~SetGlobal("_bCNNoFix","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazfix5
	SAY @52 /*All right, <CHARNAME>. You may have one more chance. Do not waste it.*/
	IF ~Global("_bMazzyCourted","GLOBAL",6)~ THEN DO ~SetGlobal("_bMazzyForgives","GLOBAL",1) SetGlobal("_BMazzyFriendship","GLOBAL",1) SetGlobal("_bMazzyRomance","GLOBAL",2)~ EXIT
	IF ~GlobalLT("_bMazzyCourted","GLOBAL",6)~ THEN DO ~SetGlobal("_bMazzyForgives","GLOBAL",1) SetGlobal("_BMazzyFriendship","GLOBAL",1) SetGlobal("_bMazzyRomance","GLOBAL",1)~ EXIT 
	END
END

//Gorion Wraith Scene - Imoen Romance Version
CHAIN IF WEIGHT #-100 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_BMazzyFriendship","GLOBAL",1) Global("ImoenRomanceActive","GLOBAL",2) InParty("Imoen2") Global("WraithPunish","GLOBAL",2) Global("_bCNMazzyWraith","GLOBAL",0)~ THEN HGWRA01 _bImoenWraithScene1
@56 /*You are both forces for death and evil carving a path of suffering through the land.*/
DO ~SetGlobal("_bCNMazzyWraith","GLOBAL",1)~
== MAZZY25J @57 /*Enough of this! I am Mazzy Fentan, a Truesword of Arvoreen.*/
= @58 /*<CHARNAME> and Imoen are both good people, heroes! They may have the essence of Bhaal inside them, but they try to do the right thing. They are warriors on the side of virtue, not murderers!*/
== HGWRA01 @59 /*How would you know, Mazzy Fentan, when you are just as much a murderer as they?*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bMazDad")~ 
EXIT

//Gorion Wraith Scene - Regular Version
CHAIN IF WEIGHT #-100 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_BMazzyFriendship","GLOBAL",1) Global("WraithPunish","GLOBAL",2) Global("_bCNMazzyWraith","GLOBAL",0) OR(2) !Global("ImoenRomanceActive","GLOBAL",2) !InParty("Imoen2")~ THEN HGWRA01 _bMazzyWraithScene1
@60 /*You are a force for death and evil carving a path of suffering through the land.*/
DO ~SetGlobal("_bCNMazzyWraith","GLOBAL",1)~
== MAZZY25J @57 /*Enough of this! I am Mazzy Fentan, a Truesword of Arvoreen.*/
= @61 /*<CHARNAME> is a good person, a hero! <PRO_HESHE> may have the essence of Bhaal inside <PRO_HIMHER>, but <PRO_HESHE> tries to do the right thing. <PRO_HESHE>is a warrior on the side of virtue, not a murderer!*/
== HGWRA01 @62 /*How would you know, Mazzy Fentan, when you are just as much a murderer as <PRO_HESHE>?*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bMazDad")~ 
EXIT

BEGIN _bMDAD

CHAIN IF WEIGHT #-99 ~Global("_bCNMazzyWraith","GLOBAL",1)~ THEN _bMDAD _bMazzyDadTalk
@63 /*Mazzy, my daughter, is that you?*/
DO ~SetGlobal("_bCNMazzyWraith","GLOBAL",2)~
== MAZZY25J @64 /*Father? How?*/
== _bMDAD @65 /*I am dead. Murdered. My body was left to rot, my valuables stolen, and you did nothing to avenge me. You did not even care.*/
== MAZZY25J @66 /*I still do not know who killed you! I never found your body! I did not even know where to begin.*/
== _bMDAD @67 /*And whose fault is that? I went to save you, Mazzy. I went to save you from yourself, but you were not there...*/
= @68 /*You fled from battle as quickly you fled from your family. You were as poor a soldier as you were a daughter.*/
== MAZZY25J @69 /*It was not a battle; it was a massacre. There was nothing I could do!*/
= @70 /*You were right, father... I never should have left.*/
== _bMDAD @71 /*But you did leave, my daughter. You left your family... you left your comrades in arms... and they fell... I fell... and you did nothing. You know who killed us, yet you did nothing.*/
== MAZZY25J @72 /*My comrades were murderers! I did not know where you had gone! I could not fight a whole army!*/
== _bMDAD @73 /*Excuses, as always. You have a reason for everything, my daughter, and none of them are true.*/
== MAZZY25J @74 /*I... I... <CHARNAME>, help me... please...*/
END
	++ @75 /*Of course, Mazzy. What do you need?*/ + _bMazzyDadTalk2
	++ @76 /*Why should I help you? It sounds like you deserve this.*/ + _bMazzyDadTalk2
	++ @77 /*Shut up, ghost! You don't know anything!*/ + _bMazzyDadTalk2
	++ @78 /*I'm assuming this is why you wouldn't talk about your father.*/ + _bMazzyDadTalk2
	++ @79 /*Uuhhh, I can stab him? Would that help?*/ + _bMazzyDadTalk2
	
CHAIN _bMDAD _bMazzyDadTalk2
@80 /*You condemn others whose sins are only a fraction of your own, hoping to quiet the guilt that torments you. Has it worked, my daughter? Have you spilled enough blood to wash away the rage, grief, and shame inside of you?*/
== MAZZY25J @81 /**sobs**/
== HGWRA01 IF ~Global("ImoenRomanceActive","GLOBAL",2) InParty("Imoen2")~ THEN @82 /*You see, <CHARNAME>, Imoen, the truth can silence even the most self-righteous. When you surround yourselves with villains, how can there be any hope for you?*/
== HGWRA01 IF ~OR(2) !Global("ImoenRomanceActive","GLOBAL",2) !InParty("Imoen2")~ THEN @83 /*You see, <CHARNAME>, the truth can silence even the most self-righteous. When you surround yourselves with villains, how can there be any hope for you?*/
== HGWRA01 @830 /*You are past saving now.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bMazD2")~ 
EXIT


//Post Wraith Talk
CHAIN IF WEIGHT #-1 ~Global("_bCNMazzyWraith","GLOBAL",3)~ THEN MAZZY25J _bMazzyPostWraith
@84 /*I am sorry, <CHARNAME>, but may we speak for a moment? My hands are still shaking.*/
DO ~SetGlobal("_bCNMazzyWraith","GLOBAL",4) SetGlobal("_bPostWraithQuestions","GLOBAL",1) SetGlobal("_bMazzyDad","GLOBAL",1)~
END
	++ @85 /*Don't worry, Mazzy, those were just evil spirits impersonating the dead.*/ + _bMazzyPostWraith1
	++ @86 /*Yes, that was quite the unpleasant surprise. But I know the real Gorion would never have talked to me like that.*/ + _bMazzyPostWraith2
	++ @87 /*I am not surprised. My hands are shaking too.*/ + _bMazzyPostWraith3
	
APPEND MAZZY25J IF ~~ THEN _bMazzyPostWraith1
	SAY @88 /*Perhaps. But then where did they learn the intimate details of our lives?*/
	IF ~~ THEN + _bMazzyPostWraith4 
	END

	IF ~~ THEN _bMazzyPostWraith2
	SAY @89 /*I do not believe that was truly my father's ghost. But I find myself wondering how it could have known the intimate details of my life.*/
	IF ~~ THEN + _bMazzyPostWraith4 
	END
	
	IF ~~ THEN _bMazzyPostWraith3
	SAY @90 /*I am glad I'm not the only one. No ghost should know the most intimate details of my life and I do not wish to fight such foes again.*/
	IF ~~ THEN + _bMazzyPostWraith4 
	END
END

CHAIN MAZZY25J _bMazzyPostWraith4
@91 /*I believe those spirits mirrored our own memories. That was Gorion as remembered by you, and my father as I knew him.*/
= @92 /*Which means they were not lying. Their words were true from our perspectives, the truths that cut us deepest...*/
END
	++ @93 /*No. Sarevok killed Gorion, not me. I do not accept that responsibility.*/ + _bMazzyPostWraith5
	++ @94 /*You're right. Gorion's death was my fault. I will bear that guilt forever.*/ + _bMazzyPostWraith6
	++ @95 /*You should not let those spirits get to you.*/ + _bMazzyPostWraith7
	
APPEND MAZZY25J IF ~~ THEN _bMazzyPostWraith5
	SAY @96 /*I wish I could be as certain... It is complicated, <CHARNAME>, but the short version is that everything the wraith said to me was true.*/
	IF ~~ THEN + _bMazzyPostWraith8 
	END

	IF ~~ THEN _bMazzyPostWraith6
	SAY @97 /*As will I... It is complicated, <CHARNAME>, but the short version is that everything the wraith said to me was true.*/
	IF ~~ THEN + _bMazzyPostWraith8 
	END
	
	IF ~~ THEN _bMazzyPostWraith7
	SAY @98 /*It is not that easy, <CHARNAME>, not when everything the wraith said to me was true.*/
	IF ~~ THEN + _bMazzyPostWraith8
	END
END

CHAIN MAZZY25J _bMazzyPostWraith8
@99 /*I DID go off to war against my father's wishes, I DID desert during the sacking of a city, and the army I deserted was subsequently defeated and slaughtered.*/
= @100 /*My father heard about the defeat and left home to find me. He never returned.*/
= @101 /*I must think on this; if you have questions, you may ask me later.*/
EXIT


//Post Yaga-Shura talk
CHAIN IF WEIGHT #-1 ~Global("_bYagaTalk","GLOBAL",1)~ THEN MAZZY25J _bMazzyPostYaga
@102 /*He's dead, and it was for nothing... IT WAS ALL FOR NOTHING!*/
DO ~SetGlobal("_bYagaTalk","GLOBAL",2)~
END
	++ @103 /*Mazzy, are you all right?*/ + _bMazzyPostYaga1
	++ @104 /*We just defeated one of the Five. I'd consider that an accomplishment.*/ + _bMazzyPostYaga1
	++ @105 /*I know what you mean. What was the point?*/ + _bMazzyPostYaga1
	++ @106 /*A good fight is never a waste.*/ + _bMazzyPostYaga1
	
CHAIN MAZZY25J _bMazzyPostYaga1
@107 /*First we broke into Gromnir Il-Khan's castle and slaughtered countless soldiers, including Gromnir himself.*/
= @108 /*Could we not have spoken with him? Perhaps we could have worked together to protect Saradush? His soldiers were crude and violent mercenaries, but they did not all deserve death.*/
END
	++ @109 /*We tried to talk but he attacked us.*/ + _bMazzyPostYaga2
	++ @110 /*Attack first, talk later. That's my motto.*/ + _bMazzyPostYaga2
	++ @111 /*Since when do you prefer diplomacy?*/ + _bMazzyPostYaga2
	++ @112 /*I keep saying that our enemies are not all evil. Are you ready to listen finally?*/ + _bMazzyPostYaga2
	
CHAIN MAZZY25J _bMazzyPostYaga2
@113 /*Did we fight with him because it was the only option, or because that is what we are good at?*/
= @114 /*When Saradush's walls were breached, Gromnir Il-Khan would've been useful in its defence. The city could not have been sacked so easily while the keep was still in Gromnir's hands; it would have delayed Yaga Shura's forces considerably, perhaps long enough for us to return in time.*/
= @115 /*Instead, we went into the mountains of the fire giants, invaded their homes, and murdered them indiscriminately, because it was necessary. Because it was for the greater good. Because the lives of those in Saradush were worth it! And yet they all died anyway.*/
= @116 /*I saw a city sacked, <CHARNAME>, when I was a foolish young soldier and it still haunts me to this day. I swore that if I could prevent Saradush suffering the same fate, I would do whatever it took. Whatever the cost!*/
END
	++ @117 /*Are you even talking to me? You don't seem to be listening.*/ + _bMazzyPostYaga3
	++ @118 /*I don't think I've ever seen you this upset.*/ + _bMazzyPostYaga3
	++ @119 /*Fire giants are evil. I won't lose any sleep over it.*/ + _bMazzyPostYaga3
	++ @120 /*Sometimes our best is not enough.*/ + _bMazzyPostYaga3
	
CHAIN MAZZY25J _bMazzyPostYaga3
@121 /*We kill and we kill and we kill, and why? Because we can, <CHARNAME>. Because we have killed so many people that our skills in slaughter are unmatched.*/
= @122 /*My father always told me to be careful what I became good at, because we learn to love what we do well. I never understood what he meant, until now.*/
DO ~SetGlobal("_bMazzyDad","GLOBAL",1) SetGlobal("_bPostWraithQuestions","GLOBAL",1)~
END
	++ @123 /*So that's what this is really about: your father.*/ + _bMazzyPostYaga4
	++ @124 /*We're the best killers around. We are kill-masters!*/ + _bMazzyPostYaga4
	++ @125 /*Your father sounds like a wise man.*/ + _bMazzyPostYaga4
	++ @126 /*I do not love fighting, though I am quite skilled at it.*/ + _bMazzyPostYaga4
	++ @127 /*Yes! The blood and death and screaming! I love it all!*/ + _bMazzyPostYaga4
	
CHAIN MAZZY25J _bMazzyPostYaga4
@128 /*I do not attempt to be diplomatic because I am not actually trying to find a peaceful resolution. I want them to attack us, <CHARNAME>, so that I can show off my amazing combat skills.*/
= @129 /*I do not have the words to end encounters peacefully because I choose not to develop them. Nor do I attempt to quietly sneak past my enemies as so many of my brethren do.*/
= @130 /*Instead I march forward fearlessly, daring every creature we meet to challenge me so that I may feel justified in killing them.*/
= @131 /*And I do not know what kind of person that makes me.*/
= @132 /*Or I do know... and that is worse.*/
EXIT


//Sendai Death Talk
CHAIN IF WEIGHT #-1 ~Global("_bSendaiTalk","GLOBAL",1)~ THEN MAZZY25J _bMazzyPostSendai
@133 /*<CHARNAME>, I am not sure how much more of this I can take.*/
DO ~SetGlobal("_bSendaiTalk","GLOBAL",2)~
END
	++ @134 /*How much more of what?*/ + _bMazzyPostSendai2
	++ @135 /*By the gods, not this again.*/ + _bMazzyPostSendai2
	++ @136 /*I understand. This quest begins to wear on me as well.*/ + _bMazzyPostSendai2
	++ @137 /*Are you kidding? I haven't felt this alive in ages!*/ + _bMazzyPostSendai2

CHAIN MAZZY25J _bMazzyPostSendai2
@138 /*I am seeing the people we kill as people, <CHARNAME>. These soldiers had family... children... brothers... sisters... people who will miss them when they're gone.*/
= @139 /*I see families waiting for their loved ones to return. But they will wait forever... because of me.*/
END
	++ @144 /*Because of us. We are in this together.*/ + _bMazzyPostSendai3
	++ @140 /*These weren't people; they were drow.*/ + _bMazzyPostSendai3
	++ @141 /*Soldiers are fair game. They knew what they were getting into.*/ + _bMazzyPostSendai3
	++ @142 /*I think about that constantly. It's why I try not to fight.*/ + _bMazzyPostSendai3
	++ @143 /*Those families will curse my name forever and that's how it should be. How else will I build my legacy?*/ + _bMazzyPostSendai3
	
CHAIN MAZZY25J _bMazzyPostSendai3
@145 /*And now I cannot go back. I still love what we do. I love battle – the thick of combat is the only time I feel truly alive – but now I am haunted by every life I end.*/
= @146 /*Every time I kill, I see my father. I see my mother and my sister. They are looking at me and I am ashamed of my life. I am ashamed of what I have become.*/
END
	++ @147 /*Do you want to leave? I can return you home.*/ + _bMazzyPostSendai4
	++ @148 /*Are you losing your nerve? You're no use to me like this.*/ + _bMazzyPostSendai4
	++ @149 /*You should not be ashamed. You have only done what's necessary.*/ + _bMazzyPostSendai4
	++ @150 /*That guilt is shared between us. I have the same blood on my hands.*/ + _bMazzyPostSendai4
	
CHAIN MAZZY25J _bMazzyPostSendai4
@151 /*I will finish what we started. The Five must be stopped. But after that... after that I do not know what I will do.*/
EXIT


//2nd Sendai Talk
CHAIN IF WEIGHT #-1 ~Global("_bSendaiTalk","GLOBAL",4)~ THEN MAZZY25J _bMazzyPostSendai5
@152 /*<CHARNAME>, do you remember what I was doing when you found me?*/
DO ~SetGlobal("_bSendaiTalk","GLOBAL",5)~
END
	++ @153 /*Of course, you had been captured by the Shade Lord.*/ + _bMazzyPostSendai6
	++ @154 /*You were trying to cleanse that temple of evil.*/ + _bMazzyPostSendai6
	++ @155 /*No, actually I don't.*/ + _bMazzyPostSendai6
	++ @156 /*Something about a shadow and your dead lover?*/ + _bMazzyPostSendai6
	
CHAIN MAZZY25J _bMazzyPostSendai6
@157 /*I was a prisoner of the Shade Lord. I had foolishly marched my party straight into the temple, where we were ambushed by the Shadow Dragon and my companions were slaughtered.*/
= @158 /*Meanwhile, what was going on in Trademeet? My home town was under attack by wild beasts, and blockaded by the Djinn. If you had never come, the entire town might have been destroyed.*/
END
	++ @159 /*I don't see your point.*/ + _bMazzyPostSendai7
	++ @160 /*Where are you going with this?*/ + _bMazzyPostSendai7
	++ @161 /*I had wondered why you left your town defenseless.*/ + _bMazzyPostSendai7
	++ @162 /*Yeah, and?*/ + _bMazzyPostSendai7
	++ @163 /*You probably should have been there.*/ + _bMazzyPostSendai7
	
CHAIN MAZZY25J _bMazzyPostSendai7
@164 /*Had I stayed home, I might have solved Trademeet's problems. Had I not foolishly led my companions to be murdered by forces more powerful than ourselves, we might have saved Trademeet.*/
= @165 /*...but we were not there. I was not there. I was busy searching for evil far from home... and I found it.*/
END
	++ @166 /*Does all this have a point?*/ + _bMazzyPostSendai8
	++ @167 /*I think I understand what you're saying.*/ + _bMazzyPostSendai8
	++ @168 /*You certainly did.*/ + _bMazzyPostSendai8
	++ @169 /*That's part of being an adventurer.*/ + _bMazzyPostSendai8
	
CHAIN MAZZY25J _bMazzyPostSendai8
@170 /*Perhaps I can devote my life to the greater good without sacrificing myself.*/
= @171 /*Perhaps I can protect peace and those I love at the same time.*/
= @172 /*Thank you for listening, <CHARNAME>. I believe I am on the cusp of developing a plan.*/
EXIT


//Final TOB friendship talk
CHAIN IF WEIGHT #-1 ~Global("_bFinalMazzyTalk","GLOBAL",1)~ THEN MAZZY25J _bMazzyTOBFinal
@173 /*So, my friend, you go to face your destiny. I will not ask what you will choose because I do not believe one can truly know until such power is offered.*/
DO ~SetGlobal("_bFinalMazzyTalk","GLOBAL",2)~
= @174 /*But I will see this through to the end and then I will return to Trademeet. I believe I need a rest, to see my family, and most of all, I need to reassess my future.*/
= @175 /*We have all gained immense power, and with that power comes the chance to do great things, to stand atop the balance of the world and shift the future.*/
= @176 /*But has our wisdom increased with our power? As we play with the power of demi-gods, can we truly comprehend the consequences of our actions?*/
= @177 /*I do not believe that I can... that any of us can... and I am so tired of slaughter.*/
= @178 /*Perhaps I can be a hero and still have a home.*/
EXIT

