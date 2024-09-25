//SOA Talks
//First talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyValygar","GLOBAL",2)~ THEN MAZZYJ _bMVTalk1
@1 /*Valygar, I realize you have had difficult experiences with magic in the past, but surely you must see by now that not all magic is evil.*/
== VALYGARJ @2 /*I have seen no such thing. Magic has done nothing but ruin my family.*/
DO ~SetGlobal("_bMazzyValygar","GLOBAL",3)~
= @3 /*Surely as a halfling you must understand; your people are noble souls and avoid magic entirely.*/
== MAZZYJ @4 /*Actually, if you must know, my mother, Vara, is a conjurer... and I assure you she is the most harmless soul imaginable.*/
= @5 /*But she would agree with you that magic used to harm others hurts the caster as well. Her magic is composed of simple and useful charms meant to aid her in everyday life.*/
== VALYGARJ @6 /*She should be more careful! Those spells may seem harmless, but beneath the surface, magic will corrupt her soul.*/
== MAZZYJ @7 /*Valygar, I appreciate the concern, but I believe your worry is unfounded. My mother has been practising magic for longer than I have been alive. Were she going to be corrupted, it would have happened already.*/
= @8 /*Perhaps you should not assume that your own experiences must apply to everyone?*/
== VALYGARJ @9 /*Perhaps... but I do not believe that to be true.*/
EXIT

//2nd Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyValygar","GLOBAL",5)~ THEN VALYGARJ _bMVTalk2
@10 /*Mazzy, I have been thinking and perhaps you are correct. When you say your mother has used magic without becoming corrupted, I should believe you.*/
= @11 /*You are perceptive and you are not one to lie.*/
DO ~SetGlobal("_bMazzyValygar","GLOBAL",6)~
== MAZZYJ @12 /*Really? Valygar, I am impressed. I did not expect you to suddenly become so open-minded.*/
== VALYGARJ @13 /*Yet all this proves is that there must be some reason why your mother is an exception.*/
== MAZZYJ @14 /**sigh* I suppose I should accept what concessions you are willing to make.*/
== VALYGARJ @15 /*You said she avoids all harmful magic so that must be the key. And she is a halfling, a race that is especially resistant to both magic and evil.*/
== MAZZYJ @16 /*So does that mean you do not think my mother is evil?*/
== VALYGARJ @17 /*I suppose that it does.*/
== MAZZYJ @18 /*You do not know how pleased you have made me.*/
EXIT


//TOB Talks
//First Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyValygar","GLOBAL",2)~ THEN MAZZY25J _bMVTalk1
@1 /*Valygar, I realize you have had difficult experiences with magic in the past, but surely you must see by now that not all magic is evil.*/
== VALYG25J @2 /*I have seen no such thing. Magic has done nothing but ruin my family.*/
DO ~SetGlobal("_bMazzyValygar","GLOBAL",3)~
= @3 /*Surely as a halfling you must understand; your people are noble souls and avoid magic entirely.*/
== MAZZY25J @4 /*Actually, if you must know, my mother, Vara, is a conjurer... and I assure you she is the most harmless soul imaginable.*/
= @5 /*But she would agree with you that magic used to harm others hurts the caster as well. Her magic is composed of simple and useful charms meant to aid her in everyday life.*/
== VALYG25J @6 /*She should be more careful! Those spells may seem harmless, but beneath the surface, magic will corrupt her soul.*/
== MAZZY25J @7 /*Valygar, I appreciate the concern, but I believe your worry is unfounded. My mother has been practising magic for longer than I have been alive. Were she going to be corrupted, it would have happened already.*/
= @8 /*Perhaps you should not assume that your own experiences must apply to everyone?*/
== VALYG25J @9 /*Perhaps... but I do not believe that to be true.*/
EXIT

//2nd Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyValygar","GLOBAL",5)~ THEN VALYG25J _bMVTalk2
@10 /*Mazzy, I have been thinking and perhaps you are correct. When you say your mother has used magic without becoming corrupted, I should believe you.*/
= @11 /*You are perceptive and you are not one to lie.*/
DO ~SetGlobal("_bMazzyValygar","GLOBAL",6)~
== MAZZY25J @12 /*Really? Valygar, I am impressed. I did not expect you to suddenly become so open-minded.*/
== VALYG25J @13 /*Yet all this proves is that there must be some reason why your mother is an exception.*/
== MAZZY25J @14 /**sigh* I suppose I should accept what concessions you are willing to make.*/
== VALYG25J @15 /*You said she avoids all harmful magic so that must be the key. And she is a halfling, a race that is especially resistant to both magic and evil.*/
== MAZZY25J @16 /*So does that mean you do not think my mother is evil?*/
== VALYG25J @17 /*I suppose that it does.*/
== MAZZY25J @18 /*You do not know how pleased you have made me.*/
EXIT

//3rd Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyValygar","GLOBAL",8)~ THEN MAZZY25J _bMVTalk3
@19 /*Valygar, if you truly wish to be shorter, I believe I have a solution, but I am fairly certain you will loathe it.*/
== VALYG25J @20 /*Mazzy, I could not possibly hate your suggestion.*/
DO ~SetGlobal("_bMazzyValygar","GLOBAL",9)~
== MAZZY25J @21 /*My mother has a spell that can transform you into a halfling.*/
== VALYG25J @22 /*What?*/
== MAZZY25J @23 /*My mother learned a spell from an old wizard friend that transforms people into halflings.*/
== VALYG25J @24 /*Why would anyone develop such a spell and why would your mother want it? No offense meant, but wizards seek only power.*/
== MAZZY25J @25 /*As I understand it, her friend was in some trouble and wanted to change his identity. He could not cast the spell on himself, and my mother, as his somewhat apprentice, was willing to help.*/
= @26 /*As for her, she wanted the spell to increase her chances of grandchildren, just in case my sister or I developed an exotic taste in men. It took her six months to learn.*/
== VALYG25J @27 /*Very well, Mazzy, you win; your mother is the least evil wizard ever. That is the most ridiculous story I have yet heard.*/
= @28 /*The spell, does it work?*/
== MAZZY25J IF ~!Global("_bCNHalfling","GLOBAL",1) !Global("_bImoenHalfling","GLOBAL",1)~ THEN @29 /*Well, I have never seen her cast it, but I understand that it does.*/
== MAZZY25J IF ~Global("_bCNHalfling","GLOBAL",1) !Global("_bImoenHalfling","GLOBAL",1)~ THEN @30 /*Oh yes, it's quite effective. <CHARNAME> can attest to that.*/
== MAZZY25J IF ~!Global("_bCNHalfling","GLOBAL",1) Global("_bImoenHalfling","GLOBAL",1)~ THEN @31 /*Oh yes, it's quite effective. Imoen can attest to that.*/
== MAZZY25J IF ~Global("_bCNHalfling","GLOBAL",1) Global("_bImoenHalfling","GLOBAL",1)~ THEN @32 /*Oh yes, it's quite effective. Imoen and <CHARNAME> can attest to that.*/
== VALYG25J @33 /*So if I was willing, I could...*/
== MAZZY25J @34 /*Yes.*/
== VALYG25J @35 /*But to be the target of a spell that transforms my entire body...*/
== MAZZY25J @36 /*It is not a choice I can make for you. I merely wished to make you aware of the option.*/
== VALYG25J @37 /*Thank you.*/
EXIT

//Last Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyValygar","GLOBAL",11)~ THEN VALYG25J _bMVTalk4
@38 /*Mazzy, when all of this is over, my I continue to travel with you?*/
DO ~SetGlobal("_bMazzyValygar","GLOBAL",12)~
== MAZZY25J @39 /*You are my squire, one of my best friends, and a warrior of near unparalleled skill.*/
= @40 /*Of course you may. Why would you think otherwise?*/
== VALYG25J @41 /*Then let us return to your mother when this is done, and perhaps I shall ask her to cast her spell.*/
== MAZZY25J @42 /*You...? You are going to ask my mother, a conjurer, to cast a spell, on you, to change you into a halfling?*/
== VALYG25J @43 /*Yes, that's what I said. You needn't look so amazed. You think I am silent on my feet now, just wait until I am half this size.*/
== MAZZY25J @44 /*I cannot believe it. I thought you hated magic?*/
== VALYG25J @45 /*I hate its corrupting forces, I hate to see it used for evil, and I loathe the undead.*/
= @46 /*But in my time traveling with you and <CHARNAME>, I have been the target of many spells, and not one has made me more evil. Certainly they do not seem to have affected you.*/
= @47 /*Logically, if I hate magic then I should want to be a halfling in order to gain your resistance to spells.*/
== MAZZY25J @48 /**laughs* Yes, I suppose that makes sense. Very well, if we both survive <CHARNAME>'s latest brush with destiny, then we shall return to Trademeet and have an adventure of an entirely different sort.*/
EXIT