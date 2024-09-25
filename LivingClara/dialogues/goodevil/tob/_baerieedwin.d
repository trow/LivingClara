//Aerie-Edwin Wing Conversation SOA Version

CHAIN IF WEIGHT #-1 ~Global("_bEdwinAerieWings","GLOBAL",4)~ THEN EDWINJ _bEdwinAerieWingTalk
@1 /*Aerie, look at me!*/
DO ~SetGlobal("_bEdwinAerieWings","GLOBAL",5)~
== AERIEJ @2 /*Who--who are you? You are an avariel?*/
== EDWINJ @3 /*I know you struggle with this, but try not to be a dullard for a moment. It is I, Edwin!*/
== AERIEJ @4 /*Y-you don't look like Edwin. Or sound like him.*/
== EDWINJ @5 /*(She is such a fool.) Child, I used polymorph to turn myself into a winged elf. I am an avariel, complete with wings.*/
== AERIEJ @6 /*Why did you do this? Just--just to mock me?*/
== EDWINJ @7 /*I developed this spell for your sake, so that you might fly again. (As though I would need more than a small fraction of my great mental acuity to mock a hedge witch such as this. The idea is insulting. But I must keep my temper until I have her ensnared.)*/
== AERIEJ @8 /*You--you did this for me? I always thought you hated me.*/
== EDWINJ @9 /*There is a price. I need your body.*/
== AERIEJ IF ~!Global("HaerDalisRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2)~ THEN @10 /*My--my body? I do not know...  for wings... to fly again I will do it, Edwin. But be gentle, please. Should we find an inn?*/
== EDWINJ IF ~!Global("HaerDalisRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2)~ THEN @11 /*What? No, I can cast the spell anywhere.*/
== AERIEJ IF ~OR(2) Global("HaerDalisRomanceActive","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",2)~ THEN @12 /*But, I--I am not free to offer you that... I mean what would he think about me... with you... naked...*/
== EDWINJ IF ~OR(2) Global("HaerDalisRomanceActive","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",2)~ THEN @13 /*Your lips are moving, yet every sentence has less and less meaning.*/
= @14 /*You may keep your clothes on. The spell does not require you to remove them.*/
== AERIEJ @15 /*Spell? I do not understand. Why would you need a spell?*/
== EDWINJ @16 /*To switch bodies. I will spend the rest of my life in your body, polymorphed to appear as a human male. You will spend the rest of your life in my body, polymorphed to look like this, complete with fully functional wings.*/
== AERIEJ @17 /*So I--I will be in your body looking like that and you will be in my body looking like a human? But-- but why?*/
== EDWINJ @18 /*(She is an imbecile, yet I must persist. Shorter sentences, that is the solution. Give her tiny brain more time to understand.) Im-mor-tal-i-ty. The avariel are immortal. Humans are not.*/
== AERIEJ @19 /*Can you make her look like me?*/
== EDWINJ @20 /*This spell does not have that capability. Surely this face is acceptable.*/
== AERIEJ @21 /*I--I don't know, I'm really used to the face and body I have now. I c-can't spend the rest of my life looking like someone else.*/
= @22 /*To fly though... Could you cast the spell on me? Just for--for a little while?*/
== EDWINJ @23 /*Give you a taste? Fine... fly then. Fly and remember what you've lost, what I --and only I--can grant you once again.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bAFly")~ 
EXIT

//2nd Half of Dialogue, should be triggered in cutscene
CHAIN IF WEIGHT #-1 ~Global("_bEdwinAerieWings","GLOBAL",5)~ THEN AERIEJ _bEdwinAerieWingTalk2
@24 /*That--that was wonderful.*/
DO ~SetGlobal("_bEdwinAerieWings","GLOBAL",6)~
== EDWINJ @25 /*Wonderful enough that you've changed your mind?*/
== AERIEJ @26 /*She's--she's just not what I want to look like Edwin. I'm sure with time, you could change the spell to make that body look like me, couldn't you?*/
== EDWINJ @27 /*Of course I can, child! I am Edwin Odesseiron. Nothing is beyond me!*/
== AERIEJ @28 /*Oh good! Th-then do that and we'll see.*/
EXIT


//Aerie-Edwin Wing Conversation - TOB Versions

CHAIN IF WEIGHT #-1 ~Global("_bEdwinAerieWings","GLOBAL",4)~ THEN EDWIN25J _bEdwinAerieWingTalk
@1 /*Oh Aerie, look here!*/
DO ~SetGlobal("_bEdwinAerieWings","GLOBAL",5)~
== AERIE25J @2 /*Who--who are you? You are an avariel?*/
== EDWIN25J @3 /*It is me! Edwin!*/
== AERIE25J @4 /*Y-you don't look like Edwin. Or sound like him.*/
== EDWIN25J @5 /*(She is such a fool.) Child, I used polymorph to turn myself into a winged elf. I am an avariel, complete with wings.*/
== AERIE25J @6 /*Why did you do this? Just--just to mock me?*/
== EDWIN25J @7 /*I developed this spell for you, so that you can fly again.*/
== AERIE25J @8 /*You--you did this for me? I always thought you hated me.*/
== EDWIN25J @9 /*There is a price. I need your body.*/
== AERIE25J IF ~!Global("HaerDalisRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2)~ THEN @10 /*My--my body? I do not know...  for wings... to fly again I will do it, Edwin. But be gentle, please. Should we find an inn?*/
== EDWIN25J IF ~!Global("HaerDalisRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2)~ THEN @11 /*What? No, I can cast the spell anywhere.*/
== AERIE25J IF ~OR(2) Global("HaerDalisRomanceActive","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",2)~ THEN @12 /*But, I--I am not free to offer you that... I mean what would he think about me... with you... naked...*/
== EDWIN25J IF ~OR(2) Global("HaerDalisRomanceActive","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",2)~ THEN @13 /*Your lips are moving, yet every sentence has less and less meaning.*/
= @14 /*You may keep your clothes on. The spell does not require you to remove them.*/
== AERIE25J @15 /*Spell? I do not understand. Why would you need a spell?*/
== EDWIN25J @16 /*To change bodies. I will spend the rest of my life in your body, polymorphed to look like a human male. You will spend the rest of your life in my body, polymorphed to look like this, complete with fully functional wings.*/
== AERIE25J @17 /*So I--I will be in your body looking like that and you will be in my body looking like a human? But-- but why?*/
== EDWIN25J @18 /*(She is an imbecile yet I must persist nonetheless.) Immortality. The avariel are immortal. Humans are not.*/
== AERIE25J @19 /*Can you make her look like me?*/
== EDWIN25J @20 /*This spell does not have that capability. Surely this face is acceptable.*/
== AERIE25J @21 /*I--I don't know, I'm really used to the face and body I have now. I c-can't spend the rest of my life looking like someone else.*/
= @22 /*To fly though... Could you cast the spell on me? Just for--for a little while?*/
== EDWIN25J @23 /*Give you a taste? Fine... fly then.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bAFly")~ 
EXIT

//2nd Half of Dialogue, should be triggered in cutscene
CHAIN IF WEIGHT #-1 ~Global("_bEdwinAerieWings","GLOBAL",5)~ THEN AERIE25J _bEdwinAerieWingTalk2
@24 /*That--that was wonderful.*/
DO ~SetGlobal("_bEdwinAerieWings","GLOBAL",6)~
== EDWIN25J @25 /*Wonderful enough that you've changed your mind?*/
== AERIE25J @26 /*She's--she's just not what I want to look like Edwin. I'm sure with time, you could change the spell to make that body look like me, couldn't you?*/
== EDWIN25J @27 /*Of course I can, child! I am Edwin Odesseiron. I can do anything.*/
== AERIE25J @28 /*Oh good! Th-then do that and we'll see.*/
EXIT

//TOB Only talks
CHAIN IF WEIGHT #-1 ~Global("_bEdwinAerieWings","GLOBAL",13)~ THEN EDWIN25J _bEdwinAerieWingTalk3
@29 /*Look Aerie, I have done it!*/
DO ~SetGlobal("_bEdwinAerieWings","GLOBAL",14)~
= @30 /*Never doubt the power of Edwin Odesseiron.*/
== AERIE25J	@31 /*You--you did. I did not think it possible.*/
== EDWIN25J @32 /*You think nothing possible, that is why you fail.*/
= @33 /*But I, I can do anything! It is only a question of time and focus. If it can be done then I can do it, for I am Edwin Odesseiron.*/
== AERIE25J @34 /**giggles* Yes, you mentioned that already.*/
== EDWIN25J @35 /*Enough. I have done it. Switch bodies with me and then I will teach you the spell to transform yourself into your winged form.*/
== AERIE25J @36 /*You must--you must teach me the spell first. I do not trust you.*/
== EDWIN25J @37 /*(Maybe she is not as stupid as I thought). Yes, yes, but you must swear to follow through with your side of the bargain.*/
== AERIE25J @38 /*I--I--I...*/
= @39 /*If I do this, I will grow old?*/
== EDWIN25J @40 /*Yes. A fate that we all must face. (Except for me... soon...)*/
== AERIE25J @41 /*I-I need time to think...*/
== EDWIN25J @42 /*TIME? YOU NEED TIME? What were you doing this whole time you scarred, spineless, witless...*/
== AERIE25J @43 /*Please don't hate me! I'll decide soon, okay?*/
== EDWIN25J @44 /*Fine.*/
EXIT

//Aerie-CN Talk
CHAIN IF WEIGHT #-1 ~Global("_bEdwinAerieWings","GLOBAL",19)~ THEN AERIE25J _bEdwinAerieWingTalk4
@45 /*<CHARNAME>, I need some advice. Should I accept Edwin's offer?*/
DO ~SetGlobal("_bEdwinAerieWings","GLOBAL",20)~
= @46 /*To-to have my wings back is everything I've wanted, but if I accept I'll age and d-die. Isn't that horrible? To age like--like a human!*/
END
	+ ~Race(Player1,HUMAN)~ + @47 /*You do realize who you're talking to, right?*/ + _bAE1
	+ ~OR(2) Race(Player1,HALFLING) Race(Player1,HALFORC)~ + @48 /*Well, I may not be a human, but I'll age and die too.*/ + _bAE1
	+ ~OR(3) Race(Player1,HALF_ELF) Race(Player1,GNOME) Race(Player1,DWARF)~ + @49 /*I'll live longer than a human, but even I will age and die, Aerie.*/ + _bAE1
	+ ~Race(Player1,ELF)~ + @50 /*I can't even imagine how horrible it must be to age.*/ + _bAE2
	++ @51 /*Aging isn't so bad. Everything must end eventually and even elves can die.*/ + _bAE3
	++ @52 /*That's why I plan to become a god. So I never have to die!*/ + _bAE2
	++ @53 /*I don't care, Aerie. Solve your own problems.*/ DO ~SetGlobal("_bAerieAgreesEdwin","GLOBAL",1)~ EXIT
	
CHAIN AERIE25J _bAE1
@54 /*Is aging as horrible as they say? Do you feel your body slowly becoming weaker day by day as you move inevitably toward the grave?*/
END
	++ @51 /*Aging isn't so bad. Everything must end eventually and even elves can die.*/ + _bAE3
	++ @52 /*That's why I plan to become a god. So I never have to die!*/ + _bAE2
	
CHAIN AERIE25J _bAE2
@55 /*But to fly, <CHARNAME>. Nothing comes close to the feeling. Maybe you're the wrong person to ask. You've never known what it's like not to be chained to the earth.*/
= @56 /*Still, what do you think I should do?*/
END
	++ @57 /*Do it, Aerie. A normal human life can still be a hundred years, and with your healing magic, you could live even longer.*/ DO ~SetGlobal("_bAerieAgreesEdwin","GLOBAL",1)~ + _bAE4
	++ @58 /*No, Aerie, nothing is worth giving up your immortality.*/ DO ~SetGlobal("_bAerieDeclinesEdwin","GLOBAL",1)~ + _bAE4
	++ @59 /*Do what you want, Aerie. This is your decision to make, not mine.*/ DO ~SetGlobal("_bAerieDeclinesEdwin","GLOBAL",1)~ + _bAE4
	++ @60 /*No one cares what you do, Aerie.*/ DO ~SetGlobal("_bAerieAgreesEdwin","GLOBAL",1)~ EXIT
	
CHAIN AERIE25J _bAE3
@61 /*So what should I do?*/
END
	++ @57 /*Do it, Aerie. A normal human life can still be a hundred years, and with your healing magic, you could live even longer.*/ DO ~SetGlobal("_bAerieAgreesEdwin","GLOBAL",1)~ + _bAE4
	++ @58 /*No, Aerie, nothing is worth giving up your immortality.*/ DO ~SetGlobal("_bAerieDeclinesEdwin","GLOBAL",1)~ + _bAE4
	++ @59 /*Do what you want, Aerie. This is your decision to make, not mine.*/ DO ~SetGlobal("_bAerieDeclinesEdwin","GLOBAL",1)~ + _bAE4
	++ @60 /*No one cares what you do, Aerie.*/ DO ~SetGlobal("_bAerieAgreesEdwin","GLOBAL",1)~ EXIT
	
CHAIN AERIE25J _bAE4
@62 /*You're right. Thanks, <CHARNAME>.*/
EXIT


//Refuse Edwin Talk
CHAIN IF WEIGHT #-1 ~Global("_bEdwinAerieWings","GLOBAL",21) Global("_bAerieDeclinesEdwin","GLOBAL",1)~ THEN AERIE25J _bAerieSaysNoEdwin
@63 /*Edwin? You--you've been really generous and all. I can't thank you enough, but I h-have to decline.*/
DO ~SetGlobal("_bEdwinAerieWings","GLOBAL",22)~
= @64 /*Please--please don't hate me?*/
== EDWIN25J @65 /*WHAT? (Patience, she might yet come around.)*/
= @66 /*I mean... yes. Of course. That's perfectly all right, child; just let me know if you change your mind. (How could she?! All that work for nothing.)*/
EXIT

//Agree Edwin Talk
CHAIN IF WEIGHT #-1 ~Global("_bEdwinAerieWings","GLOBAL",21) Global("_bAerieAgreesEdwin","GLOBAL",1)~ THEN AERIE25J _bAerieSaysYesEdwin
@67 /*Edwin? I--I accept. Please teach me the spell and then I promise t-that I will exchange bodies with you.*/
DO ~SetGlobal("_bEdwinAerieWings","GLOBAL",22) SetGlobal("_bAerieAgreesEdwin","GLOBAL",2)~
== EDWIN25J @68 /*Yes, finally! <CHARNAME>, we must stop and rest so Aerie can study this scroll.*/
DO ~RestParty()~
EXIT

//Pre Cut-scene Talk
CHAIN IF WEIGHT #-1 ~Global("_bAerieAgreesEdwin","GLOBAL",3)~ THEN AERIE25J _bAerieSaysYesEdwin2
@69 /*I have the spell. Let me cast it on myself first.*/
DO ~SetGlobal("_bAerieAgreesEdwin","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("_bAWing")~ 
EXIT

//Post Wing Cutscene Talk
CHAIN IF WEIGHT #-1 ~Global("_bAerieAgreesEdwin","GLOBAL",4)~ THEN AERIE25J _bAerieSaysYesEdwin3
@70 /*I--I did it. I have wings. I can fly!*/
DO ~SetGlobal("_bAerieAgreesEdwin","GLOBAL",5)~
== EDWIN25J @71 /*Have you forgotten our bargain, child?*/
== AERIE25J @72 /*No. Okay, Edwin, let's do this now.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bASwap")~
EXIT

//Post Swap Cutscene Talk
CHAIN IF WEIGHT #-1 ~Global("_bAerieAgreesEdwin","GLOBAL",5)~ THEN AERIE25J _bAerieSaysYesEdwin4
@73 /*I don't feel any different. I was sure I would feel my human body slowly disintegrating...*/
DO ~SetGlobal("_bAerieAgreesEdwin","GLOBAL",6)~
= @74 /*I have wings! I can fly! And I look and feel the same. Oh Edwin, this is wonderful. You are the greatest wizard ever.*/
== EDWIN25J @75 /*Immortality! I have done it! I have achieved my life's work! (But what do I do now?)*/
EXIT
