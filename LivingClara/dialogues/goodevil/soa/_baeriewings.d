//Aerie Wing Line Changes in TOB
ADD_STATE_TRIGGER AERIE25J 35 ~!PartyHasItem("_BWINGA")~ //turns off this dialogue

//New Sarevok Banter Lines
ADD_STATE_TRIGGER BSAREV25 75 ~!PartyHasItem("_BWINGA")~ //turns off the normal start of this banter

CHAIN IF ~InParty("Aerie") See("Aerie") !StateCheck("Aerie",STATE_SLEEPING) Alignment("Sarevok",MASK_EVIL) Global("ExpBSarevok9","GLOBAL",0) PartyHasItem("_BWINGA")~ THEN BSAREV25 _bAerieSarevokAlt
@1 /*What is this I see? A fragile bird. How fitting that you should flap along with this group, eager to prove your worth.*/
COPY_TRANS BSAREV25 75


//Alternate Anomen Banter Lines
ADD_TRANS_TRIGGER BAERIE25 40 ~!PartyHasItem("_BWINGA")~ DO 0

EXTEND_BOTTOM BAERIE25 40
IF ~PartyHasItem("_BWINGA")~ THEN + _bAerieAnomenAlt
END

CHAIN BAERIE25 _bAerieAnomenAlt
@2 /*And I doubt they would even accept my help. I have spent too long out in the world. Even with my wings restored, I... I would not fit in there anymore. It is... it is probably j-just best for me to avoid them altogether.*/
COPY_TRANS BAERIE25 41


//Alternate Nalia Banter Lines
ADD_TRANS_TRIGGER BAERIE25 80 ~!PartyHasItem("_BWINGA")~ DO 0

EXTEND_BOTTOM BAERIE25 80
IF ~PartyHasItem("_BWINGA")~ THEN EXTERN BNALIA25 _bAerieNaliaAlt
END

CHAIN BNALIA25 _bAerieNaliaAlt
@3 /*There's no reason you couldn't, Aerie. You're a powerful mage and cleric both. Finding it would be no trouble now, and you deserve their respect.*/
== BAERIE25 @4 /*It's not like that, Nalia. The avariel... they would never accept me. I may have my wings back but I wouldn't be one of them.*/
COPY_TRANS BAERIE25 81

ADD_TRANS_TRIGGER BNALIA25 46 ~!PartyHasItem("_BWINGA")~ DO 0

EXTEND_BOTTOM BNALIA25 46
IF ~PartyHasItem("_BWINGA")~ THEN EXTERN BAERIE25 _bAerieNaliaAlt1
END

CHAIN BAERIE25 _bAerieNaliaAlt1
@5 /*I... wouldn't want to make them do anything. I don't belong there anymore.*/
COPY_TRANS BAERIE25 82



//Aerie Wing Attempts SOA
//First Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",0)~ THEN AERIEJ _bAerieWingTry1A
@6 /*You... you can do this, Aerie. You are a powerful cleric. You can regenerate tissue. You will regrow your w-wings.*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",1)~ THEN AERIEJ _bAerieWingTry1B
@7 /*Grow, wings, grow!*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @8 /*I... I feel... I feel nothing!*/
= @9 /*Maybe I should just give up.*/
END
	++ @9001 /*No, Aerie, keep trying! I believe in you.*/ EXIT
	++ @9002 /*You're never going to have wings. It can't be done. Just stop trying and fall back in line.*/ 
		DO ~SetGlobal("_bAerieWingTalk","GLOBAL",222) SetGlobal("_bAerieWingResponse","GLOBAL",333)~ EXIT

//Second Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",2)~ THEN AERIEJ _bAerieWingTry2A
@10 /*I... I can do this! I've healed wounds. I've regrown limbs. I-I've raised the dead!*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @11 /*I can regenerate my wings!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",3)~ THEN AERIEJ _bAerieWingTry2B
@12 /*And...*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @13 /*N-nothing. Still nothing. *sob**/
= @14 /*Quit your whining, Aerie, you're immortal. Y-You have time to spare. You just have to keep trying.*/
EXIT

//3rd Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",4)~ THEN AERIEJ _bAerieWingTry3A
@15 /*Baervan W-Wildwanderer, please hear me!*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @16 /*You have... you have given me the power of regeneration and I am very grateful.*/
= @17 /*But my wings are still gone! Please! I... I beg you! Grant me the power to regrow them!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",5)~ THEN AERIEJ _bAerieWingTry3B
@18 /*Why?! Why do you forsake me?*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @19 /**sobs**/
EXIT

//4th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",6)~ THEN AERIEJ _bAerieWingTry4A
@20 /*D-don't be nervous, Aerie... you've done this before... you... you paid her tribute all those years... even if you haven't done her ritual since... since......*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @21 /*Winged Mother! Aerdrie Faenya!*/
= @22 /*It is Aerie, I who used to d-dance across the sky in your windswept embrace.*/
= @23 /*Winged Mother! It is Aerie! I who honor those w-who dwell among the clouds.*/
= @24 /*Aerdrie Faenya! It... it is Aerie! I who cherish the birds dancing on your tresses.*/
= @25 /*Change is beautiful, Winged Mother, and chaos births new life. The d-death of the old makes room for the new.*/
= @26 /*Oh Aerdrie Faenya! It is Aerie! I-I who ascended, soared, and dove, only to... only to ascend anew!*/
= @27 /*Oh Winged Mother! It is Aerie! Grant me the power to heal my wings and once again relish the f-freedom you bequeath!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",7)~ THEN AERIEJ _bAerieWingTry4B
@28 /*Nothing?*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @29 /*Why? W-Why do you deny me this?*/
EXIT

//5th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",8)~ THEN AERIEJ _bAerieWingTry5A
@30 /*I... I will try this again.*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @31 /*Oh Baervan Wildwanderer, the great forests await me! Grant me the courage to venture forth from my burrow.*/
= @32 /*Oh Great Forest Gnome, I defend and protect all creatures of the forests and woodlands.*/
= @33 /*I... I live for the beauty of the wilds and, in wonder, I follow life wherever it may lead.*/
= @34 /*Oh great Masked Leaf, please grant me the p-power to heal my wings and serve you more fully!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",9)~ THEN AERIEJ _bAerieWingTry5B
@35 /*Nothing!?*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @36 /*Fine then!*/
EXIT

//6th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",10)~ THEN AERIEJ _bAerieWingTry6A
@37 /*Chiktikka Fastpaws? It's Aerie. I need help.*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @38 /*I... I called on Baervan for help, but haven't gotten anywhere.*/
= @39 /*I even called on A-Aerdrie Faenya, but that didn't help me either.*/
= @40 /*I'm a powerful cleric, and a mage, so I suppose I can't complain, but I really hoped that I'd be able to... to regenerate my wings.*/
= @41 /*Can you help me? P-Please?*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",11)~ THEN AERIEJ _bAerieWingTry6B
@42 /**sighs* I suppose I didn't really expect that to work.*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
EXIT

//7th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",12)~ THEN AERIEJ _bAerieWingTry7A
@43 /*Enough of this, Aerie; you're out of options.*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @44 /*Deep... deep breaths.*/
= @45 /*Oh Baervan Wildwanderer, it is your servant, Aerie! I call on you! Answer me now!*/
= @46 /*AERIE, WINGED ONE, HOW MAY I AID YOU?*/
= @47 /*It's about my wings... I'd like them back. I... I wish to fly again.*/
= @48 /*THEN FLY, MY CHILD.*/
= @49 /*But I... I can't fly because I don't have wings! They were cut off when I was caged.*/
= @50 /*YOU HAVE MISPLACED YOUR WINGS? SEARCH AND YOU SHALL FIND THEM, MY CHILD.*/
= @51 /*I did not misplace them!*/
= @52 /**sigh**/
= @53 /*W--where do I look for them?*/
= @54 /*WITHIN, WINGED ONE. ALWAYS WITHIN.*/
= @55 /*But...*/
= @56 /*FAREWELL. I AM ALWAYS WITH YOU.*/
= @57 /*But... no...*/
= @58 /*I should've known better than to expect a straight answer from a god.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",13)~ THEN AERIEJ _bAerieWingTry7B
@59 /*I don't know why I bother.*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
EXIT

//8th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",14)~ THEN AERIEJ _bAerieWingTry8A
@60 /*Okay... look within... I can do this.*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @61 /*Within I see... I see me.*/
= @62 /*My power flows down from the heavens... from the earth... from the rocks and trees...*/
= @63 /*And when I--I cast regeneration on myself...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",15)~ THEN AERIEJ _bAerieWingTry8B
@64 /*Every part of my body heals itself, except...*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @65 /*But WHY?*/
EXIT

//9th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",16)~ THEN AERIEJ _bAerieWingTry9A
@66 /*The spell heals recent wounds!*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @67 /*I... I think I understand... when I cast regeneration, it regenerates parts of my body that were recently damaged.*/
= @68 /*But that's because that's what I focus on.*/
= @69 /*So if I f-focus on my wings... on my scars... and I...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",17)~ THEN AERIEJ _bAerieWingTry9B
@70 /*What?! That should've worked!*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
EXIT


//TOB Talks Version
//First Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",0)~ THEN AERIE25J _bAerieWingTry1A
@6 /*You... you can do this, Aerie. You are a powerful cleric. You can regenerate tissue. You will regrow your w-wings.*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",1)~ THEN AERIE25J _bAerieWingTry1B
@7 /*Grow, wings, grow!*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @8 /*I... I feel... I feel nothing!*/
= @9 /*Maybe I should just give up.*/
END
	++ @9001 /*No, Aerie, keep trying! I believe in you.*/ EXIT
	++ @9002 /*You're never going to have wings. It can't be done. Just stop trying and fall back in line.*/ 
		DO ~SetGlobal("_bAerieWingTalk","GLOBAL",222) SetGlobal("_bAerieWingResponse","GLOBAL",333)~ EXIT

//Second Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",2)~ THEN AERIE25J _bAerieWingTry2A
@10 /*I... I can do this! I've healed wounds. I've regrown limbs. I-I've raised the dead!*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @11 /*I can regenerate my wings!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",3)~ THEN AERIE25J _bAerieWingTry2B
@12 /*And...*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @13 /*N-nothing. Still nothing. *sob**/
= @14 /*Quit your whining, Aerie, you're immortal. Y-You have time to spare. You just have to keep trying.*/
EXIT

//3rd Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",4)~ THEN AERIE25J _bAerieWingTry3A
@15 /*Baervan W-Wildwanderer, please hear me!*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @16 /*You have... you have given me the power of regeneration and I am very grateful.*/
= @17 /*But my wings are still gone! Please! I... I beg you! Grant me the power to regrow them!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",5)~ THEN AERIE25J _bAerieWingTry3B
@18 /*Why?! Why do you forsake me?*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @19 /**sobs**/
EXIT

//4th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",6)~ THEN AERIE25J _bAerieWingTry4A
@20 /*D-don't be nervous, Aerie... you've done this before... you... you paid her tribute all those years... even if you haven't done her ritual since... since......*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @21 /*Winged Mother! Aerdrie Faenya!*/
= @22 /*It is Aerie, I who used to d-dance across the sky in your windswept embrace.*/
= @23 /*Winged Mother! It is Aerie! I who honor those w-who dwell among the clouds.*/
= @24 /*Aerdrie Faenya! It... it is Aerie! I who cherish the birds dancing on your tresses.*/
= @25 /*Change is beautiful, Winged Mother, and chaos births new life. The d-death of the old makes room for the new.*/
= @26 /*Oh Aerdrie Faenya! It is Aerie! I-I who ascended, soared, and dove, only to... only to ascend anew!*/
= @27 /*Oh Winged Mother! It is Aerie! Grant me the power to heal my wings and once again relish the f-freedom you bequeath!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",7)~ THEN AERIE25J _bAerieWingTry4B
@28 /*Nothing?*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @29 /*Why? W-Why do you deny me this?*/
EXIT

//5th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",8)~ THEN AERIE25J _bAerieWingTry5A
@30 /*I... I will try this again.*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @31 /*Oh Baervan Wildwanderer, the great forests await me! Grant me the courage to venture forth from my burrow.*/
= @32 /*Oh Great Forest Gnome, I defend and protect all creatures of the forests and woodlands.*/
= @33 /*I... I live for the beauty of the wilds and, in wonder, I follow life wherever it may lead.*/
= @34 /*Oh great Masked Leaf, please grant me the p-power to heal my wings and serve you more fully!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",9)~ THEN AERIE25J _bAerieWingTry5B
@35 /*Nothing!?*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @36 /*Fine then!*/
EXIT

//6th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",10)~ THEN AERIE25J _bAerieWingTry6A
@37 /*Chiktikka Fastpaws? It's Aerie. I need help.*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @38 /*I... I called on Baervan for help, but haven't gotten anywhere.*/
= @39 /*I even called on A-Aerdrie Faenya, but that didn't help me either.*/
= @40 /*I'm a powerful cleric, and a mage, so I suppose I can't complain, but I really hoped that I'd be able to... to regenerate my wings.*/
= @41 /*Can you help me? P-Please?*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",11)~ THEN AERIE25J _bAerieWingTry6B
@42 /**sighs* I suppose I didn't really expect that to work.*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
EXIT

//7th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",12)~ THEN AERIE25J _bAerieWingTry7A
@43 /*Enough of this, Aerie; you're out of options.*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @44 /*Deep... deep breaths.*/
= @45 /*Oh Baervan Wildwanderer, it is your servant, Aerie! I call on you! Answer me now!*/
= @46 /*AERIE, WINGED ONE, HOW MAY I AID YOU?*/
= @47 /*It's about my wings... I'd like them back. I... I wish to fly again.*/
= @48 /*THEN FLY, MY CHILD.*/
= @49 /*But I... I can't fly because I don't have wings! They were cut off when I was caged.*/
= @50 /*YOU HAVE MISPLACED YOUR WINGS? SEARCH AND YOU SHALL FIND THEM, MY CHILD.*/
= @51 /*I did not misplace them!*/
= @52 /**sigh**/
= @53 /*W--where do I look for them?*/
= @54 /*WITHIN, WINGED ONE. ALWAYS WITHIN.*/
= @55 /*But...*/
= @56 /*FAREWELL. I AM ALWAYS WITH YOU.*/
= @57 /*But... no...*/
= @58 /*I should've known better than to expect a straight answer from a god.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",13)~ THEN AERIE25J _bAerieWingTry7B
@59 /*I don't know why I bother.*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
EXIT

//8th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",14)~ THEN AERIE25J _bAerieWingTry8A
@60 /*Okay... look within... I can do this.*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @61 /*Within I see... I see me.*/
= @62 /*My power flows down from the heavens... from the earth... from the rocks and trees...*/
= @63 /*And when I--I cast regeneration on myself...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",15)~ THEN AERIE25J _bAerieWingTry8B
@64 /*Every part of my body heals itself, except...*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @65 /*But WHY?*/
EXIT

//9th Aerie Wing Attempt
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",16)~ THEN AERIE25J _bAerieWingTry9A
@66 /*The spell heals recent wounds!*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) SetGlobal("_bAerieWingResponse","GLOBAL",1) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @67 /*I... I think I understand... when I cast regeneration, it regenerates parts of my body that were recently damaged.*/
= @68 /*But that's because that's what I focus on.*/
= @69 /*So if I f-focus on my wings... on my scars... and I...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",17)~ THEN AERIE25J _bAerieWingTry9B
@70 /*What?! That should've worked!*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
EXIT


//10th Wing Attempt - Success
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingTalk","GLOBAL",2) Global("_bAerieWingAttempts","GLOBAL",18)~ THEN AERIE25J _bAerieWingTry10A
@71 /*My scars are healed, they are burned... are cauterized.*/
DO ~SetGlobal("_bAerieWingTalk","GLOBAL",0) IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @72 /*I can't just heal what is there... because it... it is already healed. I have to heal what isn't there!*/
= @73 /*That... sounded crazy, but it isn't! Maybe.*/
= @74 /*All I do is...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bATry")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",19)~ THEN AERIE25J _bAerieWingTry10B
@75 /*And th-the muscles heal... the tendons and ligaments regrow...*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @76 /*...and they s-spread out and back and... and they are strong... I feel the muscles I haven't developed for so long... they grow and support... they support my...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bAWinX")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bAerieWingAttempts","GLOBAL",20)~ THEN AERIE25J _bAerieWingTry10C
@77 /*Oh...*/
DO ~IncrementGlobal("_bAerieWingAttempts","GLOBAL",1)~
= @78 /*Wow...*/
EXIT


//Post Any Wing Success Talk - NPCs
CHAIN IF WEIGHT #-5 ~Global("_bAerieTOBWing","GLOBAL",0) PartyHasItem("_BWINGA")~ THEN AERIE25J _bAerieWingsFinally
@85 /*I... I have wings!*/
DO ~SetGlobal("_bAerieTOBWing","GLOBAL",1)~
== JAN25J IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @86 /*Well of course you do, lass. You're an avariel, and an avariel is a winged elf. You keep on shouting the obvious from rooftops and no one will ever listen to you. "Half-orcs have big teeth!" "Drow have foul dispostions!" See how pointless that is?*/
== KORGA25J IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @87 /*~Looks like th' skinny-limbed, weak-wristed, soft-spined, babyface amounted t' something after all, har har.~*/ 
== EDWIN25J IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) GlobalGT("_bAerieAgreesEdwin","GLOBAL",2)~ THEN @88 /*And I have immortality. I am the greatest mage who ever lived! No longer must I bow and scrape to monkeys and simpletons. I will destroy them all!*/
== EDWIN25J IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) GlobalLT("_bAerieAgreesEdwin","GLOBAL",3)~ THEN @89 /*Curse her! Another chance at immortality slips through my grasp!*/
== CERND25J IF ~InMyArea("Cernd") InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @90 /*Nature's beauty is enhanced. Truly Aerie was meant to fly.*/
== JAHEI25J IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @91 /*You did it, child... Aerie. I am so proud of you!*/
== MINSC25J IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @92 /*Boo and I always believed in you. Now you can swim through the sky like a beautiful cloud-fish!*/
== IMOEN25J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @93 /*Yaay, good for you, Aerie! Can I ride on your back and fly too?*/
== VICON25J IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @94 /*Finally! If my own daughter had taken so long to accomplish such a simple task, I would've sold her into slavery and tried again.*/
== HAERD25J IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @95 /*Soon beauty itself shall dance across the setting sun on feathered wings... and the world will be a richer place for your hard-won majesty.*/
== DORN25J IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @96 /*Good for you, Aerie! To fly is power! Power that should be respected... and feared.*/
== RASAA25J IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @97 /*You are free, Aerie. The weight has lifted from your soul.*/
== _BCLA25J IF ~InMyArea("_bClara") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN @98 /*You have wings? This magic stuff really is amazing... I want wings.*/
== HEXXA25J IF ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN @99 /*They are beautiful, Aerie. You should be pleased.*/
== MAZZY25J IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @100 /*You have accomplished your life's dream, Aerie. You are whole. I could not be more happy for you.*/
== KELDO25J IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @101 /*For such a being of goodness and light to have her heart's desire fulfilled... there is justice in this world.*/
== ANOME25J IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @102 /*Through sacrifice and perseverance you have achieved your dream. You are an inspiration to us all.*/
== ANOME25J IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @103 /*This is good. If I had been forced to listen to another week of her self-pitying whining, I would have deafened myself to gain peace.*/
== NALIA25J IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @104 /*You did it! I am so pleased to count you as a friend.*/
== VALYG25J IF ~InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @105 /*Perhaps magic can achieve some good after all... or perhaps this story may yet still turn foul.*/
== SAREV25J IF ~InMyArea("Sarevok") InParty("Sarevok") !StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN @106 /*Hah! The bird gains wings! Still weak and fragile, but at least now she can fly away home to her nest.*/
== NEERA25J IF ~IfValidForPartyDialog("NEERA")~ THEN @10600 /*See! I told you! Magic. Solves. Every. Problem.*/
== WILSO25J IF ~IfValidForPartyDialog("Wilson")~ THEN @10601 /*ROAR!*/
== AERIE25J @107 /*I've been waiting for so long. This is a dream come true.*/
EXIT

//11th Wing Talk - no matter how she got them
CHAIN IF WEIGHT #-1 ~Global("_bAerieTOBWing","GLOBAL",3)~ THEN AERIE25J _bAerieWingYay
@79 /*I... I miss my home so much... all I want to do is return.*/
DO ~SetGlobal("_bAerieTOBWing","GLOBAL",4)~
= @80 /*But I... I made a promise to <CHARNAME>! I w-will stay with <PRO_HIMHER> for as long as <PRO_HESHE> needs me!*/
= @81 /*But to... to be among my people... to fly among them.*/
= @82 /*What am I talking about? I can fly and I'm moping.*/
= @83 /*How long did I dream of riding the wind once again? And now I do it daily.*/
= @84 /*Whatever happens, I did it... I can fly.*/
EXIT


//Aerie NPC Responses
//Mazzy SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bMazzyWingResponse","GLOBAL",0)~ THEN MAZZYJ _bAerieWingMazzy
@108 /*Aerie, it appears to me that you may be upset.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bMazzyWingResponse","GLOBAL",1)~
== AERIEJ @109 /*Oh hi, Mazzy. Yeah, I... I was trying to regenerate my wings, but it didn't work.*/
= @110 /*Any advice?*/
== MAZZYJ @111 /*I am sorry. I do not know anything about that type of magic, but perhaps all you need is more practice?*/
== AERIEJ @112 /*M-more practice?*/
== MAZZYJ @113 /*Yes. Any skill improves with focused repetition. Perhaps you simply need additional attempts.*/
== AERIEJ @114 /*Thanks, Mazzy, I'll... I'll keep at it.*/
EXIT

//Mazzy TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bMazzyWingResponse","GLOBAL",0)~ THEN MAZZY25J _bAerieWingMazzy
@108 /*Aerie, it appears to me that you may be upset.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bMazzyWingResponse","GLOBAL",1)~
== AERIE25J @109 /*Oh hi, Mazzy. Yeah, I... I was trying to regenerate my wings, but it didn't work.*/
= @110 /*Any advice?*/
== MAZZY25J @111 /*I am sorry. I do not know anything about that type of magic, but perhaps all you need is more practice?*/
== AERIE25J @112 /*M-more practice?*/
== MAZZY25J @113 /*Yes. Any skill improves with focused repetition. Perhaps you simply need additional attempts.*/
== AERIE25J @114 /*Thanks, Mazzy, I'll... I'll keep at it.*/
EXIT

//Minsc SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bMinscWingResponse","GLOBAL",0)~ THEN MINSCJ _bAerieWingMinsc
@115 /*Why does the pretty witch cry?*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bMinscWingResponse","GLOBAL",1)~
= @116 /*Show me who has hurt you and we shall bring pain upon their head!*/
== AERIEJ @117 /**sniff* I'm fine, Minsc, really.*/
= @118 /*I was... I was just trying to regenerate my wings, but it wasn't working and it's frustrating.*/
== MINSCJ @119 /*You would fly like a bird? How glorious!*/
= @120 /*Boo wishes he could fly too! Maybe once you get wings, you could take him?*/
== AERIEJ @121 /*I would, but I can't! I can't heal my w-wings! I... I don't know how!*/
== MINSCJ @122 /*Boo says not to worry. He knows that you will figure it out.*/
= @123 /*I have faith in you too. You are a powerful witch!*/
== AERIEJ @124 /*Awww, thanks guys. I'll keep at it.*/
EXIT

//Minsc TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bMinscWingResponse","GLOBAL",0)~ THEN MINSC25J _bAerieWingMinsc
@115 /*Why does the pretty witch cry?*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bMinscWingResponse","GLOBAL",1)~
= @116 /*Show me who has hurt you and we shall bring pain upon their head!*/
== AERIE25J @117 /**sniff* I'm fine, Minsc, really.*/
= @118 /*I was... I was just trying to regenerate my wings, but it wasn't working and it's frustrating.*/
== MINSC25J @119 /*You would fly like a bird? How glorious!*/
= @120 /*Boo wishes he could fly too! Maybe once you get wings, you could take him?*/
== AERIE25J @121 /*I would, but I can't! I can't heal my w-wings! I... I don't know how!*/
== MINSC25J @122 /*Boo says not to worry. He knows that you will figure it out.*/
= @123 /*I have faith in you too. You are a powerful witch!*/
== AERIE25J @124 /*Awww, thanks guys. I'll keep at it.*/
EXIT

//Edwin SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bEdwinWingResponse","GLOBAL",0) 	GlobalGT("_bEdwinAerieWings","GLOBAL",5) GlobalLT("_bEdwinAerieWings","GLOBAL",100)~ THEN EDWINJ _bAerieWingEdwin
@125 /*Your gods continue to disappoint you, little one.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bEdwinWingResponse","GLOBAL",1)~
= @126 /*Divine magic never functions as promised.*/
= @127 /*Perhaps you would like to reconsider my offer?*/
== AERIEJ @128 /*I'm sorry, Edwin, I... I just can't spend the rest of my life looking like someone else.*/
== AERIEJ @130 /*I WILL heal my wings... even if it takes me one... one hundred years!*/
= @131 /*I--I just need to keep trying.*/
EXIT

//Edwin TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bEdwinWingResponse","GLOBAL",0) 	GlobalGT("_bEdwinAerieWings","GLOBAL",5)~ THEN EDWIN25J _bAerieWingEdwin
@125 /*Your gods continue to disappoint you, little one.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bEdwinWingResponse","GLOBAL",1)~
= @126 /*Divine magic never functions as promised.*/
= @127 /*Perhaps you would like to reconsider my offer?*/
== AERIE25J IF ~GlobalLT("_bEdwinAerieWings","GLOBAL",22)~ THEN @128 /*I'm sorry, Edwin, I... I just can't spend the rest of my life looking like someone else.*/
== AERIE25J IF ~GlobalGT("_bEdwinAerieWings","GLOBAL",21)~ THEN @129 /*I'm sorry, Edwin, I... just want to stay in my own skin.*/
== AERIE25J @130 /*I WILL heal my wings... even if it takes me one... one hundred years!*/
= @131 /*I--I just need to keep trying.*/
EXIT

//Dorn SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bDornWingResponse","GLOBAL",0)~ THEN DORNJ _bAerieWingDorn
@132 /*Hah, are your spells failing you again, little girl?*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bDornWingResponse","GLOBAL",1)~
= @133 /*You cannot trust the gods. They grant power, but there's always a catch.*/
== AERIEJ @134 /*Is this where you tell me that a demonic patron is better, Dorn?*/
= @135 /*I... do not care. Please, j-just leave me alone.*/
== DORNJ @136 /*Demons? I trust them least of all.*/
= @137 /*The only one you can trust is yourself. Remember that.*/
EXIT

//Dorn TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bDornWingResponse","GLOBAL",0)~ THEN DORN25J _bAerieWingDorn
@132 /*Hah, are your spells failing you again, little girl?*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bDornWingResponse","GLOBAL",1)~
= @133 /*You cannot trust the gods. They grant power, but there's always a catch.*/
== AERIE25J @134 /*Is this where you tell me that a demonic patron is better, Dorn?*/
= @135 /*I... do not care. Please, j-just leave me alone.*/
== DORN25J @136 /*Demons? I trust them least of all.*/
= @137 /*The only one you can trust is yourself. Remember that.*/
EXIT

//Viconia SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bViconiaWingResponse","GLOBAL",0)~ THEN VICONIJ _bAerieWingViconia
@138 /*Your powers failing you again, wingless sister? Why do you cry to the gods for help? They will not aid you.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bViconiaWingResponse","GLOBAL",1)~
== AERIEJ @139 /*M-my gods they... I get my powers from them, Viconia. Maybe they just have... have not seen fit to grant me wings yet.*/
== VICONIJ @140 /*By Shar, you are stupid! The gods do not grant you spells, they grant you power! How you use that power is up to you.*/
== AERIEJ @141 /*I... I don't understand. Why are you so cruel? I have spells that I get from the Baervan Wildwanderer. I can heal because he gave me healing, and I... I could cure poison once he gave me...*/
== VICONIJ @142 /*Useless. If all of our enemies were as pathetic as you, drow would have already conquered the world.*/
= @143 /*You can regenerate tissue, sister of light. They have given you the power... all you need to do is use it with skill.*/
== AERIEJ @144 /*I... I am trying, Viconia, and you are not helping! Now let me be!*/
EXIT

//Viconia TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bViconiaWingResponse","GLOBAL",0)~ THEN VICON25J _bAerieWingViconia
@138 /*Your powers failing you again, wingless sister? Why do you cry to the gods for help? They will not aid you.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bViconiaWingResponse","GLOBAL",1)~
== AERIE25J @139 /*M-my gods they... I get my powers from them, Viconia. Maybe they just have... have not seen fit to grant me wings yet.*/
== VICON25J @140 /*By Shar, you are stupid! The gods do not grant you spells, they grant you power! How you use that power is up to you.*/
== AERIE25J @141 /*I... I don't understand. Why are you so cruel? I have spells that I get from the Baervan Wildwanderer. I can heal because he gave me healing, and I... I could cure poison once he gave me...*/
== VICON25J @142 /*Useless. If all of our enemies were as pathetic as you, drow would have already conquered the world.*/
= @143 /*You can regenerate tissue, sister of light. They have given you the power... all you need to do is use it with skill.*/
== AERIE25J @144 /*I... I am trying, Viconia, and you are not helping! Now let me be!*/
EXIT

//Jan SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bJanWingResponse","GLOBAL",0)~ THEN JANJ _bAerieWingJan
@145 /*Are you all right, my dear? You seem troubled.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bJanWingResponse","GLOBAL",1)~
== AERIEJ @146 /*I... I've been trying to regenerate my wings, but it isn't working. T-This shouldn't be so hard.*/
== JANJ @147 /*Of course it's hard. Magic doesn't like to grow new limbs, my mother's second cousin's brother, Tam Tickletoes, discovered that last year. He wanted some extra hands, the better to create inventions, so he made a Potion of Many-Handedness to do the trick.*/
= @148 /*But poor young Tam didn't measure the magic carefully. Instead of growing new hands, his limbs all turned to hands instead. We had to wheel him around in a wheelbarrow until the potion wore off.*/
== AERIEJ @149 /*Th-Thank you for the advice, Jan. But I... I'm not sure what that has to do with my wings.*/
== JANJ @150 /*Isn't it obvious? I would hate to see you turn into a ball of feathers if you cast regenerate too hard.*/
== AERIEJ @151 /*I... think I'll take my chances. It's not like anything is happening anyway.*/
EXIT

//Jan TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bJanWingResponse","GLOBAL",0)~ THEN JAN25J _bAerieWingJan
@145 /*Are you all right, my dear? You seem troubled.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bJanWingResponse","GLOBAL",1)~
== AERIE25J @146 /*I... I've been trying to regenerate my wings, but it isn't working. T-This shouldn't be so hard.*/
== JAN25J @147 /*Of course it's hard. Magic doesn't like to grow new limbs, my mother's second cousin's brother, Tam Tickletoes, discovered that last year. He wanted some extra hands, the better to create inventions, so he made a Potion of Many-Handedness to do the trick.*/
= @148 /*But poor young Tam didn't measure the magic carefully. Instead of growing new hands, his limbs all turned to hands instead. We had to wheel him around in a wheelbarrow until the potion wore off.*/
== AERIE25J @149 /*Th-Thank you for the advice, Jan. But I... I'm not sure what that has to do with my wings.*/
== JAN25J @150 /*Isn't it obvious? I would hate to see you turn into a ball of feathers if you cast regenerate too hard.*/
== AERIE25J @151 /*I... think I'll take my chances. It's not like anything is happening anyway.*/
EXIT

//Wilson SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bWilsonWingResponse","GLOBAL",0)~ THEN WILSONJ _bAerieWingBear
@152 /*Snuffle, whine?*/
== AERIEJ @153 /*Hi, Wilson. No, I'm all right. I was just upset because I can't fly.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bWilsonWingResponse","GLOBAL",1)~
== WILSONJ @154 /*Grugh. Grrf?*/
== AERIEJ @155 /**chuckle* Well of course you can't fly, you're a bear.*/
= @156 /*But I'm... I am... was... an avariel, a winged elf. I used to be able to f-fly.*/
== WILSONJ @157 /*Growl. Snort. Roar!*/
== AERIEJ @158 /*That's one way of looking at it... though don't all squirrels wish they were bats? Don't all chickens wish they were eagles?*/
== WILSONJ @159 /*Snuffle... growl?*/
== AERIEJ @160 /*Yes, chickens can fly, but not very well. I used to be an eagle. I... I used to...*/
= @161 /*You'll see, Wilson, once I have my wings. And then you'll know.*/
= @162 /*I... I was meant to fly!*/
EXIT

//Wilson TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bWilsonWingResponse","GLOBAL",0)~ THEN WILSO25J _bAerieWingBear
@152 /*Snuffle, whine?*/
== AERIE25J @153 /*Hi, Wilson. No, I'm all right. I was just upset because I can't fly.*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bWilsonWingResponse","GLOBAL",1)~
== WILSO25J @154 /*Grugh. Grrf?*/
== AERIE25J @155 /**chuckle* Well of course you can't fly, you're a bear.*/
= @156 /*But I'm... I am... was... an avariel, a winged elf. I used to be able to f-fly.*/
== WILSO25J @157 /*Growl. Snort. Roar!*/
== AERIE25J @158 /*That's one way of looking at it... though don't all squirrels wish they were bats? Don't all chickens wish they were eagles?*/
== WILSO25J @159 /*Snuffle... growl?*/
== AERIE25J @160 /*Yes, chickens can fly, but not very well. I used to be an eagle. I... I used to...*/
= @161 /*You'll see, Wilson, once I have my wings. And then you'll know.*/
= @162 /*I... I was meant to fly!*/
EXIT

//Clara SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bClaraWingResponse","GLOBAL",0)~ THEN _BCLARAJ _bAerieWingClara
@163 /*Problems with your gods, Aerie?*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bClaraWingResponse","GLOBAL",1)~
== AERIEJ @164 /*I just want... I want my wings back!*/
== _BCLARAJ @165 /*Well... is there something your gods want in exchange?*/
== AERIEJ @166 /*No, I don't think so... Gods are gods, aren't they? They have everything.*/
== _BCLARAJ @167 /*If you can't get wings from your gods, then you must be able to get them from somewhere.*/
= @168 /*After all the miracles we've seen, a pair of wings seems like a pretty small ask.*/
== AERIEJ @169 /*You... you're right! I've been thinking about my w-wings as a big thing, but maybe that's where I've been going wrong!*/
= @170 /*Regenerating my wings isn't a big thing... it's a teensy little thing that is completely within my power!*/
== _BCLARAJ @171 /*There you go! Now just keep pretending to believe that until you actually do!*/
EXIT

//Clara TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bClaraWingResponse","GLOBAL",0)~ THEN _BCLA25J _bAerieWingClara
@163 /*Problems with your gods, Aerie?*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bClaraWingResponse","GLOBAL",1)~
== AERIE25J @164 /*I just want... I want my wings back!*/
== _BCLA25J @165 /*Well... is there something your gods want in exchange?*/
== AERIE25J @166 /*No, I don't think so... Gods are gods, aren't they? They have everything.*/
== _BCLA25J @167 /*If you can't get wings from your gods, then you must be able to get them from somewhere.*/
= @168 /*After all the miracles we've seen, a pair of wings seems like a pretty small ask.*/
== AERIE25J @169 /*You... you're right! I've been thinking about my w-wings as a big thing, but maybe that's where I've been going wrong!*/
= @170 /*Regenerating my wings isn't a big thing... it's a teensy little thing that is completely within my power!*/
== _BCLA25J @171 /*There you go! Now just keep pretending to believe that until you actually do!*/
EXIT

//Sarevok, TOB Only
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bSarevWingResponse","GLOBAL",0)~ THEN SAREV25J _bAerieWingSarevok
@172 /*You've failed again. Are you ready to give up?*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bSarevWingResponse","GLOBAL",1)~
== AERIE25J @173 /*N-No! I can do it! I will do it! I will... I will try again and again until I succeed!*/
== SAREV25J @174 /*That's a pity.*/
== AERIE25J @175 /*Why do you care anyway? They're my w-wings, not yours.*/
== SAREV25J @176 /*I don't care about your wings. But your pathetic attempts to heal yourself are irritating.*/
= @177 /*Become stronger or throw yourself on the mercy of your betters. Your eternal whining is getting you nowhere.*/
== AERIE25J @178 /*Then I'll get stronger! I'll show you!*/
== SAREV25J @179 /*As long as you do it silently.*/
EXIT

//Korgan SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bKorganWingResponse","GLOBAL",0)~ THEN KORGANJ _bAerieWingKorgan
@180 /*What are ye doin', lassie?*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bKorganWingResponse","GLOBAL",1)~
== AERIEJ @181 /*Leave me alone, Korgan. I... I'm trying to regenerate my wings and I d-don't need you laughing at me.*/
== KORGANJ @182 /*Of course I be laughin' at yer pathetic efforts. They amuse this ol' dwarf's heart.*/
= @183 /*But if all ye want be wings, I can help ye wit' that.*/
== AERIEJ @184 /*You want to help me? You?*/
== KORGANJ @185 /*Don't look so surprised, lassie. I can be helpin' now an' then. The plan be simple: ye want wings? I'll get ye wings.*/
= @186 /*We find some other folk wit' feathers... soft ones wit' lots o' gold. We kills 'em an' chop off their wings for ye to magic on yer stumps there. Bound t' be much easier than growing 'em from scratch.*/
== AERIEJ @187 /*W-What? No! We will NOT be doing that!*/
== KORGANJ @188 /*Yer loss. See if I try t' help again.*/
EXIT

//Korgan TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bKorganWingResponse","GLOBAL",0)~ THEN KORGA25J _bAerieWingKorgan
@180 /*What are ye doin', lassie?*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bKorganWingResponse","GLOBAL",1)~
== AERIE25J @181 /*Leave me alone, Korgan. I... I'm trying to regenerate my wings and I d-don't need you laughing at me.*/
== KORGA25J @182 /*Of course I be laughin' at yer pathetic efforts. They amuse this ol' dwarf's heart.*/
= @183 /*But if all ye want be wings, I can help ye wit' that.*/
== AERIE25J @184 /*You want to help me? You?*/
== KORGA25J @185 /*Don't look so surprised, lassie. I can be helpin' now an' then. The plan be simple: ye want wings? I'll get ye wings.*/
= @186 /*We find some other folk wit' feathers... soft ones wit' lots o' gold. We kills 'em an' chop off their wings for ye to magic on yer stumps there. Bound t' be much easier than growing 'em from scratch.*/
== AERIE25J @187 /*W-What? No! We will NOT be doing that!*/
== KORGA25J @188 /*Yer loss. See if I try t' help again.*/
EXIT

//Hexxat SOA
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bHexxWingResponse","GLOBAL",0)~ THEN HEXXATJ _bAerieWingKorgan
@189 /*Aerie...*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bHexxWingResponse","GLOBAL",1)~
== AERIEJ @190 /*No! I... I don't want to hear it!*/
== HEXXATJ @191 /*I was merely going t-*/
== AERIEJ @192 /*No! Y-you're going to say something cryptic and smug and I can't deal with that right now! If you're not actually going to help, then just be quiet!*/
== HEXXATJ @193 /*As you wish.*/
EXIT

//Hexxat TOB
CHAIN IF WEIGHT #-1 ~Global("_bAerieWingResponse","GLOBAL",1) Global("_bHexxWingResponse","GLOBAL",0)~ THEN HEXXA25J _bAerieWingKorgan
@189 /*Aerie...*/
DO ~SetGlobal("_bAerieWingResponse","GLOBAL",0) SetGlobal("_bHexxWingResponse","GLOBAL",1)~
== AERIE25J @190 /*No! I... I don't want to hear it!*/
== HEXXA25J @191 /*I was merely going t-*/
== AERIE25J @192 /*No! Y-you're going to say something cryptic and smug and I can't deal with that right now! If you're not actually going to help, then just be quiet!*/
== HEXXA25J @193 /*As you wish.*/
EXIT


