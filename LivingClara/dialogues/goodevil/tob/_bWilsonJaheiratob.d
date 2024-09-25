
//1st Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",3)~ THEN WILSO25J _bWilsonJaheiraLoveTalk1
	@0 /*Growl... [OH87168]*/
	DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",4) SetGlobal("_bWilsonJaheira","GLOBAL",1)~
== JAHEI25J @1 /*Of course you attract their attention; it is not often that a bear tramps about the city.*/
	= @2 /*If you are going to travel with us then you will have to get used to it.*/
== WILSO25J @3 /*Snuffle, grff?*/
== JAHEI25J @4 /*You're right... if you were alone, the guards probably would attack you. But when we are together, they assume you must be an animal companion.*/
== WILSO25J @5 /*Sniff sniff?*/
== JAHEI25J @6 /*Some adventurers summon animals or travel with them. These creatures aid them in battle, or carry their belongings.*/
	= @7 /*Horses are the most common, but you will see wolves or various large cats as well.*/
== WILSO25J @8 /*Gruh, growl... sniff.*/
== JAHEI25J @9 /*You remain your own master, but it is nice to travel without conflict, is it not? Let people assume what they will.*/
END
	++ @10 /*Jaheira, Wilson, if you're going to keep having these conversations, please do it far away where I can't hear you.*/ 
		DO ~SetGlobal("_bWilsonJaheira","GLOBAL",3) SetGlobal("_bWilsonJaheiraTalks","GLOBAL",1000)~ EXIT	
	++ @11 /**Say nothing. Let them speak.**/ EXIT

//2nd Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",6)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk2
	@12 /*Mmph... no... no... NO! Wha... what? What? [JAHEIR76]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",7)~
== WILSO25J @13 /*Grrf! [OH87169]*/
== JAHEI25J @14 /*I... I am sorry. I did not wish to disturb you with this. In my... my dream, we WERE under attack, in a battle we had long since won, but it was different.*/
	= @15 /*Khalid was there, and he died when he should have lived. I could do nothing.*/
== WILSO25J @16 /*Roar?*/
== JAHEI25J @17 /*Yes, he was my husband. Jon Irenicus murdered him when we were captured.*/
== WILSO25J @18 /*Snorfle, grunt, snort.*/
== JAHEI25J @19 /*"None of us can affect the past, but we each shape our tomorrows in the light of it." That is from the prophecies of Alaundo, I did not expect you to know them.*/
	= @20 /*There is more to you than meets the eye.*/
== WILSO25J @21 /*Snort.*/
== JAHEI25J @22 /*Yes, well, we should be going. I am fine now. Thank you.*/
EXIT

//3rd Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",10)~ THEN WILSO25J _bWilsonJaheiraLoveTalk3
	@23 /*Snort... grff? [OH87172]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",11)~
== JAHEI25J @24 /**sigh* It has been some time since I have traveled this far south. I recall seeing Gorion here some years ago. He seemed a bit out of place away from his books, but... [JAHEIR74]*/
== WILSO25J @25 /*Snort, mrrf?*/
== JAHEI25J @26 /*Gorion was <CHARNAME>'s foster father and a good friend of mine. He died saving <CHARNAME> from <PRO_HISHER> evil half-brother, Sarevok.*/
== WILSO25J IF ~InParty("Sarevok")~ THEN @27 /*Roar?*/
== JAHEI25J IF ~InParty("Sarevok")~ THEN @28 /*Yes, *that* Sarevok. <CHARNAME>, Khalid, and I killed him and avenged Gorion, but it seems that we were not as thorough as I thought.*/
== JAHEI25J @29 /*Hmm... it seems I cannot help speaking about the dead of late.*/
	= @30 /*Gorion used to tell me tales that could last for days, a snippet at a time. He built a history with words, so you felt like you were there.*/
== WILSO25J @31 /*Growl... roar!*/
== JAHEI25J @32 /*Your father told you stories as well?*/
== WILSO25J @33 /*Grrr, growl.*/
== JAHEI25J @34 /*Yes, Gorion was the same. When he talked, his stories became yours, and thus you took them with you.*/
== WILSO25J @35 /*Snort! Roar.*/
== JAHEI25J @36 /*I had not thought of it like that. Perhaps he does still live through those stories in a way. You are wise to see it as such.*/
EXIT

//4th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",14)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk4
	@37 /*A copper for your thoughts. You are looking rather pensive today. Doubts about your current path, perhaps? [JAHEIR77]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",15)~
== WILSO25J @38 /*Growl...roar. [OH87170]*/
== JAHEI25J @39 /*Is that your feeling? I was taught we all had choices. And yet perhaps I agree with you. I also tend to feel as though my actions are determined by forces other than myself.*/
== WILSO25J @40 /*Snort.*/
== JAHEI25J @41 /*Ah, I understand. In the forest, things are simpler. You do what you need to in order to survive and protect those closest to you. But in civilized lands, there are such complications.*/
	= @42 /*I am from the city and was pulled toward nature. You are the reverse, but we each attempt to maintain balance in our lives.*/
== WILSO25J @43 /*Growl... Grrf?*/
== JAHEI25J @44 /*A solution? A solution to what? To life? To existence? I do not think such a thing exists.*/
== WILSO25J @45 /*Snuffle. Growl.*/
== JAHEI25J @46 /*Aye, but who knows when such an end will come? We work for balance in case the final count is taken today. Live each day as if the last, just in case it is.*/
	= @47 /*"The present will pass by if you live in the past. Neither should you wait too long for the future to find you." Who said this? It was... Khalid.*/
	= @48 /*He did not dwell on things and wished I would not either. I wonder what...*/
	= @49 /*Now look, foolish things in my head. Still, talking with you always makes me feel... better.*/
EXIT

//5th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",17)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk5
	@50 /*Mmph... mmph... oh... Khal... oh... Khal— NOO! I... [JAHEIR78]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",18)~
== WILSO25J @51 /*Grrr... growl! [OH87182]*/
== JAHEI25J @52 /*What? I'm awake. Do not worry.*/
== WILSO25J @53 /*Sniff?*/
== JAHEI25J @54 /*I... I am not so bad. This one was not so cruel as the others. Khalid was in the distance, but he would not come closer, and I could not see the way to him.*/
	= @55 /*He walked with us, from a distance. He smiled that I was content. I guess... I guess I was.*/
== WILSO25J @56 /*Growl.*/
== JAHEI25J @57 /*It... it was not the whole group. Just... it was just you and I...*/
	= @58 /*Well... um... shall we be off? It is already late in the <DAYNIGHTALL>. Plenty to do.*/
EXIT

//6th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",21)~ THEN WILSO25J _bWilsonJaheiraLoveTalk6
	@59 /*Groargh? [OH87185]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",22)~
== JAHEI25J @60 /*It is good to be back in Tethyr, even under these conditions. I wish we could visit the druid forest here, but it is better that we do not.*/
== WILSO25J @61 /*Growl, growl, sniff?*/
== JAHEI25J @62 /*It certainly will, though not how you'd expect. Tethyr is one of the few places where I will cause more stir than you. They are not fond of Harpers.*/
== WILSO25J @63 /*Growl?*/
== JAHEI25J @64 /*We like to think so, but it does not always work out that way. I believe it began a century ago, with what seems a curse in retrospect.*/
	= @65 /*A royal house of Tethyr devastated by murder and death, specifically seven princesses that met their end on the same night.*/
	= @66 /*Only those that did the deed know for sure, but Harpers were rumored to have aided in the deaths. None have been welcome in Tethyr since.*/
	= @67 /*Tragic atrocities abounded, the exile of the Harpers being the least of them. I wish the tale had a happy ending, or a moral about balance, but I have yet to find one in it.*/
EXIT

//7th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",25)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk7
	@68 /*Blast! Our progress is not as it could be, I am sure. Ah, perhaps it is just me. I grow tired of these pursuits. My life was not always such. [JAHEIR80]*/
== WILSO25J @69 /*Gruh. [OH87188]*/
	DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",26)~
== JAHEI25J @70 /*Oh, I am certainly meant to be this way, but I once lived quite peacefully. Druids took me in very young, and you can only be calm when surrounded by balance.*/
== WILSO25J @71 /*Gruffle, sniff sniff.*/
== JAHEI25J @72 /*It was like that for a long time, but I always felt I should do more. Balance needed to be... encouraged. I felt I should be a more active guardian.*/
== WILSO25J @73 /*Sniff... roar?*/
== JAHEI25J @74 /*Why I left the druids to become a Harper? Maybe I tired of life among the trees.*/
	= @75 /*Is that not also why you are here? You could be living a simpler life in the woods, yet you choose to be with us and all of our accompanying complications.*/
== WILSO25J @76 /*Growl mrrf sniff.*/
== JAHEI25J @77 /*Do not worry about it; I'm just rambling on. Talking to a trusted friend helps ease the soul. I hope I do as much for you as well.*/
	= @78 /*I mean... for the good of the party.*/
EXIT

//8th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",29)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk8
	@79 /*I... This may be a bad time or not, but you asked a question of me, and I brushed it aside. I would speak of it now, if you still wish to hear. [JAHEIR81]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",30)~
== WILSO25J @80 /*Growl? [OH87186]*/
== JAHEI25J @81 /*I did, but I... it is not important enough to keep aside. I would rather such things be talked of openly. We know little of each other.*/
	= @82 /*You asked what made me seek out the Harpers. I was made aware of what had come before, and what still happened outside of the forest.*/
	= @83 /*I came to the druids after my family was slain during a king's fall. No, I am not royalty, and neither do I grieve. I do not feel their loss in such a way.*/
	= @84 /*But I was angry that a life was taken from me, even though I survived. It had happened far from the grove, but I brought the conflict with me in my heart.*/
	= @85 /*I decided that the balance needed help beyond the forest, or it would eventually fail there as well. Simple reasoning, I suppose.*/
	= @86 /*I... I don't know why I didn't wish this known. Maybe I thought such a history would be inconsequential by the standards of others such as... well... such as yourself.*/
== WILSO25J @87 /*Growl. Growl. Roar!*/
== JAHEI25J @88 /*I thank you for those words. I find myself drawing strength from you in our close quarters. It has been... a great help.*/
	= @89 /*I... I am sorry. We should continue on.*/
EXIT

//9th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",33)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk9
	@90 /*We continue on our path, and I cannot help but wonder if we walk in balance. I have a role to follow... [JAHEIR82]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",34)~
== WILSO25J @91 /*Growl, growl, growl? [OH87192]*/
== JAHEI25J @92 /*As Harper and as druid. They are complimentary, despite bards being thought of as the Harper's standard-bearers. Both seek balance over all. I... I think I have done so.*/
	= @93 /*Sometimes the proper course is hard to see; what is best overall may seem barbaric at first. You will know this when... if you deal with Harpers in the future.*/
== WILSO25J @94 /*Snort!*/
== JAHEI25J IF ~Dead("Galvarey")~ THEN @95 /*I meant *real* Harpers, naturally.*/
== JAHEI25J @96 /*The goal is what matters even if the methods are questionable. Balance in politics, balance in nature, balance in one's self—all take strong measures to maintain.*/
	= @97 /*I think... I think I am the one out of balance, not you. I think... well, I think many things. I... I need more time to consider this.*/
	= @98 /*I'm afraid you'll have to indulge my silence for a time. I... I apologize for interrupting you.*/
EXIT

//10th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",37)~ THEN WILSO25J _bWilsonJaheiraLoveTalk10
	@99 /*Growl? [OH87194]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",38)~
== JAHEI25J @100 /*I... I worry sometimes... [JAHEIR83]*/
	= @101 /*Wilson, do you worry about missing friends? About those missing or... lost? Of course you do, I don't know what prompted me to ask.*/
== WILSO25J @102 /*Sniff, snort?*/
== JAHEI25J @103 /*I'm not sure why I brought it up. I just needed to know that... the living and dead are still entwined. They grow distant, but vengeance must still come.*/
	= @104 /*I am becoming used to the aftermath of death, but I will not forget what must be avenged. There must be closure. I must do this even as I... as we... move on.*/
== WILSO25J @105 /*Snort... snort!*/
== JAHEI25J @106 /*That is good to know. Those who have passed beyond will be glad that we do not carry them in our hearts as a burden, but that we seek justice in their names.*/
	= @107 /*I... I don't brood all the time; I was just thinking of the past and what is to come. I'm trying to balance... Well, enough whining for today. Let's move on.*/
EXIT

//11th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",41)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk11
	@108 /*Ah, I do wish these scars would heal. I've a life to continue, and I do not need to be picking at old wounds. [JAHEIR84]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",42)~
== WILSO25J @109 /*Graaah. [OH87196]*/
== JAHEI25J @110 /*True enough, but I was speaking of emotional markings.*/
== WILSO25J @111 /*Gruh. Roar!*/
== JAHEI25J @112 /*Ah, I see. They are one and the same in the long run, are they not? I imagine both will heal in time, given favorable conditions to do so.*/
	= @113 /*I think we will be fine.*/
EXIT

//12th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",45)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk12
	@114 /*Hm... This is a dangerous life we seem to lead, it does seem. I wonder... if you always think it will be so? [JAHEIR85]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",46)~
== WILSO25J @115 /*Roar. [OH87199]*/
== JAHEI25J @116 /*Not at all? There must be some planning in place eventually. What happens when age begins to take you? Even I know it will happen at some point.*/
	= @117 /*Have you... given any thought to this?*/
== WILSO25J @118 /*Grraaa, growl. Roar.*/
== JAHEI25J @119 /*A fine aspiration, if not the king's choice. I know very few kings that live in peace. Equally few inspire true loyalty in their followers, or their... companions.*/
== WILSO25J @120 /*Sniff, sniff?*/
== JAHEI25J @121 /**chuckles* Yes, I know bears do not have kings. You are each your own animal and I think your world is better for it.*/
	= @122 /*I am becoming increasingly tired of spending time in civilization. I wish to walk among the trees, bathe in streams, and hunt for my daily food.*/
== WILSO25J @123 /*Roar?*/
== JAHEI25J @124 /*Yes. You would be welcome to accompany me.*/
EXIT

//13th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",49)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk13
	@125 /*So, what do you think of Tethyr so far? It is certainly not without its charms, nor its hardships lately.*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",50)~
== WILSO25J @126 /*Snuffle! [OH87201]*/
== JAHEI25J @127 /*There is as much beauty as you are able to see. The forests are grand, and the cities are tolerable in moderation. How much are you willing to seek out?*/
== WILSO25J @128 /*Growl... sniff.*/
== JAHEI25J @129 /*Then I will show you when we have the time. I will take you through the deepest lands, and you will see the beauty that I know is there.*/
	= @130 /*That is, if you have not tired of my company yet.*/
== WILSO25J @131 /*Whine. Growl.*/
== JAHEI25J @132 /*W... well. I would... I would miss your company too, Wilson.*/
	= @133 /**cough* We should be moving on. Enough of this idle musing.*/
EXIT

//14th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",53)~ THEN WILSO25J _bWilsonJaheiraLoveTalk14
	@134 /*Roar? [OH87197]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",54)~
== JAHEI25J @135 /*We have had many people seek our deaths so far. Some would have been friends had things been different. This weighs on my mind. [JAHEIR93]*/
	= @136 /*They acted out of fear. I do not know what to suggest. I... I don't know what to do.*/
== WILSO25J @137 /*Snuffle, sniff... roar! Roar... growl, sniff sniff. Snort... growl. ROAR!*/
== JAHEI25J @138 /*Like all good advice, that was absolutely no help at all. It was poetic though...*/
	= @139 /*Come, let's get going.*/
EXIT

//15th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",57)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk15
	@140 /*Again I must say how much I prefer the forest to artificial structures. Everything I see simply reinforces that to no end. [JAHEIR94]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",58)~
== WILSO25J @141 /*Growl! [OH87197]*/
== JAHEI25J @142 /*Ah, but only if you choose not to look. Nature falls into balance, whereas man must work for his. I just prefer the simpler... the simpler roles in nature.*/
== WILSO25J @143 /*Sniff. Sniff?*/
== JAHEI25J @144 /*No, I find comfort because of you. Others cannot see what I do, and it is their intolerance that makes things difficult. That the wilderness is your home is a mark in your favor.*/
== WILSO25J @145 /*Snort, snuffle, grrf?*/
== JAHEI25J @146 /*I see... I see a confidant. I see someone undeserving of the scorn of the ignorant. I see... I...*/
	= @147 /*Now I am babbling like a brook. We should not dawdle like this.*/
EXIT

//16th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",61)~ THEN WILSO25J _bWilsonJaheiraLoveTalk16
	@148 /*Groogah. [OH87199]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",62)~
== JAHEI25J @149 /*I have been in a similar place as this before, though it was in the company of other Harpers. I will miss those times. [JAHEIR95]*/
	= @150 /*This is a hard season to let pass. Fall and winter are bearable because spring will certainly follow. There is no guarantee that I can emerge from my winter.*/
== WILSO25J @151 /*Grugh. Growl. Roar.*/
== JAHEI25J @152 /*No better comfort could I ask, Wilson. I will continue to stand for you if you do the same for me. Together we can... togeth...*/
	= @153 /*I'm sorry, I'm a bit out of sorts. Let's continue this another time.*/
EXIT

//17th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",65)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk17
	@154 /*There is an ill wind in the air. Do you feel it? I feel a storm inside, in the distance. [JAHEIR99]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",66)~
== WILSO25J @155 /*Roar! [OH87205]*/
== JAHEI25J @156 /*I don't know what I meant. They say you shiver when someone walks across your grave. I feel as though something is marching back and forth over mine.*/
== WILSO25J @157 /*Sniff. Whine?*/
== JAHEI25J @158 /*I don't know. Let's just get going, and it will pass. If you don't mind, Wilson, I would walk in step with you. I... just need someone near me.*/
EXIT

//18th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",69)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk18
	@159 /*Blast, my armor could do with a cleaning. [JAHEIRA3]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",70)~
== WILSO25J @160 /*Growl. [OH87206]*/
== JAHEI25J @161 /**smiles* I suppose that is the advantage of not having any.*/
== WILSO25J @162 /*Roar, snort!*/
== JAHEI25J @163 /*Yes, I did actually smile. I am far from my old self, however. I thank you for putting up with me.*/
== WILSO25J @164 /*Snuffle, grrrugh!*/
== JAHEI25J @165 /*I am fine. Let's just keep going.*/
EXIT

//19th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",73)~ THEN WILSO25J _bWilsonJaheiraLoveTalk19
	@166 /*Urrgh. [OH87204]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",74)~
== JAHEI25J @167 /**sigh* Your old injuries feeling all right? I thought I saw you wince a moment ago. [JAHEIRA4]*/
== WILSO25J @168 /*Roar, roar!*/
== JAHEI25J @169 /*Oh. I... I see. I am flattered, I suppose.*/
== WILSO25J @170 /*Growl, roar. Grrf?*/
== JAHEI25J @171 /*Oh, no, not in the least, really. I am just... I have to deal with a few things... I have to decide some things.*/
	= @172 /*I apologize for being in a foul mood. I wish I could say it would end soon, but I don't know. It's not you, though. It's not...*/
EXIT

//20th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",77)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk20
	@173 /*So—ah... Could I— Could I have a few moments of your time? [JAHEIRA5]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",78)~
== WILSO25J @174 /*Growl. [OH87202]*/
== JAHEI25J @175 /*Thank you. I wished to speak of the future a bit. I know we have discussed this in brief before, but I need to... clarify a few things.*/
== WILSO25J @176 /*Grf?*/
== JAHEI25J @177 /*No, no, not as such. I just wished to know how you fare on the path that you have chosen. Granted, I am right here with you, but I don't know what you... think.*/
	= @178 /*Do you still find my company beneficial? Do you still think of your missing friends as often as you did? What of your fight to remain in balance?*/
== WILSO25J @179 /*Roar.*/
== JAHEI25J @180 /*I am sorry then. I did not mean to test you so. Perhaps this can wait for another time. Forget I said anything.*/
	= @181 /*What? Let's just go.*/
EXIT

//21st Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",81)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk21
	@182 /*I... I need to speak with you a moment. [JAHEIRA6]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",82)~
== WILSO25J @183 /*Growl. [OH87189]*/
== JAHEI25J @184 /*I wished to apologize for my questions earlier. I was too forward. I just needed to know that you remain the same bear that I began traveling with.*/
== WILSO25J @185 /*Sniff, whine?*/
== JAHEI25J @186 /*There has been change all around. You may have been affected in ways that you don't know.*/
	= @187 /*My ties to the civilized world are being broken, one by one. Yet you seem more at home in the city with each passing day.*/
== WILSO25J @188 /*Roar, roar!*/
== JAHEI25J @189 /*That does not ease my mind. I must know what is truth, or I cannot trust myself. My decisions have affected many, and I do not wish to endanger anyone else.*/
	= @190 /*This life is dangerous and I have so few friends left.*/
== WILSO25J @191 /*Snuffle, sniff growl... snuffle. Roar, roar! Grrr... growl, growl, moan, whine! Roar!*/
== JAHEI25J @192 /*I... I don't know what to say to that. I still have many concerns that must be addressed, but you seem so...*/
	= @193 /*I need to think on this some more. Let's get moving.*/
EXIT

//22nd Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",84)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk22
	@194 /*Ahh! The dawning of our day. Though it is very rarely that we seem to match our sleep cycle to the day or night. [JAHEIRB1]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",85)~
== WILSO25J @195 /*Roar. [OH87174]*/
== JAHEI25J @196 /*Do not trouble yourself over it. I was merely saying I enjoy the dawn, not that we should order our lives around it. The sun is beautiful, but I know it is there.*/
	= @197 /*Besides, do I strike you as a person that would adjust well to a strict timeline?*/
== WILSO25J @198 /*Growl, gruh... sniff! Roar snuffle growl, grrf snort!*/
== JAHEI25J @199 /*Such talk! Have you found some poor apprentice bard to draft you lines, or are you practicing on the maidens that we meet?*/
== WILSO25J @200 /*Snort roar...*/
== JAHEI25J @201 /*Perhaps, though I intend no malice. I would laugh at you as I laugh at myself, and... hopefully I will come to know you just as well.*/
	= @202 /*Your words were pleasing; do not think otherwise. But, eh, perhaps we should just get moving for now.*/
END
	++ @203 /*I'm glad you're getting along.*/ EXIT
	++ @204 /**say nothing.**/ EXIT
	++ @205 /*I'm not sure where this is going and I don't want to find out. Both of you keep silent from now on.*/ DO ~SetGlobal("_bWilsonJaheira","GLOBAL",3) SetGlobal("_bWilsonJaheiraTalks","GLOBAL",1000) Wait(1)~ EXIT
	++ @206 /*Okay, I'm out. Please stop talking where I can hear you.*/ DO ~SetGlobal("_bWilsonJaheira","GLOBAL",3) SetGlobal("_bWilsonJaheiraTalks","GLOBAL",1000) Wait(1)~ EXIT
	
//23rd Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",88)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk23
	@207 /*Ugh, it is about time we rested. I have seen enough waking hours, thank you very much. [JAHEIRB3.WAV]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",89)~
== WILSO25J @208 /*Gruff. [OH87200.WAV]*/
== JAHEI25J @209 /*I do not wish to be cheerful; I wish to be miserable, hating everything that has led to what we are.*/
== WILSO25J @210 /*Growl gruff snort.*/
== JAHEI25J @211 /*Stop being so damned reasonable. Get mad and say that you won't stand for it. Act like you should!*/
== WILSO25J @212 /*Roar?*/
== JAHEI25J @213 /*Because you are a bear! You should be on your own in the woods not traveling by my side. Bears do not travel in packs... why are you even here?*/
== WILSO25J @214 /*Roar, growl. Snort!*/
== JAHEI25J @215 /*Bah! What does the heart know? It makes you do foolish things for no cause. It makes you forget the dead before you should. It makes you fall in...*/
	= @216 /*It... makes you do things that wreak havoc on your mind. I'm sorry, Wilson, you should not have to hear this. You have been good and true.*/
	= @217 /*I should be happy, but I am not. Even with all we have done to make things right, I am still troubled.*/
== WILSO25J @218 /*Snuffle... mmrf.*/
== JAHEI25J @219 /*I know, and I need your company. I am just not comfortable with needing it. Let's get some rest for now. I'll try to straighten myself out.*/
EXIT

//24th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",92)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk24
	@220 /*You needn't keep a distance between us. I am in less of a mood now. [JAHEIRB5.WAV]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",93)~
== WILSO25J @221 /*Roar. [OH87199]*/
== JAHEI25J @222 /*Yes, I shouldn't expect a warm reaction after what I have been like. Simple feelings complicated beyond recognition. I hope I have not soured your view of me.*/
== WILSO25J @223 /*Growl, growl snort.*/
== JAHEI25J @224 /*It must have been confusing for you, and I cannot say how sorry I am. You have shown the patience of a saint, despite my... fluctuations.*/
	= @225 /*Know that I care for you, even if I do not show it well. If this meant nothing, it would have been easy to deal with. Small consolation, I know.*/
== WILSO25J @226 /*Snuffle roar!*/
== JAHEI25J @227 /*I am trying. You have shown such caring so far. I have taken you for granted as someone that would always be here, even as I questioned our very friendship.*/
	= @228 /*I will not make such a mistake again. Of this I am sure.*/
	= @229 /*We should get moving. Walk with me, Wilson.*/
EXIT

//25th Wilson-Jaheira Love Talk
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",96)~ THEN WILSO25J _bWilsonJaheiraLoveTalk25
	@230 /*Gruh...growl. [OH87195.WAV]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",97)~
== JAHEI25J @231 /*I have... had a realization. I have been walking with my eyes downcast for so long I had forgotten the beauty of the land. Aye, all we have seen... I had thought never to feel the warmth of nature again. [JAHEIRB6.WAV]*/
== WILSO25J @232 /*Sniff sniff sniff.*/
== JAHEI25J @233 /*The chasms we walk in jut from the earth like a spear, kept in check by a lack of balance, which means helping them would damn another land. It is chaos...*/
	= @234 /*Forests, grasslands; they have been in harmony for untold years, complementing, not competing. I have walked by many but had forgotten. They stir my soul.*/
== WILSO25J @235 /*Growl, roar. Snuffle...*/
== JAHEI25J @236 /*Yes, and if the balance can be struck there, it can happen where I am willing. It was my calling as a druid and as a Harper. I had forgotten...*/
	= @237 /*I forgot that balance does not mean conformity; equilibrium does not need to sacrifice variety. Dermin forgot that too. Difference does not have to be chaos.*/
== WILSO25J @238 /*Snuffle sniff snort.*/
== JAHEI25J @239 /*Oh, stop it. I'm being serious here.*/
	= @240 /*No, no, don't stop it. I have been far too serious and have worried about too much for far too long. What is so wrong with this? Nothing!*/
	= @241 /*Wilson, I care for you. I have not always shown as such, and my words may seem harsh on occasion, but my feelings are true just the same.*/
== WILSO25J @242 /*Growl gruh, roar! Snuffle... sniff?*/
== JAHEI25J @243 /*Perhaps this changes nothing, perhaps everything. I don't care anymore. My heart cannot have nature within and be ashamed as well.*/
== WILSO25J @244 /*Roar! Snuffle snuffle.*/
== JAHEI25J @245 /*What? Had we not done all of this, we would have missed out on all the fun.*/
	= @246 /*Yes, I am joking. Let's go, Wilson. I feel happy for the first time in far too long.*/
EXIT

//26th talk (last SoA love talk)
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",100)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk26a
	@247 /*Can I— I would— *ahem* Hear my words while I have the nerve. [JAHEIRB8.WAV]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",101) SetGlobal("_bWilsonJaheira","GLOBAL",2)~
	= @248 /*Wilson, as we learn of our situation, I want to say... that there is much to come, and I find I need your company more and more. You are a great comfort in this time.*/
== WILSO25J @249 /*Growl, roar. [OH87175]*/
== JAHEI25J @250 /*I know. We are great friends... and more. Your words ease my thoughts, and many are the times we have saved one another in battle. We have grown quite close.*/
== WILSO25J @251 /*Sniff mrrf?*/
== JAHEI25J @252 /*You can be yourself, be there for me. You can... be here for me as well.*/
	= @253 /*Perhaps what I have to say next will be more convincing in another form.*/
	DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bjbear1")~
EXIT

//After Shapeshift into bear
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",101)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk26b
	@254 /*Growl growl whine?*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",102)~
== WILSO25J @255 /*Whine growl?*/
== JAHEI25J @256 /*Sniff snuffle sniff... growl. Roar.*/
== WILSO25J @257 /*Roar.*/
	DO ~RestParty() Wait(1) PlaySong(0)~
EXIT

//After rest.
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",102)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk26c
	@258 /*Mrrf.*/
	DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",103) Wait(1) ClearAllActions() StartCutSceneMode() StartCutScene("_bjbear2")~
EXIT

//After shapeshifting back into human.
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",103)~ THEN JAHEI25J _bWilsonJaheiraLoveTalk26d
	@259 /*Good morning! Shall we get ourselves ready for the road? We've much to do, so we should get an early start. [JAHEIRB9]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",104)~
== WILSO25J @260 /*Grugh? [OH87168]*/
== JAHEI25J @261 /*Shhh, nothing to be said. Let's get going now.*/
EXIT

//ToB-Only Talk #1
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",107)~ THEN JAHEI25J _bWilsonJaheiraLoveTalkToB1
	@262 /*Oh, it seems we are never allowed a moment of rest. Still, I am glad we have accomplished so much. [JAHE2502]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",108) SetGlobal("_bWilsonJaheira","GLOBAL",2)~
== WILSO25J @263 /*Roar! [OH87168]*/
== JAHEI25J @264 /*I am glad as well. I was worried that my desire to avenge the... the dead had... well... I just wanted the business of the past to be well and truly finished.*/
	= @265 /*That is important to me, Wilson. There must be closure to the past for us to... to move forward.*/
	= @266 /*If that is still your wish, I mean...*/
== WILSO25J @267 /*Snort... grunt!*/
== JAHEI25J @268 /*I had hoped as much. You are very important to me, Wilson. I could not imagine us...*/
	= @269 /*I just wanted to say that I still feel for you, and that I hope we can get past all of this... together.*/
EXIT

//Gorion Wraith Scene - Regular Version
APPEND HGWRA01 IF WEIGHT #-60 ~IfValidForPartyDialogue("Jaheira") IfValidForPartyDialogue("Wilson") Global("_bWilsonJaheira","GLOBAL",2) Global("WraithPunish","GLOBAL",2) Global("_bJWWraith","GLOBAL",0) OR(2) !Global("ImoenRomanceActive","GLOBAL",2) !InParty("Imoen2")~ THEN _bJWWraithScene1
	SAY @270 /*What about Jaheira? Following you has cost her everything and everyone she held dear.*/
	IF ~~ THEN DO ~SetGlobal("_bJWWraith","GLOBAL",1) SetGlobal("LovedOne","GLOBAL",2)~ EXTERN JAHEI25J 0 /*It is my choice as much as his, Gorion... though I doubt that is truly who you are.*/
	END

//Gorion Wraith Scene - Imoen Version
	IF WEIGHT #-60 ~IfValidForPartyDialogue("Jaheira") IfValidForPartyDialogue("Wilson") Global("_bWilsonJaheira","GLOBAL",2) Global("WraithPunish","GLOBAL",2) Global("_bJWWraith","GLOBAL",0) Global("ImoenRomanceActive","GLOBAL",2) InParty("Imoen2")~ THEN _bJWImoenWraithScene1
SAY @270 /*What about Jaheira? Following you has cost her everything and everyone she held dear.*/
	IF ~~ THEN DO ~SetGlobal("_bJWWraith","GLOBAL",1) SetGlobal("LovedOne","GLOBAL",2)~ EXTERN JAHEI25J 0 /*It is my choice as much as his, Gorion... though I doubt that is truly who you are.*/
	END
END

//Interjection into next dialogue.
INTERJECT JAHEI25J 2 /*Khalid would not say such a thing! I did not kill him. I did not!*/ _bJWWraithInterject
	== LOVEONE2 IF ~Global("_bJWWraith","GLOBAL",1)~ THEN @271 /*Once we avenged G-gorion's death, I w-wanted to leave, to enjoy our l-lives. But you ref-f-used to settle down... t-to start a f-f-family.*/
		= @272 /*Did you w-want me to die? Was our l-love so dead th-that you could not wait to replace me?!*/
		DO ~SetGlobal("_bJWWraith","GLOBAL",2)~
	== JAHEI25J @273 /*No! No, my Khalid... do not think that! I loved you, but you were gone! Gone! [JAHE2528]*/
	== LOVEONE2 @274 /*I... I am n-n-not even c-c-cold in the ground! And you are w-with him! You n-n-never loved me, Jaheira! You never loved me, and you wanted me to die! [2LOVE01]*/
	== JAHEI25J @275 /*No! This is not real. Khalid would know... he would know what I felt! *sob* What I always felt! Wilson, make this stop!*/
	== WILSO25J @276 /*ROAR!*/
	== HGWRA01 @277 /*Make it stop? You are a bear, Wilson, lost in a world that you do not understand.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bWrWil1")~
EXIT

BEGIN _bBear1

CHAIN IF WEIGHT #-60 ~Global("_bJWWraith","GLOBAL",2)~ THEN _bBear1 _bSpiritBearWraithTalk
	@278 /*Roar!*/
== WILSO25J @279 /*Growl, snuffle?*/
== _bBear1 @280 /*Snuffle, snort, growl!*/
== WILSO25J @281 /*Sniff, sniff... moan.*/
== _bBear1 @282 /*Growl, roar growl.*/
== WILSO25J @283 /*Whine...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bWrWil2")~
EXIT

//Post-wraith talk.
CHAIN IF WEIGHT #-1 ~Global("_bJWWraith","GLOBAL",3)~ THEN JAHEI25J _bJWPostWraith1
	@284 /*I really did not need that—that phantom and his accusations. How dare he! To defile the form of Gorion and Khalid with such... ooh, with such... [JAHE2503]*/
		DO ~SetGlobal("_bJWWraith","GLOBAL",4)~
== WILSO25J @285 /*Growl, snort....*/
== JAHEI25J @286 /*I have grieved in prayer and action for all that have fallen around me. I have fought to avenge each and every soul that has been taken in the fight for balance.*/
	= @287 /*I will not be accused of dishonoring their memory, of benefiting from the death of friends! I have punished myself enough for...*/
== WILSO25J @288 /*Snuffle. Roar.*/
== JAHEI25J @289 /*I mean... <CHARNAME> and I made certain that Gorion and his vision were properly honored, even if we could not save...*/
== WILSO25J @290 /*Roar!*/
== JAHEI25J @291 /*I am sorry. I should stop. I will not poison your view of me by having you assume my regrets. That would not be fair.*/
EXIT

//ToB talk #2. Requires talk #1 and post-wraith talk.
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",111)~ THEN JAHEI25J _bWilsonJaheiraLoveTalkToB2
	@292 /*I... I wanted to say... Can you listen to me for a moment? [JAHE2504]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",112)~
== WILSO25J @293 /*Mrrf, growl? [OH87170]*/
== JAHEI25J @294 /*I am sorry for my reaction earlier. I don't want you to think that I regret my actions with you. I do not.*/
	= @295 /*Khalid's loss was very hard for me, but we both understood the risks, and we both knew that we would not dishonor each other's memory by brooding forever.*/
== WILSO25J @296 /*Grunt... snuffle, growl.*/
== JAHEI25J @297 /*That means a lot to me, Wilson. You are foremost in my life now. Shadows cannot change that.*/
EXIT

//ToB talk #3. Requires talk #2 and Saradush being sacked. Triggers on partyrested()
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",113)~ THEN JAHEI25J _bWilsonJaheiraLoveTalkToB3
	@298 /*Mm, sleep did not come easy last night. I hope I am not alone in this. [JAHE2505]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",114)~
== WILSO25J @299 /*Rugruh! [OH87171]*/
== JAHEI25J @300 /*It is strange, but I am glad that you are as pained as I. I had worried that due to the constant bloodshed and violence in our lives, you were slipping from your natural state, becoming less the soul I... feel for.*/
	= @301 /*Wilson, do not lose yourself. You care about your fellow beings, about me. It is good to do so. Do not let the rage of battle corrupt your heart.*/
== WILSO25J @302 /*Growl grrrf snuffle, snort! ROAR!*/
== JAHEI25J @303 /*I am glad. Remember who you are and what we have. It has been hard-won... It matters.*/
EXIT

//Talk #4. Requires Talk #3 and also meeting Balthazar.
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",117)~ THEN JAHEI25J _bWilsonJaheiraLoveTalkToB4
	@304 /*You know, we should return to the elven city one day... [JAHE2506]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",118)~
== WILSO25J @305 /*Snuffle, snort! Rff, rff. [OH87172]*/
== JAHEI25J @306 /*The woods near the elves are safe; they are protected. As long as Suldanessellar stands, those forests will endure.*/
	= @307 /*There two bears could live in peace without the constant fear of a hostile arrow.*/
== WILSO25J @308 /*Growl, sniff?*/
== JAHEI25J @309 /*Of course... you and me... together in the woods living out our days.*/
== WILSO25J @310 /*Snuffle.*/
== JAHEI25J @311 /*Naturally. If we need to travel to more civilized lands then I will revert to my normal form. They will see a druid traveling with her bear... nothing unusual there.*/
	= @312 /*A druid and her bear... a bear and his druid. I could get used to that.*/
EXIT

//Talk #5. Requires talk #4 and also killing Sendai or Abazigal.
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",121)~ THEN JAHEI25J _bWilsonJaheiraLoveTalkToB5
	@313 /*There are great changes to come, aren't there? Of all possibilities, I worry most for your future. [JAHE2507]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",122)~
== WILSO25J @314 /*Sniff sniff snort? [OH87173]*/
== JAHEI25J @315 /*I wonder, Wilson, what will happen when this is over? Do we find a forest... raise a family of cubs?*/
	= @316 /*Would that even work? And if it did, could I endure the pain of outliving not only you but my own children?*/
	= @317 /*I want you to be with me for a very long time, and I have enough trouble just seeing you hurt in combat without...*/
	= @318 /*I have lost so many companions already...*/
== WILSO25J @319 /*Snort.*/
== JAHEI25J @320 /*Tomorrow... one day... What of the rest?*/
== WILSO25J @321 /*Snuffle... snort!*/
EXIT

//Talk #6. Requires talk #5 and also killing both Sendai and Abazigal.
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraTalks","GLOBAL",125)~ THEN JAHEI25J _bWilsonJaheiraLoveTalkToB6
	@322 /*Well, it would appear that this... this is close to the end of our journey. [JAHE2508]*/
		DO ~SetGlobal("_bWilsonJaheiraTalks","GLOBAL",126)~
== WILSO25J @323 /*Growl! [OH87174]*/
== JAHEI25J @324 /*I trust you. Remember that. [JAHE2509]*/
== WILSO25J @325 /*Growl. Growl growl.*/
== JAHEI25J @326 /*I will too, if you like.*/
== WILSO25J @327 /*Growl snuffle snort roar.*/
== JAHEI25J @328 /*Yes... you and me...*/
EXIT








