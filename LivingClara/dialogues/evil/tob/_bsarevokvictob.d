
//Sarevok-Viconia Conversation

CHAIN IF WEIGHT #-1 ~Global("_bVSSexScene","GLOBAL",3)~ THEN VICON25J _bSVScene1
@1 /*Hello Sarevok.*/
DO ~UndoExplore()~
== SAREV25J @2 /*Viconia! Where am I? Why can I not see anything? Why can't I move? What do you want?*/
== VICON25J @3 /*So many questions, male. Should not the one in control be asking the questions?*/
= @4 /*However, I will play along for now. You are in a piece of <CHARNAME>'s pocket plane that I created... or found... I am still not wholly sure how it works, but it will keep us from being interrupted.*/
= @5 /*You cannot see because there is no light. You can move, but your arms and legs are immobilized. As to what I want, you should be able to feel me on your skin.*/
= @6 /*I am sitting on your chest, my knees are near your ears and our clothes are nowhere to be found. What do you think I want?*/
== SAREV25J IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @701 /*Do you not have <CHARNAME> for such things? You are either brave or foolhardy to cuckold a Bhaalspawn in <PRO_HISHER> domain.*/
== VICON25J IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @702 /*What of it? <PRO_HESHE> is my <PRO_MALEFEMALE>. You, however, are unclaimed.*/ 
== SAREV25J @7 /*You offered already, drow, and I declined your advances.*/
== VICON25J @8 /*Now I am not offering, I am demanding! You will use your tongue as I direct or I will cut it out.*/
== SAREV25J @9 /*You would cut out my tongue? Why?*/
== VICON25J @10 /*If you will not use it to pleasure me then it does not have a purpose, does it?*/
== SAREV25J @11 /*And then...?*/
== VICON25J @12 /*Then when I am finished with your tongue, I will desire the rest of you. I will release you from your paralysis and you will pleasure me as I instruct.*/
== SAREV25J @13 /*Or I will kill you and return home. Do you think I will be so overcome with desire that I will submit to your wishes?*/
== VICON25J @14 /*You will submit or you will die! You are twice my size, true, but there are no weapons here. You are unnarmed, but I never am thanks to my power.*/
= @15 /*You can try to kill me, Sarevok, but I will send you back to the abyss. Is that what you wish?*/
== SAREV25J @16 /*Perhaps. I have not yet decided. I still think that crushing your throat would be pathetically easy.*/
== VICON25J @17 /*We shall see. But enough of this. If you wish to ever speak again, then it is time to put that tongue to good use.*/
DO ~SetGlobal("_bVSSexScene","GLOBAL",4) ApplySpellRES("_bHFDAM","Viconia") Kill("Sarevok") RestParty() Explore()~
EXIT

APPEND VICON25J IF WEIGHT #-1 ~Global("_bVSSexScene","GLOBAL",4)~ THEN _bSVScene2
	SAY @18 /*That... did not go as I had hoped.*/
	++ @19 /*What happened, Viconia? Where is Sarevok?*/ GOTO _bSVScene3
	++ @20 /*Do I even want to know?*/ GOTO _bSVScene3
	+ ~Global("ViconiaRomanceActive","GLOBAL",2)~ + @200 /*I feel like I should worry. Just what is going on?*/ GOTO _bSVScene3
	END
	
	IF ~~ THEN _bSVScene3
	SAY @21 /*We simply had a... disagreement. Sarevok's body is over there. We should raise him.*/
	IF ~~ THEN DO ~SetGlobal("_bVSSexScene","GLOBAL",5)~ EXIT
	END
END

//After Sarevok raised
CHAIN IF WEIGHT #-1 ~Global("_bVSSexScene","GLOBAL",6)~ THEN VICON25J _bSVScene4
@22 /*Well, Sarevok?*/
== SAREV25J @23 /*Well what?*/
== VICON25J @24 /*You see that I was right. You tried to hurt me but I dispatched your soul back to the abyss.*/
== SAREV25J @25 /*True. Yet here I am.*/
== VICON25J @26 /*I brought you back so that you could see the error of your ways. Resisting me only gets you killed. You are mine. Join me tonight.*/
== SAREV25J @27 /*No.*/
== VICON25J @28 /*Why?*/
== SAREV25J @29 /*I do not submit.*/
== VICON25J @30 /*So you have said before. We shall see.*/
DO ~SetGlobal("_bVSSexScene","GLOBAL",7)~
EXIT

//Next Rest
CHAIN IF WEIGHT #-1 ~Global("_bVSSexScene","GLOBAL",9)~ THEN SAREV25J _bSVScene5
@31 /*Again, Viconia? This grows tiresome.*/
DO ~UndoExplore()~
== VICON25J @32 /*Enough! First your tongue, then the rest of you.*/
== SAREV25J @33 /*I think not.*/
== VICON25J @34 /*What? Do not test me.*/
== SAREV25J @35 /*You will not cut out my tongue; you enjoyed it too much. You start cutting off pieces and I will be of no use to you.*/
== VICON25J @36 /*Then you will stay intact, but you will still suffer. I am pain and you will know me.*/
DO ~ApplySpellRES("_bHFDAM","Sarevok") SetGlobal("_bVSSexScene","GLOBAL",10) RestParty()~
EXIT

//On Waking
CHAIN IF WEIGHT #-1 ~Global("_bVSSexScene","GLOBAL",11)~ THEN SAREV25J _bSVScene6
@37 /*Are we finished already?*/
== VICON25J @38 /*Hours of agony and you did not break. I bring you to the brink of death and you do not care! Damn you to the abyss! Why will you not be mine?*/
DO ~ApplySpell("Sarevok",HEAL_NO_VISUAL)~
== SAREV25J @39 /*Because I am Sarevok Anchev. I am no one's slave, not even someone as desirable as you.*/
== VICON25J @40 /*Aaagh!*/
DO ~ApplySpellRES("_bHFDAM","Sarevok")~
== SAREV25J @41 /*Ha ha ha ha.*/
== VICON25J @42 /*I am... I am unsure of what to do next. No slave ever resisted me through that before.*/
== SAREV25J @43 /*You did this with many slaves?*/
== VICON25J @44 /*Some. Slaves are amusing at times, but mostly they are weak, useless, boring and broken.*/
== SAREV25J @45 /*That is why they are slaves. Were they strong they would have chosen death instead.*/
== VICON25J @46 /*I could break you, male. It would take a long time, but I could do it.*/
== SAREV25J @47 /*I know. That is why you frighten me. Are you saying that you won't?*/
== VICON25J @48 /*I cannot play with a broken toy, can I? I want you to be mine, but I desire you as you are.*/
= @49 /*Just go away. Leave me to my misery.*/
DO ~SetGlobal("_bVSSexScene","GLOBAL",12) Explore()~
EXIT

//3rd Talk
APPEND SAREV25J IF WEIGHT #-1 ~Global("_bVSSexScene","GLOBAL",14)~ THEN _bSVScene7
SAY @50 /*Viconia, I have an idea.*/
	IF ~!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J _bSVScene7A
	IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J _bSVScene7B
	END
END

//3rd Talk without Viconia Romance
CHAIN VICON25J _bSVScene7A
@51 /*Is that so rare that you must announce it?*/
== SAREV25J @52 /*I desire you this <DAYNIGHTALL>. Stay with me. Show me what you know.*/
== VICON25J @53 /*What? You win and then you concede? What game are you playing?*/
== SAREV25J @54 /*No game. I am Sarevok and I belong only to me. But you are the same, are you not? Have you ever belonged to a man?*/
== VICON25J @55 /*Sometimes, when I had to in order to survive. Every one of them perished afterward, usually screaming in agony.*/
== SAREV25J @56 /*Every girl I have ever known belonged to me. Some cooperated out of fear. Some desired money or power. Many I took by force. I did not even know that it was possible for a girl to take pleasure from it, nor did I care.*/
= @57 /*If a girl had a request, I ignored it and used her as I liked. If she had a demand, I pulled out her teeth for impertinence. If she hit me, I cut off her hand. If she bored me, I gave her to my men.*/
= @58 /*No girl has ever, ever, paralyzed me, presented herself, and demanded that I pleasure her as she desired. Until you. And I enjoyed it, despite your threats to cut out my tongue.*/
== VICON25J @59 /*If you do not come to your point soon then I still may.*/
== SAREV25J @60 /*My point is that I will never be your slave and you will never be mine, but I wish to be your equal... your lover.... Do you accept?*/
== VICON25J @61 /*That is the most outlandish proposal I have ever...*/
= @62 /*...ever...*/
= @63 /*Will you pleasure me as I direct?*/
== SAREV25J @64 /*Of course.*/
== VICON25J @65 /*I can still kill or torture you if you displease me?*/
== SAREV25J @66 /*You may try.*/
== VICON25J @67 /*Then I accept. Come here, male!*/
== SAREV25J @68 /*As my lady commands.*/ 
DO ~SetGlobal("_bVSSexScene","GLOBAL",15) RestParty()~
EXIT

//4th Talk - if no Vic Romance
CHAIN IF WEIGHT #-1 ~Global("_bVSSexScene","GLOBAL",17) !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN SAREV25J _bSVScene8
@69 /*Viconia! Was all that pain last night really necessary?*/
== VICON25J @70 /*Pain is always necessary, my ssinssrigg. It sharpens the senses and provides incentive for you to follow instructions.*/
== SAREV25J @71 /*And what instructions were those?*/
== VICON25J @72 /*I was not finished. You were. I do not allow that.*/
== SAREV25J @73 /*And for that you flay my soul from my bones?*/
== VICON25J @74 /*I left you breathing, did I not? Next time you will be more... considerate, instead of thinking about yourself like every other rivvin male. You should always put my desires before your own.*/
== SAREV25J @75 /*And will you do the same?*/
== VICON25J @76 /*Of course, my ssinssrigg. You can count on me to always put my desires before yours as well.*/
== SAREV25J @77 /*Hah! New skills do not develop overnight, Viconia. This will take some practice.*/
== VICON25J @78 /*Then practice you will have. Tonight and every night until you learn to please me as I wish... or you die trying.*/
== SAREV25J @79 /*So I will find rest only in death?*/
== VICON25J @80 /*You will never rest, my ssinssrigg. If you die then I will raise you and we will continue. You are mine, Sarevok, and you belong to me. Today...tomorrow...always. Remember that.*/
== SAREV25J @81 /*Interesting. I will remember, Viconia. As long as you remember that you belong to me as well.*/
== VICON25J @82 /*You forget yourself, male. I am Viconia of house DeVir. I belong to no one.*/
== SAREV25J @83 /*We shall see, Viconia. We shall see.*/
DO ~SetGlobal("_bVSSexScene","GLOBAL",18)~
EXIT

//3rd Talk with Viconia Romance
CHAIN VICON25J _bSVScene7B
@51 /*Is that so rare that you must announce it?*/
== SAREV25J @52 /*I desire you this <DAYNIGHTALL>. Stay with me. Show me what you know.*/
== VICON25J @53 /*What? You win and then you concede? What game are you playing?*/
== SAREV25J @54 /*No game. I am Sarevok and I belong only to me. But you are the same, are you not? Have you ever belonged to a man?*/
== VICON25J @55 /*Sometimes, when I had to in order to survive. Every one of them perished afterward, usually screaming in agony.*/
== SAREV25J @56 /*Every girl I have ever known belonged to me. Some cooperated out of fear. Some desired money or power. Many I took by force. I did not even know that it was possible for a girl to take pleasure from it, nor did I care.*/
= @57 /*If a girl had a request, I ignored it and used her as I liked. If she had a demand, I pulled out her teeth for impertinence. If she hit me, I cut off her hand. If she bored me, I gave her to my men.*/
= @58 /*No girl has ever, ever, paralyzed me, presented herself, and demanded that I pleasure her as she desired. Until you. And I enjoyed it, despite your threats to cut out my tongue.*/
== VICON25J @59 /*If you do not come to your point soon then I still may.*/
== SAREV25J @60 /*My point is that I will never be your slave and you will never be mine, but I wish to be your equal... your lover.... Do you accept?*/
== VICON25J @61 /*That is the most outlandish proposal I have ever...*/
= @62 /*...ever...*/
= @63 /*Will you pleasure me as I direct?*/
== SAREV25J @64 /*Of course.*/
== VICON25J @65 /*I can still kill or torture you if you displease me?*/
== SAREV25J @66 /*You may try.*/
== VICON25J @67 /*Then I accept. Come here, male!*/
== SAREV25J @84 /*But what about <CHARNAME>, are you leaving him?*/
== VICON25J @85 /*Of course not, male. I plan to keep you both.*/
= @86 /**sigh* I suppose I should inform him first; he can be prickly.*/
= @87 /*<CHARNAME>! My ssinssrigg. I have decided to add Sarevok to my stable. I am growing in power and deserve more than one male.*/
END
	++ @88 /*What? Absolutely not. Sarevok, I challenge you!*/ EXTERN SAREV25J _bVicSarChallenge
	++ @89 /*No! If you choose him, you lose me.*/ GOTO _bVicSarChoice
	++ @90 /*I refuse to be a part of this. Both of you must leave.*/ GOTO _bVicSarLeaving
	++ @91 /*Hah! Welcome aboard, Sarevok. You have no idea what you are getting yourself into.*/ EXTERN SAREV25J _bVicSarAccept
	
CHAIN SAREV25J _bVicSarChallenge
@92 /*You think I fear you? Draw steel.*/
== VICON25J @93 /*Two males competing for me? Intriguing. To the death then.*/
DO ~SetGlobal("_bSVFight","GLOBAL",1)~
EXIT

//If Sarevok dies
APPEND VICON25J IF WEIGHT #-1 ~Global("_bSVFightOver","GLOBAL",1)~ THEN _bVicSarChallenge2
SAY @94 /*A pity to lose such a fine specimen, but worth it. My ssinssrigg, you become more enticing and intriguing by the day.*/
	IF ~~ THEN DO ~SetGlobal("_bSVFightOver","GLOBAL",2)~ EXIT
	END
END

CHAIN VICON25J _bVicSarChoice
@95 /*Well, that is regrettable.*/
= @96 /*Sarevok, do you feel the same way? Will you try to limit me?*/
== SAREV25J @97 /*Hah, of course not! If you want to try another man, then go ahead. His puny efforts will only confirm my greatness.*/
== VICON25J @98 /*Then I choose Sarevok. <CHARNAME>, we are no more.*/
DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("_bVSSexScene","GLOBAL",15) RestParty()~
EXIT

APPEND VICON25J IF ~~ THEN _bVicSarLeaving
SAY @99 /*Regrettable. Come, my new ssinssrigg, we must depart.*/
	IF ~~ THEN DO ~SetGlobal("_bVicLeavesForever","GLOBAL",1) SetGlobal("_bSarevokLeavesForever","GLOBAL",1)~ EXIT
	END
END

CHAIN SAREV25J _bVicSarAccept
@100 /*Do not worry about me, <CHARNAME>, I know exactly what I am doing.*/
= @101 /*I am venturing into the abyss, embracing hell herself to enjoy her warm embrace.*/
= @102 /*Why should you have all the pain and pleasure for yourself?*/
DO ~SetGlobal("_bVSSexScene","GLOBAL",19) RestParty()~
EXIT

//4th Talk, Sharing Version
CHAIN IF WEIGHT #-1 ~Global("_bVSSexScene","GLOBAL",21) Global("ViconiaRomanceActive","GLOBAL",2)~ THEN SAREV25J _bVSShare1
@103 /*So how does this work with two of us? Does one of us take you from the front and the other from behind?*/
== VICON25J @104 /*What, so I can be twice as disappointed? Waele wael, I think not.*/
= @105 /*Each of your rods has half the stamina of a competent male, perhaps less. My only hope is that by combining your efforts, I might actually be satisfied. Though I am a fool to trust in hope.*/
= @106 /*Though I am a fool to trust in hope, if you both do exactly as I direct, perhaps I will find a path out of this bleak wasteland.*/
== SAREV25J @107 /*And what does my lady command?*/
== VICON25J @108 /*Well, first of all, you two need to remove your clothes. Quickly now, this is not about you.*/
= @109 /*Now take off my clothes. Slowly. Kissing every part of my body as it is revealed. Slowly now, slowly. This is always, always about me.*/
DO ~SetGlobal("_bVSSexScene","GLOBAL",22) StartMovie("pocketzz") UndoExplore()~
EXIT

CHAIN IF ~Global("_bVSSexScene","GLOBAL",22)~ THEN VICON25J _bVSShare2
@110 /*Yes, <CHARNAME>, keep doing that but faster. No... keep moving your tongue straight up and down, are you deaf? There. Perfect.*/
= @111 /*Sarevok, suck my breast harder, you weakling; it will not break. Good, and now the right hand gently caresses the other nipple. Gently! Are you some clumsy guy'ya? Better!*/
= @112 /*Yes... my ssinssriggs... yes...*/
DO ~SetGlobal("_bVSSexScene","GLOBAL",23) StartMovie("pocketzz")~
EXIT

CHAIN IF ~Global("_bVSSexScene","GLOBAL",23)~ THEN VICON25J _bVSShare3
@113 /*<CHARNAME> are you ready? Sarevok has fumbled already and is beginning to flag.*/
= @114 /*You are still not ready to continue? Kl'eril dalhar, must I do everything myself? Move around to my mouth, I will fix it.*/
DO ~SetGlobal("_bVSSexScene","GLOBAL",24) StartMovie("pocketzz")~
EXIT

CHAIN IF ~Global("_bVSSexScene","GLOBAL",24)~ THEN VICON25J _bVSShare4
@115 /*Mzild! Mzild! Nin! Nin ussta ssinssrigs. Nin.*/
== SAREV25J @116 /*<CHARNAME>, can you understand any of that?*/
DO ~ApplySpell("Sarevok",HEAL_NO_VISUAL) ActionOverride(Player1,ApplySpell(Player1,HEAL_NO_VISUAL)) SetGlobal("_bVSSexScene","GLOBAL",25)~
END
	++ @117 /*No, but if we stop now she'll burn us both.*/ EXTERN SAREV25J _bVSShare5
	++ @118 /*Of course, the literal translation was, "More, more, now, now my lusts, now." But you could also take it as her saying, "Yes, my loves, continue," over and over.*/ EXTERN SAREV25J _bVSShare6
	++ @119 /*She wants you to stop.*/ EXTERN SAREV25J _bVSShare7
	++ @120 /*Mmm...mmmph..mmm*/ EXTERN SAREV25J _bVSShare8
	
APPEND SAREV25J IF ~~ THEN _bVSShare5
	SAY @121 /*Then we had better do as she commands.*/
	IF ~~ THEN EXTERN VICON25J _bVSShare9
	END
	
	IF ~~ THEN _bVSShare6
	SAY @122 /*Hah, you're just making that up.*/
	IF ~~ THEN EXTERN VICON25J _bVSShare9
	END
	
	IF ~~ THEN _bVSShare7
	SAY @123 /*I am not such a fool as that. We continue until the world ends or she demands otherwise.*/
	IF ~~ THEN EXTERN VICON25J _bVSShare9
	END
	
	IF ~~ THEN _bVSShare8
	SAY @124 /*What? You think if you stop to speak for one second she'll kill you? Hah, you're almost certainly right.*/
	IF ~~ THEN EXTERN VICON25J _bVSShare9
	END
END

CHAIN VICON25J _bVSShare9
@125 /*Vith'ussa! Mzild! Mzild! Oh! Oh!*/
DO ~ApplySpellRES("_bHFDAM","Sarevok") ApplySpellRES("_bHFDAM",Player1)~
= @126 /*Mmmmmm.*/
= @127 /*Hold me, my ssinssriggs. That was wonderful.*/
END
	++ @128 /*Of course, my love.*/ EXIT
	++ @129 /*Sarevok, why we do put up with this? The continuous abuse? The pain?*/ EXTERN SAREV25J _bVSShare10
	
CHAIN SAREV25J _bVSShare10
@130 /*Because having her is one of the greatest experiences in the nine planes, and if you tell me otherwise, I'll know you as a liar.*/
= @131 /*But if you're not man enough for her, you're welcome to leave.*/
== VICON25J @132 /*Shhh, quiet now or I'll paralyze and flay you both.*/
DO ~Explore() RestParty()~
EXIT



