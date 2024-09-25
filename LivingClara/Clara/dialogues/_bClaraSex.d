//Conversations should play in order, parts of Viconia & Haerdalis nullify later conversations, as does changing your mind at any point

APPEND _BCLARAJ IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",3) InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN _bCSex1
	SAY @1 /*At last, an inn. It will be good to sleep inside. And as promised, <CHARNAME>, I will share your bed tonight.*/
	++ @2 /*Of course you will. Go find us a room.*/ GOTO _bCSex2
	++ @3 /*I have changed my mind. You may stay without the price.*/ GOTO _bCSex3 
	END
END
	
APPEND _BCLARAJ IF ~~ THEN _bCSex2
	SAY @4 /*As you wish. This won't take long.*/
	IF ~~ THEN DO ~SetGlobal("_bSleepsWithClara","GLOBAL",4) SetGlobal("_bSleptWithClara","GLOBAL",1) Continue()~ EXIT
	END

	IF ~~ THEN _bCSex3
	SAY @5 /*Thank you, <CHARNAME>. You will not regret this. I promise!*/
	IF ~~ THEN DO ~SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",0) RestParty()~ EXIT
	END
END

CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCJ","GLOBAL",0) IfValidForPartyDialog("Jaheira") IfValidForPartyDialog("_bClara")~ THEN JAHEIRAJ _bCSex4
@6 /*Clara, I wish to speak with you a moment.*/
== _BCLARAJ @7 /*Sure, Jaheira, what is it?*/
== JAHEIRAJ @8 /*You are selling yourself to <CHARNAME> so that <PRO_HESHE> will protect you.*/
== _BCLARAJ @9 /*I noticed that wasn't a question. Well then, yes I am. So what? Isn't that what most girls do? What most wives do? Are you going to judge me for it?*/
== JAHEIRAJ @10 /*I'm not here to judge you, child. I only want to cure any diseases you might have before you and <CHARNAME> lie together. Now hold still.*/
= @11 /*There. You are healed, for now. You should choose your partners more carefully in the future, and <CHARNAME> is perhaps not the wisest choice.*/
= @12 /*You hope <PRO_HESHE> will be able to protect you from the Shadow Thieves, but who will protect you from <CHARNAME>? <PRO_HESHE> leaves death wherever <PRO_HESHE> walks and <PRO_HESHE> has a long list of fallen comrades.*/
== _BCLARAJ @13 /*Can you protect me? Why are you here if <CHARNAME> is so dangerous? Are you two together? Are you going to kill me?*/
== JAHEIRAJ IF ~OR(2) Global("JaheiraRomanceActive","GLOBAL",2) Global("JaheiraRomanceActive","GLOBAL",3)~ @14 /*No, child. Whatever we once were, we cannot be that now. You may consider me a mother figure. I feel responsible for <CHARNAME> so I follow <PRO_HIMHER> around doing my best to mitigate the damage that <PRO_HESHE> causes.*/
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
== JAHEIRAJ IF ~!Global("JaheiraRomanceActive","GLOBAL",2) !Global("JaheiraRomanceActive","GLOBAL",3)~ @15 /*No, child. You may consider me a mother figure. I feel responsible for <CHARNAME> so I follow <PRO_HIMHER> around doing my best to mitigate the damage that <PRO_HESHE> causes.*/
= @16 /*I cannot protect you. I will try, but I can barely protect myself. I can only wish you luck.*/
== _BCLARAJ @17 /*Thanks. I guess. You really know how to bring a girl down, you know that?*/
== JAHEIRAJ @18 /*And for that I am sorry. The world is a cruel place, but I did not mean to dampen your spirits.*/
DO ~SetGlobal("_bSWCJ","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~
EXIT


//Viconia - does not allow other dialogues
APPEND VICONIJ IF WEIGHT #-1 ~InParty("Viconia") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2) Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCV","GLOBAL",0)~ THEN _bCSex5
	SAY @19 /*You do not have my permission to do this, my ssinssrigg. You are mine, and I do not allow it.*/
	++ @20 /*Yes, Viconia. I'm sorry. Clara, you should go.*/ EXTERN _BCLARAJ _bCSex6
	++ @21 /*As you wish. Clara, you can stay but we won't be sleeping together.*/ EXTERN _BCLARAJ _bCSex3
	+ ~GlobalGT("LoveTalk","LOCALS",75)~ + @22 /*You left me! How can you deny me this?*/ GOTO _bCSex7
	++ @23 /*You do not allow it? Then we're no longer together. Goodbye Viconia.*/ GOTO _bCSex8
	END
END
	
APPEND _BCLARAJ IF ~~ THEN _bCSex6
	SAY @24 /*Fine, I'll go to the bridge district. If you ever change your mind, I'll be at the Five Flagons Inn.*/
	+ ~!Global("PLAYHOUSE","GLOBAL",1)~ + @25 /*I'll keep that in mind.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0509",470,404,E) SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",0) RestParty()~ EXIT
	+ ~Global("PLAYHOUSE","GLOBAL",1)~ + @25 /*I'll keep that in mind.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0522",470,404,E) SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",0) RestParty()~ EXIT
	END
END

APPEND VICONIJ IF ~~ THEN _bCSex7
	SAY @26 /*Because you love me and because I... I love you, even if we are not together. I cannot live watching you with another.*/
	++ @27 /*Very well. I'm sorry Clara, but you should go.*/ EXTERN _BCLARAJ _bCSex6
	++ @28 /*I understand. Clara, you can stay but we won't be together.*/ EXTERN _BCLARAJ _bCSex3
	++ @29 /*If you don't like it then you can leave, Viconia. You should've kept me when you had the chance. Consider this goodbye.*/ GOTO _bCSex8
	END
	
	IF ~~ THEN _bCSex8
	SAY @30 /*Goodbye, my ssinssrigg.*/
	IF ~~ THEN DO ~SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",2)~
	EXTERN PLAYER1 _bCSex9
	END
END

APPEND PLAYER1 IF ~Global("_bSleptWithClara","GLOBAL",2)~ THEN _bCSex9
	SAY @00 /*You take Clara to bed.  After proving that her skills don't only lie in thievery, both of you sleep deeply.*/
	IF ~~ THEN DO ~StartMovie("restinn") UndoExplore() SetGlobal("_bClaraLeavesForever","GLOBAL",1)~
	EXTERN VICONIJ _bCSex10
	END
END
	
APPEND VICONIJ IF ~Global("_bSleptWithClara","GLOBAL",2)~ THEN _bCSex10  //May need to add another undoexplore here to keep it black - test
	SAY @31 /**quietly* Awaken, my ssinssrigg.*/
	++ @32 /*......?*/ GOTO _bCSex11
	++ @33 /*......!*/ GOTO _bCSex11
	END
END
	
CHAIN VICONIJ _bCSex11
@34 /*You have figured out that you are blind and immobilized. It is time to listen. Clara is gone. She took your gold and fled while you slept. You are a wael, a... fool.!*/
= @35 /*But... you were my fool... my ssinssrigg... my... love. Now you are nothing. If Lolth ever permits me to die and journey to the abyss... then we shall meet again. But until that moment... here is a kiss goodbye.*/
= @36 /*Goodbye, <CHARNAME>.*/
DO ~SetGlobal("_bSleptWithClara","GLOBAL",0) SetGlobal("_bSWCV","GLOBAL",1) ActionOverride(Player1,Kill(Player1))~
EXIT


//Haer'Dalis - does not allow other dialogue w/ 3some
APPEND HAERDAJ IF WEIGHT #-1 ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) Global("_bSWCH","GLOBAL",0) Global("LS_HaerDalisSex","GLOBAL",2) !Global("LS_HaerDalisRomanceActive","GLOBAL",3) Global("_bSleepsWithClara","GLOBAL",4)~ THEN _bCSex12
	SAY @37 /*Have you forgotten me so quickly, my raven? Are the delights we've shared together naught but mist and shadow in the face of someone new?*/
	++ @38 /*Of course not, my fine sparrow. I merely wished to test the girl's resolve.*/ GOTO _bCSex13
	++ @39 /*Sorry, Haer'dalis. We had our fun, but I'm not inclined to settle down.*/ GOTO _bCSex14
	++ @40 /*Don't be silly. We'll share this new adventure as we've shared all the rest.*/ GOTO _bCSex15
	END
	
	IF ~~ THEN _bCSex13
	SAY @41 /*Such words are music to my ears. Come my darling, others can keep watch tonight. We shall burn and tremble in our perfect harmony.*/
	IF ~~ THEN DO ~SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",0) RestParty()~ EXIT
	END
	
	IF ~~ THEN _bCSex14 
	SAY @42 /*And you think I am, my wild heart? You think I shall want you less when you dance across this realm as I have danced across so many others, your partners ever-changing and your fire burning bright? No, my raven. You may spread your wings this evening, but we shall fly again together. I have no doubt of that.*/
	IF ~~ THEN DO ~SetGlobal("_bSWCH","GLOBAL",1)~ EXIT
	END
END
	
CHAIN HAERDAJ _bCSex15
@43 /*Ah, now that is interesting. You surprise me, <CHARNAME>, but this sparrow hears a bargain that he should not refuse. Who knows when such as I might have this chance again?*/
= @44 /*I am yours, my darling. Let us go to our room so that you may lead our dance tonight.*/
= @45 /*Come, my fine marjay. It seems tonight we play together to my raven's trilling song.*/
== _BCLARAJ @46 /*Oh. That's unexpected. But I suppose the more the merrier.*/
== HAERDAJ @47 /*Here we are, my love. A fine enough location for our needs. Now what shall our first step be?*/
END
	++ @48 /*(Kiss Haer'Dalis)*/ EXTERN PLAYER1 _bCSex16
	++ @49 /*(Kiss Clara)*/ EXTERN PLAYER1 _bCSex20
	
CHAIN PLAYER1 _bCSex16
@50 /*(You pull Haer'Dalis closer, wrapping your arms around his neck and kissing him intently. He melts against you and you revel in his desire, knowing that whatever you might share this night with Clara, the bard is yours alone.)*/
END
	++ @51 /*(Be adventurous.)*/ GOTO _bCSex17
	++ @52 /*(Be cautious.)*/ GOTO _bCSex18
	
CHAIN PLAYER1 _bCSex17
@53 /*(You kiss Haer'Dalis again and then beckon Clara closer. The bard turns to hold her at your urging, stroking his hands down the thief's back and claiming her lips with sudden fierceness. He ravishes her mouth until she's begging and then trails kisses down her neck.)*/
= @54 /*(Haer'Dalis gives you a wicked grin over Clara's shoulder as you walk up behind her and wrap your arms around her waist. That smile starts a fire in your body, desire roaring through you like the flames of darker planes. You know where that grin leads and you ache to be there. You ache to love your bard, to seek out new heights of pleasure as you've never felt before.)*/
== HAERDAJ @55 /*You know I burn for you, my raven. This sparrow wants to soar on wings of fire as we chase the shining sun.  Perhaps we shall fly too close. Perhaps the sun shall prove us dreamers who were never meant to fly but I would fall with you forever for the promise of your thighs.*/
END
	++ @56 /*(Tease.)*/ GOTO _bCSex19
	++ @57 /*(Finish this.)*/ GOTO _bCSex18
	
CHAIN PLAYER1 _bCSex18
@58 /*(You lead Haer'Dalis and Clara to the bed. You have plans for both of them, plans that require those soft sheets .)*/
DO ~SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",5) SetGlobal("_bCH3Some","GLOBAL",1) RestParty()~
EXIT

CHAIN PLAYER1 _bCSex19
@59 /*(You hold the tiefling's gaze as you begin to strip off Clara's clothing piece by piece. Each glimpse of milky skin makes his eyes turn darker and Haer'Dalis moans harshly when you toss her shirt aside. You love to see him like this, your bard's silver tongue turned clumsy with desire and with need, and soon you cannot wait any longer to feel that passion in your arms.)*/
= @58 /*(You lead Haer'Dalis and Clara to the bed. You have plans for both of them, plans that require those soft sheets .)*/
DO ~SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",5) SetGlobal("_bCH3Some","GLOBAL",1) RestParty()~
EXIT

CHAIN PLAYER1 _bCSex20
@60 /*(You walk over to Clara and pull the girl into your arms. She kisses you with more skill than you expected but you match her touch for touch.)*/
= @61 /*(Over the thief's shoulder, you catch Haer'Dalis' eye. The tiefling's gaze is heated as he watches you and Clara, your body burning hotter at the hunger on his face.)*/
END
	++ @51 /*(Be adventurous.)*/ GOTO _bCSex21
	++ @52 /*(Be cautious.)*/ GOTO _bCSex18

CHAIN PLAYER1 _bCSex21
@62 /*(You beckon Haer'Dalis closer and your bard comes willingly. He twines his arms around you and you let him lead for now. You allow him to steal kisses from both you and Clara as he strokes his hands across your body, mapping the curve of breast and buttocks like a sculptor shaping clay.)*/
= @63 /*(But you soon grow impatient and you are the one in charge here. The tiefling may have skillful fingers – he may play your body like a fiddle when you let him – but there can only be one leader in this dance of harmony.)*/
= @64 /*(So you lean in to kiss Haer'Dalis again, winding your fingers through his silver hair and pushing him down to his knees. For once the bard's face is stripped bare of masks or artifice; there is only pure devotion and you know you will not last when he presses a soft kiss against your hip.)*/
END
	++ @56 /*(Tease.)*/ GOTO _bCSex22
	++ @57 /*(Finish this.)*/ GOTO _bCSex18
	
CHAIN PLAYER1 _bCSex22
@65 /*(You look back at Clara, holding her gaze as you start to remove the tiefling's clothing and you are gratified by the light of desire in her eyes. The girl wants you and Haer'Dalis despite her hesitations and she will not regret this. The bard has a skillful tongue for play as well as lyrics and you intend to watch as he makes your new thief scream.)*/
= @66 /*(Once your bard is naked, you point Clara towards the bed. You have plans for both of them, plans that require those soft sheets .)*/
DO ~SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",5) SetGlobal("_bCH3Some","GLOBAL",1) SetGlobal("_bSWCH","GLOBAL",1) RestParty()~
EXIT


//Aerie - breaks romance
CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCA","GLOBAL",0) InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ THEN AERIEJ _bCSex23
@67 /*Y-you're going to make Clara sleep with you or abandon her to d-die?*/
= @68 /*You... you are a monster, <CHARNAME>, and I don't know why I ever liked you!*/
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("_bSWCA","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~
EXIT

//Neera - breaks romance
APPEND NEERAJ IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCNe","GLOBAL",0) InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) OR(2) Global("NeeraRomanceActive","GLOBAL",1) Global("NeeraRomanceActive","GLOBAL",2)~ THEN _bCSex24
	SAY @69 /*So that's it? This Clara girl comes along and begs for her life so you're just going to take off your clothes and ride her while she lies back and counts the ceiling tiles?*/
	++ @70 /*Yup, that's it. Did you want something?*/ GOTO _bCSex25
	++ @71 /*Actually, I got us a nicer room so there will be a canopy.*/ GOTO _bCSex25
	++ @72 /*Well she would be, but I plan to do this in the dark.*/ GOTO _bCSex25
	++ @73 /*I prefer to have her on all fours, so she can look out the window.*/ GOTO _bCSex25
	++ @74 /*Of course not! *I'm* going to count the tiles while she rides me.*/ GOTO _bCSex25
	++ @75 /*I'm sorry, Neera, you're right to be upset. I'll tell Clara to go.*/ GOTO _bCSex26
	++ @76 /*My apologies, Neera, I'll keep my hands off of her.*/ GOTO _bCSex27
	END
	
	IF ~~ THEN _bCSex25
	SAY @77 /*Ughh... you're horrible. I don't know what I ever saw in you.*/ 
	IF ~~ THEN DO ~SetGlobal("_bSWCNe","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bCSex26
	SAY @78 /*Let the poor girl stay, <CHARNAME>. Sending her away now won't make this better. I don't know what I ever saw in you.*/
	IF ~~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3) SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",0) RestParty()~ EXIT
	END
	
	IF ~~ THEN _bCSex27
	SAY @79 /*It's too late to make this better, <CHARNAME>. I don't know what I ever saw in you.*/
	IF ~~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3) SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",0) RestParty()~ EXIT
	END
END

//Nalia - loses Nalia
CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCNa","GLOBAL",0) InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) Global("PGNaliaRomanceActive","GLOBAL",1) Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN NALIAJ _bCSex28
@80 /*Is this how you help the poor and innocent? You threaten this girl until she agrees to give herself to you?*/
= @81 /*You are a bully and a... a ruffian! I will have nothing more to do with you.*/
DO ~SetGlobal("_bNaliaLeavesForever","GLOBAL",1) SetGlobal("_bSWCNa","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~
EXIT

//Anomen - can break romance (1st version, if had sex; 2nd version if haven't)
APPEND ANOMENJ IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCAn1","GLOBAL",0) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ THEN _bCSex29
SAY @82 /*My love, I am confused. You will take Clara to your bed... Do you no longer want me?*/
	++ @83 /*Of course I want you, silly. I'm taking her to *our* bed. We will share.*/ GOTO _bCSex30
	++ @84 /*Yes. I'm sorry, Anomen, but I'm with Clara now.*/ GOTO _bCSex31
	END
	
	IF ~~ THEN _bCSex30
	SAY @85 /*Share her? I had never considered this possibility. Very well, my love, whatever makes you happy. But I will cast cure disease first; there's no telling what horrible poxes someone like her might have.*/
	IF ~~ THEN DO ~SetGlobal("_bACShared","GLOBAL",1) SetGlobal("_bSWCAn1","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bCSex31
	SAY @86 /*I cannot believe that, my love. I know what you felt for me was real, and I shall continue to pursue you.*/
	IF ~~ THEN DO ~SetGlobal("_bACShared","GLOBAL",2) SetGlobal("_bSWCAn1","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~ EXIT
	END
END

APPEND ANOMENJ IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCAn2","GLOBAL",0) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenMatch","GLOBAL",1) !Global("AnomenRomanceActive","GLOBAL",2)~ THEN _bCSex32
SAY @87 /*I am confused, my lady. You are taking Clara to your bed. Does this mean that you are not interested in men?*/
	++ @88 /*Of course I like men, Anomen, don't worry. I just like women too.*/ GOTO _bCSex33
	++ @89 /*I love men! I just don't like you, Anomen. So please stop bothering me.*/ GOTO _bCSex34
	++ @90 /*You are correct, Anomen. I am not attracted to men. Sorry if you thought otherwise.*/ GOTO _bCSex34
	++ @91 /*Men are fine when I can't get anything better, but I have Clara now.*/ GOTO _bCSex34
	END
	
	IF ~~ THEN _bCSex33
	SAY @92 /*I am relieved to hear that, my lady. I shall put the issue from my mind.*/
	IF ~~ THEN DO ~SetGlobal("_bSWCAn2","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN _bCSex34
	SAY @93 /*I see. I have been foolish, my lady, and I will not bother you again.*/
	IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) SetGlobal("_bSWCAn2","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~ EXIT
	END
END

//Dorn - no romance effect
CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCD","GLOBAL",0) InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) Global("OHD_dornsex","GLOBAL",1) !Global("DornRomanceActive","GLOBAL",3)~ THEN DORNJ _bCSex35
@94 /*I see your tastes go both ways as well. Excellent. This night should be interesting.*/
DO ~SetGlobal("_bSWCD","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~
EXIT

//Edwin - no romance effect
CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCE","GLOBAL",0) InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Global("EdwinNightTogether","GLOBAL",1) !Global("EdwinRomanceActive","GLOBAL",3)~ THEN EDWINJ _bCSex36
@95 /*I see you are bringing a new toy to our bed, my deva, and a pretty one at that. (She's almost as desirable as I am. If <CHARNAME> thinks to replace me with Clara then the girl will have to suffer an unhappy 'accident'.)*/
DO ~SetGlobal("_bSWCE","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~
EXIT

//Yoshimo - no romance effect
CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCY","GLOBAL",0) InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) OR(2) Global("YoshimoRomanceActive","GLOBAL",1) Global("YoshimoRomanceActive","GLOBAL",2)~ THEN YOSHJ _bCSex37
@96 /*Clara is an attractive girl, <CHARNAME>, and under other circumstances, I might have joined you.*/
= @97 /*However, Clara is also a thief and I do not trust her motivations. You may do as you like - I have never wished to cage you - but tonight I shall keep watch.*/
DO ~SetGlobal("_bSWCY","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~
EXIT

//Rasaad - can break romance
APPEND RASAADJ IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCR","GLOBAL",0) InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) OR(2) Global("RasaadRomanceActive","GLOBAL",1) Global("RasaadRomanceActive","GLOBAL",2)~ THEN _bCSex38
SAY @98 /*I am not comfortable with this course of action, <CHARNAME>. If we are to be together, I must know that I can trust you with both my conscience and my heart and this feels too much like extortion.*/
	++ @99 /*You are right, Rasaad. I'm sorry. Clara is free to stay or go no matter what.*/ EXTERN _BCLARAJ _bCSex3
	++ @100 /*Ugh, Rasaad. If I'd known you were such a prude, I would have let you stay in Trademeet. Consider this goodbye.*/ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3) SetGlobal("_bSWCR","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~ EXIT
	++ @101 /*We can talk about this later. I need to blow off steam right now.*/ DO ~SetGlobal("_bSWCR","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~ EXIT
	END
END

//Mazzy - romance not required
CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCM","GLOBAL",0) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !Global("_BMazzyFriendship","GLOBAL",3)	!Global("_BMazzyTQuest","GLOBAL",1) !Global("_BMazzyTQuest","GLOBAL",2) !Global("_BMazzyRomance","GLOBAL",1)~ THEN MAZZYJ _bCSex39
@102 /*This is not right, <CHARNAME>, and I will have no part in it. I will not stop you since Clara made the offer, but we are friends no longer after this.*/
DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3) SetGlobal("_bSWCM","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3)~
EXIT

//Mazzy - breaks romance/courtship
CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCM","GLOBAL",0) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_BMazzyRomance","GLOBAL",1) OR(2) Global("_BMazzyTQuest","GLOBAL",1) Global("_BMazzyTQuest","GLOBAL",2)~ THEN MAZZYJ _bCSex40
@103 /*This is not right, <CHARNAME>, and I will have no part in it. I will not stop you since Clara made the offer, but we are friends no longer and you will not win my heart.*/
DO ~SetGlobal("_bSleptWithClara","GLOBAL",3) SetGlobal("_BMazzyTQuest","GLOBAL",10) SetGlobal("_BMazzyFriendship","GLOBAL",3) SetGlobal("_bMazzyForgives","GLOBAL",2) SetGlobal("_bSWCM","GLOBAL",1) SetGlobal("_BMazzyRomance","GLOBAL",3) AddJournalEntry(@1021,QUEST_DONE)~ /*Mazzy's Heart: A Terrible Mistake

I took Clara to my bed in exchange for my protection and Mazzy was not pleased. I fear I have lost my chance at Mazzy's heart forever.*/
EXIT

//Keldorn - no romance
CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCKe","GLOBAL",0) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) !Global("B!KeldornRA","GLOBAL",2) !Global("B!KeldornRA","GLOBAL",1)~ THEN KELDORJ _bCSex41A
@126 /*That was a deal ill-made <CHARNAME>. The Order does not barter protection in exchange for warmer beds.*/
= @1260 /*I am grateful for your friendship but I cannot be a part of this. I am returning to the Order. Find me there if you wish to walk on the path of righteousness again.*/
DO ~SetGlobal("_bSWCKe","GLOBAL",1) SetGlobal("_bSleptWithClara","GLOBAL",3) SetGlobal("KickedOut","LOCALS",1)  ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0903",644,501,S)~
EXIT

//Keldorn - breaks romance
CHAIN IF WEIGHT #-1 ~Global("_bSleepsWithClara","GLOBAL",4) Global("_bSWCKe","GLOBAL",0) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(2) Global("B!KeldornRA","GLOBAL",2) Global("B!KeldornRA","GLOBAL",1)~ THEN KELDORJ _bCSex41
@104 /*You would cheat on me just as my wife did and with a girl young enough to be my daughter? No, <CHARNAME>. This I can't abide.*/
= @105 /*I will always be grateful for your friendship but I am leaving and I will not change my mind. If you truly care about me, you will not attempt to seek me out.*/
= @106 /*Come, Clara. You need not stay here. The Order of the Radiant Heart will offer you shelter without such cost attached.*/
== _BCLARAJ @107 /*Thank you, Sir Firecam. Your kindness does you justice.*/
DO ~SetGlobal("_bSleepsWithClara","GLOBAL",0) SetGlobal("_bSleptWithClara","GLOBAL",0) SetGlobal("B!KeldornRA","GLOBAL",3) SetGlobal("_bSWCKe","GLOBAL",1) SetGlobal("_bKeldLeavesForever","GLOBAL",1) SetGlobal("_bClaraLeavesForever","GLOBAL",1) RestParty()~
EXIT

//Final round up for everything that didn't already cause rest
CHAIN IF ~Global("_bSleptWithClara","GLOBAL",4) InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN _BCLARAJ _bCSex42
@108 /*The room is ready <CHARNAME>. Shall we get this over with?*/
END
	++ @109 /*I am looking forward to it. Lead the way.*/ EXTERN PLAYER1 _bCSex42B
	
CHAIN PLAYER1 _bCSex42B
@00 /**You take Clara to your bed. After proving that her skills don't only lie in thievery, both of you sleep deeply.**/
DO ~SetGlobal("_bSleptWithClara","GLOBAL",5) RestParty()~
EXIT

//On Waking up - trigger in bbaldur since Clara should be gone
CHAIN IF WEIGHT #-1 ~Global("_bSleptWithClara","GLOBAL",6)~ THEN PLAYER1 _bCSex43
@110 /**When you wake up, Clara has disappeared along with a great deal of your gold.**/
DO ~SetGlobal("_bSleptWithClara","GLOBAL",7) AddJournalEntry(@1013,INFO)~ /*After taking Clara to my bed, she has left and taken much of my gold with her. Perhaps she went crawling back to the Shadow Thieves, hoping to buy her life with my hard-earned coin. If I find her there, I may be able to recover what she stole but I doubt I will see that gold again. It would have been much cheaper to buy a whore instead.*/
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @111 /*It seems our new thief has run off. We should check our purses and belongings.*/
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN @112 /*Damn it, <CHARNAME>. That's me gold she took!  Blast her! Cut off her limbs an' roast her over a fire!*/
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN @113 /*Perhaps this is justice. It is not right to bargain sexual favors with one who has little other choice.*/
== DORNJ IF ~InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ 
THEN @114 /*She has most likely returned to her former masters. It makes no difference. She will die with the rest of them.*/
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~
THEN @115 /*The turncloak! How dare she take our money, learn our secrets and then switch sides? (Only I am allowed to do that.)*/
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) !Global("ViconiaRomanceActive","GLOBAL",2)~ 
THEN @116 /*If <CHARNAME> had been keeping a proper watch this never would've happened. I foolishly went to sleep once <CHARNAME>'s watch had started and Clara was still here!*/
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ 
THEN @117 /*My apologies, <CHARNAME>. I was awake but I did not see Clara leave. She must be more skilled at shadow-walking than I had previously believed.*/
== RASAADJ IF ~InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ 
THEN @118 /*You made a mistake, <CHARNAME>, and one that cost us dearly. Yet we cannot dwell upon our failures or we shall both go mad.*/
== RASAADJ IF ~InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) OR(2) Global("RasaadRomanceActive","GLOBAL",1) Global("RasaadRomanceActive","GLOBAL",2)~ 
THEN @119 /*I forgive you this time. Please don't waste the second chance.*/
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) !Global("PGNaliaRomanceActive","GLOBAL",1) !Global("PGNaliaRomanceActive","GLOBAL",2)~
THEN @120 /*But we saved her. Why would she run now?*/
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @121 /*Your actions brought this loss upon us but it is not undeserved. We should have stopped you first.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1) Global("_bACShared","GLOBAL",0)~ 
THEN @122 /*Perhaps this will teach <CHARNAME> not to sleep with common whores.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsKnight","GLOBAL",1) Global("_bACShared","GLOBAL",0)~ 
THEN @123 /*A pity we could not save her. But Clara made her choice.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("_bACShared","GLOBAL",1)~ 
THEN @124 /*A pity we paid so dearly for our pleasure. But the night was worth the cost.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("_bACShared","GLOBAL",2)~ 
THEN @125 /*Everyone makes mistakes, my love. I accept you back with open arms.*/
== NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ 
THEN @127 /*Hah! I knew I liked her. You should have known better, <CHARNAME>. Maybe next time you'll think twice before hopping in some woman's bed.*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @128 /*She's gone? But I wanted... I had hoped to have a friend.*/
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) !Global("_bCH3Some","GLOBAL",1)~ 
THEN @129 /*The margay has fled the scene and left us empty pockets, but her sweet song must soothe our crying hearts. Such a feline should not be caged by any man or promise; this sparrow is glad to know she runs on padded feet.*/
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) Global("_bCH3Some","GLOBAL",1)~ 
THEN @130 /*Ah, my love, it seems we have paid for our adventure dearly. But I do not regret my choice to follow you; the sting of loss shall make the sweetness burn more bright in memory.*/
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @131 /*She did not pick *my* pockets. Which of you left your belongings lying about? I told you that you should buy Jan Jansen's Patented Pouch Protectors. If you had paid the asking price, you'd be sitting pretty while the lass nursed broken thumbs. 100 gold doesn't seem so expensive now, does it?*/
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @132 /*When backed into a corner, the meekest mouse will bite. We should not be surprised.*/
EXIT

//Conversation in Thieves Headquarters. Triggers when no fighting.
CHAIN IF ~Global("_bClaraRT","GLOBAL",2) !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN _BCLARAP _bCRT1
@133 /*You have rescued me again, <CHARNAME>! Thank you, oh thank you! *cries**/
DO ~SetGlobal("_bClaraRT","GLOBAL",3)~
= @134 /*The Shadow Thieves came in the night. I was the only one awake and they were going to kill you while you slept. I convinced them that their plan was dangerous and it would be better to simply steal your money. That way there was no risk of death on their part, but they would still be rewarded.*/
= @135 /*They agreed, but they demanded that I return as well. They gave me to Renal Bloodscalp as a present and there's no telling what would've happened to me if you hadn't arrived. You are once again my savior and I am in your debt.*/
END
	++ @136 /*Okay, but where's my money?*/ GOTO _bCRT2
	++ @137 /*Saving you is just part of the job. Do you have somewhere safe to go?*/ GOTO _bCRT3
	++ @138 /*I don't believe you! Die thief! Muwahahaha!!*/ GOTO _bCRT4
	++ @139 /*I'm done with you, Clara. Just leave.*/ GOTO _bCRT5
	++ @140 /*I'm glad I could help, Clara. Would you like to join me?*/ GOTO _bCRT6
	
APPEND _BCLARAP IF ~~ THEN _bCRT2
SAY @141 /*Your money? The Thieves took it. I'm sure we can recover most of it if we search their compound. */
	++ @142 /*I'll search the compound. Do you have somewhere safe to go?*/ GOTO _bCRT3
	++ @138 /*I don't believe you! Die thief! Muwahahaha!!*/ GOTO _bCRT4
	++ @143 /**We* won't be doing anything. I'm done with you, Clara. Just go.*/ GOTO _bCRT5
	++ @144 /*Then we'll do that. Would you like to join me? */ GOTO _bCRT6
	END
	
	IF ~~ THEN _bCRT3
	SAY @145 /*I'll go to the Five Flagons Inn. If you ever want to see me again, you can find me there.*/
	IF ~!Global("PLAYHOUSE","GLOBAL",1)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0509",470,404,E)~ EXIT
	IF ~Global("PLAYHOUSE","GLOBAL",1)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0522",470,404,E)~ EXIT
	END
	
	IF ~~ THEN _bCRT5
	SAY @24 /*Fine, I'll go to the bridge district. If you ever change your mind, I'll be at the Five Flagons Inn.*/
	+ ~!Global("PLAYHOUSE","GLOBAL",1)~ + @25 /*I'll keep that in mind.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0509",470,404,E)~ EXIT
	+ ~Global("PLAYHOUSE","GLOBAL",1)~ + @25 /*I'll keep that in mind.*/ DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0522",470,404,E)~ EXIT
	END

	IF ~~ THEN _bCRT6
	SAY @146 /*Thank you, <CHARNAME>. You won't regret this.*/
	IF ~~ THEN DO ~JoinParty()~ EXIT
	END
END

CHAIN _BCLARAP _bCRT4
@147 /**Clara falls to her knees and starts crying* Please don't kill me! I've never done anything to harm you or anyone else. I'm just a poor farmer's daughter...*/
= @148 /**She sobs uncontrollably, her head down and her face in her hands.**/
DO ~SetGlobal("_bSuperDark","GLOBAL",1)~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN @149 /*You cannot murder this innocent young woman in cold blood, <CHARNAME>, I will not allow it.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1) !Global("AnomenRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",1)~ 
THEN @150 /*You would kill this pretty girl? Never! I will defend her with my life.*/
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @151 /*As a knight of the order I cannot stand idly by and allow you to do this.*/
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @152 /*This young lady cannot die! Boo will stop you! I will stop you!*/
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @153 /*This would be a complete loss of balance, <CHARNAME>. I will not let you do this.*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @154 /*Y-you would kill her? But she's done n-nothing wrong!*/
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ 
THEN @155 /*Yer a heartless one, <CHARNAME>. You should nae ever be killin' a girl that beautiful. Custom dictates that ye may use what force ye need in order to get her legs apart, but then ye leave her warm and breathing for the next man. 'tis only courtesy!*/
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @156 /*Killing her serves no purpose, <CHARNAME>. Keep her as a pet. Let her clean our clothes and cook our meals (and if I can figure out how, let her warm my bed as well.)*/
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @157 /*You know, Clara dear, I think it's time for you to push the red button.*/
== _BCLARAP @158 /**still sobbing* (Where is that stupid ball, ahh here it is. What did that gnome say? Push the red button in the crook of the 'J' for two seconds and...)*/
END
	++ @159 /*Oh fine, I won't kill you. In fact, I insist that you join me.*/ EXIT
	++ @160 /*You may live, but I never want to see you again.*/ EXIT
	++ @161 /*Cry all you want, but you're still going to die.*/ DO ~ReputationInc(-2)~ EXIT

	
//Post SuperDark
CHAIN IF WEIGHT #-1 ~Global("_bSuperDark","GLOBAL",5)~ THEN JANJ _bCRT7
@162 /*Hey, it worked! And this one didn't even turn our skin purple! I should start making those again; Clara bought my last one.*/
DO ~SetGlobal("_bSuperDark","GLOBAL",6)~
EXIT
