//consider editing post inn dialogue to account for Patrick dialogue or romance/ editing Korgan/Mazzy banter 3 if romance active


CHAIN //Korgan-Mazzy dialogue after inn scene.
IF  WEIGHT #-1 ~Global("_BKTRM","GLOBAL",6)~ THEN MAZZY25J _bkorganmazzy3
@15 /*There is one thing that has been puzzling me, Korgan. How did you hope to force yourself upon me? You knew I had my weapons and yet you broke in unarmed.*/
== KORGA25J @16 /*Ye are wrong, Mazzy, I wasn't unarmed. I barged in with me axe in hand.*/
== MAZZY25J @17 /*No, you did not! I remember it clearly. You smashed down the door, one of your hands ripping it from its hinges while your other hand was holding your... oh. When you say your "axe," you really mean...*/
== KORGA25J @18 /*Me battering ram!*/
== MAZZY25J @19 /*Yes, your...*/
== KORGA25J @20 /*Me siege tower!*/
== MAZZY25J @21 /*Are you quite finished?*/
== KORGA25J @22 /*Me two-handed sword!*/
== MAZZY25J @23 /*Do you not have any peaceful euphemisms? Something that implies a woman is more than a fortress or enemy for you to force yourself into?*/
== KORGA25J @24 /*Me great mace? Nae.... Me long-staff? Nae....*/
== MAZZY25J @25 /*You still have not answered my original question. Did you really think you could beat me with your bare fists? Did you underestimate my skill that much?*/
== KORGA25J @26 /*Me wand of fire? Nae.... Me boar-spear +2? Nae.... Me pig-sticker of impaling? Nae.... Me great-hammer of giant-slaying?*/
== MAZZY25J @27 /*Korgan!*/
== KORGA25J @28 /*Hmm? Oh... to answer your question, girl, I did not worry about ye and yer little weapons. I've been doing this fer so long... women have stabbed me, shot me an' lit me on fire. I've been frozen, bludgeoned, an' hit with magic missiles.*/
= @29 /*But I broke down their defences in th' end and had me way with 'em. It is rare that they stop me. But those who stopped me...ahh those were th' girls t' remember! There was this one lass...*/
== MAZZY25J @30 /*I do not care, Korgan. You are a monster who has forced himself upon hundreds of women and killed thousands of innocent people.*/
== KORGA25J @31 /*Just because I attacked first nae be meaning they were innocent.*/
== MAZZY25J @32 /*You are evil. I should kill you.*/
== KORGA25J @33 /*Ye already did.*/
== MAZZY25J @34 /*But you are a tiny evil. You make life worse for every being you encounter but you do not spread misery among the masses.*/
= @35 /*I intend to change the world, Korgan. I will find the masters of darkness and I will kill them. I will kill every last one. And you will help me, because killing is what you do.*/
== KORGA25J @36 /*Ye are so beautiful when ye talk like that.*/
== MAZZY25J @37 /*But you will be on your best behaviour. You will not rape women. You will not kill innocents. Your axe is mine and you will not forget it.*/
== KORGA25J @38 /*Aye. That be true. Just point 'em out an' I will chop me way through our enemies. Then we will be heroes of legend! The tall folk will throw girls and gold at our feet.*/
== MAZZY25J @39 /*Free girls will throw themselves if they are interested, Korgan. But yes, we will be heroes, and when our enemies are dead and the world is good, you will be rewarded.*/
DO ~SetGlobal("_BKTRM","GLOBAL",7) SetGlobal("KorganMazzy25","GLOBAL",2)~
EXIT

