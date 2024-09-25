//Upon meeting Viconia at the stake.
INTERJECT_COPY_TRANS2 KELDORJ 178 _bmazzyviconiastake1 /*A drow elf? Here? One must wonder what plot the dark ones have in store. It appears justice is about to be laid... may its black and evil heart char into powder!*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN 
@0 /*There are no officials here... nor guards... this is a mob! Sir Keldorn, you cannot tell me that the Order supports random citizens capturing and executing people as they see fit. Where is the law?*/
	== KELDORJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN 
@1 /*Normally, I would agree with you, but drow are an exception. Dark elves are truly evil and they do not deserve the protection of the law. Give this drow your sympathy and it will stab you in the back.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN 
@2 /*I have my own reasons to hate drow, Keldorn, but this does not seem right. I say we must inquire as to her crimes before we allow this.*/
	== VALYGARJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~
@3 /*<CHARNAME>, she is right. You were willing to listen to me; do not close your ears now.*/
END

INTERJECT_COPY_TRANS2 ANOMENJ 248 _bmazzyviconiastake2 /*It seems a dark elf has been caught and is about to be put to the torch. Good. Such a fate is no less than the fiend deserves.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN 
@4 /*There are no officials here... nor guards... this is a mob! Anomen, you cannot tell me that the Order supports random citizens capturing and executing people as they see fit. Where is the law?*/
	== ANOMENJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN 
@5 /*Oh, I suppose you are right. <CHARNAME>, let us go see what this drow has been accused of and then we can let the mob administer justice without the halfling yammering.*/
END

INTERJECT_COPY_TRANS2 ANOMENJ 248 _bmazzyviconiastake3 /*It seems a dark elf has been caught and is about to be put to the torch. Good. Such a fate is no less than the fiend deserves.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN 
@6 /*There are no officials here... nor guards... this is a mob! I say we must inquire as to her crimes before we allow this.*/
	== ANOMENJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
@7 /**scoffs* What do you know about justice, halfling? Let the dark elf burn.*/
END

INTERJECT_COPY_TRANS2 VICG1 2 _bmazzyviconiastake4 /*Then the drow shall burn! Gather 'round, my brethren, and witness the will of Beshaba triumph over foul evil!*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Anomen")~ THEN 
@6 /*There are no officials here... nor guards... this is a mob! I say we must inquire as to her crimes before we allow this.*/
	== VALYGARJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~
@3 /*<CHARNAME>, she is right. You were willing to listen to me; do not close your ears now.*/
END

INTERJECT VICG1 7 _bmazzyviconiastake7 /*And lo, the judgment of Beshaba has been called upon this most evil of drow, and she has been found wanting! May the people see their salvation from your evil in the Maid of Misrule! Pray that she is merciful, foul one!*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@8	/*Wait! What is her crime? You cannot kill someone without cause!*/
	== VICG1 IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@9 /*Her crime? The crime of being dark and evil, of course! Look at her, fool! Her skin is black with the stain of her foul soul! She is a drow, and all drow deserve no mercy!*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@10 /*Many drow may be evil, but to burn her simply because she is a drow? No. Mob justice must not rule.*/
END
	++ @11 /*Mazzy, let her burn. What do we care?*/ DO ~SetGlobal("_bCNAbandonsViconia","GLOBAL",1)~ EXTERN VICONI _bmazzyviconiastake8
	++ @12 /*We must free her quickly! The pyre is already lit!*/ DO ~SetGlobal("ViconiaFree","AR1000",1)~ EXTERN MAZZYJ _bmazzyviconiastake9
	++ @1201 /*Viconia! No! Don't kill my one competent cleric!*/ DO ~SetGlobal("ViconiaFree","AR1000",1)~ EXTERN MAZZYJ _bmazzyviconiastake9
	++ @13 /*The drow must burn. Do not get in the way, Mazzy.*/ DO ~SetGlobal("_bCNAbandonsViconia","GLOBAL",1)~ EXTERN VICONI _bmazzyviconiastake10
	++ @14 /*Leave it alone, Mazzy, this is not our fight.*/ DO ~SetGlobal("_bCNAbandonsViconia","GLOBAL",1)~ EXTERN VICONI _bmazzyviconiastake10
	
CHAIN VICONI _bmazzyviconiastake8
@15 /*<CHARNAME>... you... you abandon me?! I have done nothing to warrant this! Og'elend! Traitor! Iblith! Oloth plynn dos!*/
	DO ~SetGlobal("ViconiaFree","AR1000",1)~
	== MAZZYJ @16 /*I care because it is right! But the pyre is already starting to burn and there is no time. Drow! Stay still! I will shoot an arrow to cut you free!*/
	DO ~FadeToColor([20.0],0) Wait(1) ActionOverride("Viconia",JumpToPoint([1824.1141])) 
	FadeFromColor([20.0],0) SetGlobal("ViconiaStake","AR1000",2)~
EXIT

APPEND MAZZYJ IF ~~ THEN _bmazzyviconiastake9
	SAY @17 /*Drow! Stay still! I will shoot an arrow to cut you free!*/
	IF ~~ THEN DO ~FadeToColor([20.0],0) Wait(1) ActionOverride("Viconia",JumpToPoint([1824.1141])) 
	FadeFromColor([20.0],0) SetGlobal("ViconiaStake","AR1000",2)~ EXIT
	END
END

CHAIN VICONI _bmazzyviconiastake10
	@15 /*<CHARNAME>... you... you abandon me?! I have done nothing to warrant this! Og'elend! Traitor! Iblith! Oloth plynn dos!*/
	DO ~SetGlobal("ViconiaFree","AR1000",1)~
	== MAZZYJ @18 /*Every fight is my fight, <CHARNAME>. I will always be on the side of all that is just and good in this world, and Arvoreen will always aid me against the wicked.*/
	= @19 /*But the pyre is already starting to burn and there is no time. Drow! Stay still! I will shoot an arrow to cut you free!*/
	DO ~FadeToColor([20.0],0) Wait(1) ActionOverride("Viconia",JumpToPoint([1824.1141])) 
	FadeFromColor([20.0],0) SetGlobal("ViconiaStake","AR1000",2)~
EXIT


 //After Viconia is freed. If CHARNAME abandoned Viconia
 CHAIN IF WEIGHT #2 ~Global("_bCNAbandonsViconia","GLOBAL",1) Global("ViconiaFree","AR1000",2) NumDeadGT("Vicg",2)~ THEN VICONI _bCNAbandonsViconia0
	@20 /*My thanks, tiny rivvin, I owe you my life.*/
	= @21 /*As for you, <CHARNAME>, I thought you were my friend, the only person I could trust. Now I have no one. I spit on you.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @22 /*Viconia, do you really have no one? Can you not return to your own people?*/
	== VICONI IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @23 /*I am exiled. They would kill me on sight. But I will manage. I have been making my way among the surface-dwellers for far longer than you have been alive, tiny one.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @24 /*Let me see you safely out of the city on my way home. I have been considering leaving and starting my own party for some time now, and it is past time that I did.*/
	= @25 /*Thank you for saving my life before, <CHARNAME>, but I think it is best if we part ways.*/
	== VICONI IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @26 /*Wait, tiny rivvin, you are starting a company? May I join you? You are fearless, but small, and you will need a powerful priestess like myself to keep you alive.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @27 /*Travelling with a drow? I am a hero, Viconia. I spend my time helping innocents and destroying the villainous. What would people think of me travelling with you?*/
	== VICONI IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @28 /*Ha! I know the rivvin. You fear they will think less of you because of me? What do they think of you now when they bother to think of you at all? Do they not see you as a child wielding toy weapons and armor?*/
	= @29 /*Do those wicked villains you wish to fight actually flee at the sight of you, or do they merely step over you and continue on their way? When you kill them, are they surprised that you were able to defeat them?*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @30 /*Enough, Viconia! Your point is well taken. Yes, the tall folk ignore and underestimate me, yes my foes laugh when I challenge them, and yes they all die by my hand in a state of shock and disbelief.*/
	= @31 /*You win, drow, you may come. But remember that we are heroes on the side of the light. Step out of line once and I will kill you myself.*/
	DO ~SetGlobal("_bMazzyLeavesForever","GLOBAL",1)~
	== VICONI IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @32 /*You are welcome to try, little rivvin. Others have tried... a few have succeeded... most have died. But there will be time for more threats and posturing on the road; let us go help the weak and pathetic and receive their praise. That will be a welcome change from having them throw rotten fruit and scream for the guards.*/
	== MINSCJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
	THEN @33 /*Minsc and Boo shall come as well and see you ladies to safety! All evil shall fall before our might!*/
	DO ~SetGlobal("_bMinscLeavesForever","GLOBAL",1)~
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
	THEN @34 /*You are a welcome addition, Minsc. You and Boo.*/
	== VICONI IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
	THEN @35 /*This addled one is as much a danger to us as to our enemies. But at least he is large and hard to kill. I will be keeping my distance though, both for the danger he presents and for the smell.*/
	== NALIAJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~
	THEN @36 /*I'm coming too, Mazzy! I know I can always trust you to help those in need.*/
	DO ~SetGlobal("_bNaliaLeavesForever","GLOBAL",1)~
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) GlobalGT("MazzyValygar","GLOBAL",0)~
	THEN @37 /*Let us be on our way then. Are you coming Valygar?*/
	== VALYGARJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) GlobalGT("MazzyValygar","GLOBAL",0)~
	THEN @38 /*Of course, Mazzy, though I am not sure how I feel about the drow.*/
	DO ~SetGlobal("_bValygarLeavesForever","GLOBAL",1)~
	== VICONI IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) GlobalGT("MazzyValygar","GLOBAL",0)~
	THEN @39 /*And I'm not sure how I feel about traveling with you, male. You will more than likely try to force yourself upon me in my sleep and kill me when I wake. But if you're a khal'abbil, a... companion of the halfling, then I will tolerate your company.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) GlobalGT("MazzyValygar","GLOBAL",0)~
	THEN @40 /*Valygar is a friend and you can trust him. He is also my squire.*/
	== VICONI IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) GlobalGT("MazzyValygar","GLOBAL",0)~
	THEN @41 /*Ahh he's your male wanre. That changes everything. I would have him wash my clothes and clean my weapons and armor as well, but it would be impolite to wear him out during the day and leave him useless for ssinssrigg lu' vith at night. I will have to get my own.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) GlobalGT("MazzyValygar","GLOBAL",0)~
	THEN @42 /*If you are going to speak drow, Viconia, you really must translate. I do not talk to you in halfling and expect you to understand.*/
	= @43 /*Is that everyone? Good, let us be off.*/
	== VICONI @44 /*Goodbye, <CHARNAME>, I hope to never meet you again.*/
	DO ~EscapeArea()~
	EXIT
 
INTERJECT_COPY_TRANS2 KELDORJ 181 _bmazzyviconiastake11 /*Silence, witch! Do not take her amongst us, <CHARNAME>! It will lead only to evil! I will not have it!*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @45 /*Sir Keldorn, enough. You are being inhospitable and rude. She is only one woman, alone and unarmed, not an army of invaders. It would be proper and chivalrous for us to escort her to safety.*/
	DO ~SetGlobal("_bMazzySavesViconia","GLOBAL",1)~
	= @46 /*But where is safe for you, Viconia? Do you truly have no place to call your own? What about your own people?*/
	== VICONI IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @47 /*I am exiled. They would kill me on sight. But if you cast me aside, I will manage. I have been making my way among the surface-dwellers for longer than your self-righteous friend has been alive... though I suppose he is old for a rivvil.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @48 /*<CHARNAME>, we have saved her and it is only right that we offer her hospitality as well. At the very least we should provide her with armour, weapons and supplies before sending her on her way.*/
END 

INTERJECT_COPY_TRANS VICONI 14 _bmazzyviconiastake12 /*But, come... we must be on our way soon if we are to avoid drawing another crowd. I distrust these barbaric people too much to hang about.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !IsValidForPartyDialog("Keldorn")~ 
	THEN @49 /*Viconia, do you really have no one? Can you not return to your own people?*/
	DO ~SetGlobal("_bMazzySavesViconia","GLOBAL",1)~
	== VICONI IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !IsValidForPartyDialog("Keldorn")~
	THEN @50 /*I am exiled. They would kill me on sight. But if you cast me aside, I will manage. I have been making my way among the surface-dwellers for far longer than you have been alive, little one.*/ 
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !IsValidForPartyDialog("Keldorn")~
	THEN @48 /*<CHARNAME>, we have saved her and it is only right that we offer her hospitality as well. At the very least we should provide her with armour, weapons and supplies before sending her on her way.*/
END
