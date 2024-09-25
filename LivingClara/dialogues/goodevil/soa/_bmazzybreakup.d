//Extra Breakup Talks - everyone who doesn't have own files

//Sarevok
CHAIN IF WEIGHT #-1 ~Global("_bMazNotSarev","GLOBAL",3)~ THEN SAREV25J _bSarevokBreakupTalk
@1 /*You are a fool, small one.*/
DO ~SetGlobal("_bMazNotSarev","GLOBAL",4)~
== MAZZY25J @2 /*I do not think so.*/
== SAREV25J @3 /*You are. You believe that <CHARNAME> truly loves you, but <PRO_HESHE> will cast you aside for power in the end.*/
= @4 /*Or if my dear <PRO_BROTHERSISTER> decides to throw away <PRO_HISHER> heritage, you will still be abandoned. Tossed aside for someone new when <PRO_HESHE> grows bored.*/
= @5 /*Mark my words, small one, your *great love* will be extinguished before the month is out.*/
== MAZZY25J @6 /*You are wrong.*/
== MAZZY25J IF ~Global("ExpBMazzy6","LOCALS",1)~ THEN @7 /*Though I must apologize for whatever measure of peace that you have lost.*/
== MAZZY25J IF ~!Global("_bMazzyRomance","GLOBAL",2)~ THEN @8 /*I am not blinded by girlish infatuation or a dream of grand romance. <CHARNAME> has asked to court me and I have accepted, that is all.*/
== MAZZY25J IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @9 /*I am not blinded by girlish infatuation or a dream of grand romance. <CHARNAME> has courted me, and so we are together, that is all.*/
== MAZZY25J @10 /*Should our paths diverge in the future, I trust <PRO_HIMHER> to inform me before leaving me behind.*/
== SAREV25J @11 /*And that is why you are a fool.*/
EXIT

//Neera (SOA)
CHAIN IF WEIGHT #-1 ~Global("_bMazNotNeera","GLOBAL",3)~ THEN NEERAJ _bNeeraBreakupTalk
@12 /*Mazzy! Where are you?! I need to talk to you! Mazzy!*/
DO ~SetGlobal("_bMazNotNeera","GLOBAL",4)~
== MAZZYJ @13 /*What is it, Neera? There's no need to shout.*/
== NEERAJ @14 /*No need to shout? NO NEED TO SHOUT? Of course I need to shout! Do you know what <CHARNAME> just said to me?*/
== MAZZYJ @15 /*How should I know? I wasn't part of your conversation.*/
== NEERAJ @16 /*Then let me enlighten you... <CHARNAME> just took me aside and told me that <PRO_HESHE> doesn't want me anymore.*/
= @17 /*Apparently <PRO_HESHE> is in love with you and intends to court you. What do you have to say about that, Mazzy?!*/
== MAZZYJ @18 /*...Aah, yes. I am sorry if <CHARNAME>'s decision broke your heart. I understand why you are angry, but I did ask if <PRO_HESHE> was sure.*/
== NEERAJ @19 /*You're not supposed to ask if <PRO_HESHE> is sure! You're supposed to say, "Sorry, <CHARNAME>, you're with Neera, I couldn't possibly date you now!"*/
= @20 /*Seriously, how are you so calm about this? I'm just so mad at both of you! I want to shout or explode or...*/
DO ~ApplySpell("Mazzy",CLERIC_FLAME_STRIKE) ApplySpell(Player1,CLERIC_FLAME_STRIKE)~
== MAZZYJ @21 /*Do you feel better now?*/
== NEERAJ @22 /*You know, I think I do.*/
EXIT

//Neera (TOB)
CHAIN IF WEIGHT #-1 ~Global("_bMazNotNeera","GLOBAL",3)~ THEN NEERA25J _bNeeraBreakupTalk
@12 /*Mazzy! Where are you?! I need to talk to you! Mazzy!*/
DO ~SetGlobal("_bMazNotNeera","GLOBAL",4)~
== MAZZY25J @13 /*What is it, Neera? There's no need to shout.*/
== NEERA25J @14 /*No need to shout? NO NEED TO SHOUT? Of course I need to shout! Do you know what <CHARNAME> just said to me?*/
== MAZZY25J @15 /*How should I know? I wasn't part of your conversation.*/
== NEERA25J @16 /*Then let me enlighten you... <CHARNAME> just took me aside and told me that <PRO_HESHE> doesn't want me anymore.*/
= @17 /*Apparently <PRO_HESHE> is in love with you and intends to court you. What do you have to say about that, Mazzy?!*/
== MAZZY25J @18 /*...Aah, yes. I am sorry if <CHARNAME>'s decision broke your heart. I understand why you are angry, but I did ask if <PRO_HESHE> was sure.*/
== NEERA25J @19 /*You're not supposed to ask if <PRO_HESHE> is sure! You're supposed to say, "Sorry, <CHARNAME>, you're with Neera, I couldn't possibly date you now!"*/
= @20 /*Seriously, how are you so calm about this? I'm just so mad at both of you! I want to shout or explode or...*/
DO ~ApplySpell("Mazzy",CLERIC_FLAME_STRIKE) ApplySpell(Player1,CLERIC_FLAME_STRIKE)~
== MAZZY25J @21 /*Do you feel better now?*/
== NEERA25J @22 /*You know, I think I do.*/
EXIT

//Dorn (SOA)
CHAIN IF WEIGHT #-1 ~Global("_bMazNotDorn","GLOBAL",3)~ THEN DORNJ _bDornBreakupTalk
@23 /*Halfling! Stand and answer for your crimes!*/
DO ~SetGlobal("_bMazNotDorn","GLOBAL",4)~
== MAZZYJ @24 /*What is it now, blackguard? You are the only person here who has committed any crimes.*/
== DORNJ @25 /*You DARE to ask me that? You self-righteous hypocrite!*/
= @26 /*For trying to steal <CHARNAME> away from me, the penalty is death!*/
== MAZZYJ @27 /*Don't be ridiculous! <CHARNAME> is <PRO_HISHER> own <PRO_MANWOMAN>. You may have been lovers but that does not mean you own <PRO_HIMHER>.*/
= @28 /*<CHARNAME> has the right to choose <PRO_HISHER> future and that future does not involve you anymore!*/
== DORNJ @29 /*Only because of your manipulations! You've been trying to turn <CHARNAME> against me from the start. Once you are dead, <PRO_HESHE> will see the truth!*/
= @30 /*Draw your weapon and face me or die without a fight!*/
== MAZZYJ @31 /*I will not be the one who dies, blackguard!*/
DO ~Attack("Dorn") ActionOverride("Dorn",Attack("Mazzy"))~
EXIT

//Dorn (TOB)
CHAIN IF WEIGHT #-1 ~Global("_bMazNotDorn","GLOBAL",3)~ THEN DORN25J _bDornBreakupTalk
@23 /*Halfling! Stand and answer for your crimes!*/
DO ~SetGlobal("_bMazNotDorn","GLOBAL",4)~
== MAZZY25J @24 /*What is it now, blackguard? You are the only person here who has committed any crimes.*/
== DORN25J @25 /*You DARE to ask me that? You self-righteous hypocrite!*/
= @26 /*For trying to steal <CHARNAME> away from me, the penalty is death!*/
== MAZZY25J @27 /*Don't be ridiculous! <CHARNAME> is <PRO_HISHER> own <PRO_MANWOMAN>. You may have been lovers but that does not mean you own <PRO_HIMHER>.*/
= @28 /*<CHARNAME> has the right to choose <PRO_HISHER> future and that future does not involve you anymore!*/
== DORN25J @29 /*Only because of your manipulations! You've been trying to turn <CHARNAME> against me from the start. Once you are dead, <PRO_HESHE> will see the truth!*/
= @30 /*Draw your weapon and face me or die without a fight!*/
== MAZZY25J @31 /*I will not be the one who dies, blackguard!*/
DO ~Attack("Dorn") ActionOverride("Dorn",Attack("Mazzy"))~
EXIT

//Aerie (SOA)
CHAIN IF WEIGHT #-1 ~Global("_bMazNotAerie","GLOBAL",3)~ THEN AERIEJ _bAerieBreakupTalk
@32 /*M-Mazzy, may I-I speak with y-you?*/
DO ~SetGlobal("_bMazNotAerie","GLOBAL",4)~
== MAZZYJ @33 /*Of course, Aerie. How can I help?*/
== AERIEJ @34 /*Well, I-I just wanted to know about y-you and <CHARNAME>... Did <PRO_HESHE> really ask to c-court you?*/
== MAZZYJ @35 /*Yes. I did not expect <PRO_HISHER> interest but it was actually rather sweet.*/
== AERIEJ @36 /*Oh... I see...*/
== MAZZYJ @37 /*I know that you loved <PRO_HIMHER> as well, but <CHARNAME> promised <PRO_HESHE> was certain.*/
== AERIEJ @38 /*If this is w-what <CHARNAME> r-really wants, then I guess I-I can't stand in <PRO_HISHER> way. I just want <PRO_HIMHER> t-to be happy.*/
== MAZZYJ @39 /*You are a better friend than I deserve, Aerie. I hope we are able to speak again once you have a chance to grieve.*/
== AERIEJ @40 /*I- I don't know, Mazzy. But I think I-I hope that too.*/
EXIT

//Aerie (TOB)
CHAIN IF WEIGHT #-1 ~Global("_bMazNotAerie","GLOBAL",3)~ THEN AERIE25J _bAerieBreakupTalk
@32 /*M-Mazzy, may I-I speak with y-you?*/
DO ~SetGlobal("_bMazNotAerie","GLOBAL",4)~
== MAZZY25J @33 /*Of course, Aerie. How can I help?*/
== AERIE25J @34 /*Well, I-I just wanted to know about y-you and <CHARNAME>... Did <PRO_HESHE> really ask to c-court you?*/
== MAZZY25J @35 /*Yes. I did not expect <PRO_HISHER> interest but it was actually rather sweet.*/
== AERIE25J @36 /*Oh... I see...*/
== MAZZY25J @37 /*I know that you loved <PRO_HIMHER> as well, but <CHARNAME> promised <PRO_HESHE> was certain.*/
== AERIE25J @38 /*If this is w-what <CHARNAME> r-really wants, then I guess I-I can't stand in <PRO_HISHER> way. I just want <PRO_HIMHER> t-to be happy.*/
== MAZZY25J @39 /*You are a better friend than I deserve, Aerie. I hope we are able to speak again once you have a chance to grieve.*/
== AERIE25J @40 /*I- I don't know, Mazzy. But I think I-I hope that too.*/
EXIT

//Rasaad (SOA)
CHAIN IF WEIGHT #-1 ~Global("_bMazNotRasaad","GLOBAL",3)~ THEN RASAADJ _bRasaadBreakupTalk
@41 /*I suppose I should not have expected a better end than this.*/
= @42 /*I have sacrificed so much in my search for Alorgoth... it was inevitable that <CHARNAME> would leave eventually.*/
DO ~SetGlobal("_bMazNotRasaad","GLOBAL",4)~
== MAZZYJ @43 /*Rasaad? Are you all right?*/
== RASAADJ @44 /*Ah, Mazzy. I must admit that I am feeling melancholy on this <DAYNIGHTALL>.*/
= @45 /*Perhaps I should hate you for stealing <CHARNAME>'s affections, but I know that <PRO_HESHE> did not wish to break my heart.*/
= @46 /*The fault is my own. I was too obsessed with my revenge to give our relationship the attention it deserved.*/
= @47 /*If you truly love <CHARNAME>, I trust that you won't make the same mistake.*/
== MAZZYJ @48 /*I...*/
= @49 /*I promise, Rasaad. I will do my best to treat <PRO_HIMHER> with all the respect that <PRO_HESHE> deserves.*/
== RASAADJ @50 /*Thank you, Mazzy. I can ask no more than that.*/
EXIT

//Rasaad (TOB)
CHAIN IF WEIGHT #-1 ~Global("_bMazNotRasaad","GLOBAL",3)~ THEN RASAA25J _bRasaadBreakupTalk
@41 /*I suppose I should not have expected a better end than this.*/
= @42 /*I have sacrificed so much in my search for Alorgoth... it was inevitable that <CHARNAME> would leave eventually.*/
DO ~SetGlobal("_bMazNotRasaad","GLOBAL",4)~
== MAZZY25J @43 /*Rasaad? Are you all right?*/
== RASAA25J @44 /*Ah, Mazzy. I must admit that I am feeling melancholy on this <DAYNIGHTALL>.*/
= @45 /*Perhaps I should hate you for stealing <CHARNAME>'s affections, but I know that <PRO_HESHE> did not wish to break my heart.*/
= @46 /*The fault is my own. I was too obsessed with my revenge to give our relationship the attention it deserved.*/
= @47 /*If you truly love <CHARNAME>, I trust that you won't make the same mistake.*/
== MAZZY25J @48 /*I...*/
= @49 /*I promise, Rasaad. I will do my best to treat <PRO_HIMHER> with all the respect that <PRO_HESHE> deserves.*/
== RASAA25J @50 /*Thank you, Mazzy. I can ask no more than that.*/
EXIT

