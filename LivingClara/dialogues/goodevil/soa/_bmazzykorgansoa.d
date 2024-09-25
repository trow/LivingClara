INTERJECT_COPY_TRANS BMAZZY 56 _bkorganmazzy1 /*What's in your wineskin, bellybuilder? A potion of delusion is my guess.*/
== MAZZYJ @1 /*You will never 'pluck' this flower, Korgan. Do not even attempt it.*/
== KORGANJ @2 /*They all say that in th' beginning, lass, but they all give in by the end.*/
== MAZZYJ @3 /*If you try, dwarf, I will kill you.*/
== KORGANJ @4 /*Hah, what spirit! Now I want ye even more.*/
END

// Turned off
//CHAIN //Second Korgan-Mazzy dialogue.
//IF  WEIGHT #-1 ~Global("_bkoma","GLOBAL",2)~ THEN MAZZYJ _bkorganmazzy2
//@5 /*Korgan? While I may rue the fact that I even brought the subject up, I feel compelled to ask you something.*/
//== KORGANJ @6 /*Aha! I knew ye'd give in to yer heart sooner or later! So, what's it to be, lass? A kiss an' a tickle now or later?*/
//== MAZZYJ @7 /*You see? This is exactly it! You have been doing this every day for well over a week, and even though I have rebuffed all your advances, you still live under this //delusion!*/
//= @8 /*Why, Korgan? Why do you even bother?*/
//== KORGANJ @9 /*I bother because ye're a sweet thing, lass. Ye're a halfling of a like I've ne'er seen before, an' I kin afford to be persistent.*/
//== MAZZYJ @10 /*Persistence is irrelevant in this case, Korgan. Please stop. It makes me very uncomfortable.*/
//== KORGANJ @11 /*'Twas ye who brought th' subject up, Mazzy. There be truth in that, I think.*/
//== MAZZYJ @12 /*Well, now I do regret it after all.*/
//== KORGANJ @13 /*So... I suppose a tickle be out of th' question then, aye?*/
//== MAZZYJ @14 /*You are a disgusting brute. Leave me be.*/
//DO ~SetGlobal("_bkoma","GLOBAL",3) SetGlobal("KorganMazzy25","GLOBAL",3)~ //disables all 3 Korgan/Mazzy banters in ToB
//EXIT

CHAIN //Korgan-Mazzy dialogue after inn scene. (SOA & TOB)
IF  WEIGHT #-1 ~Global("_BKTRM","GLOBAL",6)~ THEN MAZZYJ _bkorganmazzy3
@15 /*There is one thing that has been puzzling me, Korgan. How did you hope to force yourself upon me? You knew I had my weapons and yet you broke in unarmed.*/
== KORGANJ @16 /*Ye are wrong, Mazzy, I wasn't unarmed. I barged in with me axe in hand.*/
== MAZZYJ @17 /*No, you did not! I remember it clearly. You smashed down the door, one of your hands ripping it from its hinges while your other hand was holding your... oh. When you say your "axe," you really mean...*/
== KORGANJ @18 /*Me battering ram!*/
== MAZZYJ @19 /*Yes, your...*/
== KORGANJ @20 /*Me siege tower!*/
== MAZZYJ @21 /*Are you quite finished?*/
== KORGANJ @22 /*Me two-handed sword!*/
== MAZZYJ @23 /*Do you not have any peaceful euphemisms? Something that implies a woman is more than a fortress or enemy for you to force yourself into?*/
== KORGANJ @24 /*Me great mace? Nae.... Me long-staff? Nae....*/
== MAZZYJ @25 /*You still have not answered my original question. Did you really think you could beat me with your bare fists? Did you underestimate my skill that much?*/
== KORGANJ @26 /*Me wand of fire? Nae.... Me boar-spear +2? Nae.... Me pig-sticker of impaling? Nae.... Me great-hammer of giant-slaying?*/
== MAZZYJ @27 /*Korgan!*/
== KORGANJ @28 /*Hmm? Oh... to answer your question, girl, I did not worry about ye and yer little weapons. I've been doing this fer so long... women have stabbed me, shot me an' lit me on fire. I've been frozen, bludgeoned, an' hit with magic missiles.*/
= @29 /*But I broke down their defences in th' end and had me way with 'em. It is rare that they stop me. But those who stopped me...ahh those were th' girls t' remember! There was this one lass...*/
== MAZZYJ @30 /*I do not care, Korgan. You are a monster who has forced himself upon hundreds of women and killed thousands of innocent people.*/
== KORGANJ @31 /*Just because I attacked first nae be meaning they were innocent.*/
== MAZZYJ @32 /*You are evil. I should kill you.*/
== KORGANJ @33 /*Ye already did.*/
== MAZZYJ @34 /*But you are a tiny evil. You make life worse for every being you encounter but you do not spread misery among the masses.*/
= @35 /*I intend to change the world, Korgan. I will find the masters of darkness and I will kill them. I will kill every last one. And you will help me, because killing is what you do.*/
== KORGANJ @36 /*Ye are so beautiful when ye talk like that.*/
== MAZZYJ @37 /*But you will be on your best behaviour. You will not rape women. You will not kill innocents. Your axe is mine and you will not forget it.*/
== KORGANJ @38 /*Aye. That be true. Just point 'em out an' I will chop me way through our enemies. Then we will be heroes of legend! The tall folk will throw girls and gold at our feet.*/
== MAZZYJ @39 /*Free girls will throw themselves if they are interested, Korgan. But yes, we will be heroes, and when our enemies are dead and the world is good, you will be rewarded.*/
DO ~SetGlobal("_BKTRM","GLOBAL",7)~
EXIT


//Korgan-Mazzy with fish-seller
APPEND DFTOWN1 IF WEIGHT #-1 ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bkorganmazzyfishseller","GLOBAL",0)~ 
THEN _bkorganmazzyfishseller0
	SAY @40 /*Oysters, clams, and cockles! My <LADYLORD>, would you like an oyster, clam, or cockle? Business has been splendid and I have only a few left.*/
	IF ~~ THEN DO ~SetGlobal("_bkorganmazzyfishseller","GLOBAL",1)~ EXTERN KORGANJ _bkorganmazzyfishseller1
	END
END

APPEND DFTOWN2 IF WEIGHT #-1 ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bkorganmazzyfishseller","GLOBAL",0)~ 
THEN _bkorganmazzyfishseller0
	SAY @40 /*Oysters, clams, and cockles! My <LADYLORD>, would you like an oyster, clam, or cockle? Business has been splendid and I have only a few left.*/
	IF ~~ THEN DO ~SetGlobal("_bkorganmazzyfishseller","GLOBAL",1)~ EXTERN KORGANJ _bkorganmazzyfishseller1
	END
END

CHAIN KORGANJ _bkorganmazzyfishseller1
@41 /*Mazzy, tell th’ group that I’ll catch up. This lass here is a pretty thing so I’m going to drag her into an alley an' have me way with her.*/
== MAZZYJ @42 /*What? No! Korgan, I forbid it.*/
== KORGANJ @43 /*Nae ye worry, Mazzy; this won’t slow ye down. I will nae be but a few minutes an' I’ll find ye when I’m done.*/
== MAZZYJ @44 /*Time is not the issue, Korgan, the reason I forbid it is…*/
== KORGANJ @45 /*Ye know this girl?*/
== MAZZYJ @46 /*No, but…*/
== KORGANJ @47 /*Ahh, ye know her family.*/
== MAZZYJ @48 /*No! That is not…*/
== KORGANJ @49 /*Ye're worried about th' guard? The neighbours? Look at this girl. She’s clearly poor an' alone. She nae be having one person who cares for her. This will be easy.*/
== MAZZYJ @50 /*No! You cannot force yourself upon her, Korgan! She is just a young woman trying to make her way in the world. You would hurt her deeply, both physically and emotionally. Indeed, it is evil and I will not let you commit such an act.*/
== KORGANJ @51 /*So she's too young? Ye're an odd one. All humans are young compared to old Korgan. Very well then, I’ll do it yer way. How old must a lass be before I kin drag her into an alley an' have me way with her?*/
== MAZZYJ @52 /*Never, Korgan. You are never allowed to force yourself upon a girl or woman of any age.*/
== KORGANJ @53 /*Ye mean I must pay fer every woman I lay with? That is expensive, Mazzy. I’ll have to kill me twice as many merchants in order to pay fer that.*/
== MAZZYJ @54 /*I will not allow you to kill merchants!*/
== KORGANJ @55 /*Well, not th’ ones in town, of course. That be bad business fer us all. Just th' ones travelling on th' road. An' the nobles, sometimes nobles travel as well. Th' tall ones will just blame bandits... there always be bandits in these parts.*/
== MAZZYJ @56 /*You are not allowed to kill anyone!*/
END
	+ ~Global("_bkorganmazzyfishseller","GLOBAL",1)~ + @57 /*Not in public anyway. Now that that is settled, are either of you hungry?*/ EXTERN KORGANJ _bkorganmazzyfishseller2 
	+ ~Global("_bkorganmazzyfishseller","GLOBAL",1)~ + @58 /*Will you please quit shouting over there? I'm trying to bargain down the price of this girl's cockles.*/ EXTERN KORGANJ _bkorganmazzyfishseller2 
	+ ~Global("_bkorganmazzyfishseller","GLOBAL",1)~ + @59 /*Just say yes already, Korgan. I do not care what you do when I am busy, but I do not have time for this. Ooh, is that a mussel? How much for the mussel?*/ EXTERN KORGANJ _bkorganmazzyfishseller2 
	+ ~Global("_bkorganmazzyfishseller","GLOBAL",1)~ + @60 /*Yes, yes, Korgan is not allowed to kill people. Now would one of you like to have a clam or not?*/ EXTERN KORGANJ _bkorganmazzyfishseller2 
	+ ~Global("_bkorganmazzyfishseller","GLOBAL",1)~ + @61 /*No killing, no fighting, no nagging. Just shut it, the both of you. Oh wow... these are delicious.*/ EXTERN KORGANJ _bkorganmazzyfishseller2 
	+ ~Global("_bkorganmazzyfishseller","GLOBAL",1)~ + @62 /*There's one oyster left! If you want it, speak up, otherwise it's mine.*/ EXTERN KORGANJ _bkorganmazzyfishseller2 
	
CHAIN KORGANJ _bkorganmazzyfishseller2 
@63 /*I cannae kill anyone? Ye would see old Korgan die of poverty? How will I eat? What about th’ bandits an' others who attack us?*/
== MAZZYJ @64 /*Very well, Korgan. You have my permission to kill anyone who attacks us first.*/
== KORGANJ @65 /*An’ take their gold.*/
== MAZZYJ @66 /*And you may take their gold.*/
== KORGANJ @67 /*An' piss on their corpses an' drink ale from their skulls!*/
== MAZZYJ @68 /*It looks like <CHARNAME> is ready to go so we should get moving. But stay where I can see you, dwarf; I am going to watch you even more closely from now on.*/
EXIT




