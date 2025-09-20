//Anomen-Saerk Talk
INTERJECT_COPY_TRANS2 ANOMENJ 150 _bClaraSaerk /*I am well worried by what has gone on in this place. Though the choice seems clear and right, I am hesitant to take it.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN 
	@1 /*I see no choice, my lord. This man has murdered your sister and if left alone, may murder again. We must stop him, not just for your family, but for all the future victims we might save.*/
	DO ~SetGlobal("_bClaraSaysKillSaerk","GLOBAL",1)~
END

//Hendak Defenses
INTERJECT_COPY_TRANS2 HENDAK 19 _bClaraHendak /*I know nothing of the defenses of the place inside, however. My stay there was brief and very long ago.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN
	@2 /*You want to attack slavers, <CHARNAME>? That seems dangerous. I think I'll just stand in the back.*/
END

//Tassa Talk
INTERJECT_COPY_TRANS2 TASSA 7 _bClaraTassa /*Oh... you don't want to talk to me, silly! You don't have half as much money as my Aran baby! You need a lot of gold to keep Tassa's attention. *giggle*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN 
	@3 /*What about an old friend? Do I need gold too?*/
	== TASSA IF ~IfValidForPartyDialog("_bClara")~ THEN
	@4 /*Clara! Or should I say Lady Silvershield? I haven't seen you in ages. You seem to be doing rather well for yourself.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN
	@5 /*Not as well as you, Tassa, but then few people are.*/
	== TASSA IF ~IfValidForPartyDialog("_bClara")~ THEN
	@6 /*Well, thank you, though you know there's no future in our line of work. A girl has to squirrel away nuts to survive when the snows fall.*/
END

//Hell Talk
INTERJECT_COPY_TRANS PLAYER1 25 _bClaraHell
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN 
	@7 /*Where... where are we now, <CHARNAME>? I felt myself die again, torn apart and shattered into pieces. But instead of darkness, I felt your spirit pulling me.*/
	= @8 /*Could you not have brought me to a better afterlife? This place is so depressing. But I suppose you couldn't bear to finish your story without me.*/
END

//Yoshimo Interjection - if got 3rd banter before Spellhold - Katana doesn't always disappear, otherwise works
INTERJECT_COPY_TRANS2 YOSHIMOX 2 _bClaraKatana /*No redemptions, no second chances! Let us get this over with! I stride into the hell that Irenicus promised! Ilmater take my heart, I have no choice!*/
	== YOSHIMOX IF ~IfValidForPartyDialog("_bClara") Global("_BBCLARAYOSH","GLOBAL",3)~ THEN
	@9 /*Wait- my sword, where is my sword?*/
	DO ~DestroyItem("NPSW02")~
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") Global("_BBCLARAYOSH","GLOBAL",3)~ THEN
	@10 /*It is here, Yoshimo. I told you I would be watching your actions carefully.*/
	DO ~TakePartyItem("NPSW02") DestroyItem("NPSW02") CreateItem("_BKatana",0,0,0) ActionOverride("Yoshimo",DestroyItem("NPSW02"))~
	== YOSHIMOX IF ~IfValidForPartyDialog("_bClara") Global("_BBCLARAYOSH","GLOBAL",3)~ THEN
	@11 /*Indeed, you did. And you have shown yourself to be a true geisha-assassin after all, dancing beneath this warrior's defenses before he could even blink.*/
	DO ~DestroyItem("NPSW02")~
	= @12 /*But perhaps this is for the best. I will fight and die here; I have no doubt of that. So my sword I give you freely. Use it with my blessing and let my family's blade regain the honor I have lost.*/
	= @13 /*Farewell, my student. Think on me kindly now and then.*/
END

//Waylane Talk
CHAIN IF WEIGHT #2 ~Detect("_bClara") IfValidForPartyDialog("_bClara") RandomNum(2,2) Global("_bwaylaneclara","LOCALS",0)~ THEN WAYLANE _bwaylaneclara
@14 /*Greetings, milady. Would you be interested in owning a marvel of fine architecture for...*/
== _BCLARAJ @15 /*Waylane! Are you still running this old scam?*/
== WAYLANE @16 /*Oh, Clara, I didn't recognize you. I heard you'd gone all weird and spooky but you look fine to me. And keep your voice down, will you? Someone might overhear.*/
DO ~SetGlobal("_bwaylaneclara","LOCALS",1)~
== _BCLARAJ @17 /*Hah, everyone in the slums already knows about you, Waylane. What are you selling this time? A mansion you don't own? Some fine “heirloom” from a junk shop?*/
== WAYLANE @18 /*Of course not. I'm selling that glorious space-traveling sphere that you can see behind me. (It fell on my usual junk shop. I had to improvise.)*/
== _BCLARAJ @19 /*Huh. That's a new one; I'll give you that. And who knows, maybe you'll find someone fool enough to buy it.*/
= @20 /*I've gotta go now, but I wish you luck. I think we're both moving up in the world.*/
EXIT

//Jermien Talk
INTERJECT_COPY_TRANS2 JUGJER01 18 _bJermienClara /*...I wish I could point you in the right direction. But if you do find some, you know where to find me. Off you go, then, boy.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @21 /*Is this normal for adventurers? I thought we would save the world for fame and riches, not help every petty wizard who needs an errand run.*/
END

//Boy in Umar Hills
INTERJECT_COPY_TRANS2 UHBOY01 1 _bUmarClara /*I heard that that ranger woman, Merella, is a vampire. She's gone an' started prowlin' the night, stealin' bodies!*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @22 /*...that's just a rumor, right? Death from exsanguination is not an experience that I'm looking to repeat.*/
	== UHBOY01 IF ~IfValidForPartyDialog("_bClara")~ THEN @23 /*Death from exsangui-what? What does that mean?*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @24 /*Well...  it means that a terrifying vampire leaped out of her coffin and sunk her fangs into my throat. She ripped my neck open, blood and gore flying everywhere until I collapsed in a lifeless pile at her feet.*/
	== UHBOY01 IF ~IfValidForPartyDialog("_bClara")~ THEN @25 /*That....*/
	== JAHEIRAJ IF ~IfValidForPartyDialog("Jaheira") IfValidForPartyDialog("_bClara")~
	THEN @26 /*A bit dramatic, don't you think? There's no need to frighten the poor boy further.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("Jaheira")InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) IfValidForPartyDialog("_bClara")~
	THEN @27 /*Wait for it...*/
	== UHBOY01 IF ~IfValidForPartyDialog("_bClara")~ THEN @28 /*That is so COOL!*/
	= @29 /*Ma! Ma! I want to be an adventurer! I want to get exsanguinated like this lady!*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @30 /*Yup. I've still got it. That's why you should always know your audience.*/
END

//Random Shadow Thief
INTERJECT_COPY_TRANS2 THIEF2 6 _bSTClara /*There's no double-crossin; the Shadow Thieves. Don't even try it. Renal'll sick assassins on yer throat faster 'an you can blink*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @31 /*He's right, <CHARNAME>. You should be careful. When I saw what was left of the last fellow who tried to skip out on his dues, I had nightmares for a week.*/
END

//Lady in Sailor's Bounty
INTERJECT_COPY_TRANS2 SBSLUM02 4 _bRipOff /*I bought a most wonderful necklace off a man in the street. For diamonds, it was a fabulous bargain!*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @32 /*Do you think we should tell her that it's probably colored glass? If the woman is this gullible, we could probably sell her “diamond” rings as well.*/
END

//Unseeing Eye Prophet 1
INTERJECT_COPY_TRANS PROPHET1 6 _bClaraProphet /*And even though I have no eyes, it does not mean I am blind. I see with the sight of the faithful and the will of the divine.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @33 /*Uggh, any faith that makes you do that isn't one I want to join.*/
	= @34 /*Although... divine sight or not, it's probably much easier to take her coin purse now.*/
	= @35 /*I'll just sidle over here... and snip... and lift...*/
	DO ~GiveGoldForce(10)~
END

//Count Claylan - Mithrest Inn
INTERJECT_COPY_TRANS2 WCUST01 5 _bClaraClaylan /*Why don't you stop by the manor tonight? I could show you my collection of Sunite statuary.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @36 /**snort* I'm sure he could. I bet they're long and thick and in need of polishing.*/
END

//Bodhi's Initial Offer
INTERJECT_COPY_TRANS2 BODHI 6 _bClaraBodhi /*I would offer an alternative... coincidentally, it is what you have now.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @37 /*Hey, <CHARNAME>, you know how Hexxat was totally a vampire? I'm getting the same “I want to tear you throat out” vibe from tall, dark and spooky over here. Just thought you might want to know.*/
END

//Lord Argrim in Council Building
INTERJECT_COPY_TRANS2 ARGRIM 3 _bClaraArgrim /*I've having a difficulty with the workers at one of our gold mines, and I'm not leaving until I speak to a councilor about it.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @38 /*That is terrible, my lord. It's truly a shame how hard it is to find good help these days.*/
	== ARGRIM IF ~IfValidForPartyDialog("_bClara")~ THEN @39 /*Yes, yes it is. I'm sorry, milady, I did not catch your name.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @40 /*I am Lady Caroline Aurora Lucia Rosena Silvershield of Beregost. I've only just arrived in this fair city and I am pleased to make your acquaintance. If you ever need a sympathetic ear, I would be delighted to listen to your troubles... with a proper chaperone, of course.*/
	== ARGRIM IF ~IfValidForPartyDialog("_bClara")~ THEN @41 /*Of course, Lady Silvershield. And indeed, the pleasure is all mine.*/
END

//Amauna's Ghost
INTERJECT_COPY_TRANS2 SHAGRL01 3 _bClaraAmauna /*A wardstone... carry it and the dreaded shadow dragon will not notice your passing.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @42 /*Sounds good to me. Can I hold onto that, <CHARNAME>? I really really don't want to end up like this girl.*/
END

//Trapped Shadow
INTERJECT_COPY_TRANS2 RNGSHA01 5 _bClaraShadow /*Fool. You think I would let you live?*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @43 /*Oh, come on! Even when you help these things, they still try to kill us. That's just not fair at all.*/
END

//Wallace in Mazzy's quest
INTERJECT_COPY_TRANS2 WALL1 10 _bClaraWallace /*I'm sorry for the pain that I've caused Mazzy's family, though I meant no harm.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @44 /*You wouldn't happen to have another one of those potions, would you? A thing like that could be quite handy under the right circumstance.*/
	== WALL1 IF ~IfValidForPartyDialog("_bClara")~ THEN @45 /*I am not that sort of merchant. Even if I had another of those potions, I would not sell it now.*/
END

//The Thumb, Jan's Quest
INTERJECT_COPY_TRANS2 THUMB 8 _bClaraThumb /*The blokes that want to hear what ye can tell them are in there*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @46 /*Seriously? Why are the people that we're looking for always halfway across the city? You didn't tell me that adventuring involved so much hiking back and forth.*/
END

//Bright Moon Monk - Rasaad's Quest
INTERJECT_COPY_TRANS OHRBMM 3 _bClaraMoonMonk /*Do you tremble at the thought of the truths that are exposed in the bright moon's light?*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @47 /*These monks are all so pompous, but they don't know anything. Truth is what you believe the moment that you speak it, nothing more.*/
	== RASAADJ IF ~IfValidForPartyDialog("RASAAD") IfValidForPartyDialog("_bClara")~ THEN @48 /*That is a... unique perspective. Some would say you are a liar.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("RASAAD") IfValidForPartyDialog("_bClara")~ THEN @49 /*And some say you are a traitor. You're too hung up on facts, Rasaad. Facts don't really matter. You're like the guy who meets the hangman still protesting innocence and thinks that's gonna save him; guilty or not, your neck will still break anyway.*/
	= @50 /*Besides, we're only here because you believe this Collus fellow is secretly the Alorgoth who turned your brother from you and made you strike him down. You blame him for your brother's death even though you have no proof. Does that mean you are mistaken? Or is it truth enough for you?*/
	== RASAADJ IF ~IfValidForPartyDialog("RASAAD") IfValidForPartyDialog("_bClara")~ THEN
	@51 /*I- I will have to think on this. Perhaps the world is not so black and white as I once believed.*/
	= @52 /*For now, I must have answers, wherever that path leads. Will you still face this trial, <CHARNAME>?*/
END

//When Renal offers you the guild
INTERJECT_COPY_TRANS2 RENAL 69 _bClaraGuildGift /*Excellent, I look forward to seeing what you can do. Return to Mae'Var's vacant office. I will have it seeded with a few promising young thieves.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @53 /*Wow, <CHARNAME>, you're a guildmaster already. As long as I stick with you, I'll never have to pay my dues again.*/
END

//Nalia Castle Quest
INTERJECT_COPY_TRANS2 NALIAJ 41 _bClaraNaliaCellar /*How dare you! I've done so much to make amends... no, no, you are right. The “cellar” is a dungeon. My father walled it up, but it has seen much use...*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @54 /*That is an odd thing to be ashamed of. I thought all the oldest families had something similar and this IS a castle. What would it be without a dungeon in which to hold your enemies?*/
END

//Isaea - Nalia Funeral Quest
INTERJECT_COPY_TRANS2 ISAEA 1 _bIsaeaBad /*Have you been slumming again? Naughty!*/ 
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @55 /*I recognize this guy, <CHARNAME>. Girls used to avoid him like the plague unless they were real desperate; his gold wasn't worth the sheer unpleasantness.*/
END

//Anomen - post test Keldorn fight
INTERJECT_COPY_TRANS2 BANOMEN 49 _bAllThatEffort /*Die, you bastard!*/ 
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") GlobalGT("_bAnomenClaraRomance","GLOBAL",0) !Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @56 /**sigh* *quietly* All that effort wasted in one burst of temper. But I suppose if Anomen wins, I might still salvage this.*/
END

//Anomen - post test Keldorn fight (stops fight)
INTERJECT BANOMEN 49 /*Die, you bastard!*/ _bStopAnomenDuh
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @57 /*My husband, you cannot! I know that you are angry, but this is no way for a proper lord to act.*/
	= @58 /**whispers* If you truly wish him dead, we can ensure that outcome far more subtly.*/
	== BANOMEN IF ~IfValidForPartyDialog("_bClara") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @59 /*But- He- I- ...You are right, my love. I'm sorry.*/
	= @60 /*My apologies, Sir Keldorn. I should not have allowed my temper to get the best of me. I do not expect you to forgive me, but I swear on my honor that I will not raise a blade against you again.*/
	== BKELDOR IF ~IfValidForPartyDialog("_bClara") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @61 /*Although I understand your anger, Anomen, that is not how you should show it. However, as long as you have learned from this mistake, I have no wish to fight you. Just remember that I will be watching your actions carefully and I will not allow you to harm an innocent.*/
	= @62 /*You should be grateful that your lady had the strength to stop you and think of her in the future before you act so foolishly again. I would not see her widowed by your hate.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @63 /*Thank you, Sir Keldorn. You are ever gracious. I apologize again for my husband's actions here.*/
	DO ~SetGlobal("AnomenKeldornFight","GLOBAL",0) SetGlobal("_bOldKnightMustDie","GLOBAL",1)~
EXIT

//Keldorn's death scene on next rest
CHAIN IF WEIGHT #-1 ~Global("_bOldKnightMustDie","GLOBAL",3)~ THEN _BCLARAJ _bDeathIntheKnight
@64 /*My Lord, Keldorn is dead. It seems his heart failed in the night.*/
DO ~SetGlobal("_bOldKnightMustDie","GLOBAL",4)~
= @65 /*That poor old warrior. He lived a good long life, though. It was his time.*/
= @66 /*Perhaps we should bury him right here.*/
END
	++ @67 /*Good idea, Clara. Let's do that.*/ EXIT
	++ @68 /*Or... we could just raise him...*/ + _bClaraWhatAWaste
	
CHAIN _BCLARAJ _bClaraWhatAWaste
@69 /**sigh* Or I suppose we could raise him.*/
= @70 /**quietly* What a waste of good poison.*/
EXIT

//Firkraag Talk
INTERJECT_COPY_TRANS2 FIRKRA02 29 _bClaraFirkraag /*Hah! A fascinating turn of events! You will betray Windspear and bring me the deed? Betrayal is a dangerous habit to get into, <CHARNAME>. Is this truly what you desire?*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @71 /*You can do what you like, of course, and Garren was kinda boring. But if you decide to betray this dragon too, can you warn me beforehand? I want to be standing far away when you get swallowed whole.*/
END

//Priest Stronghold Quest
INTERJECT_COPY_TRANS2 SCSAIN 44 _bTalosVsLathander /*If you can do this without bloodshed, all the better. But spare no wrath if necessary.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @72 /*And that is why I never worked the Temple District. Steal the wrong thing and an entire church will be coming after you.*/
END

//Paladin Protection Quest
INTERJECT_COPY_TRANS2 PLGIRL01 1 _bAnnoyingGirl1 /*I'll die of boredom before this night is through. Mother just couldn't leave well enough alone. Better things to spend our gold on than stupid slaves.*/
	== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @73 /*Must we really protect this noble brat? Orders such as this make me glad that I failed my knighthood test after all.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",1) OR(2) Global("_bAnomenClaraRomance","GLOBAL",1) Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN @74 /*Indeed, my lord. Your skills could be put to much better use than this.*/
END

//Paladin Protection Quest
INTERJECT_COPY_TRANS2 PLGIRL01 2 _bAnnoyingGirl2 /*You sound all soggy-headed just like Mother. Future this, goodwill that, why can't I just spend our gold on normal things like good food and fine silks?*/
	== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @73 /*Must we really protect this noble brat? Orders such as this make me glad that I failed my knighthood test after all.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",1) OR(2) Global("_bAnomenClaraRomance","GLOBAL",1) Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN @74 /*Indeed, my lord. Your skills could be put to much better use than this.*/
END

//Paladin Protection Quest
INTERJECT_COPY_TRANS2 PLGIRL01 3 _bAnnoyingGirl3 /*Oh, little <PRO_SIRMAAM>-business. Fine, I shall remain upstairs paying for mother's stupid causes. Why can't we just spend our money on silks and wine?*/
	== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @73 /*Must we really protect this noble brat? Orders such as this make me glad that I failed my knighthood test after all.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",1) OR(2) Global("_bAnomenClaraRomance","GLOBAL",1) Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN @74 /*Indeed, my lord. Your skills could be put to much better use than this.*/
END

INTERJECT_COPY_TRANS2 HURGISF 1 _bClaraFakePaladin /*You may refer to me as Lord Baltezan or “sire.” I will not accept any delay in the delivery of this child into my care. Tell her it is time to go.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @75 /*This has to be the right guy, <CHARNAME>. Only a real paladin could manage to sound so snooty and self-righteous at the same time.*/
	== MAZZYJ IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Mazzy")~ THEN @76 /*You are mistaken, Clara. A true paladin would not speak to his allies in such a tone. This man is either an imposter or a poor example of his faith.*/
END

INTERJECT_COPY_TRANS2 HURGISR 1 _bClaraRealPaladin /*You may refer to me as Lord Baltezan or “sire.” I will not accept any delay in the delivery of this child into my care. Tell her it is time to go.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @75 /*This has to be the right guy, <CHARNAME>. Only a real paladin could manage to sound so snooty and self-righteous at the same time.*/
	== MAZZYJ IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Mazzy")~ THEN @76 /*You are mistaken, Clara. A true paladin would not speak to his allies in such a tone. This man is either an imposter or a poor example of his faith.*/
END

INTERJECT_COPY_TRANS2 CERNDJ 56 _bCreepyLichThing /*I just remembered I was never told his name. I...  will name him anew.  His mother's middle name for she is all I hope he remembers. A fine name. Ahsdale.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @79 /*So... this reunion is sweet and all, but is no one going to mention the really creepy lich thing? No? Okay, just thought I'd ask.*/
END

//Bertrand Talk
CHAIN IF WEIGHT #-1 ~InMyArea("_bClara") IfValidForPartyDialog("_bClara") Global("_bInteractClara","LOCALS",0)~ THEN BERTRAND _bbetrandclara
@81 /*Ahh, Caroline, my delicious love-muffin. Are you up for another round of unequaled passion and pleasure?*/
DO ~SetGlobal("_bInteractClara","LOCALS",1)~
== _BCLARAJ @82 /*Shh, Bertrand, not while I'm working. I'll slip away and see you soon, I promise.*/
EXIT


//Interjection into final battle with Jon.
INTERJECT_COPY_TRANS HELLJON 7 _bClaraInterjectionFinalJonFight1 /*We shall see, <CHARNAME>, we shall see.*/
	== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @98 /*You've lost already, wizard. You're just too dumb to realize that my dagger's in your spine.*/
END

INTERJECT_COPY_TRANS HELLJON 8 _bClaraInterjectionFinalJonFight1 /*Your soul was never truly yours, Bhaal child! You should let me put it to better use!*/
	== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @98 /*You've lost already, wizard. You're just too dumb to realize that my dagger's in your spine.*/
END

INTERJECT_COPY_TRANS HELLJON 9 _bClaraInterjectionFinalJonFight1 /*An odd situation, but I have no doubt about the outcome!*/
	== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @98 /*You've lost already, wizard. You're just too dumb to realize that my dagger's in your spine.*/
END

INTERJECT_COPY_TRANS HELLJON 10 _bClaraInterjectionFinalJonFight1 /*You will not be so calm when I doom you to nonexistence!*/
	== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @98 /*You've lost already, wizard. You're just too dumb to realize that my dagger's in your spine.*/
END

//Interjection into the dialogue by the Skeleton outside of Bodhi's hideout that comes at night.
INTERJECT_COPY_TRANS2 GRSKEL1 0 _bClaraInterjectionSkeletonBodhiHideOut1 /*Ahhhh... fleshling! This is OUR land in the evening... this is no place for such as YOU!*/
	== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @99 /*He may have a point, <CHARNAME>. I think I'll just slip away...*/
END

//Haerdalis Quest
INTERJECT_COPY_TRANS2 HAERDA 210 _bClaraStealStone /*The stone was not even mine but Mekrath's, and I was sent to steal it. He never coveted what was mine, for I never had anything to covet!*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @100 /*You should have hired me instead. I would not have gotten caught.*/
END

//Trademeet Peasant
INTERJECT_COPY_TRANS2 TRMTOW05 6 _bClaraPeasant /*I suppose you got a reward for being a "hero," right? Yeah... someone's always doing it for something. Now we're even poorer than before, I suppose.*/ 
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @101 /*Oh stop your whining. If you were able to save yourself, you wouldn't have had to pay us to take care of everything. You got your money's worth.*/
END

//Bard Stronghold
INTERJECT_COPY_TRANS2 BDHIGG01 15 _bClaraActress /*The only problem I am having is deciding who will play Karenina, the lead female role. There are two actresses in the troupe who are desperate for the part.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @102 /*That used to be me, <CHARNAME>. So hungry for fame and fortune that I would have done anything.*/
	= @103 /*Maybe I should talk to this director. If this whole hero thing doesn't work out, I could join this company.*/
END

INTERJECT_COPY_TRANS2 BDACT03 20 _bClaraJenna /*You... You're going to LET her blackmail you?!*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @104 /*Oh, to be an actress... I could have made a fortune on the stage.*/
END

INTERJECT_COPY_TRANS2 BDHIGG01 85 _bClaraScript /*Well, this is the script we're using, and that's final. I don't want to hear any complaints about it, so off you go.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @105 /*So you're a playwright too now, <CHARNAME>? Don't forget about me when you write your masterpiece.*/
END

INTERJECT_COPY_TRANS2 BDACT05 30 _bClaraMoney /*But... he asks 500 gold to do the task...*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @106 /*Bet you didn't think that running a play would be this expensive, huh, <CHARNAME>? But money makes the wheels go round.*/
END

INTERJECT_COPY_TRANS2 BDHIGG01 134 _bClaraUnderstudy /*You are a bard, naturally gifted... and you are the only one who looks the part!*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @107 /*Damn. Why couldn't one of the ladies have gotten ill instead?*/
END

//Bridge Noble
INTERJECT_COPY_TRANS2 BNOBLE2 7 _bClaraNoble /*Eek! The commoner is speaking to me again! What should I do? Shoo... shoo, shoo!*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @108 /*Commoner? Look again, my lady. You are quite mistaken.*/
	== BNOBLE2 IF ~IfValidForPartyDialog("_bClara") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @109 /*Lady Delryn? My apologies... I did not realize it was you. What are you doing out among these... plebeians?*/
	== _BCLARAJ @110 /*Helping the less fortunate, of course. What other reason could there be for travelling these parts?*/
	== BNOBLE2 @111 /*Indeed. Such compassion shows your quality. (Northern savage. Lord Delryn should have married someone with Amnian blood.)*/
END

//Abandoned Temple
INTERJECT_COPY_TRANS2 RIFTC02 4 _bClaraChild /*Can you fight a wound in faith? Go away. My fun is done years ago.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @112 /*This child is... creepy, <CHARNAME>. I don't think I like it here.*/
END

//Hidden Refuge
INTERJECT_COPY_TRANS2 OHNBARAD 13 _bClaraCats /*If you bring all eight back, I'll give you a reward. I, um, apologize if I was rude earlier.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @113 /*I know you're pretty much the patron saint of lost causes, <CHARNAME>, and I'm sure glad you helped me out. But don't we have something better to do than *actually* herd cats?*/
	== OHNBARAD IF ~IfValidForPartyDialog("_bClara")~ THEN @114 /*You cannot HERD cats. Weren't you listening? You must lure them to you carefully, and try to mind the claws.*/
END

//Half-Orc Mage
INTERJECT_COPY_TRANS2 DORNJ 830 _bClaraDorn /*You are no brother of mine. Keep your distance.*/	
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @115 /*See Dorn. This is why you have no friends. Maybe you and this guy could be buddies if you'd only try.*/
	== DORNJ IF ~IfValidForPartyDialog("_bClara")~ THEN @116 /*Why would I need friends when I have a pushy sneak thief to badger me instead?*/
	== _BCLARAJ @117 /*Hah... I knew you cared deep down. Very deep, underneath the snarling.*/
END

//Asylum Interjections - Dili
INTERJECT_COPY_TRANS2 PPDILI 6 _bClaraDili /*Have you a new face today? I think you do. I can see the real one. Tomorrow, I will be you okay?*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @118 /*Now that's a useful trick. Can we take her with us, <CHARNAME>? I've always wanted to be a mentor to poor lost little girls. (Particularly the ones that would be perfect burglars.)*/
END

//Asylum - Naljier
INTERJECT_COPY_TRANS2 PPNALJ 0 _bClaraNaljier /*I used to have pretties piled high to the sky... don't remember where they are though... Mm, pretties...*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @119 /*A crazy mage with hidden treasure? Let's break this one out too.*/
END

//Asylum - Dradeel
INTERJECT_COPY_TRANS2 PPDRADEE 0 _bClaraWerewolf /*Bad dog! Bad dog! Werewolves all!*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Cernd")~ THEN @120 /*Don't be silly, we're not werewolves. Well... except for our druid. Why don't you give this guy a growl?*/
	== CERNDJ IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Cernd")~ THEN @121 /*…No, Clara. I will not. (Why does she test my patience so?)*/
END

//Brynnlaw - Saemon
INTERJECT_COPY_TRANS2 PPSAEM3 19 _bClaraSaemon /*Had I the luxury of time, I might try to woo her for it, as she is of suspect morality. So I have heard, at least.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @122 /*Well, if anyone would know...*/
END

//Sunken City
INTERJECT_COPY_TRANS2 SAHCPT02 7 _bClaraSahuagin /*I shall also bring the equipment collected from the sunken ship. If they pass the test, they may have any of the things that I've found.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @123 /*(And if we fail the test, I know which fish person to rob on our way out.)*/
END

//Grey Gnome
INTERJECT_COPY_TRANS2 UDSVIR03 18 _bClaraBlackrock /*It is the blackest of all the tunnels, but there is glorious light on the other side.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @124 /*"Seek the light at the end of the dark tunnel?" I don't like the sound of this...*/
END

//Innkeeper
INTERJECT_COPY_TRANS2 UDSVIR04 16 _bClaraMageBook /*Then we have nothing more to discuss. Safe tunnels to you.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @125 /**whisper* I could steal that book for you, <CHARNAME>. Wouldn't be too hard at all.*/
END

//Silver Dragon
INTERJECT_COPY_TRANS2 UDSILVER 26 _bClaraDragon /*I will transform you, and you will be able to pass among the drow with ease. They will not see through the fiction I create.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @126 /*Ooh... yes, please, milady. I've always wondered what I'd look like as a drow.*/
END

//Spelljammer Drow
INTERJECT_COPY_TRANS2 DADROW18 2 _bClaraJammer /*If you're still in Ust Natha in a month or so, maybe you'll join up? Because of those infernal gnomes, I could use the extra crew.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") Detect("dadrow18")~ THEN @127 /*Sailing through the Astral seas with a fine captain at the helm... That sounds like an adventure, but I'm not free to leave. (If only I were truly drow, perhaps I could run for good.)*/
END

//Tree of Life
EXTEND_BOTTOM PLAYER1 33 /*You turn and regard those who remain in your party. You feel a need, perhaps, to ascertain their loyalty, their friendship, or to offer a chance to reconsider.*/
IF ~IfValidForPartyDialog("_bClara") Global("_bClaraTree","GLOBAL",0)~ THEN EXTERN PLAYER1 _bClaraTree1
END

CHAIN PLAYER1 _bClaraTree1
@128 /*Clara, the girl whose soul you rescued. She has claimed to be many things: an actress, a noble, a law-abiding citizen, but she has proved a survivor through and through.*/
DO ~SetGlobal("_bClaraTree","GLOBAL",1)~
END
	++ @129 /*Are you ready for this Clara? I will need all my allies for this fight.*/ EXTERN _BCLARAJ _bClaraTree2
	++ @130 /*This is it, Clara. If things go badly, you cannot run and hide this time.*/ EXTERN _BCLARAJ _bClaraTree2
	++ @131 /*You can leave, Clara. You don't have to stay for this.*/ EXTERN _BCLARAJ _bClaraTree2
	
CHAIN _BCLARAJ _bClaraTree2
@132 /*I am not a little girl any more, <CHARNAME>. I have been through challenges that would've felled even the greatest knights of the Most Noble Order of the Radiant Heart.*/
= @133 /*I'm not worried... I already know how this story ends. We defeat the villain and all live happily ever after.*/
END
COPY_TRANS PLAYER1 33 

//Elf General
INTERJECT_COPY_TRANS2 C6GENER 8 _bSnootyElf /*Do what you must, but do it far from here. I will believe your intentions once all is right again.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @134 /*Wow, these elves certainly take ungrateful to a whole new level.*/
END



///TOB Interjections - Same File

//Neera-Anomen Banter (need to test)
INTERJECT_COPY_TRANS2 BNEERA25 46 _bNeeraIsSoDone 
	== BANOME25 IF ~Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @77 /*My heart belongs to Clara, elf. Cease this ridiculous display.*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @78 /*It's all right, my darling. I know this is not your doing and I do not blame you for Neera's jealousy.*/
END

//Peltjie Talk
INTERJECT_COPY_TRANS2 SARPEL01 6 _bCHV /*I have no idea how many there are now. So many people die every day here; what's a few more? I was taken down to the prison myself... but I got away. And now they hunt for me.*/ 
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @80 /*Can I sit this one out, <CHARNAME>? I've had bad luck with vampires.*/
END

//Saradush Waitress
INTERJECT_COPY_TRANS2 SARWAI01 1 _bClaraWaitress /*I wish someone would stand up to them... but everyone's afraid of Gromnir. *sniff* I guess I'll just have to put up with it.*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @135 /*I know I'm usually the person who says not to get involved, but we're big heroes now, right? And it doesn't seem like anyone would really miss these guards... I could slip over there and stab one before they even blink.*/
	== MAZZY25J IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Mazzy")~ THEN @136 /*Clara! We are heroes and heroes do not stab people without cause.*/
	= @137 /*However, their actions are intolerable, and we should help protect this woman if we can. Perhaps one of the guards will give us reason to draw our weapons after all.*/
END

//Volo Lines
EXTEND_BOTTOM SARVOLO 9 #20 /*Which of your companions would you like to hear about now?*/ //(#2 extends it after that line)
	+ ~OR(2) Global("_bLordAndLadyDelryn","GLOBAL",5) Global("_bLadyDelryn","GLOBAL",1)~ + @138 /*Tell me about Clara.*/ + _bClaraVolo
	+ ~!Global("_bLordAndLadyDelryn","GLOBAL",5) !Global("_bLadyDelryn","GLOBAL",1)~ + @138 /*Tell me about Clara.*/ + _bClaraVolo1
END

APPEND SARVOLO IF ~~ THEN _bClaraVolo
	SAY @139 /*Aah, yes, the lovely Lady Caroline Aurora Lucia Rosena Silvershield Delryn. Orphaned tragically on the road from Baldur's Gate, she has risen from the ashes of her past to take her rightful place again. Married to one of the great lords of Amn, no one can deny Lady Delryn's noble soul or the compassion with which she treats the less fortunate.*/
	IF ~~ THEN EXTERN _BCLA25J _bClaraVolo2
	END
	
	IF ~~ THEN _bClaraVolo1
	SAY @140 /*Aah, yes, the lovely Lady Caroline Aurora Lucia Rosena Silvershield. Orphaned tragically on the road from Baldur's Gate, she has risen from the ashes of her past to make the world a brighter place. Beautiful and graceful, none can deny Caroline's noble soul or the compassion with which she treats the less fortunate.*/
	IF ~~ THEN EXTERN _BCLA25J _bClaraVolo2
	END
END

CHAIN _BCLA25J _bClaraVolo2
@141 /*My good sir, you flatter me. I do not deserve your words, but I am glad to hear them. (I better make sure this guy survives. A girl can't turn down such good publicity.)*/
EXTERN SARVOLO 9

//Saradush Hectan
INTERJECT_COPY_TRANS2 SARTHF1 13 _bClaraHectan /*I must think hard on this before I use the scroll.*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @143 /*Aww, why'd you have to tell him. He deserves to splat for being a bad thief.*/
END

//Nyalee
INTERJECT_COPY_TRANS2 HGNYA01 29 _bClaraNyalee /*My poor boy, the spawn-child will hurts him! Nyalee must stops him!*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @144 /*Oh come on, that isn't fair! If we don't do what folks say, they try to kill us. If we do what they say, they try to kill us anyway. This hero business sure is thankless now and then.*/
END

//Dorn Planetar Talks
INTERJECT_COPY_TRANS2 OHDPLANL 27 _bClaraPlanetar /*Your uncle is well-known and respected, Firecam. You will make a fine champion for a Just God.*/ 
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @145 /*Not that I'm complaining, mind you, but aren't angels supposed to know when you tell lies?*/
END

INTERJECT_COPY_TRANS2 OHDPLANL 33 _bClaraPlanetar1 /*Hm, yes. I guess... Take this sigil, <CHARNAME>. Go forth with Tyr's blessing and do his work.*/  
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @145 /*Not that I'm complaining, mind you, but aren't angels supposed to know when you tell lies?*/
END

INTERJECT_COPY_TRANS2 OHDPLANL 29 _bClaraPlanetar2  /*Take this sigil, Rodesi Ponz. Go forth with Tyr's blessing, and do his work.*/  
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @145 /*Not that I'm complaining, mind you, but aren't angels supposed to know when you tell lies?*/
END

//Dennaton Neera Quest
INTERJECT_COPY_TRANS2 OHNDENNA 4 _bClaraDenn /*One day it's an autharch, the next it could be a dragon or even a god!*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @146 /*Sounds a lot like traveling with <CHARNAME>. Folks could get a complex being teleported around like this.*/
END

//Rasaad Quest
INTERJECT_COPY_TRANS2 DORN25J 4 _bClaraSharran /*Try it Sharran! I'll chop your mountain down with the side of my hand!*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @147 /*You'll what? I know you're buff and all, but even you can't punch a mountain.*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @148 /*Come on, Haer'Dalis, I thought you were trying to improve Dorn's metaphors.*/
	== HAERD25J IF ~IfValidForPartyDialog("_bClara") IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @149 /*I am, my fine margay. But the roughest ore must be refined before it may be tempered and this sparrow admits to some distraction during our lessons now and then.*/
END

//Hexxat Quest
INTERJECT_COPY_TRANS2 HEXXA25J 170 _bClaraHexxat /*I'd prefer we end it the same way. When you're ready, that's when we shall go.*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @150 /*And of course the rest of us will just be dragged along like usual. No one ever asks if *Clara* wants to risk her life... (Hexxat already killed me once, isn't that enough?)*/
END

//Sendai Quest
INTERJECT_COPY_TRANS2 SENBEH01 13 _bClaraSpectator /*Nature calls and all that. Just don't collapse the whole roof until after I'm gone, if you'd be so kind.*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara")~ THEN @151 /*You make friends with the weirdest creatures, <CHARNAME>. Sure keeps things interesting.*/
END

//Balthazar Quest
EXTEND_BOTTOM AMMONK03 1 /*I knew Balthazar was a fool to trust you, Saemon!*/
IF ~IfValidForPartyDialog("_bClara")~ THEN EXTERN _BCLA25J _bClaraMonk
END
	
CHAIN _BCLA25J _bClaraMonk 
@152 /**sigh* Here we go again.*/
END COPY_TRANS AMMONK03 1 


//Watcher's Keep Interjections
//Lich Priest (ICT4, so either talk should trigger)
INTERJECT_COPY_TRANS4 GORPRI1 2 _bClaraLich /*I will take my slippers and let you finish your work here. Look through the sarcophagus if you wish.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @153 /*Wow. What a nice old... zombie? I wish everyone was that relaxed about us robbing graves.*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @153 /*Wow. What a nice old... zombie? I wish everyone was that relaxed about us robbing graves.*/
END

//Odren Talk
INTERJECT_COPY_TRANS4 GORODR1 53 _bClaraOdren /*And so we sought someone else to take our place and seal the demon within the keep.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @154 /*You have dishonoured yourselves with your actions. To die in the defence of virtue is the true hero's way.*/
	== MAZZY25J IF ~IfValidForPartyDialog("Mazzy") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @154 /*You have dishonoured yourselves with your actions. To die in the defence of virtue is the true hero's way.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @155 /*That's just like a priest, isn't it? Telling someone *else* they should die for the greater good.*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @155 /*That's just like a priest, isn't it? Telling someone *else* they should die for the greater good.*/
END
	
//Helm Ghost
INTERJECT_COPY_TRANS4 GORAPP1 10 _bClaraGhost /*It may be used to seal both Odren and Demogorgan within, and you need not enter the keep to do so.*/
	== _BCLARAJ IF ~IfValidForPartyDialog("_bClara") GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @156 /*I like this option, <CHARNAME>. How often does a god himself say that you don't have to fight?*/
	== _BCLA25J IF ~IfValidForPartyDialog("_bClara") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @156 /*I like this option, <CHARNAME>. How often does a god himself say that you don't have to fight?*/
END
