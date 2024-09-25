//1st Talk, after banter
CHAIN IF WEIGHT #-1 ~Global("_bHexVic","GLOBAL",2)~ THEN VICONIJ _bVicHex1
@1 /*Corpse, at first I thought you would be a powerful rival female of whom I would have to be wary...*/
= @2 /*...but now I see that you are merely another surface male drooling over me and making promises of pleasure that you cannot hope to fulfill.*/
== HEXXATJ @3 /*I am neither a corpse nor a male, Viconia. I am a woman, and I want you with me.*/
== VICONIJ @4 /*You are permitted to look and to drool like everyone else, corpse.*/
= @5 /*I shall inform you if I desire more.*/
DO ~SetGlobal("_bHexVic","GLOBAL",3)~
EXIT

//2nd Talk
CHAIN IF WEIGHT #-1 ~Global("_bHexVic","GLOBAL",5)~ THEN VICONIJ _bVicHex2
@6 /*Corpse, I am bored and you might provide a decent diversion.*/
= @7 /*Come to me tonight and show me what you claim to know.*/
== HEXXATJ @8 /*Really, Viconia? It does not frighten you to lie with me?*/
= @9 /*You are not worried that I will feast on you when we are alone and vulnerable?*/
== VICONIJ @10 /*Hexxat! Come here!*/
== HEXXATJ @11 /*Yes, mistress.*/
= @12 /*Wait! What did you just do?*/
== VICONIJ @13 /*You are an animated corpse. I am a priestess. I am proving a point.*/
== HEXXATJ @14 /*I am no one's puppet.*/
== VICONIJ @15 /*Hexxat! Kneel!*/
== HEXXATJ @16 /*Yes, mistress.*/
= @17 /*No! You cannot control me!*/
== VICONIJ @18 /*I disagree, corpse. You are kneeling.*/
= @19 /*Hexxat! Stand!*/
== HEXXATJ @20 /*Yes, mistress.*/
= @21 /*No! I will not be your slave. I will rip out your throat!*/
== VICONIJ @22 /*Very well, corpse.*/
= @23 /*Hexxat! Bite me! Drink my blood!*/
== HEXXATJ @24 /*Gladly, mistress.*/
DO ~ActionOverride("Viconia",ApplySpellRES("_b7dam","Viconia"))~
== VICONIJ @25 /*Now you have me at your mercy.*/
= @26 /*Your teeth and claws are piercing my flesh, and the sweet taste of my blood is filling your mouth.*/
= @27 /*You are experiencing me intimately and completely. Are you enjoying me, corpse?*/
== HEXXATJ @28 /*Mmmmm.*/
== VICONIJ @29 /*Hexxat! Die!*/
DO ~ActionOverride("Hexxat",ApplySpell("Hexxat",CLERIC_CAUSE_SERIOUS_WOUNDS)) ApplyDamage("HEXXAT",1000,MAGIC)~
== VICONIJ @30 /*That, corpse, is why I do not fear you.*/
DO ~SetGlobal("_bHexVic","GLOBAL",6)~
EXIT

//3rd Talk, once both can speak again
CHAIN IF WEIGHT #-1 ~Global("_bHexVic","GLOBAL",7)~ THEN HEXXATJ _bVicHex3
@31 /*Viconia, what did you do to me?*/
== VICONIJ @32 /*That was a variation of cause serious wounds, looped back on itself.*/
= @33 /*I developed it to eliminate surface males who were... overly persistant in their advances.*/
== HEXXATJ @34 /*But so damaging?*/
== VICONIJ @35 /*Its intensity is strengthened by physical contact and intimacy.*/
== HEXXATJ @36 /*So that was your way of saying, "No," to my advances? A single word would have sufficed.*/
== VICONIJ @37 /*Hah! Foolish corpse, that was my way of saying, "Yes."*/
= @38 /*Before I become physical with a male, it is important to set boundaries and expectations.*/
= @39 /*I expect you to do anything and everything I ask. I expect you to continue until I request something different.*/
= @40 /*Stopping because you are tired is not allowed. Improvisation is allowed, but if I dislike something, I will only warn you once.*/
= @41 /*Failure on your part will be met with pain. You are an emotionless corpse, but I know you feel and fear pain.*/
= @42 /*Well? Do you still promise me a night I will never forget? Or are you afraid that I will hurt you when we are alone and vulnerable?*/
== HEXXATJ @43 /*I am afraid of nothing and I will show you the next time that we rest.*/
DO ~SetGlobal("_bHexVic","GLOBAL",8)~
EXIT

//4th Talk, after next rest
CHAIN IF WEIGHT #-1 ~Global("_bHexVic","GLOBAL",9)~ THEN HEXXATJ _bVicHex4
@44 /*You seemed to enjoy yourself.*/
== VICONIJ @45 /*Don't be so smug. You met the minimal standards for me not to kill you, nothing more.*/
= @46 /*Your tongue is skilled, but cold. Your hands are competent, but your claws limit their usefulness.*/
= @47 /*And you are a female, which means you are lacking one of my favorite tools.*/
= @48 /*But, yes, given that I had nothing better to do during those hours, you were worth my time.*/
== HEXXATJ @49 /*So shall I enjoy your company again?*/
== VICONIJ @50 /*Yes, Hexxat, tonight.*/
DO ~SetGlobal("_bHexVic","GLOBAL",10)~
EXIT



//TOB Versions of all talks - same file because TOB automatically included w/ EE
//1st Talk, after banter
CHAIN IF WEIGHT #-1 ~Global("_bHexVic","GLOBAL",2)~ THEN VICON25J _bVicHex1
@1 /*Corpse, at first I thought you would be a powerful rival female of whom I would have to be wary...*/
= @2 /*...but now I see that you are merely another surface male drooling over me and making promises of pleasure that you cannot hope to fulfill.*/
== HEXXA25J @3 /*I am neither a corpse nor a male, Viconia. I am a woman, and I want you with me.*/
== VICON25J @4 /*You are permitted to look and to drool like everyone else, corpse.*/
= @5 /*I shall inform you if I desire more.*/
DO ~SetGlobal("_bHexVic","GLOBAL",3)~
EXIT

//2nd Talk
CHAIN IF WEIGHT #-1 ~Global("_bHexVic","GLOBAL",5)~ THEN VICON25J _bVicHex2
@6 /*Corpse, I am bored and you might provide a decent diversion.*/
= @7 /*Come to me tonight and show me what you claim to know.*/
== HEXXA25J @8 /*Really, Viconia? It does not frighten you to lie with me?*/
= @9 /*You are not worried that I will feast on you when we are alone and vulnerable?*/
== VICON25J @10 /*Hexxat! Come here!*/
== HEXXA25J @11 /*Yes, mistress.*/
= @12 /*Wait! What did you just do?*/
== VICON25J @13 /*You are an animated corpse. I am a priestess. I am proving a point.*/
== HEXXA25J @14 /*I am no one's puppet.*/
== VICON25J @15 /*Hexxat! Kneel!*/
== HEXXA25J @16 /*Yes, mistress.*/
= @17 /*No! You cannot control me!*/
== VICON25J @18 /*I disagree, corpse. You are kneeling.*/
= @19 /*Hexxat! Stand!*/
== HEXXA25J @20 /*Yes, mistress.*/
= @21 /*No! I will not be your slave. I will rip out your throat!*/
== VICON25J @22 /*Very well, corpse.*/
= @23 /*Hexxat! Bite me! Drink my blood!*/
== HEXXA25J @24 /*Gladly, mistress.*/
DO ~ActionOverride("Viconia",ApplySpellRES("_b7dam","Viconia"))~
== VICON25J @25 /*Now you have me at your mercy.*/
= @26 /*Your teeth and claws are piercing my flesh, and the sweet taste of my blood is filling your mouth.*/
= @27 /*You are experiencing me intimately and completely. Are you enjoying me, corpse?*/
== HEXXA25J @28 /*Mmmmm.*/
== VICON25J @29 /*Hexxat! Die!*/
DO ~ActionOverride("Hexxat",ApplySpell("Hexxat",CLERIC_CAUSE_SERIOUS_WOUNDS)) ApplyDamage("HEXXAT",1000,MAGIC)~
== VICON25J @30 /*That, corpse, is why I do not fear you.*/
DO ~SetGlobal("_bHexVic","GLOBAL",6)~
EXIT

//3rd Talk, once both can speak again
CHAIN IF WEIGHT #-1 ~Global("_bHexVic","GLOBAL",7)~ THEN HEXXA25J _bVicHex3
@31 /*Viconia, what did you do to me?*/
== VICON25J @32 /*That was a variation of cause serious wounds, looped back on itself.*/
= @33 /*I developed it to eliminate surface males who were... overly persistant in their advances.*/
== HEXXA25J @34 /*But so damaging?*/
== VICON25J @35 /*Its intensity is strengthened by physical contact and intimacy.*/
== HEXXA25J @36 /*So that was your way of saying, "No," to my advances? A single word would have sufficed.*/
== VICON25J @37 /*Hah! Foolish corpse, that was my way of saying yes.*/
= @38 /*Before I become physical with a male, it is important to set boundaries and expectations.*/
= @39 /*I expect you to do anything and everything I ask. I expect you to continue until I request something different.*/
= @40 /*Stopping because you are tired is not allowed. Improvisation is allowed, but if I dislike something, I will only warn you once.*/
= @41 /*Failure on your part will be met with pain. You are an emotionless corpse, but I know you feel and fear pain.*/
= @42 /*Well? Do you still promise me a night I will never forget? Or are you afraid that I will hurt you when we are alone and vulnerable?*/
== HEXXA25J @43 /*I am afraid of nothing and I will show you the next time that we rest.*/
DO ~SetGlobal("_bHexVic","GLOBAL",8)~
EXIT

//4th Talk, after next rest
CHAIN IF WEIGHT #-1 ~Global("_bHexVic","GLOBAL",9)~ THEN HEXXA25J _bVicHex4
@44 /*You seemed to enjoy yourself.*/
== VICON25J @45 /*Don't be so smug. You met the minimal standards for me not to kill you, nothing more.*/
= @46 /*Your tongue is skilled, but cold. Your hands are competent, but your claws limit their usefulness.*/
= @47 /*And you are a female, which means you are lacking one of my favorite tools.*/
= @48 /*But, yes, given that I had nothing better to do during those hours, you were worth my time.*/
== HEXXA25J @49 /*So shall I enjoy your company again?*/
== VICON25J @50 /*Yes, Hexxat, tonight.*/
DO ~SetGlobal("_bHexVic","GLOBAL",10)~
EXIT
