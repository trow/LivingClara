//If you see them and are not Drow but have Viconia.

CHAIN IF WEIGHT #-2 ~Global("_BBeholderDrowViconia","GLOBAL",1)~ THEN UDDROW27 _BeholderDrowViconia1
	@0 /*Vel'uss phu' dos, jalil? Usstan xuat zhaun dos.*/
	DO ~SetGlobal("_BBeholderDrowViconia","GLOBAL",2)~
	== VICONIJ @1 /*Dos kuuv telanth ulu ussa, jaluk? Usstan tlun Viconia. Usstan lu' ussta rothen ph' tah b'ahlach valukes.*/
	= @2 /*Dos orn dortho ussa.*/
	== UDDROW27 @3 /*Usstan tlun taudl, jabbress, jhal udossta juss'a zhah kkuuth lueth udos z'klaen yutsu queelas. Udos orn sevir lil' b'ahlach valukes whol dos.*/
EXIT


CHAIN
IF WEIGHT #-2 ~Global("_BBeholderDrowViconia","GLOBAL",1)~ THEN UDDROW28 _BeholderDrowViconia1
	@0 /*Vel'uss phu' dos, jalil? Usstan xuat zhaun dos.*/
	DO ~SetGlobal("_BBeholderDrowViconia","GLOBAL",2)~
	== VICONIJ @1 /*Dos kuuv telanth ulu ussa, jaluk? Usstan tlun Viconia. Usstan lu' ussta rothen ph' tah b'ahlach valukes.*/
	= @2 /*Dos orn dortho ussa.*/
	== UDDROW28 @3 /*Usstan tlun taudl, jabbress, jhal udossta juss'a zhah kkuuth lueth udos z'klaen yutsu queelas. Udos orn sevir lil' b'ahlach valukes whol dos.*/
EXIT

EXTEND_BOTTOM DADROW21 2 /*It is a lengthy process, but a night under my care is worth a fortnight of rest in the finest boudoir... if one has the time for such a diversion, of course.*/
+ ~Global("_bImoenMazzyRomance","GLOBAL",1) InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bImoenMazzyDadrow21","GLOBAL",0)~ + @4 /*I am not interested. Does anyone else want to use his services?*/ EXTERN IMOEN2J _bMazIMassage
+ ~Global("_bImoenMazzyRomance","GLOBAL",1) InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bImoenMazzyDadrow21","GLOBAL",3)~ + @5 /*No thank you. Imoen and Mazzy?*/ EXTERN IMOEN2J _bMazIMassageAgain
+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bViconiaDadrow21","GLOBAL",0)~ + @6 /*I am not interested, but perhaps Viconia would be.*/ EXTERN VICONIJ _bVicMassage
+ ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("_bViconiaDadrow21","GLOBAL",1)~ + @7 /*Still not for me. Viconia? Are you interested?*/ EXTERN VICONIJ _bVicMassageAgain
END

CHAIN IMOEN2J _bMazIMassage
@8 /*Mazzy! We have to try him.*/
DO ~SetGlobal("_bImoenMazzyDadrow21","GLOBAL",1)~
== MAZZYJ @9 /*Him? Why?*/
== IMOEN2J IF ~InParty("Viconia")~ THEN @10 /*Well, because Viconia's always reminiscing about the sensual delights of the drow.*/
== IMOEN2J IF ~!InParty("Viconia")~ THEN @11 /*After Candlekeep, we traveled with a drow named Viconia. She was always going on and on about the sensual delights of the drow.*/
== IMOEN2J @12 /*These are them! These are the sensual delights! This guy right here!*/
== MAZZYJ @13 /*Well, I suppose there's no harm in a massage...*/
== IMOEN2J @14 /*A multi-hour, naked, oil massage including other exotic pleasures...*/
== MAZZYJ @15 /*Are you sure you do not want him all to yourself?*/
== IMOEN2J @16 /*No! I... I can't be alone. Please. I can't be alone. Not here. Not with him. Not anywhere.*/
= @17 /*Please... not alone...*/
== MAZZYJ @18 /*Shhh... you are safe. I am sorry.*/
= @19 /*Very well. I will be here. We will enjoy these "sensual delights" together.*/
== DADROW21 @20 /*Both of you females? Excellent. There are cushions aplenty here. Sit and relax yourself... any friends you have can similarly be seated. However, I will concentrate my arts on the two of you. Come...*/
== MAZZYJ @21 /*Actually, I'd prefer some privacy. <CHARNAME>, perhaps there is something you need to do? Maybe find another room?*/
= @22 /*And close the door as you go; I don't want all these other people watching us.*/
END
	++ @23 /*Of course. Enjoy your massage.*/ EXIT
	++ @24 /*I can't leave, that would be undrow-like. I'll just relax here and rest as the nice man suggested.*/ + _bImoenScold
	
CHAIN IMOEN2J _bImoenScold
@25 /*I don't care if random patrons wander in and out as they'd like, but YOU need to find another room.*/
= @26 /*I'm not being oiled down with my <PRO_BROTHERSISTER> watching. That'd be weird.*/
= @27 /*So OUT!*/
END
	++ @28 /*I'm leaving. I'm leaving.*/ EXIT
	++ @29 /*Fine! You don't have to yell.*/ EXIT
	++ @30 /*Okay, okay. I'm gone.*/ EXIT

CHAIN IF WEIGHT #-1 ~Global("_bImoenMazzyDadrow21","GLOBAL",2)~ THEN IMOEN2J _bMazIMassage2
@31 /*That was awesome! You have to try it, <CHARNAME>.*/
DO ~SetGlobal("_bImoenMazzyDadrow21","GLOBAL",3)~
== MAZZYJ @32 /*It took me a while to relax properly, but yes, that was a thoroughly pleasant experience.*/
EXIT

CHAIN IMOEN2J _bMazIMassageAgain
@33 /*Mazzy! We have to do this again!*/
== MAZZYJ @34 /**smiles* I will not decline.*/
DO ~SetGlobal("_brestcheck","GLOBAL",2) ActionOverride("Imoen2",ApplySpell("Imoen2",CLERIC_CURE_SERIOUS_WOUNDS)) ActionOverride("Mazzy",ApplySpell("Mazzy",CLERIC_CURE_SERIOUS_WOUNDS)) RestParty()~ 
EXIT

CHAIN VICONIJ _bVicMassage
@35 /*It is about time, <CHARNAME>. If we had left the city without you letting me partake in this, I might have ended your life.*/
== DADROW21 @36 /*There are cushions aplenty here, female. Sit and relax yourself... any friends you have can similarly be seated. However, I will concentrate my arts on you alone. Come...*/
== VICONIJ @37 /*Yes, he is serious. You may all watch or wander as you'd like. We are not self-conscious.*/
= @38 /*Male, would you prefer me to remove my clothes now, or will you do it as you go?*/
== DADROW21 @39 /*I can do either... my art is flexible.*/
== VICONIJ @40 /*I think the smell of lustful anticipation would become tedious. Might as well get everything off at once. Now to get comfortable.*/
= @41 /*There... do get started. The rest of you may enjoy the view.*/
== DADROW21 @42 /*As you command. If I may alter my actions to please you better, you need only say the word. This artist is always willing to learn.*/
== VICONIJ @43 /*No... I believe your normal routine will be perfect. Days upon days I spent in the field and this was all I wanted.*/
== IF_FILE_EXISTS NEERAJ IF ~InMyArea("NEERA") InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN @44 /*Oooohkaaay... I'll just be leaving now...*/
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @45 /*I do not believe this is proper for a lady to do or to watch. I will find myself another room.*/
== KELDORJ IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @46 /*A Knight of the Order cannot stay and watch this. I will be taking my leave.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @47 /*(I cannot believe this is happening. I cannot just sit here and watch; I must find and have one of these women.)*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ 
THEN @48 /*This is a foul temptation and I must resist. I will guard the door outside.*/
== ANOMENJ IF ~InMyArea("Anomen") IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~
THEN @4800 /*Normally this would be improper, but I must act the part. She is such a beautiful creature...*/
== KORGANJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN @50 /*Now there's a sight fer sore eyes, har har. Take as long as ye wish.*/
== IMOEN2J IF ~InMyArea("Imoen2") InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ 
THEN @51 /*Oh... wow... I mean I've seen her naked before, but this is different... this is... wow...*/
== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ 
THEN @52 /*And what a view it is. Perhaps today the blackbird shall finally dance with Bliss alone. I would like to see you smile without such Rage behind your eyes.*/
== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ 
THEN @53 /*This sparrow shall sing a sonnet then, to keep you company. One of blooming thorns and roses as this drow plucks you skillfully.*/
== HAERDAJ IF ~IsValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @530 /*A song alone, my vulture. I know you are possessive. But what we have together doesn't mean we shouldn't enjoy a vision such as this.*/
== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @49 /*Hah, yes. I shall watch. I shall watch very closely.*/
== IF_FILE_EXISTS HEXXATJ IF ~InMyArea("HEXXAT") InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~
THEN @54 /*You make a show of yourself, Viconia. But I shall enjoy the offering. This reminds me of better days, when I desired such naked skin as well.*/
== CERNDJ IF ~InMyArea("Cernd") InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @55 /*There is beauty in the natural form. The people here know this better than most.*/
== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @56 /*I... do not think I should watch this. I shall go meditate.*/
== IF_FILE_EXISTS _BCLARAJ IF ~InMyArea("_bClara") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @57 /*Ooh. This is a pretty picture. But I think I'm gonna go get a drow man of my own.*/
== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @58 /*I shall stay to watch, lassie. I have been wanting to create a new line of personal massagers – Jan Jansen's Helping Hands, for those aches you just can't reach – and this will be a chance to research his technique.*/
== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @59 /*I tried them once before but no one seemed to like the turnip version. Except my cousin Freddie Bimblebump, of course. The damn fool ate my stock before I could sell more than half a dozen and then refused to pay me. Said I'd taken all those turnips from his cellar anyway. Which was a lie; I'd merely borrowed some base materials. But the “delights of the drow” is a phrase just made for marketing...*/
== VICONIJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @60 /*If you are going to stay, you must be SILENT!*/
== JANJ IF ~InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @61 /*Fine, fine. Don't mind old Jan. I'll just be up here taking notes. My lips are zipped, you see.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@62 /*I shall remain, Viconia. Someone with a clear head should watch your back.*/
== VICONIJ @63 /*Ahh. Yessssss.*/
DO ~SetGlobal("_brestcheck","GLOBAL",2) ApplySpell("Viconia",CLERIC_CURE_SERIOUS_WOUNDS) SetGlobal("ViconiaDadrow21","GLOBAL",1) RestParty()~
EXIT

CHAIN VICONIJ _bVicMassageAgain
@64 /*Yes, I would feel his hands again.*/
DO ~SetGlobal("_brestcheck","GLOBAL",2) ApplySpell("Viconia",CLERIC_CURE_SERIOUS_WOUNDS) RestParty()~
EXIT

//Dorn-HD Romance Version
CHAIN IF WEIGHT #-10 ~OR(2) IsGabber("HaerDalis") IsGabber("Dorn") IsValidForPartyDialog("HaerDalis") IsValidForPartyDialog("Dorn") OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bHDDMassage","GLOBAL",0)~ THEN DADROW21 _bHDDornMassage
@65 /*I greet you, male, by the Dark Mother and the pleasure her children are entitled to. Here we breathe spices of luxury and enjoy the fruits of our conquests.*/
DO ~SetGlobal("_bHDDMassage","GLOBAL",1)~
== HAERDAJ @66 /*Well, now, that does sound most interesting...*/
== DORNJ @67 /*Do not even think about it! No other man may touch you!*/
== HAERDAJ IF ~Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @68 /*I do not belong to you yet, Dark-Edge, and if you continue in this manner, I may choose to fly alone.*/
== HAERDAJ IF ~Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @69 /*Easy, my grim vulture. This sparrow does not intend to betray your fragile heart.*/
== HAERDAJ @70 /*But perhaps this is a pleasure that we may seek together. Shall we revel in this luxury, indulge in silk and spices with this master as our guide?*/
== DORNJ @71 /*Hmm, I suppose that is acceptable. Let us partake, if <CHARNAME> allows.*/
END
	++ @72 /*Sure. Have fun you two.*/ + _bHDDornMassage2
	++ @73 /*No. We don't have time for that.*/ EXIT

CHAIN DADROW21 _bHDDornMassage2
@74 /*As you wish. There are cushions aplenty here. Sit and relax yourself... any friends you have can similarly be seated. However, I will concentrate my arts on the two of you alone.*/
DO ~ApplySpell("Dorn",CLERIC_CURE_SERIOUS_WOUNDS) ApplySpell("HaerDalis",CLERIC_CURE_SERIOUS_WOUNDS) RestParty()~
EXIT






