//1st conversation, 2 days after meeting

APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMFT","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN _bmazfriend1
	SAY @1 /*We have been travelling together for several days now, <CHARNAME>, and I would like to know you better. May I ask you a question?*/
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
	+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) !Global("C#IM_ImoenStays","GLOBAL",1)~ + @10 /*I have to rescue Imoen. That's the only thing driving me right now.*/ GOTO _bmazfriend5
	++ @11 /*I've dreamed of being a hero ever since I was a child. I think I read every adventure story in Candlekeep, usually when I was supposed to be at other lessons, and now I'm living one instead.*/ GOTO _bmazfriend6
	++ @12 /*I simply wish to help people. What point is there in living if I don't make the world a better place?*/ GOTO _bmazfriend7
	++ @13 /*I don't want to be a hero. In fact, I plan to retire as soon as Irenicus is dead.*/ GOTO _bmazfriend8
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
	
	IF ~~ THEN _bmazfriend4
	SAY @21 /*A good answer, <CHARNAME>. You may have ended up on this path by accident, but I agree that it suits you.*/
	= @22 /*If not for that twist of fate, I would most likely have died with my companions. You saved my life and I will return the favour as best I can.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazfriend5
	SAY @23 /*Loyalty to your friend is a worthy cause.*/
	= @24 /*I still grieve for my fallen comrades and I would not wish you to share my pain. I will be proud to help you save your friend.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",1)~ EXIT
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
	
	IF ~~ THEN _bmazfriend7
	SAY @31 /*I agree. You have the heart of a true hero and I am honoured to travel at your side.*/
	= @32 /*We will make the world a better place together.*/
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
	


//Second Conversation
CHAIN IF WEIGHT #-1 ~Global("_bMFT","GLOBAL",5)~ THEN MAZZYJ _bMazfriend17
@47 /*Will you tell me about Imoen? I would know more about the person whom we are rescuing.*/
DO ~SetGlobal("_bMFT","GLOBAL",6)~
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @48 /*Imoen was a force for righteous goodness and a joy to travel with. Boo and I both think so.*/
= @49 /*We must rescue her from the wizards! She is too good a soul to suffer in their prison!*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @50 /*Imoen is the nosiest little girl I ever met. Every day it was, "Edwin, how do you cast that spell?" or "Edwin, how do you read this scroll?" One night she swiped my notebook and I caught her copying the symbols.*/
= @51 /*I am amazed she made it this far without blowing herself up or transforming herself into a squirrel. (She was a voluptuous, desirable creature though. If not for <CHARNAME>, I would have charmed her and kept her as a pet.)*/
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN @52 /*Imoen should have been a wild mage. She was already reckless as a thief, but when she started learning magic... for the first time in my life, I was the safe and responsible magic user during battle.*/
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN @53 /*I hope we rescue her soon. It will be nice to see her again.*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @54 /*Gorion always spoke fondly of Imoen, and when we traveled together I found out why; Imoen was an unbreakable spirit, always laughing away the sorrow and darkness.*/
= @55 /*That spirit was likely how she survived Irenicus' tortures intact. She will survive Spellhold as well, you'll see. If Irenicus couldn't break her, then the Cowled Wizards will not either.*/
== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @56 /*Imoen was always a point of light and joy in a dark and cruel world. I often think of her example when I am overcome by sorrow.*/
== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @57 /*I wish she was with us now. She is a valuable ally during hard times.*/
== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @58 /*Imoen was an annoying, useless mouse and I am disappointed that <CHARNAME> is bothering to rescue her. There are much better uses for our time.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ 
THEN @59 /*Imoen was a little pest, always joking and chipper. It was like traveling with an exhausting little puppy.*/
= @60 /*Still, I was never worried that she would murder me in my sleep, which is more than I can say for most rivvin I've encountered.*/
== MAZZYJ IF ~OR(7) IsValidForPartyDialog("Minsc") IsValidForPartyDialog("Edwin") IsValidForPartyDialog("NEERA") IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("RASAAD") IsValidForPartyDialog("DORN") IsValidForPartyDialog("Viconia")~
THEN @61 /*And what about you, <CHARNAME>?*/
== MAZZYJ @62 /*What details can you share?*/
END
	++ @63 /*We grew up together. I've known her since we were children.*/ GOTO _bMazfriend18
	++ @64 /*Imoen is my best friend. I can't imagine life without her and I miss her dearly.*/ GOTO _bMazfriend19
	++ @65 /*I know Imoen from Candlekeep. She was always dragging me into trouble.*/ GOTO _bMazfriend20
	++ @66 /*There isn't much to tell. The two of us went our separate ways after leaving Baldur's Gate and I'm not sure how Irenicus managed to grab us both at the same time.*/ GOTO _bMazfriend21
	
APPEND MAZZYJ IF ~~ THEN _bMazfriend18
	SAY @67 /*I am happy for you. I am not still close to anyone from my childhood.*/
	++ @68 /*That is a pity. You lose out on the inside jokes that way.*/ GOTO _bMazfriend22
	++ @69 /*Then you shall simply have to make some new friends now.*/ GOTO _bMazfriend22
	++ @70 /*I think you'd be surprised. I'm sure your friends and family are pleased to see you whenever you go home.*/ GOTO _bMazfriend22
	END
	
	IF ~~ THEN _bMazfriend22
	SAY @71 /*I suppose you are right.*/
	++ @72 /*Of course I'm right. I always am.*/ EXIT
	++ @73 /*Glad to hear it. I think we'll get along just fine.*/ EXIT
	++ @74 /*Enough talking for now, Imoen needs us.*/ EXIT
	END
	
	IF ~~ THEN _bMazfriend19
	SAY @75 /*Your loyalty does you credit. Will you tell me what she's like?*/
	++ @76 /*Well, she's always been a little crazy and a little whimsical, but I know she cares about me; sometimes I think she's the only one who kept me sane this far.*/ GOTO _bMazfriend23
	++ @77 /*Cheerful. Very, very cheerful. At least when we were young.*/ GOTO _bMazfriend23
	++ @78 /*Truthfully, she's a bit of a kleptomaniac. But nothing serious and her thefts were often good for a quick laugh.*/ GOTO _bMazfriend23
	END
	
	IF ~~ THEN _bMazfriend23
	SAY @79 /*Someone who can lighten a party's mood is invaluable, <CHARNAME>, especially during hard times. I regret that I am rarely that person.*/
	++ @80 /*You do more than you think, Mazzy.*/ GOTO _bMazfriend24
	++ @81 /*True, you could use some laughter in your life.*/ GOTO _bMazfriend25
	++ @82 /*There's still time, Mazzy. You are lightening my mood right now.*/ GOTO _bMazfriend24
	END
	
	IF ~~ THEN _bMazfriend24
	SAY @83 /*Thank you. That means more than you know.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazfriend25
	SAY @84 /*I will try. From what I've seen, travelling with you should help.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazfriend20
	SAY @85 /*And you were the one dragging her back out?*/
	++ @86 /*Sometimes. Sometimes I dragged her back in instead.*/ GOTO _bMazfriend26
	++ @87 /*Or the one who covered for her. Gorion never did find out what happened to his scrying bowl.*/ GOTO _bMazfriend26
	++ @88 /*I suppose I was. Imoen is like my little sister and I want her back.*/ GOTO _bMazfriend26
	END
	
	IF ~~ THEN _bMazfriend26
	SAY @89 /*Your loyalty is wonderful to see. We will rescue her together.*/
	++ @90 /*Thank you.*/ EXIT
	++ @91 /*I appreciate your help.*/ EXIT
	++ @92 /*I only hope that we succeed.*/ EXIT
	END
	
	IF ~~ THEN _bMazfriend21
	SAY @93 /*But you still wish to rescue her?*/
	++ @94 /*I feel obliged to save her. For the friendship we once had.*/ GOTO _bMazfriend26
	++ @95 /*Of course. I wouldn't let Irenicus or the Cowled Wizards have my worst enemy.*/ GOTO _bMazfriend26
	++ @96 /*Honestly, I'm just in this for revenge. The people who have Imoen also have Irenicus.*/ GOTO _bMazfriend27
	END
	
	IF ~~ THEN _bMazfriend27
	SAY @97 /*I can understand such feelings, though I believe that we must not let them control us. I shall continue as your travelling companion for now so that I may help you seek justice rather than revenge.*/
	IF ~~ THEN EXIT
	END
END

//3rd Talk
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMFT","GLOBAL",8)~ THEN _bmazfriend28
	SAY @98 /*<CHARNAME>, will you tell me more about Irenicus? I prefer not to enter any battle blind.*/
	++ @99 /*I am afraid I don't know much. I just know that he is powerful and we must defeat him soon.*/ GOTO _bMazfriend29
	++ @100 /*He is evil through and through. We must destroy him so that he can hurt no one else.*/ GOTO _bMazfriend29
	++ @101 /*Irenicus is a mage. One of the strongest I have seen. But we shall kill him nonetheless.*/ GOTO _bMazfriend29
	++ @102 /*He is a dead man walking. That is all you need to know.*/ GOTO _bMazfriend29
	END
	
	IF ~~ THEN _bMazfriend29
	SAY @103 /*I do not doubt your conviction. But I was rather hoping for some sort of strategy. Attacking the Shade Lord showed me the folly of engaging an enemy without a plan.*/
	++ @104 /*Plan, shman. I've got my weapons and a whole lot of anger. That will have to do.*/ GOTO _bMazfriend30
	++ @105 /*You are right, of course. Do you have any ideas?*/ GOTO _bMazfriend31
	+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @106 /*I plan to sneak inside of Spellhold and stab him in the back. Even the best mage will fall to a surprise attack.*/ GOTO _bMazfriend32
	++ @107 /*We must challenge him. An honorable duel to end his wicked ways.*/ GOTO _bMazfriend33
	END
	
	IF ~~ THEN _bMazfriend30
	SAY @108 /*I have used that strategy before, <CHARNAME>, and against a powerful adversary it might not be enough.*/
	IF ~~ THEN GOTO _bMazfriend34
	END
	
	IF ~~ THEN _bMazfriend31
	SAY @109 /*He is a mage, so we will need powerful spell-casters of our own, ideally more than one. They must either use their magic to keep him busy or use it to dispel his protections. Otherwise all my fighting skills will be useless.*/
	IF ~~ THEN GOTO _bMazfriend34
	END
	
	IF ~~ THEN _bMazfriend32
	SAY @110 /*That seems dishonourable, <CHARNAME>, though it might be effective. I would rather fight the man straight on.*/
	IF ~~ THEN GOTO _bMazfriend34
	END
	
	IF ~~ THEN _bMazfriend33
	SAY @111 /*But will he accept an honourable duel? We should be prepared for a trap.*/
	IF ~~ THEN GOTO _bMazfriend34
	END
	
	IF ~~ THEN _bMazfriend34
	SAY @112 /*I shall think further on the question and you should do the same. But for now, <CHARNAME>, we should continue. Adventures await.*/
	IF ~~ THEN DO ~SetGlobal("_bMFT","GLOBAL",9)~ EXIT
	END
END

//Talk after Jon Dream
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMDT1","GLOBAL",2)~ THEN _bmazfriend35
	SAY @113 /*<CHARNAME>, are you all right? You were talking rather loudly in your sleep.*/
	++ @114 /*I am fine, Mazzy. Do not worry.*/ GOTO _bmazfriend36
	++ @115 /*I am not surprised to hear that. I have had strange dreams of late.*/ GOTO _bmazfriend36
	++ @116 /*I didn’t wake you, did I?*/ GOTO _bmazfriend37
	END
	
	IF ~~ THEN _bmazfriend36
	SAY @117 /*Would you like to talk about it? I have found that speaking my thoughts aloud often helps to put my mind in order and perhaps you will find the same.*/
	++ @119 /*I was dreaming about Irenicus. I have had such dreams before and they always feel so real.*/ + _bmazfriend38
	END
	
	IF ~~ THEN _bmazfriend37 
	SAY @118 /*You did, but I wake easily. A habit created by years of sleeping in dangerous places, I suppose. Were you dreaming?*/
	++ @119 /*I was dreaming about Irenicus. I have had such dreams before and they always feel so real.*/ + _bmazfriend38
	END
END

CHAIN MAZZYJ _bmazfriend38
@120 /*What did he say?*/
DO ~SetGlobal("_bMDT1","GLOBAL",3)~
END
	++ @121 /*I do not wish to talk about it. We should get up and face the day.*/ EXIT
	++ @122 /*He offered me power. Great and awesome power.*/ EXTERN MAZZYJ _bmazfriend39
	++ @123 /*He keeps trying to convince me to embrace my heritage.*/ EXTERN MAZZYJ _bmazfriend40
	++ @124 /*It doesn't matter. These dreams are only figments of my imagination. Irenicus is flesh and blood and he will meet naked steel.*/ EXTERN MAZZYJ _bmazfriend41
	
APPEND MAZZYJ IF ~~ THEN _bmazfriend39
	SAY @125 /*That is not an offer I would take. It is most likely a trap.*/
	++ @126 /*I suppose you are right. I will proceed carefully.*/ EXIT
	++ @127 /*I do not fear a trap! I am powerful enough to defeat anything he throws at me!*/ GOTO _bmazfriend42
	++ @128 /*Maybe. But my enemies have lain traps for me before and I still breathe.*/ GOTO _bmazfriend43
	END
	
	IF ~~ THEN _bmazfriend42
	SAY @129 /*You were not powerful enough to defeat Irenicus before and there is no reason to believe that this has changed. You will fall to him just as I fell to the Shadow Lord unless we plan ahead and I would not see you share that pain.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazfriend43
	SAY @130 /*I hope your luck does not run out.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazfriend40
	SAY @131 /*Your heritage? I thought you were a <PRO_RACE>?*/
	++ @132 /*My mother was a <PRO_RACE>. But my father was the Lord of Murder.*/ GOTO _bmazfriend44
	++ @133 /*Yeah, about that. I'm actually a <PRO_SONDAUGHTER> of Bhaal.*/  GOTO _bmazfriend44
	++ @134 /*It's hardly a secret. It seems like everyone and their mother knows that I'm a Bhaalspawn now.*/ GOTO _bmazfriend44
	++ @135 /*Well, the truth is... I'm actually a gnoll. There was this awful shape-changing accident that turned me into a <PRO_RACE>. Please don't tell anyone.*/ GOTO _bmazfriend45
	++ @136 /*Have you heard of the Bhaalspawn? The Lord of Murder fathered a score of mortal progeny before he died and I'm afraid that I am one.*/ GOTO _bmazfriend44
	END
	
	IF ~~ THEN _bmazfriend44
	SAY @137 /*That is a lot to take in. But you seem to be a decent person despite your heritage and I am living proof that blood need not define your role in life.*/
	++ @138 /*Thank you.*/ EXIT
	++ @139 /*We shall see.*/ EXIT
	++ @140 /*I hope you're right.*/ EXIT
	++ @141 /*I think blood defines us all.*/ EXIT
	END
	
	IF ~~ THEN _bmazfriend45
	SAY @142 /*You are a gnoll? Ah, you were joking.*/
	++ @143 /*Yes, I am actually the <PRO_SONDAUGHTER> of Bhaal. And that is not a joke.*/ + _bmazfriend44
	END
	
	IF ~~ THEN _bmazfriend41
	SAY @144 /*If you say so, <CHARNAME>, but you also told me that Irenicus is a powerful mage. It may be that your dreams are more real than you think.*/
	++ @145 /*Perhaps. But he will meet steel all the same.*/ EXIT
	++ @146 /*Don't worry, Mazzy. I can be careful in my sleep.*/ EXIT
	++ @147 /*Then I shall learn of him as he learns of me.*/ EXIT
	END
END	

	
//2nd Dream Talk. Does not require first.
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMDT2","GLOBAL",2)~ THEN _bmazfriend47
	SAY @148 /*<CHARNAME>, you sleep like a <PRO_MANWOMAN> with many demons.*/
	++ @149 /*I haven't slept well since leaving Irenicus' dungeon, Mazzy. Every time I close my eyes, I find myself back there.*/ GOTO _bmazfriend48 
	++ @150 /*Probably because there are many on my heels.*/ GOTO _bmazfriend48 
	++ @151 /*Yeah, that sounds about right.*/ GOTO _bmazfriend48 
	++ @152 /*I don't think I'm really sleeping anymore. My nightmares leave me more exhausted every time I wake.*/ GOTO _bmazfriend48 
	END
	
	IF ~~ THEN _bmazfriend48
	SAY @153 /*I am willing to listen if you wish to talk about it. Maybe it will help.*/
	++ @154 /*I do not think so.*/ DO ~SetGlobal("_bMDT2","GLOBAL",3)~ EXIT
	++ @155 /*It's worth a shot.*/ EXTERN PLAYER1 _bMazfriend49
	++ @156 /*All right, Mazzy. If you really want to know.*/ EXTERN PLAYER1 _bMazfriend49
	END
END

CHAIN PLAYER1 _bMazfriend49
@157 /*I keep dreaming of Irenicus. Not dreams like he has sent me; these are memories. He kept us locked in cages and would not let us out. He tortured us, but it was not normal torture; he did not want information. As far as I could tell, he did not want anything. But neither did he gain joy from the pain that he inflicted. There was a purpose to everything he did, but I cannot figure out what it was.*/
DO ~SetGlobal("_bMDT2","GLOBAL",3)~
== MAZZYJ @158 /*It sounds horrible.*/
== PLAYER1 @159 /*Sometimes he used spells to hurt us; other times he cut into us with knives. Everytime I fell unconscious, I would wake up fully healed and then he would start again.*/
END
	+ ~Dead("shadel")~ + @160 /*I am going to find him and kill him. Then I will sleep well again.*/ EXTERN MAZZYJ _bMazfriend50
	++ @161 /*I have to know what he wanted, Mazzy. What did he hope to learn from me and my blood? And how can I unlock this power for myself?*/ EXTERN MAZZYJ _bMazfriend51
	++ @162 /*I do not believe that Spellhold will be able to hold him. He will escape from the Cowled Wizards and start his tortures once again. I must rescue Imoen as soon as we can.*/ EXTERN MAZZYJ _bMazfriend52
	
APPEND MAZZYJ IF ~~ THEN _bMazfriend50
	SAY @163 /*I do not know if that is true, <CHARNAME>. We destroyed the Shade Lord, but I still feel his cold touch even now. However, I hope that you will find more peace than I have and either way, Irenicus must be stopped.*/
	++ @164 /*So you are with me, Mazzy? To the end?*/ GOTO _bMazfriend53
	++ @165 /*You will not leave me even if it grows too dangerous?*/ GOTO _bMazfriend53
	++ @166 /*Thank you. Your support means a lot to me.*/ EXIT
	END
	
	IF ~~ THEN _bMazfriend53
	SAY @167 /*I will see this through, <CHARNAME>, provided that you stay in the light.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazfriend51
	SAY @168 /*There is nothing wrong with acquiring power, <CHARNAME>, so long as you also acquire the maturity to wield it carefully.*/
	++ @169 /*What's the fun of that?*/ GOTO _bMazfriend54 
	++ @170 /*You are correct, as usual. I will tread cautiously.*/ EXIT
	++ @171 /*And here I wanted power to smite my enemies.*/ GOTO _bMazfriend54
	END
	
	IF ~~ THEN _bMazfriend54
	SAY @172 /*You worry me. Travel too far down this road and we may come to blows someday.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazfriend52
	SAY @173 /*And we shall. We shall storm the fortress, defeat Irenicus, and bring your friend home safely.*/
	IF ~~ THEN EXIT
	END
END
	
//Slum Talk. Doesn't actually require friendship.
CHAIN IF WEIGHT #-1 ~Global("_bMTAS","GLOBAL",1)~ THEN MAZZYJ _bMazSlum1
@174 /*I had forgotten the smell of this place. I have always been astonished that most tall folk can stand to bathe only a few times a year. Collect them together like this and the odour is almost overpowering.*/
DO ~SetGlobal("_bMTAS","GLOBAL",2)~
= @175 /*There are so many of my own people here. Perhaps this is the only part of the city where they can afford to live.*/
== KELDORJ IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @176 /*I agree, Mazzy, cleanliness is a virtue. At the Order of the Radiant Heart, every paladin and cleric is required to wash themselves from head to heel once per moon, whether they feel dirty or not.*/
== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @177 /*At least the inns here actually have baths. When I was traveling in the north, that was often not the case and the streams were usually freezing.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ 
THEN @178 /*Finally! It is good to hear someone else say it. The rivvin stink and a city of rivvin is a stench almost unbearable. I prefer the graveyard, it smells somewhat cleaner, and the people there are better company.*/
== KORGANJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN @179 /*I nae be smelling anything, lass, other than a slight unpleasant whiff in th' air.*/
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @180 /*I smell only the scents of the city, Mazzy, but Boo agrees with you and reminds me that we are overdue ourselves.*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ 
THEN @181 /*You do not smell me, halfling. The Order is a stickler for cleanliness and I am of noble blood as well. I bathe no less than TWICE a month, once when the moon turns and another when it is full.*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ 
THEN @182 /*Of course these people smell. They are filthy and hopeless and the world would be a better place if they were wiped off of the map.*/
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @183 /*Dirt is a symptom of poverty, Mazzy. A bath requires clean water, which must be heated, carried, and poured. People in a place like this may only manage one or two baths per year, but many nobles will take no fewer than ten. I know some who take as many as twenty baths a year, and I don't think I have ever taken fewer than eight.*/
== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @184 /*Hah! Spend a week living among orcs, little halfling, and you will be yearning for the sweet smells of Athkatla.*/
== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @185 /*You should do what I do, Mazzy. Plug your nose and try not to breathe too deeply until we are back in nature once again.*/
== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ 
THEN @186 /*Ah my picky Hawk, it is true that this city does not smell of blooming flowers, but travel with me through the planes and you will broaden your olfactory horizons. Once you have swum across lakes that burn with fire and rested in inns where the walls weep tears of blood, then you will miss the fragrant scents that fill our noses now.*/
== AERIEJ IF ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @187 /*Oh, can we stop for a bath, <CHARNAME>? It would be so nice to be clean.*/
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN @188 /*My old teachers taught me a cantrip that works in place of bathing... but the last time I tried to use it, I almost burned down the inn.*/
== VALYGARJ IF ~InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @189 /*Some of us prefer to be clean, Mazzy. It is often just a matter of opportunity.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @190 /*(The halfling mocks my grooming. That cannot be ignored.)*/
== IF_FILE_EXISTS HEXXATJ IF ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ 
THEN @191 /*I do not know if you are right. When I walk through this city, all I smell is blood.*/
== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @192 /*Hey, now. There's no need to be so rude. My family has been living here for generations and no one has ever said that a Jansen was unclean. Except my great-uncle Ferdinand, of course. He believed that he'd been cursed by a hedge witch and that taking a bath would kill him. Now that I think about it, old Ferdinand drowned in the tub when I was just a youngin' so maybe he was right.*/
== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ 
THEN @193 /*You should travel to my homeland, Mazzy. There is a bath house in every village that all souls use regularly. In truth, I have not felt clean since I came to Athkatla.*/
== CERNDJ IF ~InMyArea("Cernd") InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @194 /*That is one of the reasons I prefer the wilds. Sometimes I wonder if the Shadow Druids are correct and humans are a blight upon the earth.*/
== IF_FILE_EXISTS _BCLARAJ IF ~InMyArea("_bClara") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @195 /*You're kind of prissy, aren't you, Mazzy? I don't mean that in a bad way though. One day I'll be living with the nobles and I'll be prissy too.*/
== IF_FILE_EXISTS OHHFAK IF ~InMyArea("OHHFAK") InParty("OHHFAK") !StateCheck("OHHFAK",CD_STATE_NOTVALID)~ 
THEN @196 /*Smell? I do... not know smell. I only know... the tomb.*/
== WILSONJ IF ~IfValidForPartyDialogue("Wilson")~ @196000 /*Snuffle sniff? Gruff.*/
== MAZZYJ @197 /*But despite the stench, we should continue. There are likely many souls in need of our assistance.*/
EXIT


//Shade Lord Conversation - plays on rest in Underdark
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bmazzyShadeLT","GLOBAL",1) Global("_bmazzyShadeLTExtra","GLOBAL",2)~ THEN _bmazshade1
	SAY @198 /*I am so cold.*/
	++ @199 /*Mazzy, are you all right?*/ DO ~SetGlobal("_bmazzyShadeLTExtra","GLOBAL",3)~ GOTO _bmazshade2
	++ @200 /*So put on some more clothes.*/ DO ~SetGlobal("_bmazzyShadeLTExtra","GLOBAL",3)~ GOTO _bmazshade2
	++ @201 /*Being cold builds character, Mazzy, but only if you do it silently.*/ DO ~SetGlobal("_bmazzyShadeLTExtra","GLOBAL",3)~ GOTO _bmazshade2
	++ @202 /*It is a little chilly, I suppose. Should I build the fire up?*/ DO ~SetGlobal("_bmazzyShadeLTExtra","GLOBAL",3)~ GOTO _bmazshade2
	END
	
	IF ~~ THEN _bmazshade2
	SAY @203 /*He's here. The Shade Lord is here.*/
	++ @204 /*No, he isn't. All I see is you.*/ GOTO _bmazshade3
	+ ~Dead("shadel")~ + @205 /*I don't understand. We destroyed him.*/ GOTO _bmazshade3
	++ @206 /*Great. Hallucinations. That's all I need right now.*/ GOTO _bmazshade3
	++ @207 /*Where? Show me and I'll kill him!*/ GOTO _bmazshade3
	END
	
	IF ~~ THEN _bmazshade3
	SAY @208 /*I thought I was free of him, but he's inside of me.*/
	= @209 /*I must face him or I will perish. To aid me, please call upon all your power and sit here next to me. Your presence will help. Focus your attention, energy, and compassion upon me and do not cease doing so until I give the word.*/
	++ @210 /*Of course, Mazzy. I am here for you.*/ GOTO _bmazshade4
	++ @211 /*I'd prefer to punch something, but I will try to help.*/ GOTO _bmazshade4
	++ @212 /*You are my friend, Mazzy. I will give you all I can.*/ GOTO _bmazshade4
	++ @213 /*Solve your own problems, Mazzy. I am not your servant.*/ GOTO _bmazshade5
	++ @214 /*Sorry, Mazzy. I have no strength to spare.*/ GOTO _bmazshade5
	END
	
	IF ~~ THEN _bmazshade4
	SAY @215 /*Thank you.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~ GOTO _bmazshade6 
	END
	
	IF ~~ THEN _bmazshade5
	SAY @216 /*Fine. I see I was mistaken to believe that I could rely on you.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3)~ GOTO _bmazshade6
	END
END

//Reorganize so that all the people who don't set a global are at the end.
CHAIN MAZZYJ _bmazshade6
@2160 /*If anyone else is able to assist me, I would appreciate your help.*/
DO ~SetGlobal("_bmazzyShadeLT","GLOBAL",2)~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @218 /*I will call on Torm to aid you, brave Mazzy. Know that you have many allies against this evil.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== IF_FILE_EXISTS RASAADJ IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @219 /*I will aid you as well, Mazzy, for as long as you require.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @220 /*(It would be a shame to lose such a pretty creature, but my power remains my own.)*/
== IF_FILE_EXISTS DORNJ IF ~InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @221 /*I will not aid you halfling; even if I wanted to, my patron does not share.*/
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN @222 /*I nae be good at sitting quietly, girl. Call me when ye need something hit with an axe.*/
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @223 /*I cannot fight what I cannot see, brave paladin, but Boo says that he will aid you.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsKnight","GLOBAL",1)~ 
THEN @224 /*The power of Helm is yours, my lady. Darkness will never triumph.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsKnight","GLOBAL",1)~ 
THEN @225 /*You are foolish to believe that you can defeat the darkness, halfling, but I suppose I wish you luck.*/
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",0)~ 
THEN @226 /*I hardly care what happens to you, tiny halfling, but I suppose it would be better for us if you succeed.*/
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",1)~ 
THEN @227 /*I think I would prefer you alive, Mazzy. I will aid you as I can.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bMazzyVicFriends","GLOBAL",2)~ 
THEN @228 /*Whatever power I can call upon is yours, my little paladin. I will not fail you.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @229 /*You are in luck, lass. Years ago I enchanted my left boot to cast Possession-By-Shade-Lord-Purge three times daily and I have two charges left.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @230 /*May nature's power aid you, Mazzy. Shadow creatures are a blight on this earth.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ 
THEN @231 /*You helped save my life, Mazzy. I won't let this shadow hurt you.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @232 /*Shadows are born of nature just like halflings, evil though they seem. I will not choose a side.*/
== IF_FILE_EXISTS NEERAJ IF ~InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN @233 /*I have just the spell to help.... oh wait, no not that one!*/
DO ~ApplySpell("NEERA",CLERIC_CAUSE_SERIOUS_WOUNDS)~
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @234 /*Don't worry, Mazzy. I will help. I always have Protection-from-Evil memorized.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @235 /*I will not let the Shade Lord harm you. Take whatever strength you need.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ 
THEN @236 /*I am sorry, my tiny Hawk. This sparrow may be skilled in song and magic, but shades are not my expertise.*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @237 /*Here, Mazzy. Take my cloak to warm you. I will cast every spell I can.*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== WILSONJ IF ~IfValidForPartyDialogue("Wilson")~ 
THEN @237000 /*Mrrf? Roar!*/
DO ~SetGlobal("_bMazzySLTriumph","GLOBAL",1)~
== IF_FILE_EXISTS _BCLARAJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @238 /*Oh, this isn't good. This isn't good at all.*/
== MAZZYJ @217 /*Now please be silent. I need to concentrate.*/
 = @239 /*Arvoreen protect me. I offer you my prayers.*/
END
	+ ~Global("_bMazzySLTriumph","GLOBAL",1)~ + @240 /*All right. I guess I won't be sleeping much tonight.*/ EXTERN PLAYER1 _bmazshadetriumph 
	+ ~Global("_bMazzySLTriumph","GLOBAL",1)~ + @241 /*Arvoreen protect us all.*/ EXTERN PLAYER1 _bmazshadetriumph 
	+ ~Global("_bMazzySLTriumph","GLOBAL",1)~ + @242 /*I'm still not sure what's going on.*/ EXTERN PLAYER1 _bmazshadetriumph 
	+ ~Global("_bMazzySLTriumph","GLOBAL",0)~ + @240 /*All right. I guess I won't be sleeping much tonight.*/ EXTERN PLAYER1 _bmazshadefail
	+ ~Global("_bMazzySLTriumph","GLOBAL",0)~ + @241 /*Arvoreen protect us all.*/ EXTERN PLAYER1 _bmazshadefail
	+ ~Global("_bMazzySLTriumph","GLOBAL",0)~ + @242 /*I'm still not sure what's going on.*/ EXTERN PLAYER1 _bmazshadefail
	+ ~Global("_bMazzySLTriumph","GLOBAL",0)~ + @243 /**sigh* Wake me when it's over.*/ EXTERN PLAYER1 _bmazshadefail
	
CHAIN PLAYER1 _bmazshadefail
@244 /**You watch Mazzy sit by the fire. Her focus is turned inward but your skin crawls with unease and you have the feeling that a great struggle is going on.**/ 
= @245 /**You are not sure how much time has passed when her eyes open once again.**/
DO ~AdvanceTime(TWO_HOURS) SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~
== MAZZYJ @246 /*I AM TRIUMPHANT!*/
END
	++ @247 /*Finally, let's go.*/ EXTERN MAZZYJ _bmazshadefail2 
	++ @248 /*Umm, Mazzy, are you all right?*/ EXTERN MAZZYJ _bmazshadefail2 
	++ @249 /*Your voice sounds a little strange.*/ EXTERN MAZZYJ _bmazshadefail2 
	++ @250 /*Great. Can we leave now? I don't have time for this.*/ EXTERN MAZZYJ _bmazshadefail2 
	
APPEND MAZZYJ IF ~~ THEN _bmazshadefail2 
	SAY @251 /*I MUST LEAVE YOU NOW! YOU WILL NOT SEARCH FOR ME!*/
	= @252 /*FAREWELL!*/
	IF ~~ THEN DO ~~ EXIT
	END
END

CHAIN PLAYER1 _bmazshadetriumph
@253 /**You lose track of time. Hours pass, or maybe it is only a few minutes. Mazzy's skin gradually becomes paler and paler until she is a translucent bluish-white. Finally, she opens her eyes.**/
DO ~AdvanceTime(TWO_HOURS) SetGlobal("_bMazzyBeatShadeLord","GLOBAL",1)~
== MAZZYJ @254 /*It is done.*/
END
	++ @255 /*Is he gone? What happened?*/ EXTERN MAZZYJ _bmazshadetriumph1
	++ @256 /*Are you sure?*/ EXTERN MAZZYJ _bmazshadetriumph1
	++ @257 /*Hey, you're not dead. Lucky us. You want to explain what's going on?*/ EXTERN MAZZYJ _bmazshadetriumph1
	++ @258 /*Does that mean we can leave now? I'm kind of on a deadline, what with the missing soul and all.*/ EXTERN MAZZYJ _bmazshadetriumph1
	++ @259 /*You don't look so good, Mazzy. Do you need healing?*/ EXTERN MAZZYJ _bmazshadetriumph1
	
CHAIN MAZZYJ _bmazshadetriumph1
@260 /*I will explain when I am rested, but I may not survive that long. The chill you feel in the air is from the wound in my soul desperately trying to gather enough warmth to sustain me.*/
= @261 /*I must sleep, but I will die before I recover. Will you sleep near me, lending me your warmth and life?*/
END
	++ @262 /*Of course, Mazzy. I am here for you.*/ GOTO _bmazshadetriumph2
	++ @263 /*Anything you need. Let me get some extra blankets.*/ GOTO _bmazshadetriumph2
	++ @264 /*I'm supposed to lie there for hours and freeze? What's in it for me?*/ GOTO _bmazshadetriumph3
	++ @265 /*I cannot do that. I am in love with someone else.*/ GOTO _bmazshadetriumph4
	
APPEND MAZZYJ IF ~~ THEN _bmazshadetriumph2
	SAY @266 /*Thank you, <CHARNAME>. Would anyone else care to join us?*/
	IF ~~ THEN DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~ GOTO _bmazshadetriumph6  
	END
	
	IF ~~ THEN _bmazshadetriumph3
	SAY @267 /*My life. I had hoped that would mean something to you.*/
	++ @268 /*It does, Mazzy. I am here for you.*/ GOTO _bmazshadetriumph2
	++ @269 /*Not enough to shiver for a night. If you survive, wake me in the morning.*/ GOTO _bmazshadetriumph5
	END
	
	IF ~~ THEN _bmazshadetriumph4
	SAY @270 /*I did not ask to lie with you physically, <CHARNAME>. I only need your warmth and I shall die without your help.*/
	= @271 /*I thought that we were friends. Doesn't that matter now?*/
	++ @268 /*It does, Mazzy. I am here for you.*/ GOTO _bmazshadetriumph2
	++ @269 /*Not enough to shiver for a night. If you survive, wake me in the morning.*/ GOTO _bmazshadetriumph5
	END
	
	IF ~~ THEN _bmazshadetriumph5
	SAY @272 /*The loss of your soul has made you as cold as I am, <CHARNAME>. Will no one else aid me now?*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3)~ GOTO _bmazshadetriumph6   
	END
END

//Reorganize so that all the people who don't set a global are at the end.
CHAIN MAZZYJ _bmazshadetriumph6  
@273 /*It will take all of my strength to survive.*/
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @276 /*I cannot say that I am comfortable with this situation. Yet I will assist you if you can find no one else.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN @277 /*I will sleep near ye, Mazzy. I will not let as fine a lass as you freeze.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsKnight","GLOBAL",1)~ 
THEN @278 /*This is not exactly proper, Mazzy. But I suppose if it will help, I cannot do otherwise.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsKnight","GLOBAL",1)~ 
THEN @279 /*No. I cannot be seen cavorting with the likes of you.*/
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @280 /*Of course my dear friend. I shall hold you tight.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @281 /*Boo and I shall keep you warm, Mazzy. We shall cuddle! For right!*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @282 /*You may share my cloak, Mazzy. I would be a poor squire if I let you freeze.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @283 /*My aunt would die of shame to even hear that question. But I will help and gladly.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== IF_FILE_EXISTS NEERAJ IF ~InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN @284 /*I'd cast a spell to warm you but after what happened last time, I think it's best I sit this out.*/
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ 
THEN @285 /*Of course I will help after what you've done for me.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ 
THEN @286 /*In this, my Hawk, I can offer some small bit of expertise. Indeed, this sparrow knows the secrets of keeping warm at night and I shall share them happily.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3)  Global("LS_HaerDalisRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",2)
Global("_bHDDORNROMANCE","GLOBAL",2)~ 
THEN @287 /*Happily and chastely, of course. My heart shall never stray without my love's permission and this is not the time for carnal things.*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @288 /*Of course I will help, Mazzy. We used to sleep close for warmth back in my homeland when the high winds blew cold.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== IF_FILE_EXISTS RASAADJ IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @289 /*Do not worry. Selûne's light shall keep you warm.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @290 /*I have just the thing, Mazzy. Jan Jansen's patented Fuzzy Afghan of Quick Warming. Big enough for two or even three.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== WILSONJ IF ~IfValidForPartyDialogue("WILSON")~ 
THEN @290000 /*Sniffle Sniff.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(2) Global("_bMazzyVicFriends","GLOBAL",2) Global("_bMazzyVicFriends","GLOBAL",1)~ THEN @291 /*Yes, come close little paladin. I shall keep you from the cold.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== IF_FILE_EXISTS _BCLARAJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @292 /*Hah, the old “I've been weakened in a magical struggle with Shade-Lord-possession and need you to sleep with me” scam. I've fallen for that before.*/
DO ~SetGlobal("_bMazzySLSurvive","GLOBAL",1)~
== IF_FILE_EXISTS _BCLARAJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @293 /*But why stop now? Scoot over, Mazzy; let's snuggle.*/
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @274 /*Thayan wizards do not cuddle, Mazzy. Pretty though you are, your survival makes no difference to me.*/
== IF_FILE_EXISTS DORNJ IF ~InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @275 /*I do not care if you live or die, halfling. I am sleeping where it is warm.*/
== MAZZYJ IF ~Global("_bMazzySLSurvive","GLOBAL",1)~
THEN @294 /*I pray this warmth will be enough.*/
== MAZZYJ IF ~Global("_bMazzySLSurvive","GLOBAL",0)~
THEN @295 /*I am so cold. My life is leaving me.*/
== MAZZYJ @29500 /*Arvoreen protect me.*/
	DO ~RestParty()~
EXIT

//Final talk - once survives or raised
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bmazzyShadeLT","GLOBAL",2) Global("_bMazzyBeatShadeLord","GLOBAL",2) Global("_bMazzyBeatShadeLordExtra","GLOBAL",1)~ THEN _bmazshade10
SAY @296 /*I am alive! Praise Arvoreen!*/
	+ ~!Global("_bMazzySLSurvive","GLOBAL",3)~ + @297 /*That was a chill night indeed. Are you feeling well enough to explain?*/ GOTO _bmazshade11 
	++ @298 /*So are you finally ready to tell me what was going on?*/ GOTO _bmazshade11 
	++ @299 /*I'm glad that you're all right. Do you remember what happened?*/ GOTO _bmazshade11 
	+ ~Global("_bMazzySLSurvive","GLOBAL",3)~ + @300 /*Yes, yes, we raised you. Now what was that about?*/ GOTO _bmazshade11 
	END
	
	IF ~~ THEN _bmazshade11
	SAY @301 /*It was the Shade Lord. If you remember, he was planning on possessing my body when you saved me. However, what I did not realize is that he had already placed a piece of his soul inside of me and that piece continued to grow and thrive even after I escaped his clutches.*/
	= @302 /*Thankfully it is gone now and I should be able to recover. Give me another few minutes and I will be ready to continue our journey.*/
	IF ~~ THEN DO ~SetGlobal("_bmazzyShadeLT","GLOBAL",3) SetGlobal("_bMazzyBeatShadeLordExtra","GLOBAL",2)~ EXIT
	END
END

//Talk about Irenicus & Elf Queen
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMEQT","GLOBAL",2)~ THEN _bmazelf1
SAY @303 /*I have been thinking on the matter and I find it difficult to believe that Irenicus once held the favour of Queen Ellesime. That is a courtly way of saying that the two of them were lovers, but the man we met has only vengeance in his heart.*/
	++ @304 /*You know that sex and love aren't always intertwined.*/ GOTO _bmazelf2
	++ @305 /*Irenicus is evil. That is all I need to know.*/ GOTO _bmazelf3
	++ @307 /*Perhaps his hate is stronger for the love that he once felt.*/ GOTO _bmazelf4
	+ ~Global("_BMazzyRomance","GLOBAL",2)~ + @308 /*I can understand it. If you ever left me, I do not know what I would do.*/ GOTO _bmazelf5
	END
	
	IF ~~ THEN _bmazelf2
	SAY @309 /*Of course, <CHARNAME>. That is hardly a surprise. But even without love, there must be some feeling of companionship. Otherwise, Irenicus and the Queen would have had nothing more than a few nights of pleasure before moving on.*/
	++ @310 /*Perhaps that would have been better considering where his path has led.*/ GOTO _bmazelf6
	++ @311 /*Maybe she loved him and he simply took advantage.*/ GOTO _bmazelf7
	++ @312 /*Whatever he might have felt, Irenicus clearly cared for power more.*/ GOTO _bmazelf8
	END
	
	IF ~~ THEN  _bmazelf6
	SAY @313 /*You have a point. I have often thought that other races take these matters far too seriously. Sex is not possession and love should not beget such jealousy.*/
	= @314 /*But I suppose this is the reason people think that halflings are all footloose and fancy-free.*/
	+ ~Global("_BMazzyRomance","GLOBAL",2)~ + @315 /*Really? You required quite a courtship before I could tumble you.*/ GOTO _bmazelf9
	++ @316 /*You are probably right. I have seen jealousy lead to terrible atrocities.*/ GOTO _bmazelf10
	++ @317 /*Elves tend to take these matters more seriously. But it is not my place to judge.*/ GOTO _bmazelf11
	++ @318 /*I doubt that would have changed their fates. Irenicus clearly cared for power more than anything.*/ GOTO _bmazelf12
	END
	
	IF ~~ THEN _bmazelf9
	SAY @319 /*Yes, well. We all know that I am not typical and a pleasure earned is a pleasure all the sweeter, I have found.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf10
	SAY @320 /*As have I. The things people do to each other in the name of love are often sickening.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf11
	SAY @321 /*You are right. I do not know the truth of their relationship and I should not speculate. Perhaps they truly were in love and Irenicus was twisted by powers outside of his control.*/
	= @322 /*Yet it is difficult to bite my tongue when their separation has caused such tragedy.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf12
	SAY @323 /*I cannot argue with that. Only a true monster could have committed the tortures that you have spoken of. He would likely have betrayed his people anyway.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf13
	SAY @324 /*But enough of this. Whatever the man's history, we must find a way to end his schemes before more people die.*/
	IF ~~ THEN DO ~SetGlobal("_bMEQT","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazelf7
	SAY @325 /*That is far too likely. Love often makes us blind and no man becomes so power-hungry overnight.*/
	+ ~Global("_BMazzyRomance","GLOBAL",2)~ + @326 /*Does that mean I can get away with anything?*/ GOTO _bmazelf14
	++ @327 /*She was the Queen. She should have known better.*/ GOTO _bmazelf15
	++ @328 /*She must have been heartbroken when she learned the truth.*/ GOTO _bmazelf16
	++ @329 /*Love or not, she should have killed him.*/ GOTO _bmazelf17
	END
	
	IF ~~ THEN _bmazelf14
	SAY @330 /*Don't be foolish, <CHARNAME>. I may love you, but I am not blind to your flaws just as I hope you see mine clearly.*/
	= @331 /*Real love means the strength to help each other stay on a better path.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf15
	SAY @332 /*She was also a woman and we should not judge too harshly despite the consequences. No one expects betrayal from the ones they care about*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf16
	SAY @333 /*I imagine that she was. If I had to guess, that is why Irenicus was not executed for his crimes. The Queen was likely hoping that his exile would bring back the man she loved.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf17
	SAY @334 /*Perhaps you are right. Exile may have seemed like mercy at the time, but that choice has cost you greatly. Not only you, but the whole region. Irenicus and Bodhi have claimed far too many lives.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf8
	SAY @335 /*I cannot argue with that. The man betrayed his people and now he seems determined to finish the job at any cost.*/
	++ @336 /*So we must finish him first.*/ GOTO _bmazelf18
	++ @337 /*Queen Ellesime should have killed him when she had a chance.*/ GOTO _bmazelf17
	++ @338 /*If he didn't have my soul, I might allow it.*/ GOTO _bmazelf19
	END
	
	IF ~~ THEN _bmazelf18
	SAY @339 /*Yes, you are right. Whatever the man's history, we must find a way to end his schemes before more people die.*/
	IF ~~ THEN DO ~SetGlobal("_bMEQT","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bmazelf19
	SAY @340 /*<CHARNAME>, you cannot mean that! Whatever Queen Ellesime's mistakes, her people do not share them. These elves are innocent.*/
	++ @341 /*I suppose you are right. But I am growing tired of being called upon to fix what strangers broke.*/ GOTO _bmazelf20
	++ @342 /*Of course, I am sorry.*/ GOTO _bmazelf20
	++ @343 /*If by innocent, you mean willing to ignore Irenicus's crimes as long as they happened somewhere else.*/ GOTO _bmazelf20
	++ @344 /*The elves set this monster loose. I feel little sympathy.*/ GOTO _bmazelf20
	END
	
	IF ~~ THEN _bmazelf20
	SAY @345 /*I understand your feelings, <CHARNAME>. It has been a long journey for us all and Irenicus has done great harm to you.*/
	= @346 /*However, it is in times like these that it is most important to hold fast to our beliefs. We cannot let our hearts be filled with bitterness and evil must be stopped, whoever set it free.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf3
	SAY @347 /*You may be right, <CHARNAME>, though I do wonder at when this happened. He was not born evil.*/
	++ @348 /*Perhaps you are right. But I believe that some people struggle more than others to stay on a righteous path.*/ GOTO _bmazelf21
	++ @349 /*Is anyone truly evil in their own mind? Irenicus would likely say that everything he has done is justified.*/ GOTO _bmazelf22
	++ @350 /*Does it matter? His actions prove him past redemption.*/ GOTO _bmazelf23
	END
	
	IF ~~ THEN _bmazelf21
	SAY @351 /*That may be true. However, that does not absolve you from your choices. If good deeds come to you naturally, then you might fight all the harder to make the world a better place.*/
	= @352 /*If you are drawn to evil, then that is your burden and you must find the strength to resist temptation. The gods do not judge your impulses; they only judge your deeds.*/
	++ @353 /*I am glad you are here to help me stay on the right track.*/ GOTO _bmazelf24
	+ ~Global("_BMazzyRomance","GLOBAL",2)~ + @354 /*Promise you will kill me before I ever fall that far.*/ GOTO _bmazelf25
	+ ~!Global("_BMazzyRomance","GLOBAL",2)~ + @354 /*Promise you will kill me before I ever fall that far.*/ GOTO _bmazelf26
	++ @355 /*You make it sound so easy.*/ GOTO _bmazelf27
	++ @356 /*You must be right or someone would have smited me by now.*/ GOTO _bmazelf28
	END
	
	IF ~~ THEN _bmazelf24
	SAY @357 /*Of course, <CHARNAME>. That is what friends are for. I would be a poor companion otherwise.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf25
	SAY @358 /*It would grieve me greatly, but I promise I will try.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf26
	SAY @359 /*I hope it never comes to that, but you have my word. I will not let you turn to evil as long as I still breathe.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf27
	SAY @360 /*That was not my intent. There is selfishness in all of us and following the moral path is a lifelong struggle.*/
	= @361 /*Yet the fight need not be painful. That is why we travel with companions to help us stay on the right course. A burden shared is a burden halved, and so we are stronger together than apart.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf28
	SAY @362 /*You are a better person than you think, <CHARNAME>, or you would not fight so hard against your heritage.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf22
	SAY @363 /*You have a point. The most wicked and vile people always seem to be as convinced of their own righteousness as those who battle for the light.*/
	++ @364 /*Indeed. So how can we be sure that we are right?*/ GOTO _bmazelf29
	++ @365 /*I know. The speeches get so damn annoying. Even Irenicus can't help but monologue.*/ GOTO _bmazelf30
	++ @366 /*That's why I don't try to justify my actions. My deeds speak for themselves.*/ GOTO _bmazelf31
	++ @367 /*Well, we'll just have to show Irenicus the error of his ways.*/ GOTO _bmazelf32
	END
	
	IF ~~ THEN _bmazelf29
	SAY @368 /*I believe the difference lies in self-awareness. The truly righteous are humble and aware that they have flaws. Their goal is not their own advancement but the continued health and happiness of others, whatever their own cost.*/
	= @369 /*In contrast, evil tends toward selfishness. To claim you fight for justice while sacrificing innocents is the worst hypocrisy.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf30
	SAY @370 /*I believe it is the nature of the wicked to need an audience. It is not enough to know that they are clever; they need the world to see it and who better to hear their plans then someone about to die?*/
	= @371 /*Of course, this is a weakness. The most dangerous killers are those who strike without warning – the ones who feel no need to convince you of their magnificence – and for all his magic, we are lucky that Irenicus is flawed.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf31
	SAY @372 /*Indeed, they do, <CHARNAME>. And I believe the world would be a better place if more followed your example.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf32
	SAY @373 /*That we shall. With Arvoreen behind us, one more evil-doer will be brought down to size.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf23
	SAY @374 /*I cannot argue that. He has caused too much pain to deserve another chance. But if we knew what made the man so twisted, perhaps we could stop others from walking the same path.*/
	++ @375 /*He stole my soul. I'm gonna kill him. That's all I care about.*/ GOTO _bmazelf33
	+ ~Global("_BMazzyRomance","GLOBAL",2)~ + @376 /*This is why I love you, Mazzy. You're always trying to make the world a better place.*/ GOTO _bmazelf34
	++ @377 /*Maybe we can ask him before he dies.*/ GOTO _bmazelf35
	++ @378 /*You are too optimistic. Evil is evil, nothing more.*/ GOTO _bmazelf36
	END
	
	IF ~~ THEN _bmazelf33
	SAY @379 /**sigh* That is one way to look at it. And I suppose I cannot blame you.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf34
	SAY @380 /*I am not the only one, <CHARNAME>. That is why I love you back.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf35
	SAY @381 /*I do not know if we will have time amidst the heat of battle. However, if we get the opportunity, I would appreciate the chance.*/
	= @382 /*If not, perhaps Queen Ellesime will have more insights she can share. I would like to understand.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf36
	SAY @383 /*I am surprised to hear you say that considering your struggle against Bhaal's heritage. If you thought the fight was hopeless, you would not continue resisting as you do.*/
	= @384 /*Please let me know how I can help you. That is what friends are for and I would not see you falter while I may still offer aid.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf4
	SAY @385 /*You may be right. But that only makes this situation a greater tragedy. Instead of focusing on their losses, people should remember what they had instead.*/
	++ @386 /*Irenicus remembers. I think that is the problem.*/ GOTO _bmazelf37
	++ @387 /*I'm pretty sure this is just an epic breakup fight.*/ GOTO _bmazelf38
	++ @388 /*So we should not mourn our fallen?*/ GOTO _bmazelf39
	+ ~Global("_BMazzyRomance","GLOBAL",2)~ + @389 /*Will you not grieve if I am slain?*/ GOTO _bmazelf40
	END
	
	IF ~~ THEN _bmazelf37
	SAY @390 /*Only because the man has let that loss consume him. If he had accepted his exile instead of trying to reclaim his former status, none of this would have happened.*/
	++ @391 /*That is sensible advice. But I think Irenicus is long past being sensible.*/ GOTO _bmazelf41
	++ @392 /*Can you really imagine it? Jon Irenicus, the Athkatlan shopkeeper?*/ GOTO _bmazelf42
	++ @393 /*Perhaps. But his love turned to obsession and there was no going back.*/ EXTERN PLAYER1 _bmazelf43
	END
	
	IF ~~ THEN _bmazelf41
	SAY @394 /*Yes, I suppose you are right. Of course, I have found that common sense is far more rare than you might think. People seem to enjoy making themselves miserable.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf42
	SAY @395 /*No, I admit that is difficult. But there are plenty of strange wizards researching in distant towers. He could have joined those ranks instead.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf44
	SAY @398 /*That is terrible. Love should never grow so twisted and that poor soul, doomed to be nothing but a shadow of the past.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf38
	SAY @399 /*One that has grown to threaten a whole nation. I have often thought that other races take these matters far too seriously. Sex is not possession and love should not beget such jealousy.*/
	+ ~Global("_BMazzyRomance","GLOBAL",2)~ + @315 /*Really? You required quite a courtship before I could tumble you.*/ GOTO _bmazelf45
	++ @316 /*You are probably right. I have seen jealousy lead to terrible atrocities.*/ GOTO _bmazelf10
	++ @400 /*It would have saved a lot of trouble if they'd just talked it out.*/ GOTO _bmazelf46
	+ ~Global("_BMazzyRomance","GLOBAL",2)~ + @401 /*Promise me that if we break up, you won't try to murder me,*/ GOTO _bmazelf47
	END
	
	IF ~~ THEN _bmazelf45
	SAY @402 /*Yes, well. I have found that a pleasure earned is a pleasure all the sweeter. That is not the same as jealousy.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf46
	SAY @403 /*That is true. Though I think the time for talking passed many years ago. Irenicus has become a rabid creature that needs to be put down.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf47
	SAY @404 /*Of course, <CHARNAME>. You hardly need to ask. I only murder people who are committing evil deeds.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf39
	SAY @405 /*That is not what I said. I grieved for my Patrick dearly and I still regret his death. But life goes on and we must allow ourselves the freedom to enjoy it.*/
	= @406 /*I will never forget those that I have lost, but focusing on the good times instead of the bad gives me the strength to carry on.*/
	++ @407 /*When I am happy, I cannot help but feel that my dead are judging me.*/ GOTO _bmazelf48
	++ @408 /*You are right, Mazzy. I would not be the same without the scars.*/ GOTO _bmazelf49
	++ @409 /*That is good advice, but hard to follow.*/ GOTO _bmazelf50
	END
	
	IF ~~ THEN _bmazelf48
	SAY @410 /*If they truly loved you, they would not wish you to grieve forever. Try not to feel guilty for surviving when your friends did not.*/
	= @411 /*That has been difficult for me, particularly after the Shade Lord killed all my companions. But your friendship has helped greatly and I hope you feel the same.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf49
	SAY @412 /*None of us would be the same. It is both our sorrows and our triumphs that shape the lives we lead.*/
	IF ~~ THEN GOTO _bmazelf13
	END

	IF ~~ THEN _bmazelf50	
	SAY @413 /*Many things that are good are not easy. But I have found that sharing these memories with friends often makes it easier. If you ever wish to talk, I will be here.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf40
	SAY @414 /*Of course I will grieve, <CHARNAME>. I will grieve, I will avenge your death, and I will miss you terribly. But I will not stop living once you're gone.*/
	= @415 /*I will remember the joy you brought me, your smile, your touch, your skill in battle, and I will carry these memories in my heart to help ward off the pain.*/
	++ @416 /*And if you fall, I promise that I will do the same.*/ GOTO _bmazelf51
	++ @417 /*I guess you have a point. But I often find it difficult to be that logical.*/ GOTO _bmazelf52
	++ @418 /*I'm a little insulted that you wouldn't end your life for me.*/ GOTO _bmazelf53
	END
	
	IF ~~ THEN _bmazelf51	
	SAY @419 /*Thank you. I could ask no more than that.*/
	IF ~~ THEN GOTO _bmazelf13
	END	
	
	IF ~~ THEN _bmazelf52
	SAY @420 /*That is why we should talk about these things before they happen*/
	= @421 /*Grieving will take time and I do not wish to rush you. But I give you my permission to move on afterwards.*/
	IF ~~ THEN GOTO _bmazelf13
	END	
	
	IF ~~ THEN _bmazelf53
	SAY @422 /*I am not that sort of person, <CHARNAME>, as you well know. If you wanted a weeping damsel, you should have fallen for someone else.*/
	++ @423 /*You're right. Maybe I should.*/ GOTO _bmazelf54
	++ @424 /*I suppose I cannot argue with that.*/ GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf54
	SAY @425 /*You cannot be serious. I only spoke the truth.*/
	++ @426 /*Sometimes the truth hurts. Just give me a little time.*/ GOTO _bmazelf55
	++ @427 /*I can't be in a relationship with someone who would dismiss my memory.*/ GOTO _bmazelf56
	END
	
	IF ~~ THEN _bmazelf55
	SAY @428 /*Of course. Take all the time you need.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf56
	SAY @429 /*You clearly were not listening, so I will not try to change your mind. As you wish, we are finished, though I remain your friend and companion anyway.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyRomance","GLOBAL",3)~ GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf5
	SAY @430 /*That is different. If we part in the future, we shall do so amicably. Irenicus betrayed Ellesime before she ever cast him out.*/
	++ @431 /*No, I meant that I want you at my side forever. No matter what the cost.*/ GOTO _bmazelf57
	++ @432 /*And if I betrayed you, would you do you the same?*/ GOTO _bmazelf58
	++ @433 /*You are right. Irenicus and I are not the same.*/ GOTO _bmazelf59
	END
	
	IF ~~ THEN _bmazelf57
	SAY @434 /*I fear for you when you talk that way, <CHARNAME>. We all must die sometime.*/
	++ @435 /*Maybe, maybe not. There are spells against such things.*/ GOTO _bmazelf60
	++ @436 /*Then we shall die old together.*/ GOTO _bmazelf61
	++ @437 /*You are right. I'm just afraid of being hurt again.*/ GOTO _bmazelf62
	++ @438 /*Hah! No one can stand against us!*/ GOTO _bmazelf63
	END
	
	IF ~~ THEN _bmazelf60
	SAY @439 /*Such magic comes at a price that I will not let you pay. Put such thoughts out of your mind and enjoy our time together while it lasts.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf61
	SAY @440 /*I pray that you are right. It seems far more likely that we will die young instead.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf62
	SAY @441 /*As am I. There is no shame in fear as long as we keep going anyway. We should not let the thought of sorrow in the future keep us from joy today.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf63
	SAY @442 /*You should not be so arrogant. Pride in your skills is one thing, but arrogance can lead to recklessness. I do not wish to lose you early due to some mistake.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf58
	SAY @443 /*I hope it never comes to that. But should you ever become as evil as Irenicus, I would do you the honour of slaying you myself.*/
	++ @444 /*Thanks, I think.*/ GOTO _bmazelf64
	++ @445 /*Good. That is what I wished to hear.*/ GOTO _bmazelf65
	++ @446 /*Okay, yeah. That's not gonna work for me.*/ GOTO _bmazelf66
	END
	
	IF ~~ THEN _bmazelf64
	SAY @447 /*You should not ask the question, <CHARNAME>, if you do not wish to hear the answer.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf65
	SAY @448 /*You do not need to ask such questions. You are better than you think. But you may trust that I will hold you accountable for your actions if you find that knowledge comforting.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf66
	SAY @449 /*What do you mean, <CHARNAME>? I only spoke the truth.*/
	++ @426 /*Sometimes the truth hurts. Just give me a little time.*/ GOTO _bmazelf55
	++ @450 /*I cannot be in a relationship with someone who might attack me.*/ GOTO _bmazelf67
	END
	
	IF ~~ THEN _bmazelf67
	SAY @451 /*You are the one who asked, <CHARNAME>, and I would only attack you under dire circumstance. But I suppose I understand.*/
	= @452 /*As you wish, we are finished, though I will remain your friend and companion all the same.*/
	IF ~~ THEN DO ~SetGlobal("_BMazzyRomance","GLOBAL",3)~ GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf59
	SAY @453 /*Of course I am right. I would not love you as I do otherwise.*/
	= @454 /*This relationship may cause us pain in the future. That is the way of life. We may fight or breakup or die along the way. But I know that you will never betray me willingly. I trust you and that is why I could give you my heart. I knew you would take care of it.*/
	++ @455 /*Really? And here I thought it was my awesome courtship.*/ GOTO _bmazelf68
	++ @456 /*I trust you too, Mazzy.*/ GOTO _bmazelf69
	++ @457 /*I hope there is more joy than pain.*/ GOTO _bmazelf70
	++ @458 /*I will do my best.*/ GOTO _bmazelf71
	END
	
	IF ~~ THEN _bmazelf68
	SAY @459 /*That certainly helped, <CHARNAME>. You proved your love most valiantly.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf69
	SAY @460 /*And I am glad to hear that. A relationship should always be balanced in this way.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf70
	SAY @461 /*As do we all, <CHARNAME>. But I accept the thorns because the rose is beautiful. You have brought me great happiness already and I will always cherish the memories we've made.*/
	IF ~~ THEN GOTO _bmazelf13
	END
	
	IF ~~ THEN _bmazelf71
	SAY @462 /*I know, my love, and you are doing well so far. I promise, I am not the sort to hold my pain inside. If you hurt me, you will know it, but the fact that you worry is always a good sign.*/
	IF ~~ THEN GOTO _bmazelf13
	END
END
		
	
APPEND PLAYER1 IF ~~ THEN _bmazelf43
	SAY @396 /*We found a room in his dungeon during our escape. He built it for his beloved and though his servants did not name her, I recognize the style now.*/
	= @397 /*There was a... a copy there, a strange and broken creature. I believe that Irenicus was trying to replace Ellesime and every failure only made him more insane.*/
	IF ~~ THEN EXTERN MAZZYJ _bmazelf44
	END
END 
	
//Friendship Fix Talk
APPEND MAZZYJ IF WEIGHT #-1 ~Global("_bMazzyForgivesExtra","GLOBAL",2) Global("_BMazzyFriendship","GLOBAL",3) Global("_bMazzyForgives","GLOBAL",0) OR(5) !Global("_bMazzyRomance","GLOBAL",3) Global("_bCNNoPromise","GLOBAL",1) Global("_bCNMarriage","GLOBAL",1) Global("_bCNNoSex","GLOBAL",1) !Global("_bCNBalks","GLOBAL",0)~ THEN _bmazfix1
SAY @463 /*I thought we were friends, <CHARNAME>, but you have not treated me as such. From now on, I shall consider us nothing more than travelling companions.*/
	++ @464 /*I am sorry. Please give me a second chance.*/ GOTO _bmazfix3
	++ @465 /*It was a mistake. I spoke in anger and it will not happen again.*/ GOTO _bmazfix3
	++ @466 /*As you wish.*/ DO ~SetGlobal("_bCNNoFix","GLOBAL",1)~ EXIT
	++ @467 /*I did not want your friendship anyway.*/ DO ~SetGlobal("_bCNNoFix","GLOBAL",1)~ EXIT
	END
	
	IF WEIGHT #-1 ~Global("_BMazzyFriendship","GLOBAL",3) Global("_bMazzyForgives","GLOBAL",1)~ THEN _bmazfix2
	SAY @468 /*You told me you would change, <CHARNAME>, and you have not. Therefore, we are friends no longer and I will not change my mind.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyForgives","GLOBAL",2)~ EXIT
	END
	
	IF ~~ THEN _bmazfix3
	SAY @469 /*All right, <CHARNAME>. You may have one more chance. Do not waste it.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyForgives","GLOBAL",1) SetGlobal("_BMazzyFriendship","GLOBAL",1)~ EXIT 
	END
	
	IF WEIGHT #-1 ~Global("_BMazzyFriendship","GLOBAL",3) Global("_bMazzyForgives","GLOBAL",0) Global("_bMazzyRomance","GLOBAL",3) !Global("_bCNNoPromise","GLOBAL",1) !Global("_bCNMarriage","GLOBAL",1) !Global("_bCNNoSex","GLOBAL",1) Global("_bCNBalks","GLOBAL",0)~ THEN _bmazfix4
	SAY @470 /*I would not treat my friends as you have treated me, <CHARNAME>, let alone a lover. I am ending things between us.*/
	++ @464 /*I am sorry. Please give me a second chance.*/ GOTO _bmazfix5
	++ @465 /*It was a mistake. I spoke in anger and it will not happen again.*/ GOTO _bmazfix5
	++ @466 /*As you wish.*/ DO ~SetGlobal("_bCNNoFix","GLOBAL",1)~ EXIT
	++ @471 /*Fine. I was finished with you anyway.*/ DO ~SetGlobal("_bCNNoFix","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bmazfix5
	SAY @469 /*All right, <CHARNAME>. You may have one more chance. Do not waste it.*/
	IF ~Global("_bMazzyCourted","GLOBAL",6)~ THEN DO ~SetGlobal("_bMazzyForgives","GLOBAL",1) SetGlobal("_BMazzyFriendship","GLOBAL",1) SetGlobal("_bMazzyRomance","GLOBAL",2)~ EXIT
	IF ~GlobalLT("_bMazzyCourted","GLOBAL",6)~ THEN DO ~SetGlobal("_bMazzyForgives","GLOBAL",1) SetGlobal("_BMazzyFriendship","GLOBAL",1) SetGlobal("_bMazzyRomance","GLOBAL",1)~ EXIT 
	END
END


//To check that Mazzy said her first slayer change line
ADD_TRANS_ACTION MAZZYJ BEGIN 196 END BEGIN END ~SetGlobal("_bMTFSC","GLOBAL",1)~

//If that happened, then this Slayer talk
CHAIN IF WEIGHT #-1 ~Global("_bMTFSC","GLOBAL",1) Global("_bMazSlayer","GLOBAL",2)~ THEN MAZZYJ _bMazzySlayer
@472 /*<CHARNAME>, I feel I must apologize for my outburst earlier. Although I was startled by your transformation into Bhaal's avatar and I do believe such power comes from evil, I should have been more supportive.*/
= @513 /*You have not lost yourself completely. You can still fight against Bhaal's power and I will be here to assist you until your soul has been reclaimed. You need your friends around you more than ever in dark times such as these.*/
DO ~SetGlobal("_bMazSlayer","GLOBAL",3)~
END
	++ @473 /*Thank you, Mazzy. I must admit I'm worried about what this change might mean.*/ + _bMazzySlayer1
	++ @474 /*Are you kidding? I've never felt such a rush.*/ + _bMazzySlayer2
	++ @475 /*You should try to be less judgmental. It's not like I asked for this.*/ + _bMazzySlayer3
	++ @476 /*You would probably be safer staying far away from me.*/ + _bMazzySlayer4
	
//If she didn't talk, this conversation
CHAIN IF WEIGHT #-1 ~Global("_bMTFSC","GLOBAL",0) Global("_bMazSlayer","GLOBAL",2)~ THEN MAZZYJ _bMazzySlayerAlt
@514 /*<CHARNAME>, that transformation earlier – I believe you became an avatar of Bhaal, did you not? Without your soul, your father's taint is rushing in to fill the void.*/
= @515 /*I know that I should strike you down before you lose yourself completely, but I have been thinking on the matter and I believe this is a fight we can still win. I would be a poor knight if I abandoned a friend in dire need.*/
DO ~SetGlobal("_bMazSlayer","GLOBAL",3)~
END
	++ @473 /*Thank you, Mazzy. I must admit I'm worried about what this change might mean.*/ + _bMazzySlayer1
	++ @474 /*Are you kidding? I've never felt such a rush.*/ + _bMazzySlayer2
	++ @475 /*You should try to be less judgmental. It's not like I asked for this.*/ + _bMazzySlayer3
	++ @476 /*You would probably be safer staying far away from me.*/ + _bMazzySlayer4
	

CHAIN MAZZYJ _bMazzySlayer1	
@477 /*That is understandable. The loss of your soul was a terrible blow but that doesn't mean you should surrender to Bhaal's corruption without a fight.*/
= @478 /*I am here and I will help you resist your heritage.*/
END
	++ @479 /*I hope that will be enough.*/ + _bMazzySlayer5
	++ @480 /*I'm lucky to have a friend like you.*/ + _bMazzySlayer6
	++ @481 /*Yeah, resist it. That's what I want to do.*/ + _bMazzySlayer7
	++ @482 /*I don't fear Bhaal's evil. I fear the loss of my control.*/ + _bMazzySlayer8
	
CHAIN MAZZYJ _bMazzySlayer5
@483 /*As do I, my friend. As do I.*/
EXIT
	
CHAIN MAZZYJ _bMazzySlayer6
@484 /*I am the lucky one. We will face this challenge together as we have faced all the rest.*/
EXIT

CHAIN MAZZYJ _bMazzySlayer7
@485 /*I am glad to hear it. I do not wish to see you stray from the righteous path.*/
EXIT	

CHAIN MAZZYJ _bMazzySlayer8
@486 /*That is understandable. I fear such things as well. But I swear that I will stop you from doing something you'd regret.*/
EXIT	

CHAIN MAZZYJ _bMazzySlayer2
@487 /*You should not speak like that, <CHARNAME>. Bhaal's power is a lie seducing you towards evil.*/
= @488 /*You must resist temptation. You must fight all the harder now that you've lost your soul.*/
END
	++ @489 /*You are right as usual, Mazzy. I will do my best.*/ + _bMazzySlayer9
	++ @490 /*I'll try, but I'm not sure I'll succeed.*/ + _bMazzySlayer10
	++ @491 /*I don't know, giving in sounds so much easier.*/ + _bMazzySlayer11
	++ @492 /*With power like that, I'm better off saying yes.*/ + _bMazzySlayer12
	
CHAIN MAZZYJ _bMazzySlayer9
@493 /*Your best must be enough. I do not wish to think about any other outcome.*/
EXIT
	
CHAIN MAZZYJ _bMazzySlayer10
@494 /*I will help you. I will keep you on the righteous path until we restore your soul.*/
EXIT

CHAIN MAZZYJ _bMazzySlayer11
@495 /*The easy choice is rarely the right one. You should remember that.*/
EXIT	

CHAIN MAZZYJ _bMazzySlayer12
@496 /*Then this will be your warning. If you give into Bhaal's essence, I will be forced to strike you down and I do not wish to do that to a friend.*/
EXIT

CHAIN MAZZYJ _bMazzySlayer3
@497 /*You are right. It is unfair of me to judge you for your heritage when I have struggled to make the world look past my own.*/
= @498 /*What's important is your actions, not your blood. As long as you remain my friend, I shall be yours in turn.*/
END
	++ @499 /*Thank you, Mazzy. That helps more than you know.*/ + _bMazzySlayer13
	++ @500 /*Glad to hear it. I can't afford to throw away any allies now.*/ + _bMazzySlayer14
	++ @501 /*Yeah, you're a bit of a hypocrite. But I like you anyway.*/ + _bMazzySlayer15
	
CHAIN MAZZYJ _bMazzySlayer13
@502 /*You are welcome. Thank you for reminding me that all of us are flawed. It is the struggle to be better that defines a person's life.*/
EXIT
	
CHAIN MAZZYJ _bMazzySlayer14
@503 /*I hope I am more than just your ally, <CHARNAME>, after all that we've been through.*/
EXIT

CHAIN MAZZYJ _bMazzySlayer15
@504 /*I like you too, <CHARNAME>. And I am trying. If you help me keep my temper, I will help guide you through the darkness.*/
EXIT	

CHAIN MAZZYJ _bMazzySlayer4
@505 /*Perhaps. But I did not join your company to seek a safer life. I am prepared for danger and I would be a poor friend if I left you to face Irenicus alone.*/
= @506 /*After all, you saved me from the Shade Lord when I thought all hope was lost. It is only fair that I should help you fight your enemies.*/
END
	++ @507 /*I didn't help you so you'd owe me.*/ + _bMazzySlayer16
	++ @508 /*I think this is a little different. You might be fighting me instead.*/ + _bMazzySlayer17
	++ @509 /*I just don't want to hurt you.*/ + _bMazzySlayer18
	
CHAIN MAZZYJ _bMazzySlayer16
@510 /*I know, <CHARNAME>, and I do not stay to pay a debt. You have earned my loyalty.*/
EXIT
	
CHAIN MAZZYJ _bMazzySlayer17
@511 /*You are stronger than you think and if need be, I promise that I will tie you up and sit on you until you regain control.*/
EXIT

CHAIN MAZZYJ _bMazzySlayer18
@512 /*You are sweet, <CHARNAME>, but I am not some helpless damsel in distress. I will defend myself if necessary. You have my word on that.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bMazzySTQuestFriend ","GLOBAL",1)~ THEN MAZZYJ _bMazzyShadowThiefRomancelessQuest1
	@5130 /*<CHARNAME>, we have become mighty powers in our own right, and I have something I would ask of you.*/
		DO ~SetGlobal("_bMazzySTQuestFriend","GLOBAL",2)~
	= @5140 /*With the vampire guild destroyed, there is nothing stopping the Shadow Thieves from taking over the city.*/
== MAZZYJ IF ~!Dead("aran")~ THEN @5150 /*Aran acts noble, but he views people as pawns and destroys them without compassion or mercy. His minions move through the city killing anyone who opposes them.*/
== MAZZYJ IF ~!Dead("MaeVar")~ THEN @516 /*Mae'Var is a brutal sadist of the worst sort. He inflicts pain and death for his own amusement and his lackeys are of a similar nature.*/
== MAZZYJ @517 /*We cannot leave the innocent citizens of Athkatla at their mercy.*/
END 
	+ ~GlobalGT("ThiefGroup","GLOBAL",0)~ + @518 /*The Shadow Thieves helped us save Imoen. We owe them.*/ GOTO _bMazzyShadowThiefRomancelessQuest2
	++ @519 /*So what do you want to do about it?*/ GOTO _bMazzyShadowThiefRomancelessQuest3
	+ ~Global("PlayerThiefGuild","GLOBAL",1)~ + @520 /*Do you count me as evil too? I agreed to work for the Shadow Thieves when I took over my guild.*/ GOTO _bMazzyShadowThiefRomancelessQuest4
	++ @521 /*This sounds like a problem for the Athkatlan government. Let them do it.*/ GOTO _bMazzyShadowThiefRomancelessQuest5
	+ ~GlobalGT("ShadowFightBodhi","GLOBAL",0)~ + @522 /*The Shadow Thieves helped us defeat Bodhi. We cannot turn on them now.*/ GOTO _bMazzyShadowThiefRomancelessQuest6
	++ @526 /*No, I'm not interested.*/ GOTO _bMazzyShadowThiefRomancelessQuest8

APPEND MAZZYJ IF ~~ THEN _bMazzyShadowThiefRomancelessQuest2
	SAY @523 /*We paid them for transportation, which they provided. That debt is settled.*/ 
	IF ~~ THEN GOTO _bMazzyShadowThiefRomancelessQuest7
	END 

IF ~~ THEN _bMazzyShadowThiefRomancelessQuest3
	SAY @524 /*I wish to get official permission from the government of Athkatla to arrest the leaders of the Shadow Thieves and use force if they resist. We should talk to Secretary Ewenn at the Council of Six building in the Government district.*/
	++ @525 /*Let's go then!*/ DO ~SetGlobal("_bMazzySTQuestFriend","GLOBAL",3) AddJournalEntry (@52601,QUEST)~ EXIT
		/*Title: @52600 Killing the Shadow Thieves

Mazzy wishes our group to take down the Shadow Thieves and I have agreed. I must speak to Council Secretary Ewenn in the Council of Six Building to get approval.*/
	+ ~GlobalGT("ThiefGroup","GLOBAL",0)~ + @518 /*The Shadow Thieves helped us save Imoen. We owe them.*/ GOTO _bMazzyShadowThiefRomancelessQuest2
	+ ~Global("PlayerThiefGuild","GLOBAL",1)~ + @520 /*Do you count me as evil too? I agreed to work for the Shadow Thieves when I took over my guild.*/ GOTO _bMazzyShadowThiefRomancelessQuest4
	++ @521 /*This sounds like a problem for the Athkatla government. Let them do it.*/ GOTO _bMazzyShadowThiefRomancelessQuest5
	+ ~GlobalGT("ShadowFightBodhi","GLOBAL",0)~ + @522 /*The Shadow Thieves helped us defeat Bodhi. We cannot turn on them now.*/ GOTO _bMazzyShadowThiefRomancelessQuest6
	++ @526 /*No, I'm not interested.*/ GOTO _bMazzyShadowThiefRomancelessQuest8
	END 

IF ~~ THEN _bMazzyShadowThiefRomancelessQuest7
	SAY @527 /*If we do not destroy the Shadow Thieves now, many more innocents will die!*/
	+ ~GlobalGT("ThiefGroup","GLOBAL",0)~ + @518 /*The Shadow Thieves helped us save Imoen. We owe them.*/ GOTO _bMazzyShadowThiefRomancelessQuest2
	++ @519 /*So what do you want to do about it?*/ GOTO _bMazzyShadowThiefRomancelessQuest3
	+ ~Global("PlayerThiefGuild","GLOBAL",1)~ + @520 /*Do you count me as evil too? I agreed to work for the Shadow Thieves when I took over my guild.*/ GOTO _bMazzyShadowThiefRomancelessQuest4
	++ @521 /*This sounds like a problem for the Athkatlan government. Let them do it.*/ GOTO _bMazzyShadowThiefRomancelessQuest5
	+ ~GlobalGT("ShadowFightBodhi","GLOBAL",0)~ + @522 /*The Shadow Thieves helped us defeat Bodhi. We cannot turn on them now.*/ GOTO _bMazzyShadowThiefRomancelessQuest6
	++ @526 /*No, I'm not interested.*/ GOTO _bMazzyShadowThiefRomancelessQuest8
	END 
	
IF ~~ THEN _bMazzyShadowThiefRomancelessQuest4
	SAY @528 /*I thought that was simply a ruse to learn their weaknesses. You are not really a Shadow Thief, are you? Will you truly stay with them and aid their villainy?*/
	++ @529 /*When you put it like that? I'll help you. What do you want to do?*/ GOTO _bMazzyShadowThiefRomancelessQuest3
	++ @530 /*In a choice of you or them, I suppose I must pick you. What is our next step?*/ GOTO _bMazzyShadowThiefRomancelessQuest3
	++ @531 /*I am sorry, Mazzy. But I will not turn against my own.*/ GOTO _bMazzyShadowThiefRomancelessQuest8
	++ @532 /*I am not just with them, I command them. It took a lot of work to whip my own guild into shape.*/ GOTO _bMazzyShadowThiefRomancelessQuest8
	END

IF ~~ THEN _bMazzyShadowThiefRomancelessQuest5
	SAY @533 /*The Shadow Thieves have firmly infiltrated the Athkatlan government at the highest levels. However, there are also those who want to see the Thieves destroyed.*/
	IF ~~ THEN GOTO _bMazzyShadowThiefRomancelessQuest3
	END 

IF ~~ THEN _bMazzyShadowThiefRomancelessQuest6
	SAY @534 /*Aran knew that only we could defeat Bodhi, so he ordered his thieves to aid us. With our help, he removed the only obstacle between him and total domination of Athkatla. We cannot allow that to occur!*/
	+ ~GlobalGT("ThiefGroup","GLOBAL",0)~ + @518 /*The Shadow Thieves helped us save Imoen. We owe them.*/ GOTO _bMazzyShadowThiefRomancelessQuest2
	++ @519 /*So what do you want to do about it?*/ GOTO _bMazzyShadowThiefRomancelessQuest3
	+ ~Global("PlayerThiefGuild","GLOBAL",1)~ + @520 /*Do you count me as evil too? I agreed to work for the Shadow Thieves when I took over my guild.*/ GOTO _bMazzyShadowThiefRomancelessQuest4
	++ @521 /*This sounds like a problem for the Athkatlan government. Let them do it.*/ GOTO _bMazzyShadowThiefRomancelessQuest5
	++ @526 /*No, I'm not interested.*/ GOTO _bMazzyShadowThiefRomancelessQuest8
	END 

IF ~~ THEN _bMazzyShadowThiefRomancelessQuest8
	SAY @535 /*I am disappointed by your decision, but I accept it. I will help you retrieve your soul, but once our time together has finished, I will return and destroy the Shadow Thieves myself!*/
	IF ~~ THEN EXIT
	END
END

//When you talk to Secretary Ewenn
APPEND COUNSEC IF WEIGHT #-10 ~Global("_bMazzySTQuestFriend","GLOBAL",3) IfValidForPartyDialogue("Mazzy")~ THEN _bMazzySTQuestEwennPermission0
	SAY @536 /*And how may I help you? Please be advised that the Council is not currently in session and we secretaries do not accept petitions, requests, appeals, or bribes from random citizens.*/
	++ @537 /*Actually, we are here to help with your Shadow Thief problem.*/ GOTO _bMazzySTQuestEwennPermission1
	++ @538 /*Nothing right now.*/ EXIT
	END
	
	IF ~~ THEN _bMazzySTQuestEwennPermission1
	SAY @539 /*Oh excellent, the government of Athkatla and this office are committed to doing everything in our power to defeat the Shadow Thieves and we welcome your assistance. How do you propose to aid us?*/
	++ @540 /*We want to lead an attack on their headquarters. Can you spare any guards to help?*/ GOTO _bMazzySTQuestEwennPermission2
	++ @541 /*We're going to kill every last one of them! Can you spare any assistance?*/ GOTO _bMazzySTQuestEwennPermission2
	++ @542 /*Actually I misspoke. Let's talk about this another time.*/ EXIT
	END
	
	IF ~~ THEN _bMazzySTQuestEwennPermission2
	SAY @543 /*We regret to inform you that all of our men are currently engaged in a fruitful and important containment operation and cannot be spared for the attack itself. But we can officially designate you as guards of the City of Athkatla and then assign you to this mission.*/
	= @544 /*You are charged with arresting and bringing to justice the leaders of the Shadow Thieves in Athkatla. Lethal force is approved if they do not come willingly. Once the leaders are dead, the rest should scatter before our guards.*/
	++ @545 /*Um...thanks. Do we get a salary or equipment?*/ GOTO _bMazzySTQuestEwennPermission3
	++ @546 /*Awesome. I've always wanted to be a guard. What kind of perks does that include?*/ GOTO _bMazzySTQuestEwennPermission3
	++ @547 /*Haha! Fear me evil-doers! We are coming for you now!*/ GOTO _bMazzySTQuestEwennPermissionLast
	END
	
	IF ~~ THEN _bMazzySTQuestEwennPermission3
	SAY @548 /*We grant you the right to whatever you acquire in the course of your regular duties. As for equipment, we promise you the use of all weapons, armor, and items that you currently possess.*/
	++ @549 /*So... nothing then. Is there at least a reward?*/ GOTO _bMazzySTQuestEwennPermission4
	++ @550 /*Seriously? And I thought the leaders of Baldur's Gate were cheap. Surely we'll get something for taking out the Shadow Thieves?*/ GOTO _bMazzySTQuestEwennPermission4
	++ @551 /*You're lucky I have other reasons for wanting to do this. Normally I'd require a few hundred gold to do your dirty work. Any chance of that?*/ GOTO _bMazzySTQuestEwennPermission4
	END
END 

CHAIN COUNSEC _bMazzySTQuestEwennPermission4
	@552/*Of course! We promise you whatever wealth and items you acquire from the Shadow Thieves. Everything in their compound is believed to be stolen and is thus the rightful property of the government; we offer it to you as payment for your services. Furthermore, we promise that you will be able to keep your official weapons, armor, and equipment once your mission is complete.*/
== MAZZYJ @553 /*So you grant us what we already possess, promise us a reward that you cannot deliver without our help, and order us to complete this mission we are already volunteering to do, without any additional aid whatsoever? You are a cheap and mean creature!*/
== COUNSEC @554 /*You came to us, halfling, and my cheapness and meanness are highly valued by my superiors; indeed they are largely responsible for my present position and promise of future promotion. You are heroes, so go be heroic. Virtue is its own reward.*/
END
	++ @555 /*Whatever. I'm doing this for Mazzy.*/ GOTO _bMazzySTQuestEwennPermissionLast
	++ @556 /*Yes, it is.*/ GOTO _bMazzySTQuestEwennPermissionLast
	++ @557 /*If you say so. I prefer gold myself.*/ GOTO _bMazzySTQuestEwennPermissionLast
	
CHAIN COUNSEC _bMazzySTQuestEwennPermissionLast
	@558 /*Excellent. There is just one more thing. The Shadow Thieves have many spies, including several in this building, so you are unlikely to catch them by surprise. But please do return if you survive since we would like to offer you our official congratulations. You do not need to bring anything as proof; my informants will tell me if you have succeeded.*/
	DO ~SetGlobal("_bMazzySTQuestFriend","GLOBAL",4) SetGlobal("_BFightThieves","GLOBAL",1) AddJournalEntry (@559,QUEST)~ 
	/*Killing the Shadow Thieves - Permission Granted

Council Secretary Ewenn has granted us permission to take on the Shadow Thieves, though the government of Athkatla offers us no help. We are on our own, but we have faced worse enemies and triumphed. While I hoped to capture the thieves without bloodshed, that is no longer possible; we must wipe out the leaders of the Shadow Thieves, all those who still survive.*/
EXIT

//Final talk. Global set in _bmazzygoodevil.baf
CHAIN IF WEIGHT #-10 ~Global("_bMazzySTQuestFriend","GLOBAL",5) Dead("aran") Dead("MaeVar")~ THEN COUNSEC _bMazzySTQuestRomancelessSuccess
	@560 /*You succeeded then? I must say that I'm surprised but I suppose you are a credit to the guard. As promised, you have our thanks and our permission to keep the items that you already possess.*/
END 
	++ @561 /*Thanks, I guess.*/ DO ~SetGlobal("_bMazzySTQuestFriend","GLOBAL",6) ReputationInc(1) AddJournalEntry (@562,QUEST_DONE)~ EXIT /*Killing the Shadow Thieves - A City Freed

As expected, we received little thanks from the Secretary Ewenn for wiping out the Shadow Thieves. However, I hope the city of Athkatla can now breathe easier.*/
	++ @563 /*Don't talk to me.*/ DO ~SetGlobal("_bMazzySTQuestFriend","GLOBAL",6) ReputationInc(1) AddJournalEntry (@562,QUEST_DONE)~ EXIT
	++ @564 /*It was our pleasure.*/ DO ~SetGlobal("_bMazzySTQuestFriend","GLOBAL",6) ReputationInc(1) AddJournalEntry (@562,QUEST_DONE)~ EXIT
	++ @565 /*Please let us know if you need anything more.*/ DO ~SetGlobal("_bMazzySTQuestFriend","GLOBAL",6) ReputationInc(1) AddJournalEntry (@562,QUEST_DONE)~ EXIT
