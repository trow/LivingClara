CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",2)~ THEN ANOMENJ _bClaraAnomen1
@1 /*I prithee, my lady... it fills me with no small amount of wonder that you have not asked me of my journeys ere we met? We have traveled a short while, and yet we know next to nothing of each other.*/
== _BCLARAJ @2 /*An oversight, my lord, I assure you. Tell me of your exploits.*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",3) SetGlobal("_bAnomenClaraRomance","GLOBAL",1)~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0) Global("AnomenIsKnight","GLOBAL",0)~
THEN @3 /*There is precious little to tell, although my few adventures have been glorious indeed. The path to knighthood is a long one, however... hence the need for my travels.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(2) Global("AnomenIsKnight","GLOBAL",1) Global("AnomenIsNotKnight","GLOBAL",1)~ 
THEN @4 /*There is precious little to tell, although my few adventures have been glorious indeed. I spent many years pursuing knighthood, however... hence the need for my travels.*/
= @5 /*But a few of my deeds have reached the ears of bards. Battle is commonplace enough throughout Amn, and the Order has fielded its army many times in recent years.*/
END
	+ ~GlobalGT("Lovetalk","LOCALS",1)~ + @6 /*Anomen, are you seriously telling her the exact same stories you told me?*/ + _bAnomenPetty
	++ @7 /**say nothing**/ + _bAnomenBrag
	++ @8 /**roll your eyes**/ + _bAnomenBrag
	++ @9 /**sigh heavily**/ + _bAnomenBrag
	++ @9001 /*Absolutely not. There will be no fraternizing. Eyes straight ahead, hands to yourself. I don't want to see you two even look at each other for the rest of our adventures.*/
		DO ~SetGlobal("_bAnomenClaraRomance","GLOBAL",3) SetGlobal ("_bClaraAnomenLove","GLOBAL",111)~ EXIT

APPEND ANOMENJ IF ~~ THEN _bAnomenPetty
	SAY @10 /*I regret that things did not work out between us, <CHARNAME>, but Clara may yet prove more receptive. Now where was I... Oh yes.*/
	IF ~~ THEN + _bAnomenBrag
	END
END

CHAIN ANOMENJ _bAnomenBrag
@11 /*Most recently, however... let me think... I was present when the orcs came down into the Ommlur Hills once again.*/
= @12 /*In great numbers, they are a force to fear but individually they are no match for a skilled warrior. I myself was able to fight through many of them alone and claim the head of one of their foul chieftains.*/
== _BCLARAJ IF ~!Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
@13 /*That is so impressive. The Order is lucky to have you.*/
== ANOMENJ IF ~Global("AnomenIsKnight","GLOBAL",0) Global("AnomenIsNotKnight","GLOBAL",0)~ 
THEN @14 /*Aye, it has been a struggle to prove my worth to the Order. I wish nothing more than to ride into battle with the crest of the Radiant Heart flying above my head.*/
== ANOMENJ IF ~Global("AnomenIsKnight","GLOBAL",1)~ 
THEN @15 /*Aye, it was a struggle to prove my value to the Order. But it was worth the effort to ride into battle with the crest of the Radiant Heart flying above my head.*/
== _BCLARAJ IF ~Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
@16 /*That is so impressive. The Order was foolish to cast you out.*/
== ANOMENJ IF ~Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
@17 /*Aye, I struggled so hard to prove my worth to the Order. For years, I wished nothing more than to ride into battle with the crest of the Radiant Heart flying over my head.*/
== ANOMENJ @18 /*However, I speak too much of my own deeds. One would think me preoccupied with pride. I would not blame you if you are not interested in hearing tales of my prowess.*/
= @19 /*I am interested in hearing more about your life, my lady. How came you to be possessed by that terrible vampire?*/
== _BCLARAJ @20 /*A tragic tale, my lord. As you know, my father was a minor member of the Silvershield family and we were traveling south with my mother when we were set upon by ogres. Our men fought bravely but when the battle seemed lost, my father ordered my mother and I to flee.*/
= @21 /*We ran but an ogre overtook us and I am ashamed to say I fled as everyone else was murdered. I found myself in Amn with no money, no family, and little hope of ever returning home.*/
= @22 /*A noble girl is a tempting prize so I used every skill I possessed to disguise myself as a peasant. I hid, I begged, I stole food, and while I never surrendered my virtue, I did not always act in honorable ways.*/
== ANOMENJ @23 /*Do not be so hard on yourself, my lady. You did what was necessary to survive.*/
== _BCLARAJ @24 /*Thank you, my lord. I am not a great warrior like yourself. I am only a young woman who is trying to make her way through a vast, cruel world. I will always need your protection.*/
== ANOMENJ @25 /*Maybe. Although I know that you are capable of impressive feats yourself. I have been bewildered by your competency in action. 'Tis most wondrous, for a woman.*/
= @26 /*I mean no criticism by it. I have had little experience with the fairer sex and likely speak as a blunt tool. Perhaps some other time you will tell me more of your own feats.*/
== _BCLARAJ @27 /*My feats?*/
== ANOMENJ @28 /*Your successes! You are here; you are alive. Whatever you may think of yourself, your story is extraordinary. Any other young noblewoman in your place would have perished, yet here you are.*/
= @29 /*And I am glad.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",5) !Global("AnomenIsNotKnight","GLOBAL",1) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ANOMENJ _bClaraAnomenKeldorn1
@30 /*How much do you know of my Order of the Most Radiant Heart?*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",6)~
== _BCLARAJ @31 /*Very little, my lord.*/
== ANOMENJ @32 /*Then you should be made aware of it, certainly. The Order is the greatest force for righteousness in Faerûn: an army of knights and paladins ready to combat evil wherever it is found.*/
= @33 /*We exist to serve, but we follow no commands except those of our heart and conscience. 'Tis a rare creature that can stand up to the full array of the Order's armies.*/
= @34 /*Personally, I do not understand why the Order does not take control of the council. It could do far more to turn this into a fair and equitable land.*/
== KELDORJ @35 /**sigh* Once again, Anomen, you follow pride rather than your head. The Order remains free of corruption because we do not take part in the politics you mention.*/
= @36 /*If we allowed governance to conflict with our righteous hearts, then where would we be? Even the council has its place in this land; surely you know that?*/
== ANOMENJ @37 /*I have long since passed the time when I needed a knight of the Order to answer my every thought, Sir Keldorn. I have heard many express the idea you repeat and I disagree.*/
= @38 /*There is far too much inequity and injustice for the common man and the Order should do more to ease their hopeless existences. What do you think, my lady?*/
== _BCLARAJ @39 /*I think you're right. The Order could do more. If only you were in charge.*/
== ANOMENJ IF ~Global("AnomenIsKnight","GLOBAL",0)~ 
THEN @40 /*Aye, you see the right of it, I think. It is something I shall keep in mind once I pass the Test. The Order must become a more active force for change rather than simply combating the most obvious evils.*/
== ANOMENJ IF ~Global("AnomenIsKnight","GLOBAL",1)~ 
THEN @41 /*Aye, you see the right of it, I think. It is something I shall keep in mind. The Order must become a more active force for change rather than simply combating the most obvious evils.*/
== KELDORJ @42 /*The Order has its place, Anomen, and government is not it. Your vision is flawed, and you would do well to think most carefully before you do anything rash.*/
== ANOMENJ @43 /*Perhaps, Sir Keldorn. I shall ponder your words, but I still believe the flaw exists in those who do not think of new ways to combat chaos.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",5) !Global("AnomenIsNotKnight","GLOBAL",1) OR(2) !InParty("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ANOMENJ _bClaraAnomenKeldorn2
@30 /*How much do you know of my Order of the Most Radiant Heart?*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",6)~
== _BCLARAJ @31 /*Very little, my lord.*/
== ANOMENJ @32 /*Then you should be made aware of it, certainly. The Order is the greatest force for righteousness in Faerûn: an army of knights and paladins ready to combat evil wherever it is found.*/
= @33 /*We exist to serve, but we follow no commands except those of our heart and conscience. 'Tis a rare creature that can stand up to the full array of the Order's armies.*/
= @34 /*Personally, I do not understand why the Order does not take control of the council. It could do far more to turn this into a fair and equitable land.*/
= @44 /*I mean, think of all the suffering your average commoner endures. The hunger, the inequity and injustice... the rebellions in the south. All agents of chaos.*/
= @45 /*Surely such things would not occur with the Order in command as a force of true goodness and honest brotherhood? I cannot understand why more people do not see it.*/
== _BCLARAJ @39 /*I think you're right. The Order could do more. If only you were in charge.*/
== ANOMENJ @41 /*Aye, you see the right of it, I think. It is something I shall keep in mind. The Order must become a more active force for change rather than simply combating the most obvious evils.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",5) Global("AnomenIsNotKnight","GLOBAL",1) OR(2) !InParty("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ANOMENJ _bClaraAnomenKeldorn3
@30 /*How much do you know of my Order of the Most Radiant Heart?*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",6)~
== _BCLARAJ @46 /*Only that it was foolish enough to cast you out, my lord.*/
== ANOMENJ @47 /*This is true, but the Order is still the greatest force for righteousness in Faerûn: an army of knights and paladins ready to combat evil wherever it is found.*/
= @48 /*And yet, you are right, the Order is foolish. Its leaders are a cautious lot, unwilling to do what is needed to make the world a better place.*/
= @49 /*The Order needs younger, bolder leadership who would take control of the council. It could do far more to turn this into a fair and equitable land.*/
= @44 /*I mean, think of all the suffering your average commoner endures. The hunger, the inequity and injustice... the rebellions in the south. All agents of chaos.*/
= @45 /*Surely such things would not occur with the Order in command as a force of true goodness and honest brotherhood? I cannot understand why more people do not see it.*/
= @50 /*The leaders do not see it. I was going to change things, my lady, when I eventually rose to power. I was going to make the Order a force to be feared by evil everywhere.*/
= @51 /*And now...*/
= @52 /*Now...*/
= @53 /*Forgive me, my lady, I fear I have become a poor companion. We will talk again when my mood has lifted.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",5) Global("AnomenIsNotKnight","GLOBAL",1) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ANOMENJ _bClaraAnomenKeldorn4
@30 /*How much do you know of my Order of the Most Radiant Heart?*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",6)~
== _BCLARAJ @46 /*Only that it was foolish enough to cast you out, my lord.*/
== ANOMENJ @47 /*This is true, but the Order is still the greatest force for righteousness in Faerûn: an army of knights and paladins ready to combat evil wherever it is found.*/
= @48 /*And yet, you are right, the Order is foolish. Its leaders are a cautious lot, unwilling to do what is needed to make the world a better place.*/
= @49 /*The Order needs younger, bolder leadership who would take control of the council. It could do far more to turn this into a fair and equitable land.*/
== KELDORJ @54 /**sigh* Once again, Anomen, you follow pride rather than your head, which is why you are no longer with us. The Order remains free of corruption because we don't take part in the politics you mention.*/
= @36 /*If we allowed governance to conflict with our righteous hearts, then where would we be? Even the council has its place in this land; surely you know that?*/
== ANOMENJ @37 /*I have long since passed the time when I needed a knight of the Order to answer my every thought, Sir Keldorn. I have heard many express the idea you repeat and I disagree.*/
= @38 /*There is far too much inequity and injustice for the common man and the Order should do more to ease their hopeless existences. What do you think, my lady?*/
== _BCLARAJ @39 /*I think you're right. The Order could do more. If only you were in charge.*/
== ANOMENJ @55 /*Aye, you see the right of it, I think. But it is too late for that. If only I could seize control and make it right.*/
== KELDORJ @42 /*The Order has its place, Anomen, and government is not it. Your vision is flawed, and you would do well to think most carefully before you do anything rash.*/
== ANOMENJ @43 /*Perhaps, Sir Keldorn. I shall ponder your words, but I still believe the flaw exists in those who do not think of new ways to combat chaos.*/
EXIT

//3rd Talk
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",8)~ THEN _BCLARAJ _bClaraAnomen3
@56 /*My lord, may I ask about your family?*/
== ANOMENJ @57 /*My family? I suppose it is only fair given that you told me the tragic story of your own.*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",9)~
= @58 /*My father, Lord Cor, and I do not have a good relationship. When he was not deep in his cups, he was always demanding that I uphold the family honor or telling me what a worthless son I had become.*/
= @59 /*He was scornful of my choice to join the Order. He wanted me to take over his mercantile business, something I truly had no stomach for.*/
= @60 /*I would have given much for my father to be my mentor. Instead, I endured his abuse until I was old enough to squire for the Order and then I fled as quickly as I could.*/
== _BCLARAJ @61 /*That's so horrible. You must be glad to be away from him.*/
== ANOMENJ @62 /*Aye, I am. Though I sometimes wish that things could have gone differently. It is foolish, I know. The man will never change.*/
== ANOMENJ IF ~Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @63 /*It was only after avenging my sister's murder and being cast from the Order that I gained his respect, but I do not expect it to last.*/
== ANOMENJ @64 /*I... I suppose I am telling you this because you remind me a little of my sister, Moira. She was young and determined... I miss her... perhaps the only thing of my family that I miss.*/
= @65 /*I regretted abandoning her to her fate, alone with Lord Cor, but there was little I could do. She... I am sure she...*/
== ANOMENJ IF ~!Global("TalkedCor","GLOBAL",0)~ THEN @66 /*And now she is dead. I failed her... completely and utterly.*/
== ANOMENJ @67 /*No. Never mind. I do not wish to speak about this further, my lady, excuse me.*/
EXIT

//4th Talk
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",11)~ THEN ANOMENJ _bClaraAnomen4
@68 /*I—I do wish to apologize for so abruptly ending our conversation yesterday. I meant no offense by it.*/
== _BCLARAJ @69 /*There was no offense taken, Anomen.*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",12)~
== ANOMENJ IF ~Global("TalkedCor","GLOBAL",0)~ THEN @70 /*I am glad to hear of it. I... I think of my sister sometimes, alone in the manor with my father. From the last letter I received, she seems to be bearing up well.*/
== ANOMENJ IF ~Global("TalkedCor","GLOBAL",0)~ THEN @71 /*However, I think she is merely trying to ease my guilt. It cannot be easy for her, and I wish that I could take her away and send her somewhere where she would be happy.*/
== ANOMENJ IF ~!Global("TalkedCor","GLOBAL",0)~ THEN @72 /*I am glad to hear of it. I... I thought of my sister sometimes, alone in the manor with my father all those years. From the last letter I received before her death, she seemed to be bearing up well.*/
== ANOMENJ IF ~!Global("TalkedCor","GLOBAL",0)~ THEN @73 /*However, I think she was merely trying to ease my guilt. It cannot have been easy for her, and I often wished that I could've taken her away and sent her somewhere where she would've been happy.*/
== ANOMENJ IF ~!Global("TalkedCor","GLOBAL",0)~ THEN @74 /*But it is too late for regrets now.*/
== _BCLARAJ @75 /*Why do I remind you of her?*/
== ANOMENJ IF ~Global("TalkedCor","GLOBAL",0)~ THEN @76 /*There is a sense of her in your bearing, my lady. Moira can be stubborn... she refuses to leave our father's side even at his drunken worst, staying to take care of him.*/
== ANOMENJ IF ~Global("TalkedCor","GLOBAL",0)~ THEN @77 /*Since our mother died, I think she cannot imagine doing anything else. I hope that old bastard does not treat her too harshly.*/
== ANOMENJ IF ~!Global("TalkedCor","GLOBAL",0)~ THEN @78 /*There is a sense of her in your bearing, my lady. Moira could be stubborn... she refused to leave our father's side even at his drunken worst, staying to take care of him.*/
== ANOMENJ IF ~!Global("TalkedCor","GLOBAL",0)~ THEN @79 /*Since our mother died, I think she could hardly imagine doing anything else. I hope that old bastard did not treat her too harshly before her death.*/
== ANOMENJ @80 /*I am babbling. We should continue with our journey. But thank you for letting me talk about her.*/
EXIT

//5th Talk
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",14)~ THEN ANOMENJ _bClaraAnomen5
@81 /**sigh* Speaking of my father has left me plenty of time to think. Perhaps too much. It is as if an ill wind has blown across my soul.*/
== _BCLARAJ @82 /*Why? What are you thinking of?*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",15)~
== ANOMENJ @83 /*I speak of memories that are best put aside, lest they fester at my heart. However, I find sometimes that I cannot.*/
= @84 /*I remember when I first achieved the rank of squire. It had been a difficult task... my father had refused to be my patron, so I was no better off than if I'd been a commoner.*/
= @85 /*Most knights would not take me in since I had no coin to pay for my equipment. I had to prove myself before a knight by the name of Sir Blethyn took pity on me and had me squired.*/
= @86 /*I was proud during the ceremony, and happy... but it was not to last. My father, Lord Cor, stumbled into the Order's headquarters... he was filthy drunk and full of rage.*/
= @87 /*He began shouting at the knights... at Sir Ryan Trawl, no less... that I had been stolen from him. That I was a worthless and weak son who should not be in the Order.*/
= @88 /*Sir Ryan Trawl told him that I had proven myself... but the old bastard would hear none of it. They were finally forced to drag him out of the headquarters, kicking and screaming.*/
= @89 /*Leave it to Lord Cor to stain the one moment of pure pleasure I experienced during my time in the Order, the one thing I had achieved despite all of his opposition. Bah!*/
== _BCLARAJ @90 /*That's awful! I'm sorry it happened like that.*/
== ANOMENJ @91 /*As am I. Since my mother's death, my father has been the force against which I have always struggled to prove myself... an invisible cancer which I cannot vanquish.*/
= @92 /*Ah, but listen to me. What a pathetic knight I must seem, blubbering like a boy to you over such a thing as my father's disapproval. You must think me a fool, my lady.*/
== _BCLARAJ @93 /*Don't be ridiculous, Anomen. You've overcome many obstacles and you should be proud of your accomplishments.*/
== ANOMENJ @94 /*You are kind to say so, my lady. Thank you.*/
EXIT

//6th Talk
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",17)~ THEN ANOMENJ _bClaraAnomen6
@95 /*Have I told you how I became a cleric?*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",18)~
== _BCLARAJ @96 /*No, but I'd like to hear the tale.*/
== ANOMENJ @97 /*As I've said before, I approached the Order without the benefit of my father's sponsorship. Most young lords come to the Order with patrons paying for their armor and such things.*/
= @98 /*I did not possess even a sword, and the knight-trainers would not accept me without my father's permission.*/
= @99 /*My mother, however, was a follower of Helm and known to Sir Ryan Trawl. She... petitioned the knight commander on my behalf, begging him not to turn me away.*/
= @100 /*So Sir Ryan Trawl allowed me to enter as a novitiate to Helm. I trained as a cleric and learned my sword skills from the guardians of the temple before I was eventually able to squire.*/
= @101 /*A long road it has been for me, my lady... but I am pleased to serve in the Order under Helm's name. And I trust that Helm is pleased with me as well.*/
== _BCLARAJ @102 /*I am sure he is, my lord.*/
== ANOMENJ @103 /*But so what. All that work, and for what? What have I achieved? What use has any of this been? I am a failure.*/
= @104 /*Bah! I tire of all this talk... let us just continue our quest in silence for a while.*/
EXIT

 //7th Talk
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",20)~ THEN ANOMENJ _bClaraAnomen7
@105 /*My lady, I... I feel most terrible about my burst of temper the previous day. Would... would you allow me the opportunity to apologize and try to explain?*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",21)~
== _BCLARAJ @106 /*Very well... I will listen to what you have to say.*/
== ANOMENJ @107 /*I am most thankful, Clara. Sometimes, you see... my zeal for justice and valor can become too much. There is an anger in my heart that I... cannot seem to control.*/
= @108 /*I see injustices everywhere, my lady, and... and I wish to do nothing but strike out against them. But even when I do... I keep on striking out... the hate and anger only grow...*/
= @109 /*When we spoke before I became angry, but it... it was more anger at my own inability to be as good and lawful as I might wish to be.*/
= @110 /*I am sorry, Clara, I truly am. I am unworthy of my vows.*/
== _BCLARAJ @111 /*I believe that everyone feels at least a little bit as you do, Anomen... Even the most noble paladin feels anger and hate at times.*/
== ANOMENJ @112 /*I... do not think that is true. The paladins in the Order speak only of contentment and I have none of that. But I thank you for your kind words, regardless.*/
== ANOMENJ IF ~Global("TalkedCor","GLOBAL",0)~ THEN @113 /*Again you remind me of my sister, Moira. She too has a decent soul and a benevolent heart. You should meet her sometime, Clara... I truly think you would like each other.*/
== ANOMENJ IF ~!Global("TalkedCor","GLOBAL",0)~ THEN @114 /*Again you remind me of my sister, Moira. She too had a decent soul and a benevolent heart. I wish you had met her, Clara... I truly think you would have liked each other.*/
== _BCLARAJ @115 /*She sounds like a lovely girl, Anomen. I think that you are right.*/
EXIT

//8th Talk - killed Saerk version
CHAIN IF WEIGHT #-1 ~Global("SaerkRevengeDone","LOCALS",1) !Global("AnomenDecide","GLOBAL",4) Global("_bClaraAnomenLove","GLOBAL",23)~ THEN ANOMENJ _bClaraAnomen8A
@116 /*I... I have done something most heinous. This killing of Saerk and his... his daughter. I am not sure that I have done the right thing.*/
= @117 /*The whole business has left the taste of ashes in my mouth. I have defended my family's honor, but I cannot help feeling that I have also betrayed the tenets of my Order.*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",24)~
== ANOMENJ IF ~Global("_bClaraSaysKillSaerk","GLOBAL",1)~ THEN @118 /*You... you suggested that I take this course of action, my lady. I need your reassurance that there was no other option... please.*/
== ANOMENJ IF ~!Global("_bClaraSaysKillSaerk","GLOBAL",1)~ THEN @119 /*What do you think, my lady? I need your reassurance that there was no other option... please.*/
== _BCLARAJ @120 /*You had to uphold your family's honor, Anomen; nothing is more important than that.*/
== ANOMENJ @121 /*Yes, I suppose you are correct. I know not how much honor my father has, but I have a duty to my family that I cannot ignore. I... had to do it for Moira, if nothing else.*/
= @122 /*Regardless of what my father did during his long feud with Saerk, it was Saerk who murdered an innocent. And that forced me to become involved.*/
= @123 /*But... still, my lady... it does not sit well with me that I gave into my great hate so easily. Nor that I enjoyed it so much. I thank you for speaking with me of it, though.*/
EXIT

//8th Talk - disowned version
CHAIN IF WEIGHT #-1 ~Global("AnomenDecide","GLOBAL",4) Global("_bClaraAnomenLove","GLOBAL",23)~ THEN ANOMENJ _bClaraAnomen8B
@124 /*My anger has built to the point when I am shaking with pure rage. I—I must speak to you! I must gain some reassurance!*/
= @125 /*My father... that rude, drunken bastard! He cast me out of the family when I was only doing what I must! I could not take vengeance when there was no proof, and he knew it!*/
= @126 /*And yet... my heart cries out for vengeance! That my sister should lie murdered and the murderer laugh, untouched... I am so full of hate I can barely control it!*/
= @127 /*Please, my lady... Did I do the right thing? Should the dictates of honor truly overcome duty and justice?!*/
== _BCLARAJ IF ~Global("_bClaraSaysKillSaerk","GLOBAL",1)~ THEN @128 /*Do not look to me Anomen. I advised you to kill Saerk and defend your family's honor. Saerk should be dead at your hand.*/
== _BCLARAJ IF ~!Global("_bClaraSaysKillSaerk","GLOBAL",1)~ THEN @129 /*The honor of your family should have overcome everything, Anomen. Saerk should be dead at your hand.*/
== ANOMENJ @130 /*And now my father has turned me away. My family truly is destroyed now, and what would the Order say of that? Do nothing. And you abandon me as well.*/
= @131 /*I... I will have to think on this. It was... the path of honor, and I should be content. But... but... *sigh* No. I will not speak to you of this. Let us move on.*/
== _BCLARAJ @132 /*There is still another way, my lord. Kill Saerk now. Kill Saerk, avenge your sister, and your father will take you back.*/
== ANOMENJ @133 /*I cannot! I am a member of the Order. I will uphold my vows; I will uphold them no matter what. Please do not ask me to do otherwise, my lady. The Order would cast me out as a murderer.*/
== _BCLARAJ @134 /*I could do it. I am as silent as death when I wish to be. I could slip in, poison Saerk's wine, and slip out again. No one would know you had a hand in it; no one except for me, you, and your father. Your reputation at the Order would remain unblemished.*/
== ANOMENJ @135 /*You could... I could have everything... my honor... my family... my knighthood...*/
= @136 /*No! No, you temptress. We are through! You are without honor. We are through.*/
== _BCLARAJ @137 /*Good. Without your family name, you are no more than a commoner. I am too good for you.*/
= @138 /*Now if you will excuse me, I must be off to see your father. We have much to discuss.*/
DO ~SetGlobal("_bClaraAndCor","GLOBAL",1) SetGlobal("_bClaraWaiting","GLOBAL",0) SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR1001",687,214,S)~
== ANOMENJ @139 /*My father? I do not understand.*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",24) SetGlobal("_bAnomenClaraRomance","GLOBAL",3)~
= @140 /*<CHARNAME>, when we have a moment let us go to my father's house. I must know what she is up to!*/
EXIT

//9th Talk - pre test
CHAIN IF WEIGHT #-1 ~Global("_bACTestTalk","GLOBAL",2) Global("AnomenIsNotKnight","GLOBAL",0) Global("AnomenIsKnight","GLOBAL",0)~ THEN ANOMENJ _bClaraAnomen9
@141 /*My lady? Might I bend your ear for a moment?*/
DO ~SetGlobal("_bACTestTalk","GLOBAL",3)~
== _BCLARAJ @142 /*Certainly, Anomen. What would you like to talk about?*/
== ANOMENJ @143 /*I have been thinking on my Test of late. It will dictate my entire future since the Order will decide whether or not I will be allowed into their ranks as a knight.*/
= @144 /*It is everything I have striven for... after years spent proving myself. I... don't know what I would do if I failed the Test...*/
= @145 /*And yet, suddenly I am quite sure that I will fail it. It is my heart that will betray me. I feel faithless and worthless in my soul... and they will know of it.*/
= @146 /*What do you think, my lady? Am I really so terrible? I have tried so hard, and yet it all seems to come to naught. Do you... do you think I will fail the Test as well?*/
== _BCLARAJ @147 /*You may... and you should be prepared for such an eventuality.*/
== ANOMENJ @148 /*Aye, I must always be prepared. For failure. That is what comes to me most naturally, I suppose. If I pass the Test, perhaps it will be because the Order is blind.*/
= @149 /*Aaahh... the Test will come for me soon enough, I suppose. And I doubt there is much more I can do between now and then to rectify my failings. What will come, will come.*/
EXIT

//10th Talk - pre test
CHAIN IF WEIGHT #-1 ~Global("_bACTestTalk","GLOBAL",5) Global("AnomenIsNotKnight","GLOBAL",0) Global("AnomenIsKnight","GLOBAL",0)~ THEN ANOMENJ _bClaraAnomen10
@150 /*My Test is coming very soon, my lady. I will need to go to the headquarters of the Order and speak to Ryan Trawl. I... I am not looking forward to the judgment I shall receive there.*/
DO ~SetGlobal("_bACTestTalk","GLOBAL",6)~
== _BCLARAJ @151 /*Why not? Are they not fair?*/
== ANOMENJ @152 /*They are fair, my lady. I am not unsettled by the chance they will make the wrong decision... I am unsettled by the chance that they will make the right one.*/
= @153 /*I... have been thinking on what we have spoken of. I have worked to join the Order for as long as I can remember, and suddenly I am unsure if I should even want to.*/
= @154 /*What if I am accepted into the Order and I find no place there? Or what if I am refused... and I discover that the future has no place for me?*/
= @155 /*Part of me is already sure of the answer. It would be so gratifying to throw off the shackles of hopeless duty and yet the mere thought makes me ill.*/
== _BCLARAJ @156 /*I'm sure that everything will work out as it should, Anomen.*/
== ANOMENJ @157 /*I hope that you are right, my lady. I have depended on your counsel up until this point, and it has always been good. Still, I am troubled within.*/
= @158 /*I will be glad to have it all over with.*/
EXIT

//11th Talk, Failed Test
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",26)~ THEN ANOMENJ _bClaraAnomen11
@159 /*I have been thinking about Sir Cadril and the Order, and I have decided I am well rid of them! I cannot believe I wasted so much of my life on such ignorant fools!*/
= @160 /*All the work and training, proving myself over and again, only to discover that a life of denial and good deeds was not for me! I feel cheated, my lady.*/
= @161 /*But, then again, I also feel as if my burden has vanished. My chains have been lifted, and I can finally experience the things in life that I have always denied myself!*/
= @162 /*Do you understand me, Clara? Good food, wine, and women! Adventuring without the need to prove myself! I am free! Ha ha!*/
== _BCLARAJ @163 /*That's good to hear. You could use a little freedom, my lord.*/
== ANOMENJ @164 /*Aye, I could at that! Too long has this poor knight frowned and growled... I've enough of it, to tell the truth. I long to laugh and do as I like and, by Helm, I shall!*/
= @165 /*Look at me, then, and tell me truly, my lady: Am I not better this way? Unfettered and ready to experience life? A ready smile and a laugh in my heart?*/
== _BCLARAJ @166 /*This is who you were meant to be, Anomen.*/
== ANOMENJ @167 /*Well said and much appreciated by this formerly dour knight, my lady! 'Tis a grand thing to be complimented by a beautiful lady, especially one with your grace.*/
= @168 /*There's much I'd like to see and do... but for now, it will suffice to keep the company of such a grand woman as yourself. Come, let us complete our quests posthaste.*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",27) ApplySpellRES("_bREP","Anomen")~ //should stop him from leaving at low rep
EXIT

//12th Talk
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",29)~ THEN ANOMENJ _bClaraAnomen12
@169 /*My lady, I have been watching you most intently these past few hours, and I have come to a conclusion about you... Would you like to hear my thoughts?*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",30)~
== _BCLARAJ @170 /*A conclusion about me? What kind of conclusion, my lord?*/
== ANOMENJ @171 /*When I first met you, my lady, I knew there was something about you that drew me. Some measure of your heart, some hint of darkness behind the light of your soul. I am not sure.*/
= @172 /*I refrained from telling you how I felt, of course... it is not proper for a knight of the Order to be so forward. But I am under no such restrictions now.*/
= @173 /*I have opened myself to you more than once, and I have followed your advice. I have claimed you as a friend, and yet yearned for more than that.*/
= @174 /*You are a beautiful woman, Clara... full of a life that I have always desired. I wish to experience new things, now that I am free... and I wish to be closer to you.*/
= @175 /*Turn me away or scorn me, I'll not fall away so easily. You have captured my heart with your enchanting spirit, Clara, and there is naught that I can do to resist you.*/
= @176 /*Will you allow this poor, fallen knight to lay his rose at your feet, my lady? Allow me one kiss on your petal lips, and I shall be to heaven bound...*/
== _BCLARAJ @177 /*A kiss? I... I suppose so...*/
== ANOMENJ @178 /*Then close your eyes, and I shall do the same... we shall meet for a moment as if we were two innocents coming together in the dark. A single brush of our lips, a kiss...*/
= @179 /*...and there... I shall savor this, my dear, this most sweet favor of yours. I know many pretty lines of poetry from my teachings, but I have never known the favor of a woman.*/
= @180 /*Of all the things I might wish to experience, this is the one I most long for. A promise for what is to come. Let us continue on now lest the others begin to stare.*/
EXIT

//13th Talk, At Rest
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",32)~ THEN ANOMENJ _bClaraAnomen13
@181 /*While the others retire to their sacks, might I persuade you to come with me somewhere away from their ears? My words are for yours alone.*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",33)~
== _BCLARAJ @182 /*It is unwise for a lady to do so, my lord, but I trust you. Lead the way.*/
== ANOMENJ @183 /*Come aside, then, and let us talk in earnest. I... I spoke to you earlier of my feelings for you, Clara. If you thought that I was being facetious, then I apologize.*/
= @184 /*Nothing would make me happier than to please you... and to lie with you tonight. I have dreamed about this, my lady, and I believe the moment is right.*/
= @185 /*Here... in this place. Let me remove my tunic, and you may gaze upon my body, honed through years of exertion... and you may decide for yourself if I am worthy of you.*/
== _BCLARAJ @186 /*Do you think me a professional woman, my lord? A lady does not lie with a man, not without a promise of marriage.*/
= @187 /*I am... I am afraid it remains improper for me to remain here having this conversation any longer. I trust you are able to dress yourself without me present?*/
== ANOMENJ @188 /*I am a fool. Of course, my lady, please forgive me.*/
== _BCLARAJ @189 /*You are forgiven, my love. You are worthy of me, but I have no family, no house, and no way to support my meager existence. All that remains is my reputation and I cannot lose that too.*/
DO ~RestParty()~
EXIT

//14th Talk
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",35)~ THEN ANOMENJ _bClaraAnomen14
@190 /**sigh* Another awkward silence between us, my love. I—I fear I have not the words to entertain and amuse you as a proper courtier should.*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",36)~
== _BCLARAJ @191 /*The silence didn't feel awkward to me, Anomen. I am comfortable around you.*/
== ANOMENJ @192 /*Ah, perhaps the problem is mine. I was raised in a culture of chivalry—romance was an art, a craft of specific forms and patterns. Poetic professions of adoration and flattery were the expected ways for a knight to show his love.*/
= @193 /*But now I see how hollow and stilted such conversation is. Forced flirtations hardly seem fit for one such as you. You are no mere lady-in-waiting, gossiping and wasting away her days in the courts of the rich.*/
== _BCLARAJ @194 /*And you are no mere knight, my lord. What is it that you want to say?*/
== ANOMENJ @195 /*You are unlike any woman I have ever known, Clara. With you, these platitudes of love cannot truly express my feelings. And without them... I don't know what to say. I am like a warrior without armor or weapons: vulnerable and defenseless.*/
== _BCLARAJ @196 /*You don't have to say anything, Anomen. I know how you feel.*/
== ANOMENJ @197 /*Then... then let me just say I love you, and leave it at that.*/
== _BCLARAJ @198 /*And I love you, Anomen.*/
== ANOMENJ @199 /*You have no idea how relieved I am to hear those words, Clara.*/
EXIT

//15th Talk - proposal
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",38)~ THEN ANOMENJ _bClaraAnomen15
@200 /*My love, may I speak to you? In private. It is a matter of, uh... of greatest importance.*/
== _BCLARAJ @201 /*Of course, my love. What is it you wish?*/
== ANOMENJ @202 /*My lady, if I had my choice, I would not do this here. I would wait, and do it properly as tradition dictates. But I fear if I do not act, the opportunity may be lost.*/
= @203 /*You have taught me that pomp and ceremony are insignificant beside the honest simplicity of our feelings for each other. So I... I love you, Clara. I love you deeply.*/
== _BCLARAJ @204 /*Are you... are you saying what I think you're saying?*/
== ANOMENJ @205 /*I have pledged my love and allegiance to you, my lady. I have sworn to stand by your side, whatever may come. And now I wish for the whole world to know how I feel about you.*/
= @206 /*You deserve more than what I can offer, Clara... but even had I the riches of all Faerûn to bestow upon you, I would still not be worthy. All I can give you is my heart and my hand. Clara... will you marry me?*/
== _BCLARAJ @207 /*Anomen, my love, of course I shall marry you!*/
== ANOMENJ @208 /*Clara! You... you have made me the happiest man in the realms!*/
= @209 /*I want to have a grand ceremony to celebrate our love, a wedding to rival that of the richest noble house of Athkatla! All our friends shall attend and join us in this joyous occasion.*/
== _BCLARAJ @210 /*Oh, Anomen, what a glorious idea!*/
== ANOMENJ @211 /*I'm glad you agree, although it means that we will have to speak with my father.*/
= @212 /*Please take this ring; it was my sister's. I keep it close to remind me of her. It is not much, my lady, but let it serve as a sign of our love and a symbol of our commitment to each other.*/
DO ~GiveItemCreate("_BRing45","_bClara",0,0,0) XEquipItem("_BRing45","_bClara",SLOT_RING_LEFT,EQUIP) SetGlobal("_bClaraAnomenLove","GLOBAL",39) SetGlobal("_bAnomenClaraRomance","GLOBAL",2)~
= @213 /*Keep the ring near your heart, my love. It shall bind us together when the forces of the world try to tear us apart. A single kiss to seal the deal, my lady...*/
= @214 /*Your lips as ever taste of sweet nectar, and my skin tingles at their touch! Alas, my lady, we must set off again lest the others leave us behind.*/
== _BCLARAJ @215 /*No, my love, call a rest right now. We must celebrate and seal the bargain.*/
== ANOMENJ @216 /*Seal the bargain? I thought we just did?*/
= @217 /*Oh... you mean...*/
== _BCLARAJ @218 /*I mean that we are now husband and wife and I do not wish to wait to hold you a moment longer.*/
== ANOMENJ @219 /*Glad I am to hear it, my love. Never has a moment been more anticipated. Let me hold you tight through the night, then, as I show you how gentle a man may be...*/
= @220 /*<CHARNAME>, we are resting now. If you do not wait, we shall catch up to you.*/
DO ~RestParty()~
EXIT

//16th Talk, after proposal
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",41)~ THEN ANOMENJ _bClaraAnomen16
@221 /*I have been thinking; I am still a bit bitter at being rejected by the Order, but... in many ways, I have never felt so... happy. Ha! Is that not odd?*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",42)~
== _BCLARAJ @222 /*I am happy too, my love.*/
== ANOMENJ @223 /*I have been touched by your heart and am the better for it by far, believe me.*/
= @224 /*But it is not just that. When I was rejected by the Order, I thought my life was over. But the freedom... it is most intoxicating.*/
= @225 /*I need no longer restrict myself to dusty codes of conduct and goodness. No more worrying about honor... I may do as I please and live life as I wish. And I have found you.*/
== ANOMENJ IF ~Global("_bClaraSaysKillSaerk","GLOBAL",1)~ THEN @226 /*I am glad that I listened to your direction, that you chose to push me onto this path, my lady. I never would have been able to rest with Moira's death unavenged.*/
== ANOMENJ @227 /*And I know that I have not done anything untoward. Helm has not been offended... he accepts my worship still. The Order has turned me aside, but my god knows better.*/
= @228 /*Things have gone well, I think. Helm has worked a mysterious trick on my destiny; we are meant to be together, you and I.*/
== _BCLARAJ @229 /*I agree, we are meant to be together. Otherwise, I would not have accepted your proposal.*/
== ANOMENJ @230 /*And I am glad you did, my lady. Very glad indeed. My future is the brightest that it has ever been.*/
EXIT

//17th Talk - on rest
CHAIN IF WEIGHT #-1 ~Global("_bClaraAnomenLove","GLOBAL",44)~ THEN ANOMENJ _bClaraAnomen17
@231 /*We are to rest now, are we? Well, that is good. Come, my lady... I wish to speak with you for a moment away from the ears of others.*/
= @232 /*I... have something I must say to you, Clara. I do not wish you to think me flippant or lacking in sincerity... I mean this most honestly, what I will say.*/
= @233 /*I love you. A profound declaration, I know, but never have I felt its like. You have been patient and yet strong. You have set the recent course of my life, and I am the better for it.*/
== _BCLARAJ @234 /*You have married me and lain with me, my love. I do not think it a surprise that you love me.*/
== ANOMENJ @235 /*Even so... my life is full of chaos now, and I wish for there to be one thing that is permanent. So I ask this. Let us not wait another minute. Let us go speak to my father and make plans for our wedding immediately!*/
= @236 /*I wish to remain with you until fate tears us apart, and even then I will brave death itself to be together with you.*/
== _BCLARAJ @237 /*Oh that is wonderful, my love. I could not be happier than on this day.*/
DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",45) SetGlobalTimer("SpawnTerl","GLOBAL",ONE_TURN) RestParty()~
EXIT

//Interjections into Terl's Letter to change dialogue
INTERJECT TERL 4 _bCorNotDrunkNow /*I have a letter for you... it is from your father, Lord Cor.*/
== ANOMENJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",2) Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN @2380 /*He had you track me down simply to deliver a letter? It must be dark news, then. Hand it over.*/
END TERL 5

INTERJECT BANOMEN 478 _bLifeHatesAnomen /*...no... no, Helm's mercy, no!*/
	== _BCLARAJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",2) Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN 
	@238 /*What is it, my love? What's wrong?*/
END BANOMEN 479

INTERJECT BANOMEN 484 _bClaraMakesItBetter /*I... I lost everything I worked towards to perform my duty for my family... at his insistence... and he disowns me! He disowns me!*/
	== _BCLARAJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",2) Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN 
	@239 /*That is so terrible after all you did for him. And here we were going to give him the joyous news of our marriage!*/
	== ANOMENJ @240 /*No! Our marriage! The wedding! If he disowns me, I no longer have a house, a name, or a title of nobility! I am nothing and we will have nothing. I will be unworthy to claim your hand.*/
	== _BCLARAJ @241 /*You already have my hand, Anomen, and my heart. We must think on how to fix this.*/
	= @242 /*Perhaps your father has not yet made the announcement official? Perhaps he has not yet filed the paperwork?*/
	== ANOMENJ @243 /*Yes, you are right! He would've written this letter straight away but to disown me he will have to go in person to the government office and the entire process will take hours. He will put it off as long as he can.*/
	= @244 /*I am still technically his son!*/
	== _BCLARAJ @245 /*Maybe we can talk to him! Tell him that we are to be married and he will forgive you!*/
	== ANOMENJ @246 /*You do not know him, my love. He has decided I am a risk to his business and that he will never forgive. He will thank me for killing Saerk and bringing him fortune but disown me anyway. And it is all my fault!*/
	= @247 /*I... I have murdered an innocent man and his daughter! I lost the Order! I... I cannot believe I have done all of this! For my father...*/
	= @248 /*...my father and I have a reckoning that will not be stopped. Him I do not forgive, nor will I ever. I am sorry, Clara, but I must go back to my father's house...*/
	= @249 /*...I must go and atone for what I have done. And my father will atone with me. Fare... fare you well...*/
	== _BCLARAJ @250 /*If you kill him and die as well, where does that leave me, my love? Would you abandon me with nothing but your sister's ring and a memory of your promise?*/
	= @251 /*We are meant to be married! Forever! Until the gods die and the world ends!*/
	== ANOMENJ @252 /*What would you have me do, my love? How can I fix this? My father must die, and so I will be a murderer.*/
	== _BCLARAJ @253 /*What if your father didn't die at your hand? What if a pair of thieves murdered him for his belongings and we merely stumbled upon his body and reported it to the authorities?*/
	= @254 /*Does he have any servants at home?*/
	== ANOMENJ @255 /*Not that I am aware of, the cheap bastard. There's just our door guard, Jardine.*/
	== _BCLARAJ @256 /*Could he be persuaded to corroborate our story?*/
	== ANOMENJ @257 /*Jardine? He is loyal to our house, but he has hated watching my father destroy it. Perhaps we could bring him to our side. We will talk to him before we enter.*/
	= @258 /*<CHARNAME>, I must go to my father's house. Please give me several days to take care of this and then I will be happy to travel with you again.*/
	DO ~SetGlobal("_bClaraAnomenLove","GLOBAL",46) SetGlobalTimer("_bAnomenClaraCorTimer","GLOBAL",ONE_DAY) SetGlobal("_bACGonnaStabCor","GLOBAL",1) SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeAreaMove("AR1001",692,218,SWW)~
	== _BCLARAJ @259 /*And I will be by your side, my love, no matter what occurs.*/
	DO ~AddJournalEntry(@999,USER) SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("AR1001",652,209,SWW) ~ /*Journal Entry: Anomen received a letter from his father that distressed him greatly. It seems the true killers of his sister Moira were discovered and his father has disowned him for killing Saerk instead. A cruel twist of fate given all that he has paid. 

Anomen and Clara have left for his estate, asking me to join them in a few days once this matter has been settled. While I could not hear their entire conversation, the couple is determined to reclaim their honor and I fear Cor may have finally pushed his son too far. Perhaps I should follow them to confirm my suspicions and ensure that Anomen does not stain his hands again. Or perhaps I should let that useless drunk reap what he has sowed.*/
EXIT
	
//Guard Dialogue if Timer Not Expired
CHAIN IF WEIGHT #-10 ~Global("AnomenCor","GLOBAL",1) !GlobalTimerExpired("_bAnomenClaraCorTimer","GLOBAL") Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN DELRYNG1 _bCorGettingStabbed
@260 /*Greetings, <CHARNAME>. I would not go in there yet. Anomen and Clara are inside with his father.*/
EXIT

//Guard Dialogue if Timer Expired
CHAIN IF WEIGHT #-10 ~OR(3) Global("AnomenCor","GLOBAL",6) Global("AnomenCor","GLOBAL",4) Global("AnomenCor","GLOBAL",2) OR(2) Global("_bLordAndLadyDelryn","GLOBAL",1) Global("_bLordAndLadyDelryn","GLOBAL",2)~ THEN DELRYNG1 _bCorGotStabbed
@261 /*Greetings, <CHARNAME>. Lord and Lady Delryn are waiting for you. They said I was to send you right in when you arrived.*/
EXIT

//Guard Dialogue Once this whole mess is finished
CHAIN IF WEIGHT #-5 ~GlobalGT("_bLordAndLadyDelryn","GLOBAL",3) !IsGabber("_bClara") !IsGabber("Anomen")~ THEN DELRYNG1 _bGuardSaysHi
@2610 /*Greetings, <CHARNAME>. You are welcome to enter.*/
EXIT

//Guard Dialogue Once this whole mess is finished
CHAIN IF WEIGHT #-5 ~GlobalGT("_bLordAndLadyDelryn","GLOBAL",3) IsGabber("Anomen")~ THEN DELRYNG1 _bGuardSaysHiAnomen
@2611 /*Greetings, Lord Delryn. All has been well in your absence.*/
EXIT

//Guard Dialogue Once this whole mess is finished
CHAIN IF WEIGHT #-5 ~GlobalGT("_bLordAndLadyDelryn","GLOBAL",3) IsGabber("_bClara")~ THEN DELRYNG1 _bGuardSaysHiClara
@2612 /*Greetings, my lady. Your house is ready for you.*/
EXIT

//Guard Dialogue if Clara is in your party and married to Cor
CHAIN IF WEIGHT #-1 ~Global("_bLadyDelryn","GLOBAL",1) IfValidForPartyDialog("_bClara")~ THEN DELRYNG1 _bGuardSaysHiClara2
@2612 /*Greetings, my lady. Your house is ready for you.*/
== _bClaraj @2613 /*Thank you Jardine, you are a good man.*/
EXIT

//Interjection into Fight Scene
INTERJECT COR 38 /*You... you would kill me?! Bah! You're too weak to go through with such an act!*/ _bCorStabStab
	== BANOMEN IF ~Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN 
	@262 /*I was. I was a foolish boy thinking only of myself. But now I have Clara giving me strength. We are to be married. And we will be Lord and Lady Delryn.*/
	== COR IF ~Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN
	@263 /*And how will you do that? By murdering me? I have already disowned you.*/
	== BANOMEN @264 /*Does anyone know that? Did you bother to walk even the tiny distance necessary to make it official? Did you send the news to your friends and associates?*/
	== COR @265 /*I... Well... I have been busy, you see...*/
	== BANOMEN @266 /*Hah, that is what I thought.*/
	DO ~SetGlobal("AnomenMatch","GLOBAL",2)~
	= @267 /*Here is what happened, father. I came here with my wife, Lady Caroline Aurora Lucia Rosena Silvershield of Beregost to announce the happy news of our betrothal.*/
	= @268 /*After a brief chat with our door guard, Jardine, we entered to find you murdered, the window broken, and a large quantity of your valuables stolen. We immediately called for Jardine who verified the situation and rushed to tell the authorities.*/
	== COR @269 /*Jardine will never betray me. You will see. He is loyal!*/
	== BANOMEN @270 /*We have already given him more gold than he saw in a lifetime of working for you. He will verify that our story is true to the last detail.*/
	= @271 /*And now you die.*/
	= @272 /*<CHARNAME>? What are you doing here?!*/
END
	++ @273 /*I came to stop you, Anomen. You cannot kill your father.*/ EXTERN BANOMEN _bCNSaysNoStab 
	++ @274 /*I came to see what you intended to do.*/ EXTERN BANOMEN _bCNShrugsAboutStab
	++ @275 /*I came to help you.*/ EXTERN BANOMEN _bCNWantsStab

CHAIN BANOMEN _bCNSaysNoStab 
@276 /*Why not?! Tell me why he should not die!*/
END
	++ @277 /*He is not responsible for what happened to you, Anomen, and you know it.*/ + _bCNSaysNoStab1
	++ @278 /*This will take you further down the path toward evil, Anomen... do not do it.*/ + _bCNSaysNoStab2
	++ @279 /*It's time for this hate to end, Anomen... and you must be the one to stop it!*/ + _bCNSaysNoStab3
	
CHAIN BANOMEN _bCNShrugsAboutStab
@280 /*You have seen, then. And you know. Do you intend to stop me?*/
END
	++ @281 /*Yes, I do. You must not do this.*/ + _bCNSaysNoStab 
	++ @282 /*No, do as you will.*/ + _bCNAllowsStab
	++ @283 /*Actually, I intend to help you.*/ + _bCNWantsStab
	
CHAIN BANOMEN _bCNWantsStab
@284 /*I intend to do this myself. I do not want you to dirty your hands... but I will not stop you. As I said before then... Father, prepare yourself!*/
DO ~SetGlobal("AttackedCor","GLOBAL",1) SetGlobal("AnomenFinalFight","GLOBAL",1) SetDialogue("")~
EXIT

CHAIN BANOMEN _bCNAllowsStab
@285 /*Very well, then. I... I had no wish for you to see this, but it matters not. I am atoning for what I have done... and Father, as I said before... prepare yourself!*/
DO ~SetGlobal("AttackedCor","GLOBAL",1) SetGlobal("AnomenFinalFight","GLOBAL",1) SetDialogue("")~
EXIT

CHAIN BANOMEN _bCNSaysNoStab3
@286 /*I... I cannot. My heart overflows with rage, and it always has. I cannot live with this... and there is only one way to quench it, one way to atone, and only one way to secure a future for Clara.*/
= @287 /*Father, prepare yourself! This ends today!*/
DO ~SetGlobal("AttackedCor","GLOBAL",1) SetGlobal("AnomenFinalFight","GLOBAL",1) SetDialogue("")~
EXIT

APPEND BANOMEN IF ~~ THEN _bCNSaysNoStab2
	SAY @288 /*Aye. Aye, you speak the right of it. I do not wish to go down this path, no matter what my father has done to me. But... I may have no choice.*/
	IF ~~ THEN + _bCNSaysNoStabCor
	END
	
	IF ~~ THEN _bCNSaysNoStab1
	SAY @289 /*Aye... aye, you speak the right of it. Father is not responsible solely for what I have done... it has always been I.*/
	IF ~~ THEN + _bCNSaysNoStabCor
	END
END

CHAIN BANOMEN _bCNSaysNoStabCor
@290 /*There is an evil in my heart. Hate and anger, twisted and black... and I... I cannot control it. But... nor can I live with it...*/
= @291 /*What can I do, <CHARNAME>? Clara? How am I supposed to go on with what I have done? How do I know this evil will not overcome me one day?!*/
== _BCLARAP @292 /*You will do what you have to, my love.*/
= @293 /*I love you and I will stand with you, no matter what.*/
== BANOMEN @294 /*I have heard your arguments, <CHARNAME>, but I intend to go through with my plans. Are you determined to get involved?*/
END
	++ @295 /*I will stop you, by force if necessary.*/ + _bCNisaKilljoy
	++ @296 /*I will not fight you, but I will report your actions to the authorities.*/ + _bCNisaKilljoy
	++ @297 /*Do what you will, Anomen. I will not stop you.*/ + _bYESSTABCOR

CHAIN BANOMEN _bYESSTABCOR
@298 /*Then what is done is done. I love you, Clara, and I will secure our future.*/
= @287 /*Father, prepare yourself! This ends today!*/
DO ~SetGlobal("AttackedCor","GLOBAL",1) SetGlobal("AnomenFinalFight","GLOBAL",1) SetDialogue("")~
EXIT

CHAIN BANOMEN _bCNisaKilljoy
@299 /*Then we are finished. We cannot oppose both you and my father. We are fugitives and you will not see us again.*/
== COR @300 /*You are finished, boy, but why waste so pretty a wife?*/
= @301 /*You! Caroline whatever Silvershield. You have the desperate look of a woman who has run out of options. Do you want to be Lady Delryn?*/
= @302 /*My son is a fugitive and there is no future with him. However, I am a noble of important lineage, my business is prospering, and I need a pretty young wife to bear me new sons. Marry me and I'll forget that you ever knew my lout of a firstborn.*/
= @303 /*I'll even forgive that traitor guard, Jardine, provided he hands over the money you bribed him with.*/
== BANOMEN @304 /*Do it, my love. My life is finished, but there is no reason that yours must be as well.*/
== _BCLARAP @305 /*Oh I couldn't... I couldn't...*/
== BANOMEN @306 /*You must, my love. For me.*/
== _BCLARAP @307 /*Only if you promise me something.*/
== BANOMEN @308 /*Yes, anything.*/
== _BCLARAP @309 /*Live. Go far away from here where no one knows your name and make a new life for yourself.*/
= @310 /*Please hold me, my love, one last time.*/
= @311 /**whispers* Give me two weeks and then come back to me. All will be well.*/
== BANOMEN @312 /*You win, father. I will leave now and you will not see me again. I will inform Jardine of your generosity on my way out.*/
DO ~SetGlobalTimer("_bAnomensReturn","GLOBAL",FOURTEEN_DAYS) GivePartyAllEquipment() EscapeAreaMove("AR0602",3696,2921,S)~ //Sending away to wait
== COR @313 /*Excellent. Come here, my sweet. Let me enjoy the spoils of my victory.*/
== _BCLARAP @314 /*First the marriage, my lord, as you promised.*/
== COR @315 /*Of course, of course. Did my son give you a ring? Good. We can use that; no reason for me to give you another one.*/
= @316 /*I will sign papers for you to run down to the government office and make this all official. I would do it myself, but as I said before... I am busy, busy.*/
= @317 /*I hope you will forgive me if there is no ceremony, wife. After all, it is the paperwork that matters and wedding ceremonies are ruinously expensive.*/
= @318 /*Oh don't look at me like that. You may write letters to all of the great and lesser houses to inform them of the good news. I'll even let you use my seal.*/
= @319 /*But, first the marriage. Here... and here... and that should do it, and I affix my seal... and there you go. Be a good girl and see that this is filed with the proper authorities, why don't you?*/
== _BCLARAP @320 /*Yes, my lord.*/
DO ~SetGlobal("_bLordAndLadyDelryn","GLOBAL",3) SetGlobal("_bClaraFilesPapers","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-10 ~Global("_bClaraFilesPapers","GLOBAL",3)~ THEN _BCLARAP _bCorsWifeUggh
@321 /*It is done, my lord. We are married. I am Lady Delryn.*/
DO ~SetGlobal("_bClaraFilesPapers","GLOBAL",4)~
== COR @322 /*Good. Now remove your clothes and get in our bed. We have sons to create.*/
= @323 /*<CHARNAME>! Are you still here?*/
= @324 /*I thank you for saving me from my disloyal son, but it is really time that you left.*/
DO ~AddJournalEntry(@1000,USER)~ /*I stopped Anomen and Clara from killing his father; the man may be a bastard but I couldn't allow him to be murdered in cold blood. Faced with fighting me as well, Anomen fled and Clara married Cor instead. The wedding appears to be legal but I have a feeling that this isn't over yet. Cor may have invited a black widow to his bed and I should check back in a few weeks to ensure that he survived.*/
EXIT

CHAIN IF WEIGHT #-10 ~Global("_bClaraFilesPapers","GLOBAL",4)~ THEN COR _bCorBrushOff
@3210 /*You have no more business here. Leave me and my new wife be.*/
EXIT


//If Anomen kills Cor
CHAIN IF WEIGHT #-10 ~Global("AnomenCor","GLOBAL",5) Global("_bCorFight","GLOBAL",1)~ THEN ANOMENP _bCorDoneBeenStabbed
@325 /*It is done. My father is dead.*/
//DO ~ChangeClass("Anomen",PALADIN) ActionOverride("Anomen",AddKit(Blackguard)) ChangeAlignment("Anomen",LAWFUL_EVIL) ReallyForceSpell("Anomen",GAIN_ONE_CHA_PERMANENT)~ 
= IF ~HasItemEquipedReal("NPSHLD","Anomen")~ @3251/*啊，我的盾牌，盾牌变得好重，重到我无法举起它。*/ DO ~DropItem("NPSHLD",[-1.-1])~//如果装备了家传盾牌，则因为阵营转变丢弃在地上
= @3252 /*不过我心里倒是感觉突然变得轻松了，反倒感觉像是真的卸下了一副重担。*/
== _BCLARAP IF ~!StateCheck("_bClara",CD_STATE_NOTVALID)~ @326 /*You did it my love, our future is secure. You are Lord Delryn.*/
== ANOMENP @327 /*Let us clean ourselves up and then send Jardine to call the guard.*/
DO ~SetGlobalTimer("_bAnomenClaraCorTimer2","GLOBAL",TWO_DAYS) SetGlobal("AnomenCor","GLOBAL",6) SetGlobal("_bLordAndLadyDelryn","GLOBAL",1) SetGlobal("_bCorFight","GLOBAL",2) ActionOverride("Cor",DestroySelf())~ //ReallyForceSpell("Anomen",PALADIN_DETECT_EVIL)~//让阿诺门整个变红一下，以示转变
= @328 /*<CHARNAME>, please give us a few more days to put all of our affairs in order, and then we will happily join you again if you will have us.*/
END
	++ @329 /*Of course, Anomen, you are both valuable members of this group.*/ 
	DO ~ChangeClass("Anomen",PALADIN) ActionOverride("Anomen",AddKit(Blackguard)) ChangeAlignment("Anomen",LAWFUL_EVIL) ReallyForceSpell("Anomen",GAIN_ONE_CHA_PERMANENT) CreateVisualEffectObject("SHAIR","Anomen")~
	EXIT
	++ @330 /*Anomen, you are both monsters and I want nothing more to do with you.*/ + _bCNMadAboutStab
CHAIN ANOMENP _bCNMadAboutStab
@331 /*I did what I had to do, <CHARNAME>. If you change your mind, you know where to find us.*/
DO ~ChangeClass("Anomen",PALADIN) ActionOverride("Anomen",AddKit(Blackguard)) ChangeAlignment("Anomen",LAWFUL_EVIL) ReallyForceSpell("Anomen",GAIN_ONE_CHA_PERMANENT) CreateVisualEffectObject("SHAIR","Anomen")~
EXIT


//If you let the timer expire before going to the house
CHAIN IF WEIGHT #-5 ~Global("AnomenCor","GLOBAL",4) Global("_bLordAndLadyDelryn","GLOBAL",1) Global("_bCNMissedStabbing","GLOBAL",0)~ THEN ANOMENP _bCorStabbedOffscreen 
@332 /*Greetings, <CHARNAME>. I am glad to see you.*/
= @333 /*I am afraid that tragedy struck while I was gone. Clara and I came to announce the happy news of our betrothal to my father, but we found him murdered instead. The window was broken and a large quantity of his valuables had been stolen, lost into the night.*/
= @334 /*It is a shame that we could not reconcile. But he had not officially disowned me before my arrival so we are Lord & Lady Delryn now. Give us a few days to put our new affairs in order and we shall be ready to travel with you once more.*/
DO ~ChangeClass("Anomen",PALADIN) ActionOverride("Anomen",AddKit(Blackguard)) ChangeAlignment("Anomen",LAWFUL_EVIL) ReallyForceSpell("Anomen",GAIN_ONE_CHA_PERMANENT) SetGlobalTimer("_bAnomenClaraCorTimer2","GLOBAL",TWO_DAYS) SetGlobal("_bCNMissedStabbing","GLOBAL",1) SetGlobal("AnomenCor","GLOBAL",6)~
EXIT

//If you talk to Clara before travel timer is up
CHAIN IF WEIGHT #-3 ~Global("KickedOut","LOCALS",1) Global("_bLordAndLadyDelryn","GLOBAL",1)~ THEN _BCLARAP _bCNotReady
@335 /*Hello <CHARNAME>. It is good to see you, but my dear husband and I need a bit more time before we can travel with you again.*/
EXIT

//If you talk to Anomen before travel timer is up
CHAIN IF WEIGHT #-3 ~Global("KickedOut","LOCALS",1) Global("_bLordAndLadyDelryn","GLOBAL",1)~ THEN ANOMENP _bANotReady
@336 /*Greetings, <CHARNAME>. Please be patient; my new wife and I will be ready to rejoin you soon.*/
EXIT

//If you talk to Clara before Anomen returning timer is up
CHAIN IF WEIGHT #-5 ~Global("KickedOut","LOCALS",1) Global("_bLordAndLadyDelryn","GLOBAL",3)~ THEN _BCLARAP _bCorNotDead
@337 /*Greetings, <CHARNAME>. I cannot travel with you now, my new Lord Husband is most possessive and does not like me to leave his sight.*/
= @338 /*Please feel free to stop by anytime. It is always good to know that I have friends should ill luck leave me bereft once more.*/
= @339 /**whispers* It won't be long now. Wait and see.*/
EXIT

//If you talk to Anomen once travel timer is up - 1st time
CHAIN IF WEIGHT #-5 ~Global("KickedOut","LOCALS",1) Global("_bLordAndLadyDelryn","GLOBAL",2)~ THEN ANOMENP _bAReadyTravel
@340 /*Greetings, <CHARNAME>. My wife and I are ready to leave.*/
DO ~SetGlobal("_bLordAndLadyDelryn","GLOBAL",5)~
END
	++ @341 /*Great. Let's go.*/ DO ~ActionOverride("Anomen",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Anomen",JoinParty()) ActionOverride("_bClara",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("_bClara",JoinParty())~ EXIT
	++ @342 /*Sorry, I only want you.*/ + _bAnomenOnly1
	++ @343 /*Uh, actually, I'm just here for Clara.*/ EXTERN _BCLARAP _bClaraOnly1
	++ @344 /*Nevermind. I don't need either of you right now.*/ + _bACNeither1
	
CHAIN ANOMENP _bAnomenOnly1
@345 /*Is that all right, my love? Can you manage on your own?*/
== _BCLARAP @346 /*Of course, my lord. I shall see to our business while you're gone. Please check back in as often as you can.*/
== ANOMENP @347 /*I will, my dear, I promise. Let us go now, <CHARNAME>, before I change my mind.*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN _BCLARAP _bClaraOnly1
@348 /*You want me to join you? And so soon after our wedding? Is that all right, my love?*/
== ANOMENP @349 /*If you must go, my lady, I will understand. I shall miss you every second but there is still much to do to regain my family's honor. I will secure our future here while you are gone.*/
== _BCLARAP @350 /*I know, my love. I believe in you and I will come back to visit soon.*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN ANOMENP _bACNeither1
@351 /*That is actually a relief, <CHARNAME>. It is good to see you, but there is still much to be done.*/
EXIT

//Clara version - 1st talk after travel timer up
CHAIN IF WEIGHT #-10 ~Global("KickedOut","LOCALS",1) Global("_bLordAndLadyDelryn","GLOBAL",2)~ THEN _BCLARAP _bCReadyTravel
@352 /*Hello, <CHARNAME>. My husband and I are ready to leave.*/
DO ~SetGlobal("_bLordAndLadyDelryn","GLOBAL",5)~
END
	++ @341 /*Great. Let's go.*/ DO ~ActionOverride("Anomen",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Anomen",JoinParty()) ActionOverride("_bClara",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("_bClara",JoinParty())~ EXIT
	++ @342 /*Sorry, I only want you.*/ + _bClaraOnly1
	++ @353 /*Actually, I'm just here for Anomen.*/ EXTERN ANOMENP _bAnomenOnly1
	++ @344 /*Nevermind. I don't need either of you right now.*/ + _bACNeither2

CHAIN _BCLARAP _bACNeither2
@354 /*I am glad to hear that. I am quite enjoying being married and I would hate to leave so soon.*/
EXIT
	

//Anomen Talk after Clara widowed 
CHAIN IF WEIGHT #-10 ~Global("KickedOut","LOCALS",1) Global("_bCrocodileTears","GLOBAL",0) Global("_bLordAndLadyDelryn","GLOBAL",4)~ THEN ANOMENP _bCrocodileTears
@355 /*Ahh, <CHARNAME> you have returned. I have most fortunate news.*/
DO ~SetGlobal("_bCrocodileTears","GLOBAL",1) SetGlobalTimer("_bAnomenClaraTimer3","GLOBAL",SEVEN_DAYS) ChangeStat("Anomen",WIS,4,ADD)~
= @356 /*My father passed away suddenly, but on his deathbed, he forgave me and reinstated me as his son. I am once again Lord Delryn.*/
= @357 /*This does make Clara my Lady Mother, which is a little awkward, but we will be married as soon as her mourning period ends and then she shall be Lady Delryn as before. The public wedding will have to wait at least a year, of course, but a week should be enough to say our vows.*/
= @358 /*Furthermore, new evidence has surfaced that Saerk really was behind the murder of my sister. This makes my murder of him and his family, if not legal and justified, than at least understandable by society.*/
= @359 /*All is well. I don't suppose you would like me to travel with you again? I cannot leave just yet, but I would be pleased to join you soon. Come back in a week.*/
END
	++ @360 /*No, you are still a monster. And I do not believe that your father actually forgave you.*/ + _bCrocodileTears1
	++ @361 /*Actually, I am just here for your... um... Lady Mother.*/ EXTERN _BCLARAP _bCrocodileTears2
	
CHAIN ANOMENP _bCrocodileTears1
@362 /*Of course he did. The papers had his seal and were witnessed by his loyal wife, Clara. Whether you believe them to be genuine or not is inconsequential. */
= @363 /*I am here if you need me. Otherwise, I bid you good day.*/
EXIT

CHAIN _BCLARAP _bCrocodileTears2
@364 /*I'm sorry, <CHARNAME>, but I am deep in mourning and I require Anomen to comfort me in my sorrow. Please check back in a week.*/
EXIT

//If you talk to Anomen before wedding timer is up
CHAIN IF WEIGHT #-10 ~Global("KickedOut","LOCALS",1) Global("_bCrocodileTears","GLOBAL",1) Global("_bLordAndLadyDelryn","GLOBAL",4)~ THEN ANOMENP _bACNotReady
@365 /*Greetings, <CHARNAME>. I am sorry, but I cannot talk to you right now. Return once we are wed.*/
EXIT

//If you talk to Clara before wedding timer is up
CHAIN IF WEIGHT #-10 ~Global("KickedOut","LOCALS",1) Global("_bCrocodileTears","GLOBAL",1) Global("_bLordAndLadyDelryn","GLOBAL",4)~ THEN _BCLARAP _bCANotReady
@366 /*Hello, <CHARNAME>. Please forgive a grieving widow, but I cannot speak right now.*/
EXIT


//New Kicked Out Options for Clara in Clarap file.

//New Clara P Dialogue if Married Anomen - default once timers/quest talks done
CHAIN IF ~Global("KickedOut","LOCALS",1) Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN _BCLARAP _bLadyAnomen
@367 /*<CHARNAME>! How may I help you?*/
END
	+ ~!InParty("Anomen") Detect("Anomen")~ + @368 /*I'm just saying hi and seeing how you are.*/ + _bLadyAnomen1A
	+ ~InParty("Anomen")~ + @368 + _bLadyAnomen1B
	+ ~Dead("Anomen")~ + @368 + _bLadyAnomen1C
	+ ~!InParty("Anomen") Detect("Anomen")~ + @369 /*Are you ready to travel?*/ + _bLadyAnomen2A
	+ ~InParty("Anomen")~ + @369 + _bLadyAnomen2B
	+ ~Dead("Anomen")~ + @369 + _bLadyAnomen2C
	+ ~!InParty("Anomen") Detect("Anomen")~ + @370 /*This farce has gone on long enough. I need a thief again.*/ + _bLadyAnomen3A
	+ ~InParty("Anomen")~ + @370 + _bLadyAnomen3B
	+ ~Dead("Anomen")~ + @370 + _bLadyAnomen3C
	++ @371 /*Lady Clementine Aurora Something Something Delryn has the time for a commoner like me? I feel so blessed. *rolls eyes**/ + _bLadyAnomen4
	+ ~!InParty("Anomen") !Detect("Anomen")~ + @3710 /*I want you to travel with me again.*/ + _bLadyAnomen5
	++ @3711 /*Nevermind. I don't need anything.*/ EXIT

//This line mostly just for safety in case they dump Anomen somewhere and then go back to his mansion to get Clara
CHAIN _BCLARAP _bLadyAnomen5
@3712 /*You want me to join you? Leave my luxurious life as Lady Delryn to slog through filthy dungeons day and night?*/
= @3713 /**sigh* I suppose that I do owe you. Let me just leave instructions for the servants before we go. I must ensure that my husband's business is taken care of properly.*/
DO ~JoinParty() SetGlobal("KickedOut","LOCALS",0)~
EXIT

CHAIN _BCLARAP _bLadyAnomen1A
@372 /*That is all? Oh, I am so relieved. I thought for a minute that you meant to take me away from my beloved Lord Husband. But you are just saying "hi".*/
= @373 /*Isn't that wonderful, my love? <CHARNAME> does not need me after all.*/
== ANOMENP @374 /*Indeed, I am glad to know that I may still hold you in my arms.*/
EXIT

CHAIN _BCLARAP _bLadyAnomen1B
@375 /*I am doing better now that you have brought my beloved husband back to visit me. Hello, my love. I am pleased to see you well.*/
= @376 /*I promise, I have been taking care of business while you're gone and thankfully it seems that <CHARNAME> does not have need of me.*/
EXIT

CHAIN _BCLARAP _bLadyAnomen1C
@377 /*How happy can any woman be while she mourns her beloved? Now that my dear Anomen is dead, there is only I to take care of business and make sure his legacy survives. I'm sorry, <CHARNAME>. I do not really have the time to talk right now.*/
EXIT

CHAIN _BCLARAP _bLadyAnomen2A
@378 /*Of course, <CHARNAME>. My dear husband and I would be happy to fulfill our vow.*/
END
	++ @341 /*Great. Let's go.*/ DO ~ActionOverride("Anomen",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Anomen",JoinParty()) ActionOverride("_bClara",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("_bClara",JoinParty())~ EXIT
	++ @342 /*Sorry, I only want you.*/ + _bClaraOnly2
	++ @353 /*Actually, I'm just here for Anomen.*/ EXTERN ANOMENP _bAnomenOnly1
	++ @344 /*Nevermind. I don't need either of you right now.*/ + _bACNeither2

CHAIN _BCLARAP _bClaraOnly2
@379 /*You want me to join you? And leave my husband here?*/
== ANOMENP @380 /*If you must go, my lady, I will understand. I shall miss you every second but there is still much to do to regain my family's honor. I will continue to secure our future here while you are gone.*/
== _BCLARAP @381 /*All right, my darling. I shall return as soon as possible.*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN _BCLARAP _bLadyAnomen2B
@382 /*What woman does not wish to travel with the man she loves? Let me just gather up my things.*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN _BCLARAP _bLadyAnomen2C
@383 /*I suppose that would be better than staying here alone. My late husband's business is in good hands, I have made sure of that and perhaps fighting at your side once more will help to ease my sorrow.*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN _BCLARAP _bLadyAnomen3A
@384 /*Then perhaps you should go rent one. My dear departed father and mother were kind enough to hire teachers for me in acrobatics and stealth, but I am no common thief. I am Lady Delryn and you would do well to be civil in my home.*/
= @385 /*However, if you wish my husband and I to accompany you, then we must agree. After all a promise is a promise and a vow is a vow. Without the integrity of my word, what am I?*/
END
	++ @341 /*Great. Let's go.*/ DO ~ActionOverride("Anomen",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Anomen",JoinParty()) ActionOverride("_bClara",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("_bClara",JoinParty())~ EXIT
	++ @342 /*Sorry, I only want you.*/ + _bClaraOnly2
	++ @353 /*Actually, I'm just here for Anomen.*/ EXTERN ANOMENP _bAnomenOnly1
	++ @344 /*Nevermind. I don't need either of you right now.*/ + _bACNeither2
	
CHAIN _BCLARAP _bLadyAnomen3B
@384 /*Then perhaps you should go rent one. My dear departed father and mother were kind enough to hire teachers for me in acrobatics and stealth, but I am no common thief. I am Lady Delryn and you would do well to be civil in my home.*/
= @386 /*However, if you wish me to accompany you, I would be pleased to travel with my beloved once again.*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN _BCLARAP _bLadyAnomen3C
@387 /*Then perhaps you should go rent one. My dear departed father and mother were kind enough to hire teachers for me in acrobatics and stealth, but I am no common thief. Despite the death of my husband, I am still Lady Delryn and you would do well to be civil in my home.*/
= @388 /*However, if you wish me to accompany you, I suppose that would be better than staying here alone. My late husband's business is in good hands, I have made sure of that, and fighting at your side may help to ease my grief.*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN _BCLARAP _bLadyAnomen4
@389 /*You need not be so modest. You are, after all, a hero! Even we of higher birth must respect those who risk their lives to keep us safe.*/
= @390 /*But as to the matter at hand, do you wish me to fulfill my vow and accompany you on your daring quest again?*/
END
	+ ~!InParty("Anomen") Detect("Anomen")~ + @391 /*No, I'm just saying hi.*/ + _bLadyAnomen1A
	+ ~InParty("Anomen")~ + @391 + _bLadyAnomen1B
	+ ~Dead("Anomen")~ + @391 + _bLadyAnomen1C
	+ ~!InParty("Anomen") Detect("Anomen")~ + @392 /*Yes, are you ready to go?*/ + _bLadyAnomen2A
	+ ~InParty("Anomen")~ + @392 + _bLadyAnomen2B
	+ ~Dead("Anomen")~ + @392 + _bLadyAnomen2C
	+ ~!InParty("Anomen") !Detect("Anomen")~ + @3710 /*I want you to travel with me again.*/ + _bLadyAnomen5
	++ @3711 /*Nevermind. I don't need anything.*/ EXIT
	
	

//This should turn off old AnomenP lines 
ADD_TRANS_TRIGGER ANOMENP 7 ~!Global("_bLordAndLadyDelryn","GLOBAL",5)~ DO 0 1 

//New Anomen Kicked Out Override to send him to the manor (I'm letting you leave him anywhere, because I don't care)
EXTEND_BOTTOM ANOMENP 7 /*We must continue our travels.*/
	+ ~Global("_bLordAndLadyDelryn","GLOBAL",5)~ + @3931 /*Yes, let's get going, Anomen.*/ DO ~JoinParty()~ EXIT
	+ ~Global("_bLordAndLadyDelryn","GLOBAL",5)~ + @3932 /*No, it would be better to split up for now.*/ + _bAnomenGoesHome2
END

CHAIN ANOMENP _bAnomenGoesHome2
@393 /*I will go as you bid, but we have done well together and I should like to rejoin you in the future.*/
	== ANOMENP IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) InMyArea("_bClara")~ THEN
	@394 /*Goodbye, my dear Clara, I will see you again soon.*/
	== ANOMENP IF ~!InParty("_bClara") !Dead("_bClara")~ THEN
	@395 /*However, it will be good to check in with my dear wife again.*/
	== ANOMENP @396 /*<CHARNAME>, you may find me at my family's estate when you change your mind.*/
END 
	++ @397 /*All right. We'll meet you there if we need your services again.*/ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR1001",692,218,NE)~ EXIT
	++ @398 /*No, just wait right here.*/ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
	


//New default Anomen P dialogue if married Clara
CHAIN IF WEIGHT #-3 ~Global("KickedOut","LOCALS",1) Global("_bLordAndLadyDelryn","GLOBAL",5) !InParty("_bClara") Detect("_bClara")~ THEN ANOMENP _bLordAnomen
@399 /*Greetings, <CHARNAME>. Do you wish my wife and I to join you?*/
END
	++ @400 /*Yes. Let's go.*/ DO ~ActionOverride("Anomen",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("Anomen",JoinParty()) ActionOverride("_bClara",SetGlobal("KickedOut","LOCALS",0)) ActionOverride("_bClara",JoinParty())~ EXIT
	++ @342 /*Sorry, I only want you.*/ + _bAnomenOnly1
	++ @343 /*Uh, actually, I'm just here for Clara.*/ EXTERN _BCLARAP _bClaraOnly2
	++ @344 /*Nevermind. I don't need either of you right now.*/ + _bACNeither1
	
	
CHAIN IF WEIGHT #-3 ~Global("KickedOut","LOCALS",1) Global("_bLordAndLadyDelryn","GLOBAL",5) InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN ANOMENP _bLordAnomen2
@401 /*Greetings, <CHARNAME>. Do you wish me to join you?*/
END
		++ @400 /*Yes. Let's go.*/ + _bLordAnomen3
		++ @402 /*Sorry, I was just stopping by. I don't need you now.*/ + _bLordAnomen4
		
CHAIN ANOMENP _bLordAnomen3
@403 /*Of course, my friend. I will be delighted to travel with my dear wife once again.*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT

CHAIN ANOMENP _bLordAnomen4
@404 /*I am sorry to hear that, CHARNAME>, but I am grateful for the chance to see my beloved again. Please do not stay away too long.*/
== _BCLARAJ @405 /*Of course not, darling. I miss you terribly.*/
== ANOMENP @406 /*I miss you as well, my love. But I am doing much to secure our future here while you are gone.*/
EXIT


//The version where Clara marries Cor instead
///1st Talk after you go to manor and Clara w/ Cor
CHAIN IF WEIGHT #-1 ~Global("_bClaraAndCor","GLOBAL",1) Global("_bClaraAndCorFix","GLOBAL",1)~ THEN COR _bClaraCor1
@407 /*Anomen, you never told me that you knew such a captivating lady.*/
= @408 /*She came to argue with me, convince me that I should take you back, but I have made her a better proposal.*/
= @409 /*You see, after casting you out, I had no sons and I lacked a pretty young wife to make some more. Now, however, that second problem has been solved.*/
== ANOMENJ @410 /*Father, you cannot be serious! Clara, tell me he is joking.*/
== _BCLARAP @411 /*I am sorry, my lord, he speaks the truth. I am now Clara Aurora Lucia Rosena Silvershield Delryn of Athkatla. It is all official.*/
== ANOMENJ @412 /*That is impossible; you did not have the time.*/
== COR @413 /*Unlike you, boy, I act when needed and do not let opportunities slip through my fingers. She is signed, wedded, and bedded.*/
== ANOMENJ @414 /*Then I am through with the both of you. Clara, I was blinded by your charms but I have my doubts that you are even a noble. You are probably just some jumped-up dockside whore. Every word you say is a damned lie.*/
== _BCLARAP @415 /**cries* How can you say such a horrible thing?*/
= @416 /*Forgive him, Lord Delryn. He speaks out of jealousy. After saving my life, Anomen desired me to share his bed, but I reminded him that a true maiden saves herself until her wedding night. He told me that since my father was only a minor lord and I was alone and orphaned, I was good enough to warm his bed but not to be his bride.*/
= @417 /*When I continued to refuse his advances, your son became sullen and now that you have given me everything that he would not...*/
== COR @418 /*Useless dog. I was right to disown you. I've made an honest woman out of Clara since you would not.*/
= @419 /*I only wish I had the money for a true wedding celebration.*/
== _BCLARAP @420 /*Don't fret, my Lord Husband. I know that these hard times are not your fault. You will have your fortune restored soon and then we can visit my brother and arrange everything properly. For now, it is enough to have the legal document and the blessing of Helm.*/
== ANOMENJ @421 /*You were married by a priest of Helm?! A god who sees truth and detects lies?*/
== COR @422 /*Of course, boy. Do you have a problem with that? I've always liked Helm. He was good enough for you; he's certainly good enough for me and your new Lady Mother.*/
== ANOMENJ @423 /*That harlot is not my Lady Mother! She is a fraud!*/
== _BCLARAP @424 /*You are mistaken, my brave knight. I am Lady Delryn, I am a member of the Athkatla nobility, and thus I am your Lady Mother under both the laws of Helm and the Council of Six. Whatever you believe is of no consequence.*/
== COR @425 /*Well said. But enough of that, boy. Don't you have more important things to do than hurl abuse at my new bride?*/
== _BCLARAP @426 /*<CHARNAME>, give us a few days together and then I will fulfill my promise of traveling with you again.*/
DO ~SetGlobal("_bClaraAndCor","GLOBAL",2) SetGlobal("_bLadyDelryn","GLOBAL",1) SetGlobalTimer("_bCorWeddingTravel","GLOBAL",THREE_DAYS)~
EXIT


//If you talk to Clara before Cor wedding timer is up
CHAIN IF WEIGHT #-10 ~Global("KickedOut","LOCALS",1) Global("_bClaraAndCor","GLOBAL",2) Global("_bLadyDelryn","GLOBAL",1)~ THEN _BCLARAP _bClaraCor2
@3351 /*Hello <CHARNAME>. It is good to see you, but my dear husband and I need a bit more time before I can travel with you again.*/
EXIT


//New Clara P Dialogue if Married Cor - default once timers/quest talks done
CHAIN IF ~Global("KickedOut","LOCALS",1)  !Dead("Cor") Global("_bClaraAndCor","GLOBAL",3) Global("_bLadyDelryn","GLOBAL",1)~ THEN _BCLARAP _bLadyDelryn
@367 /*<CHARNAME>! How may I help you?*/
END
	++ @368 /*I'm just saying hi and seeing how you are.*/ + _bLadyDelryn1
	++ @369 /*Are you ready to travel?*/ + _bLadyDelryn2
	++ @370 /*This farce has gone on long enough. I need a thief again.*/ + _bLadyDelryn3
	++ @371 /*Lady Clementine Aurora Something Something Delryn has the time for a commoner like me? I feel so blessed. *rolls eyes**/ + _bLadyDelryn4

CHAIN _BCLARAP _bLadyDelryn1
@372 /*That is all? Oh, I am so relieved. I thought for a minute that you meant to take me away from my beloved Lord Husband. But you are just saying "hi".*/
= @373 /*Isn't that wonderful, my love? <CHARNAME> does not need me after all.*/
EXIT

CHAIN _BCLARAP _bLadyDelryn2
@427 /*Is a woman ever ready to be dragged away from the man she loves? But duty calls and I must obey. After all, a promise is a promise and a vow is a vow. Without the integrity of my word, what am I?*/
= @428 /*Goodbye, sweet Cor. I will take every chance to see you again. Many of our quests take place in this fine city, so I should be able to sneak back home while my group is sleeping. Why would I want to rest in some flea-infested-stable when I could return to our marriage-bed?*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN _BCLARAP _bLadyDelryn3
@384 /*Then perhaps you should go rent one. My dear departed father and mother were kind enough to hire teachers for me in acrobatics and stealth, but I am no common thief. I am Lady Delryn and you would do well to be civil in my home.*/
= @429 /*However, if you wish me to accompany you, then I must agree. After all a promise is a promise and a vow is a vow. Without the integrity of my word, what am I?*/
= @428 /*Goodbye, sweet Cor. I will take every chance to see you again. Many of our quests take place in this fine city, so I should be able to sneak back home while my group is sleeping. Why would I want to rest in some flea-infested-stable when I could return to our marriage-bed?*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN _BCLARAP _bLadyDelryn4
@389 /*You need not be so modest. You are, after all, a hero! Even we of higher birth must respect those who risk their lives to keep us safe.*/
= @390 /*But as to the matter at hand, do you wish me to fulfill my vow and accompany you on your daring quest again?*/
END
	++ @391 /*No, I'm just saying hi.*/ + _bLadyDelryn1
	++ @392 /*Yes, are you ready to go?*/ + _bLadyDelryn2
	
	
CHAIN IF WEIGHT #0 ~Name("_bClara",LastTalkedToBy) Global("_bLadyDelryn","GLOBAL",1)~ THEN COR _bClaraCor3
@430 /*You've returned my dear! But it is in the presence of <CHARNAME>. I take it you are not yet finished with your travels?*/
== _BCLARAJ @431 /*I am not, my love, but I shall return to you whenever I am able.*/
EXIT


EXTEND_BOTTOM COR 54 /*Speak to me when my son is amongst you. Otherwise, leave my home.*/
IF ~Global("_bLadyDelryn","GLOBAL",1) InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN EXTERN _BCLARAJ _bClaraCor4
END

CHAIN _BCLARAJ _bClaraCor4
@432 /*Should I leave as well, dear husband?*/
== COR @433 /*Oh, my love, I did not see you there. You are as silent and graceful as always. Are you finished with your travels?*/
== _BCLARAJ @431 /*I am not, my love, but I shall return to you whenever I am able.*/
END
	COPY_TRANS COR 54

	
EXTEND_BOTTOM COR 26 /*Get out of my house, dogs! You have corrupted my son. I would spit in your face, but you aren't worth the effort.*/
IF ~Global("_bLadyDelryn","GLOBAL",1) InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN EXTERN _BCLARAJ _bClaraCor5
END

CHAIN _BCLARAJ _bClaraCor5 
@434 /*Am I included in your harsh words, my dear? It would break my heart if you thought ill of me.*/
== COR @435 /*No, of course I am not speaking to you, I am sorry. I know <CHARNAME> is the only one at fault.*/
END
	COPY_TRANS COR 26
	
//New Clara P dialogue after Cor dies back in ClaraP




//TOB
//Clara-Anomen Wraith Scene
//Gorion Wraith Scene - Regular Version
CHAIN IF WEIGHT #-96 ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("_bLordandLadyDelryn","GLOBAL",5) Global("WraithPunish","GLOBAL",2) Global("_bClaraAnomenWraith","GLOBAL",0) OR(2) !Global("ImoenRomanceActive","GLOBAL",2) !InParty("Imoen2")~ THEN HGWRA01 _bCAWraithScene1
@436 /*You are a force of villainy sweeping across the land.*/
DO ~SetGlobal("_bClaraAnomenWraith","GLOBAL",1)~
== ANOME25J @437 /*Spirit of Gorion, I am Lord Anomen Delryn, and I speak on behalf of <CHARNAME>. Our leader is a good person and an agent for righteousness!*/
== HGWRA01 @438 /*Says Anomen-of-the-Failed-Test, Kin-Slayer and Murderer of Innocents...*/
== ANOME25J @439 /*I killed my father, it is true... but he was no innocent.*/
== HGWRA01 @440 /*It was not Cor Delryn of whom I spoke...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut218f4")~
EXIT

//Gorion Wraith Scene - Imoen Version
CHAIN IF WEIGHT #-96 ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("_bLordandLadyDelryn","GLOBAL",5) Global("WraithPunish","GLOBAL",2) Global("_bClaraAnomenWraith","GLOBAL",0) Global("ImoenRomanceActive","GLOBAL",2) InParty("Imoen2")~ THEN HGWRA01 _bCAWraithImoenScene1
@441 /*You and Imoen are forces of villainy sweeping across the land.*/
DO ~SetGlobal("_bClaraAnomenWraith","GLOBAL",1)~
== ANOME25J @442 /*Spirit of Gorion, I am Lord Anomen Delryn, and I speak on behalf of my friends. Imoen and <CHARNAME> are good people and agents for righteousness!*/
== HGWRA01 @438 /*Says Anomen-of-the-Failed-Test, Kin-Slayer and Murderer of Innocents...*/
== ANOME25J @439 /*I killed my father, it is true... but he was no innocent.*/
== HGWRA01 @440 /*It was not Cor Delryn of whom I spoke...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut218f4")~
EXIT

INTERJECT LOVEONE4 4 /*Moira: You lie, my brother. You didn't want me to leave. And now I am dead at your hands.*/ _CAWraithInterject
	== ANOME25J IF ~Global("_bClaraAnomenWraith","GLOBAL",1)~ THEN @443 /*No! No, no! I... I never... by Helm, no! I beg you! Make this stop!*/
	== _BCLA25J @444 /*Anomen, it's okay... shhh...*/
	DO ~SetGlobal("_bClaraAnomenWraith","GLOBAL",2)~
	== HGWRA01 @445 /*And so little Clara attempts to step out of the shadows... but shadow is what you are, Caroline.*/
	== _BCLA25J @446 /*So now you show me someone I've killed? Do it, Gorion, I do not regret a single one!*/
	== HGWRA01 @447 /*As you command.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bLCla")~
EXIT

BEGIN _bLITCLA

CHAIN IF WEIGHT #-95 ~Global("_bClaraAnomenWraith","GLOBAL",2)~ THEN _bCLA25J _bCAWraithScene2
@448 /*Who are you? I do not know you...*/
== _bLITCLA @449 /*Once upon a time, there was a little girl who was safe and loved. She was happy and her days were filled with laughter and joy.*/
== _bCLA25J @451 /*Oh no...*/
DO ~SetGlobal("_bClaraAnomenWraith","GLOBAL",3)~
== _bLITCLA @452 /*Tell me how it ends, Clara... Tell me that I live happily ever after.*/
== _bCLA25J @453 /*You do! I am! I'm a noble lady! I have a husband who loves me! I am strong, powerful, and rich! You will have all those things...*/
== _bLITCLA @454 /*No... you will have them, but I will not. You erased me... you erased my parents... we are no longer in your heart... or your past. You have replaced us with new ones that you created. New ones you love better than you ever loved us.*/
== _bCLA25J @455 /*Life was hard... I did what I had to to survive!*/
== _bLITCLA @456 /*And you did survive... but I did not. That small joyful girl who loved the world... I died... because you killed me.*/
= @457 /*And now you have everything you always wanted... but can you enjoy it? Can you feel the same love and joy you felt before? Or do you spend every day fearing that your web-of-lies will come crashing down?*/
== _BCLA25J @458 /*No... get away! You were a weak child and I am done with you! *sobs**/
== _bLITCLA @459 /*Surround yourself with all the gold, servants, and "friends" that you can... for you will always be alone.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bLCla2")~
EXIT


//Post Wraith Talk
CHAIN IF WEIGHT #-10 ~Global("_bClaraAnomenWraith","GLOBAL",4)~ THEN ANOME25J _bCAWraithScene3
@460 /*Damnable spirit! How dare it utter the virtuous name of my sister! How dare it accuse me of such... such... DAMN THAT GHOST!*/
== _BCLA25J @461 /*My love, that creature was a being of pure evil! Everything it said was a lie!*/
DO ~SetGlobal("_bClaraAnomenWraith","GLOBAL",5)~
== ANOME25J @462 /*It will take more than comforting words to dispel these demons from my past, Caroline.*/
= @463 /*Moira is dead, and her death was never properly avenged. In that, at least, the spirit spoke the truth. I failed my sister! I should have tried harder to take her with me when I left our father's house!*/
== _BCLA25J @464 /*You cannot change the past, Anomen. You cannot bring Moira back.*/
== ANOME25J @465 /*I... I know Moira is gone. I know there is nothing I can do about it. But it eats at my soul, and it tears at my heart. I failed her, Caroline! What if I fail you?*/
== _BCLA25J @466 /*You won't fail me, Anomen. You have proven yourself time and time again.*/
== ANOME25J @467 /*I... I suppose you are right, my love. Once again, I must beg your forgiveness. I guess... I guess I am not yet at peace with Moira's fate. I will always honor my sister's memory, but I must learn to look to the future. My future.*/
== _BCLA25J @468 /*Our future, my love. The past cannot be changed. And your future is with me.*/
== ANOME25J @469 /*Thank you, my lady. Once again, you have shown me the wisest path. I shall not let my past destroy what we have built together. I... I shall be all right. Let us continue with the task at hand.*/
EXIT



