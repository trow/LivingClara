//First Imoen Talk SOA
CHAIN IF WEIGHT #-1 ~Global("_bImoenSaysPolymorph","GLOBAL",1)~ THEN IMOEN2J _bIAWizardWay1
@1 /*Aerie, what about polymorphing?*/
DO ~SetGlobal("_bImoenSaysPolymorph","GLOBAL",2)~
== AERIEJ @2 /*I... I don't understand. What about polymorphing?*/
== IMOEN2J @3 /*For your wings! Just polymorph yourself into yourself with wings!*/
== AERIEJ @4 /*I don't think it works like that.*/
= @5 /*Polymorph Self just t-transforms me into a list of animals and monsters, none of which can fly.*/
== IMOEN2J @6 /*So let's write a new version! Transform you into yourself!*/
== AERIEJ @7 /*W-write a spell? Only brilliant wizards can do that....*/
= @8 /*Can you create new spells?*/
== IMOEN2J @9 /*No... but that's just because we're not powerful enough!*/
= @10 /*Come on, let's go get some more power! We'll be archmages in no time.*/
EXIT

//First Imoen Talk TOB
CHAIN IF WEIGHT #-1 ~Global("_bImoenSaysPolymorph","GLOBAL",1) Global("_b25SpellHelpsAerie","GLOBAL",0) !PartyHasItem("_BWINGA")~ THEN IMOEN25J _bIAWizardWay1
@1 /*Aerie, what about polymorphing?*/
DO ~SetGlobal("_bImoenSaysPolymorph","GLOBAL",2)~
== AERIE25J @2 /*I... I don't understand. What about polymorphing?*/
== IMOEN25J @3 /*For your wings! Just polymorph yourself into yourself with wings!*/
== AERIE25J @4 /*I don't think it works like that.*/
= @5 /*Polymorph Self just t-transforms me into a list of animals and monsters, none of which can fly.*/
== IMOEN25J @6 /*So let's write a new version! Transform you into yourself!*/
== AERIE25J @7 /*W-write a spell? Only brilliant wizards can do that....*/
= @8 /*Can you create new spells?*/
== IMOEN25J @9 /*No... but that's just because we're not powerful enough!*/
= @10 /*Come on, let's go get some more power! We'll be archmages in no time.*/
EXIT

//Second Imoen Talk SOA
CHAIN IF WEIGHT #-1 ~Global("_bImoenSaysPolymorph","GLOBAL",4)~ THEN IMOEN2J _bIAWizardWay2
@11 /*What about a wizard?*/
DO ~SetGlobal("_bImoenSaysPolymorph","GLOBAL",5)~
== AERIEJ @12 /*I... What about...?*/
== IMOEN2J @13 /*We just need a great wizard to make us this polymorphing spell. So let's ask one! You'll have your wings back in no time.*/
== AERIEJ @14 /*G-great wizards don't like helping people. Their time is precious.*/
== IMOEN2J @15 /*You're always such a downer! We'll find someone!*/
EXIT

//Second Imoen Talk TOB
CHAIN IF WEIGHT #-1 ~Global("_bImoenSaysPolymorph","GLOBAL",4) Global("_b25SpellHelpsAerie","GLOBAL",0) !PartyHasItem("_BWINGA")~ THEN IMOEN25J _bIAWizardWay2
@11 /*What about a wizard?*/
DO ~SetGlobal("_bImoenSaysPolymorph","GLOBAL",5)~
== AERIE25J @12 /*I... What about...?*/
== IMOEN25J @13 /*We just need a great wizard to make us this polymorphing spell. So let's ask one! You'll have your wings back in no time.*/
== AERIE25J @14 /*G-great wizards don't like helping people. Their time is precious.*/
== IMOEN25J @15 /*You're always such a downer! We'll find someone!*/
EXIT

//Jan Talk SOA
CHAIN IF WEIGHT #-1 ~Global("_bJASpellTalk","GLOBAL",1)~ THEN AERIEJ _bJanAWizardWay
@16 /*Jan, d-do you know how to... how to make new spells?*/
DO ~SetGlobal("_bJASpellTalk","GLOBAL",2)~
== JANJ @17 /*I do indeed! Do you know the spell Protection-from-Turnips? I created that.*/
== AERIEJ @18 /**giggle* I don't think I know that one. What does it do?*/
== JANJ @19 /*What does it do? Well now that is a silly question. It protects you from turnips!*/
== AERIEJ @20 /*But when would... I suppose it doesn't matter. What I need is a spell to turn me into an avariel.*/
== JANJ @21 /*It may surprise you to learn this, dearie, but you are already an avariel.*/
== AERIEJ @22 /*No I'm not! Avariel have wings!*/
= @23 /*I'm... I'm just an elf.*/
== JANJ @24 /*Well, I'm sorry, Aerie, but I don't know that spell. You'll just have to spend the rest of your life as a beautiful, immortal elf, ageless and carefree, gaining wisdom and power over the centuries to rival the gods themselves...*/
== AERIEJ @25 /*Yes... well...*/
== JANJ @26 /*...those poor elves, wisest and fairest of all beings...*/
= @27 /*Did you know that elves have developed the most advanced weaving, spell-crafting, and blacksmithing in all the Realms?*/
== AERIEJ @28 /*Jan, are you mocking...*/
== JANJ @29 /*Not to mention their unmatched skills in metallurgy, archery, fletching, animal-taming, jewel-setting...*/
== AERIEJ @30 /*Enough! You win!*/
= @31 /*I--I'm an elf and... and it is... it is good to be an elf. I'll stop moping.*/
== JANJ @32 /*No, no, dearie, by all means keep moping. You used to be able to fly, like a bird, and now you're down here with the rest of us. I'd be crying and miserable all the time too if I were you.*/
EXIT

//Jan Talk TOB
CHAIN IF WEIGHT #-1 ~Global("_bJASpellTalk","GLOBAL",1) Global("_b25SpellHelpsAerie","GLOBAL",0) !PartyHasItem("_BWINGA")~ THEN AERIE25J _bJanAWizardWay
@16 /*Jan, d-do you know how to... how to make new spells?*/
DO ~SetGlobal("_bJASpellTalk","GLOBAL",2)~
== JAN25J @17 /*I do indeed! Do you know the spell Protection-from-Turnips? I created that.*/
== AERIE25J @18 /**giggle* I don't think I know that one. What does it do?*/
== JAN25J @19 /*What does it do? Well now that is a silly question. It protects you from turnips!*/
== AERIE25J @20 /*But when would... I suppose it doesn't matter. What I need is a spell to turn me into an avariel.*/
== JAN25J @21 /*It may surprise you to learn this, dearie, but you are already an avariel.*/
== AERIE25J @22 /*No I'm not! Avariel have wings!*/
= @23 /*I'm... I'm just an elf.*/
== JAN25J @24 /*Well, I'm sorry, Aerie, but I don't know that spell. You'll just have to spend the rest of your life as a beautiful, immortal elf, ageless and carefree, gaining wisdom and power over the centuries to rival the gods themselves...*/
== AERIE25J @25 /*Yes... well...*/
== JAN25J @26 /*...those poor elves, wisest and fairest of all beings...*/
= @27 /*Did you know that elves have developed the most advanced weaving, spell-crafting, and blacksmithing in all the Realms?*/
== AERIE25J @28 /*Jan, are you mocking...*/
== JAN25J @29 /*Not to mention their unmatched skills in metallurgy, archery, fletching, animal-taming, jewel-setting...*/
== AERIE25J @30 /*Enough! You win!*/
= @31 /*I--I'm an elf and... and it is... it is good to be an elf. I'll stop moping.*/
== JAN25J @32 /*No, no, dearie, by all means keep moping. You used to be able to fly, like a bird, and now you're down here with the rest of us. I'd be crying and miserable all the time too if I were you.*/
EXIT

//Neera Talk SOA
CHAIN IF WEIGHT #-1 ~Global("_bNeeraASpellTalk","GLOBAL",1)~ THEN AERIEJ _bNeeraWizardWay
@33 /*Neera, you've polymorphed yourself many times, right?*/
DO ~SetGlobal("_bNeeraASpellTalk","GLOBAL",2)~
== NEERAJ @34 /*Of course! I've polymorphed myself into a squirrel, and a badger, and one time into a bird...*/
= @35 /*Never on purpose though and luckily I was able to dispel it each time.*/
== AERIEJ @36 /*I... I was thinking maybe... I could polymorph myself into myself... but with wings.*/
== NEERAJ @37 /*That would be some spell. I don't know anyone who can actually turn themselves into specific people; illusions don't count.*/
= @38 /*And making wings? That one can actually use to fly? That's probably impossible...*/
== AERIEJ @39 /**starts crying**/
== NEERAJ @40 /*What? I'm sorry, I didn't mean that! It's magic, right? Magic can do anything!*/
= @41 /*Please stop crying.*/
== AERIEJ @42 /**sniff* Okay... thanks Neera.*/
EXIT

//Neera Talk TOB
CHAIN IF WEIGHT #-1 ~Global("_bNeeraASpellTalk","GLOBAL",1) Global("_b25SpellHelpsAerie","GLOBAL",0) !PartyHasItem("_BWINGA")~ THEN AERIE25J _bNeeraWizardWay
@33 /*Neera, you've polymorphed yourself many times, right?*/
DO ~SetGlobal("_bNeeraASpellTalk","GLOBAL",2)~
== NEERA25J @34 /*Of course! I've polymorphed myself into a squirrel, and a badger, and one time into a bird...*/
= @35 /*Never on purpose though and luckily I was able to dispel it each time.*/
== AERIE25J @36 /*I... I was thinking maybe... I could polymorph myself into myself... but with wings.*/
== NEERA25J @37 /*That would be some spell. I don't know anyone who can actually turn themselves into specific people; illusions don't count.*/
= @38 /*And making wings? That one can actually use to fly? That's probably impossible...*/
== AERIE25J @39 /**starts crying**/
== NEERA25J @40 /*What? I'm sorry, I didn't mean that! It's magic, right? Magic can do anything!*/
= @41 /*Please stop crying.*/
== AERIE25J @42 /**sniff* Okay... thanks Neera.*/
EXIT

//CN Talk SOA
CHAIN IF WEIGHT #-1 ~Global("_bACNSpellTalk","GLOBAL",1)~ THEN AERIEJ _bCNWizardWay
@43 /*<CHARNAME>, you're... a wizard and...*/
DO ~SetGlobal("_bACNSpellTalk","GLOBAL",2)~
= @44 /*And you wouldn't know of a spell to give me w-wings, would you?*/
= @45 /*I was hoping that Polymorph Self would do it, but it's useless.*/
END
	++ @46 /*Sorry, can't be bothered.*/ + _bCNAAAW1
	++ @47 /*Don't know, don't care.*/ + _bCNAAAW1
	++ @48 /*Sorry, Aerie. I'm afraid I don't.*/ + _bCNAAAW2
	++ @49 /*I wish I could help, but...*/ + _bCNAAAW2
	
CHAIN AERIEJ _bCNAAAW1
@50 /*Fine then! Don't help me! I'll figure it out on my own!*/
EXIT

CHAIN AERIEJ _bCNAAAW2
@51 /*Oh... that's alright. I didn't expect you to be able to help me.*/
EXIT

//CN Talk TOB
CHAIN IF WEIGHT #-1 ~Global("_bACNSpellTalk","GLOBAL",1) Global("_b25SpellHelpsAerie","GLOBAL",0) !PartyHasItem("_BWINGA")~ THEN AERIE25J _bCNWizardWay
@43 /*<CHARNAME>, you're... a wizard and...*/
DO ~SetGlobal("_bACNSpellTalk","GLOBAL",2)~
= @44 /*And you wouldn't know of a spell to give me w-wings, would you?*/
= @45 /*I was hoping that Polymorph Self would do it, but it's useless.*/
END
	++ @46 /*Sorry, can't be bothered.*/ + _bCNAAAW1
	++ @47 /*Don't know, don't care.*/ + _bCNAAAW1
	++ @48 /*Sorry, Aerie. I'm afraid I don't.*/ + _bCNAAAW2
	++ @49 /*I wish I could help, but...*/ + _bCNAAAW2
	
CHAIN AERIE25J _bCNAAAW1
@50 /*Fine then! Don't help me! I'll figure it out on my own!*/
EXIT

CHAIN AERIE25J _bCNAAAW2
@51 /*Oh... that's alright. I didn't expect you to be able to help me.*/
EXIT


//Nalia Talk SOA
CHAIN IF WEIGHT #-1 ~Global("_bNaliaSpellTalk","GLOBAL",1)~ THEN AERIEJ _bNaliaWizardWay
@52 /*Nalia, do you know anything about... about p-polymorphing?*/
DO ~SetGlobal("_bNaliaSpellTalk","GLOBAL",2)~
== NALIAJ @53 /*Of course. I can turn myself into a mustard jelly, a flind, a bear, an ogre, a spider, or a wolf. Can't you?*/
== AERIEJ @54 /*Well, yes. But have you ever heard of anyone transforming into... into something else?*/
= @55 /*Like with... with wings?*/
== NALIAJ @56 /*I'm sure it's possible; great wizards can do almost anything.*/
== AERIEJ @57 /*So I just need to become a great wizard? *chuckles**/
= @58 /*Maybe I will.*/
EXIT

//Nalia Talk TOB
CHAIN IF WEIGHT #-1 ~Global("_bNaliaSpellTalk","GLOBAL",1) Global("_b25SpellHelpsAerie","GLOBAL",0) !PartyHasItem("_BWINGA")~ THEN AERIE25J _bNaliaWizardWay
@52 /*Nalia, do you know anything about... about p-polymorphing?*/
DO ~SetGlobal("_bNaliaSpellTalk","GLOBAL",2)~
== NALIA25J @53 /*Of course. I can turn myself into a mustard jelly, a flind, a bear, an ogre, a spider, or a wolf. Can't you?*/
== AERIE25J @54 /*Well, yes. But have you ever heard of anyone transforming into... into something else?*/
= @55 /*Like with... with wings?*/
== NALIA25J @56 /*I'm sure it's possible; great wizards can do almost anything.*/
== AERIE25J @57 /*So I just need to become a great wizard? *chuckles**/
= @58 /*Maybe I will.*/
EXIT

//New Lady Yuth Option - SOA
EXTEND_BOTTOM SCROLL01 2 /*Magical scrolls. Illegal, of course, which is why I must charge so much for them.*/
	+ ~IfValidForPartyDialog("Aerie")~ + @59 /*Do you know how to create a new spell? Aerie wishes to fly again.*/ EXTERN AERIEJ _bLadyYuthAerie
END

CHAIN AERIEJ _bLadyYuthAerie
@60 /*Yes! I... I was... am an avariel, but I lost my wings.*/
== SCROLL01 @61 /*I'm sorry. I do not make the scrolls I sell. What you are talking about would be extremely difficult.*/
== AERIEJ @62 /*D-do you know who could help me?*/
== SCROLL01 @63 /*Of the wizards who make scrolls, the most powerful I've heard of is Lazarus Librarus. But he lives far to the south, in the city of Saradush.*/
== AERIEJ @64 /*Oh... I see... that's so far away we'll probably never go there. Thank you anyways...*/
EXIT

//New Galoomp Option - SOA
EXTEND_BOTTOM SHOP08 0 /*Right jolly day, eh <SIRMAAM>? Ye be wantin' t' take a gander at me bookies 'n scrolls?*/
	+ ~IfValidForPartyDialog("Aerie")~ + @59 /*Do you know how to create a new spell? Aerie wishes to fly again.*/ EXTERN AERIEJ _bGaloompAerie
END

CHAIN AERIEJ _bGaloompAerie
@60 /*Yes! I... I was... am an avariel, but I lost my wings.*/
== SHOP08 @65 /*A spell t' grow wings? That's right un'eard of. Ye be wantin' a wizard o' great power!*/
= @66 /*Me most powerful scrolls I get from Saradush, a city yonder south.*/
= @67 /*Fellow by th' name of Lazarus Librarus. If anyone can help you, it be he.*/
== AERIEJ @68 /*Oh that's... that's really far isn't it? Well maybe some day I'll go there and see if I can find him.*/
EXIT


//Lazarus Talk - TOB Only
EXTEND_BOTTOM 25SPELL 1 /*Can I interest you in my wares? I've got a collection of scrolls most mages would die for!*/
	+ ~IfValidForPartyDialog("Aerie") Global("_b25SpellHelpsAerie","GLOBAL",0) !PartyHasItem("_BWINGA")~ + @59 /*Do you know how to create a new spell? Aerie wishes to fly again.*/ EXTERN AERIE25J _bLazarusAerie
END

CHAIN AERIE25J _bLazarusAerie
@60 /*Yes! I... I was... am an avariel, but I lost my wings.*/
== 25SPELL @69 /*An avariel! Of course, look at you. I've never seen one of your magnificent kind before.*/
= @70 /*Do you know how many rare spell components one can extract from just a single avariel's body?*/
== AERIE25J @71 /*I... I want to fly! If you help me, you can have whatever you can collect, as long as it doesn't harm me permanently.*/
== 25SPELL @72 /*You would give them to me freely? Oh, there's so many, I would not know where to begin. I must consult my books!*/
= @73 /*What a glorious day, I am sure we can come to an agreement that will be mutually beneficial. Let me look at you...*/
= @74 /*You are a mage of some power, so you can polymorph yourself, and a cleric of great ability, so you can heal and regrow your lost body parts. This opens up so many options!*/
= @75 /*To do this properly, you will need the power of an archmage and the intelligence of the smartest gnome.*/
DO ~SetGlobal("_b25SpellHelpsAerie","GLOBAL",1)~
= @76 /*I will require 60,000 gold pieces paid up front. The list of ah... spell components I'll want to extract from your body I should complete shortly. Return to me when you are ready and have adequate funds.*/
EXIT

EXTEND_BOTTOM 25SPELL 1 /*Can I interest you in my wares? I've got a collection of scrolls most mages would die for!*/
	+ ~IfValidForPartyDialog("Aerie") Global("_b25SpellHelpsAerie","GLOBAL",1) !PartyHasItem("_BWINGA")~ + @77 /*We are ready for the spell to give Aerie wings.*/ + _bLazarusAerie2
END

CHAIN 25SPELL _bLazarusAerie2
@78 /*Excellent! Let us see.*/
DO ~SetGlobal("_bNotYetAerie","GLOBAL",0)~ //to reset trigger list if they've done this before
== 25SPELL IF ~PartyGoldGT(59999)~ THEN @79 /*You do have sufficient gold.*/
== 25SPELL IF ~PartyGoldLT(60000)~ THEN @80 /*You do not have sufficient gold.*/
DO ~SetGlobal("_bNotYetAerie","GLOBAL",1)~
== 25SPELL IF ~CheckStatGT("Aerie",18,INT)~ THEN @81 /*Aerie, you appear to be of adequate intelligence.*/
== 25SPELL IF ~!CheckStatGT("Aerie",18,INT)~ THEN @82 /*Aerie, you are not yet of adequate intelligence; you should go find a potion to reach the necessary level.*/
DO ~SetGlobal("_bNotYetAerie","GLOBAL",1)~
== 25SPELL IF ~LevelGT("Aerie",17)~ THEN @83 /*And your magic power meets an acceptable standard.*/
== 25SPELL IF ~LevelLT("Aerie",18)~ THEN @84 /*And your magic power is not yet at an acceptable standard.*/
DO ~SetGlobal("_bNotYetAerie","GLOBAL",1)~
== 25SPELL @8400 /*Let me just double-check my notes. I would not want to make any mistakes.*/
== 25SPELL @8401 /*This will not take more than a moment.*/
== 25SPELL IF ~Global("_bNotYetAerie","GLOBAL",0)~ THEN @85 /*Excellent! My calculations are correct. We may proceed with the terms of the agreement.*/
DO ~SetGlobal("_b25SpellHelpsAerie","GLOBAL",2)~
== 25SPELL IF ~Global("_bNotYetAerie","GLOBAL",1)~ THEN @86 /*My calculations are correct; you do not yet meet the necessary requirements.*/
== 25SPELL @87 /*Speak to me again when you are ready.*/
EXIT

//Lazarus Transformation Talk
EXTEND_BOTTOM 25SPELL 1 /*Can I interest you in my wares? I've got a collection of scrolls most mages would die for!*/
	+ ~IfValidForPartyDialog("Aerie") Global("_b25SpellHelpsAerie","GLOBAL",2) !PartyHasItem("_BWINGA")~ + @88 /*We are ready to get Aerie's wings. What is the price?*/ + _bLazarusAerieGO
END

CHAIN 25SPELL _bLazarusAerieGO
@89 /*Wonderful, you will not regret this, my lovely avariel. As discussed, 60,000 gold will be required up front. Then, once you have learned the spell and regained your wings, I will also require three small jars of your blood, one dozen hairs plucked from your head...*/
= @90 /*...one dozen hairs from other parts of your body, six of your teeth, the smallest toe from each foot, the ring finger from each hand... don't look at me like that, we both know you can regenerate them back...*/
DO ~SetGlobal("_b25SpellHelpsAerie","GLOBAL",3)~
= @91 /*... twenty-two feathers taken from your wings, and one eye... hmm... I think the left one is more to my liking. Every part must be removed by you, of your own volition, and freely given to me. Freely-given spell components are so much more versatile.*/
= @92 /*Are these terms acceptable?*/
== AERIE25J @93 /*Y-yes.*/
== 25SPELL @94 /*Fantastic! I will get everything ready. I will require a magical promise, of course, to prevent you from leaving or killing me once you have your wings. I was not born yesterday.*/
== AERIE25J @95 /*I... I am ready now. I do not wish to delay.*/
== 25SPELL @96 /*Very well, look into my eyes and repeat after me.*/
= @97 /*I, Aerie of the avariel, if and only if I successfully learn a spell to restore my wings, promise to give  Lazarus Librarus, freely and of my own volition, the following from my body...*/
== AERIE25J @98 /*I, Aerie of the avariel, if and only if I successfully learn a spell to restore my... my wings, promise to give Lazarus Librarus, freely and of my own volition, the following from my body...*/
== 25SPELL @99 /*Three small jars of blood I draw from my veins, one dozen hairs I pluck from my head, one dozen hairs I pluck from my body, twenty-two feathers I pull from my wings...*/
== AERIE25J @100 /*Th-three small jars of blood I draw from my... my veins, one dozen hairs I pluck from my head, one dozen hairs I pluck from my body, twenty-two feathers I pull... I pull from my wings...*/
== 25SPELL @101 /*Six teeth I extract from my mouth, the smallest toe I cut from each of my feet, the ring finger I cut from each of my hands, and my left eye, which I pull out of the socket.*/
== AERIE25J @102 /*Six... six teeth I extract from... from my mouth, the smallest toe I c-cut from each of my feet, the ring finger I cut from each of my hands, and my left... my left eye which I will pull... pull out of the socket.*/
== 25SPELL @103 /*If I fail to give these items within one day of learning the spell to regain my wings, then my blood will boil and my body will dissolve. I will die screaming and in agony, unable to be raised or resurrected in any fashion. I agree to this freely from my heart, my breath, my life, my liver, and my soul.*/
== AERIE25J @104 /*If I... I fail to give these items within one day of learning the spell to regain my wings, then my b-blood will boil and my body will dissolve. I... I will die screaming and in agony, unable to be raised or resurrected in any fashion. I agree to this freely from my heart... my breath... my life... my liver... and my soul.*/
== 25SPELL @105 /*Stupendous! You will not regret this! I made up two copies of the scroll already: one for you to memorize and another for you to cast now; I knew you would not want to delay. Last chance to back away... but if you want them, then here they are.*/
== AERIE25J @106 /*I want them.*/
DO ~TakePartyGold(60000) ClearAllActions() StartCutSceneMode() StartCutScene("_bAWing")~
EXIT

//Post Wings talk should trigger automatically from cutscene before it has a chance to trigger separately

//Post Lazarus talk, triggers afterward
CHAIN IF WEIGHT #-1 ~Global("_b25SpellHelpsAerie","GLOBAL",4)~ THEN AERIE25J _bLazarusAerieDone
@107 /*They are as beautiful as I imagined they would be. I am ready to fulfil my end of the bargain.*/
DO ~SetGlobal("_b25SpellHelpsAerie","GLOBAL",5)~
== 25SPELL @108 /*Of course. You have twenty-four hours so take your time. Your friends may stay to heal you and offer support, or they may wander the town as they see fit.*/
= @109 /*Here are the tweezers for pulling hair, this is for draining your blood, here is a good knife for your fingers and toes, and this is the eye extractor. The feathers you should pull by hand. Remember that you must do all of it, otherwise it does not count. Your friends cannot do it for you.*/
= @110 /*Should you damage the item in question during the removal process, you will need to regenerate it and try again. When you are finished, you may stay here and rest for as long as you need. Do not worry about making a mess, I will get someone to clean up the blood when you are done.*/
== AERIE25J @111 /*I can do this. I have wings. I... I can do anything!*/
EXIT

//Final Lazarus Line
CHAIN IF WEIGHT #-1 ~Global("_b25SpellHelpsAerie","GLOBAL",6)~ THEN AERIE25J _bLazarusAerieDone1
@112 /*It is done! Come, <CHARNAME>, let us be free of this room. It is both the most wonderful and the most horrible place in the world, and I would prefer to... to never see it again!*/
DO ~SetGlobal("_b25SpellHelpsAerie","GLOBAL",7)~
EXIT
