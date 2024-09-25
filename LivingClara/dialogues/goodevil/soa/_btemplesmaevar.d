	//1st time talking with the Priestess after stealing the necklace if one day has passed.

EXTEND_BOTTOM TALMISS 2 /*Some idiot thief has stolen my necklace! Talos curse you, for there shall be no services offered this day!*/
IF ~OR(2) Global("_bStealTalosNecklace","GLOBAL",1) !Global("_bWrathofTalos","GLOBAL",0) Global("_bWarnedByTalos","GLOBAL",0)~ THEN + _bTalosPriestess1
END

EXTEND_BOTTOM TALMISS 0 /*Chaos prevail! Do you require the services of Talos?*/
IF ~OR(2) Global("_bStealTalosNecklace","GLOBAL",1) !Global("_bWrathofTalos","GLOBAL",0) Global("_bWarnedByTalos","GLOBAL",0)~ THEN + _bTalosPriestess1
END

APPEND TALMISS IF ~~ THEN _bTalosPriestess1
	SAY @2 /*You! You are <CHARNAME>, are you not? Where is my necklace?!*/
	+ ~Global("_bWrathofTalos","GLOBAL",0) Global("_bMazzyWritesNoteToTemple","GLOBAL",1)~ + @3 /*Me? No, I am not <CHARNAME>. Who's <CHARNAME>?*/ GOTO _bTalosPriestess2a
	+ ~!Global("_bWrathofTalos","GLOBAL",0) Global("_bMazzyWritesNoteToTemple","GLOBAL",1)~ + @3 /*Me? No, I am not <CHARNAME>. Who's <CHARNAME>?*/ GOTO _bTalosPriestess2b
	+ ~Global("_bMazzyWritesNoteToTemple","GLOBAL",0)~ + @3 /*Me? No, I am not <CHARNAME>. Who's <CHARNAME>?*/ GOTO _bTalosPriestess2c
	+ ~Global("_bWrathofTalos","GLOBAL",0) GlobalGT("MaeVarWork","GLOBAL",3)~ + @4 /*Mae'Var has your necklace, but I will kill him and return it to you soon.*/ GOTO _bTalosPriestess3
	+ ~!Global("_bWrathofTalos","GLOBAL",0) GlobalGT("MaeVarWork","GLOBAL",3)~ + @4 /*Mae'Var has your necklace, but I will kill him and return it to you soon.*/ GOTO _bTalosPriestess4
	+ ~PartyHasItem("MISC4Y")~ + @5 /*It is right here. My apologies.*/ DO ~TakePartyItem("MISC4Y")~ GOTO _bTalosPriestess6
	++ @6 /*I lost it. I'm sorry. Can I pay you for a new one?*/ GOTO _bTalosPriestess7
	+ ~Global("_bWrathofTalos","GLOBAL",0) Global("_bMazzyWritesNoteToTemple","GLOBAL",1)~ + @7 /*Wait... how did you know that I took your necklace?*/ GOTO _bTalosPriestess2a
	+ ~!Global("_bWrathofTalos","GLOBAL",0) Global("_bMazzyWritesNoteToTemple","GLOBAL",1)~ + @7 /*Wait... how did you know that I took your necklace?*/ GOTO _bTalosPriestess2b
	+ ~Global("_bMazzyWritesNoteToTemple","GLOBAL",0)~ + @7 /*Wait... how did you know that I took your necklace?*/ GOTO _bTalosPriestess2c
	++ @8 /*The necklace is mine and I'm keeping it.*/ GOTO _bTalosPriestess10
	++ @8001 /*Right. I'll be leaving now.*/ GOTO _bTalosPriestess2c
	END
	
	IF ~~ THEN _bTalosPriestess2a
	SAY @9 /*That is a good question. Let me read you this note:*/
	= @10 /*"Dear Mistress Ada, High Priestess of Talos, I am Mazzy Fentan, a companion of <CHARNAME>. Mae'Var of the Shadow Thieves desired your necklace and so we stole it from you in order to infiltrate his guild. You have my sincerest apologies. I promise to bring it back within a week along with news of Mae'Var's death."*/
	= @11 /*It has not yet been a week, but you shall receive no services from me until my necklace is returned. Now begone!*/ 
	IF ~~ THEN DO ~SetGlobal("_bWarnedByTalos","GLOBAL",1)~ EXIT
	END
	
	IF ~~ THEN _bTalosPriestess2b
	SAY @9 /*That is a good question. Let me read you this note:*/
	= @10 /*"Dear Mistress Ada, High Priestess of Talos, I am Mazzy Fentan, a companion of <CHARNAME>. Mae'Var of the Shadow Thieves desired your necklace and so we stole it from you in order to infiltrate his guild. You have my sincerest apologies. I promise to bring it back within a week along with news of Mae'Var's death."*/
	= @12 /*It has been a week, so I will ask you again. Where is my necklace?!*/
	+ ~PartyHasItem("MISC4Y")~ + @5 /*It is right here. My apologies.*/ DO ~TakePartyItem("MISC4Y")~ GOTO _bTalosPriestess6
	++ @6 /*I lost it. I'm sorry. Can I pay you for a new one?*/ GOTO _bTalosPriestess7
	++ @8 /*The necklace is mine and I'm keeping it.*/ GOTO _bTalosPriestess10
	END
	
	IF ~~ THEN _bTalosPriestess2c
	SAY @13 /*You honestly thought it would be that easy? You thought you could walk into this temple, steal a necklace from the high priestess of Talos, and I would never catch you? I will ask you again. Where is my necklace?*/
	+ ~PartyHasItem("MISC4Y")~ + @5 /*It is right here. My apologies.*/ DO ~TakePartyItem("MISC4Y")~ GOTO _bTalosPriestess6
	++ @6 /*I lost it. I'm sorry. Can I pay you for a new one?*/ GOTO _bTalosPriestess7
	++ @8 /*The necklace is mine and I'm keeping it.*/ GOTO _bTalosPriestess10
	END
	
	IF ~~ THEN _bTalosPriestess3
	SAY @14 /*Do so quickly or suffer my wrath. You shall receive no services from me until you do. Now begone!*/
	++ @16 /**leave**/ DO ~SetGlobal("_bWarnedByTalos","GLOBAL",1)~ EXIT
	++ @17 /*Maybe I will kill you instead!*/ GOTO _bTalosPriestess5
	END
	
	IF ~~ THEN _bTalosPriestess4
	SAY @15 /*Do so or you will continue to suffer my wrath. Now begone!*/ 
	++ @16 /**leave**/ DO ~SetGlobal("_bWarnedByTalos","GLOBAL",1)~ EXIT
	++ @17 /*Maybe I will kill you instead!*/ GOTO _bTalosPriestess5
	END
	
	IF ~~ THEN _bTalosPriestess5
	SAY @18 /*Hah! Kill me and Talos will strike you down. Now leave, I have things to do.*/
	IF ~~ THEN DO ~SetGlobal("_bWarnedByTalos","GLOBAL",1)~ EXIT 
	END
	
	IF ~~ THEN _bTalosPriestess6
	SAY @19 /*Yes! I should kill you for this insult, but I would rather leave you alive to kill my enemies. Now be a good <PRO_GIRLBOY> and go wipe out the Shadow Thieves. Or slaughter that new guild instead; they're quite annoying as well.*/
	= @20 /*Or the best idea yet, kill both guilds down to the last man. But whatever you decide to do, leave me now!*/
	IF ~~ THEN DO ~SetGlobal("_bWrathofTalos","GLOBAL",0) SetGlobal("_bStealTalosNecklace","GLOBAL",2) SetGlobal("_bWarnedByTalos","GLOBAL",2) AddJournalEntry(@1003,QUEST_DONE)~ /*Necklace of Talos: All's Well That Ends Well

I have made amends with Mistress Ada, the Priestess of Talos and will once again be able to receive services at that temple.*/
	EXIT 
	END
	
	IF ~~ THEN _bTalosPriestess7
	SAY @21 /*Only if you pay me its full value: Twelve gold, thirteen silver, and seventy-nine copper!*/
	+ ~PartyGoldGT(12)~ + @22 /*I have thirteen gold. Can you give me change?*/ GOTO _bTalosPriestess8
	+ ~PartyGoldGT(12)~ + @23 /*Okay. Here.*/ DO ~TakePartyGold(13)~ GOTO _bTalosPriestess6
	++ @24 /*I don't have that much.*/ GOTO _bTalosPriestess9
	++ @17 /*Maybe I will kill you instead!*/ GOTO _bTalosPriestess5
	END
	
	IF ~~ THEN _bTalosPriestess8
	SAY @25 /*Talos does not deign to offer change! Round it up or suffer my wrath!*/
	+ ~PartyGoldGT(12)~ + @23 /*Okay. Here.*/ DO ~TakePartyGold(13)~ GOTO _bTalosPriestess6
	++ @24 /*I don't have that much.*/ GOTO _bTalosPriestess9
	++ @17 /*Maybe I will kill you instead!*/ GOTO _bTalosPriestess5
	END
	
	IF ~~ THEN _bTalosPriestess9
	SAY @26 /*Then you will suffer. Return my necklace or give me the gold when you wish your suffering to cease. Leave now!*/
	++ @16 /**leave**/ DO ~SetGlobal("_bWarnedByTalos","GLOBAL",1)~ EXIT
	++ @17 /*Maybe I will kill you instead!*/ GOTO _bTalosPriestess5
	END

	IF ~~ THEN _bTalosPriestess10
	SAY @27 /*You are making a mistake. You will feel the full wrath of Talos in time. Now begone!*/
	IF ~~ THEN DO ~SetGlobal("_bWrathofTalos","GLOBAL",5) SetGlobal("_bWarnedByTalos","GLOBAL",1)~ EXIT
	END
END

//If you've already talked with the Priestess

EXTEND_BOTTOM TALMISS 2 /*Some idiot thief has stolen my necklace! Talos curse you, for there shall be no services offered this day!*/
IF ~OR(2) Global("_bStealTalosNecklace","GLOBAL",1) !Global("_bWrathofTalos","GLOBAL",0) Global("_bWarnedByTalos","GLOBAL",1)~ THEN + _bTalosPriestess11
END

EXTEND_BOTTOM TALMISS 0 /*Chaos prevail! Do you require the services of Talos?*/
IF ~OR(2) Global("_bStealTalosNecklace","GLOBAL",1) !Global("_bWrathofTalos","GLOBAL",0) Global("_bWarnedByTalos","GLOBAL",1)~ THEN + _bTalosPriestess11
END

APPEND TALMISS IF ~~ THEN _bTalosPriestess11
	SAY @28 /*Again? What do you want now?*/
	+ ~PartyHasItem("MISC4Y")~ + @29 /*I have your necklace here.*/ DO ~TakePartyItem("MISC4Y")~ EXTERN TALMISS _bTalosPriestess6
	+ ~PartyGoldGT(12)~ + @30 /*I lost your necklace but here's 13 gold instead.*/ DO ~TakePartyGold(13)~ EXTERN TALMISS _bTalosPriestess6
	++ @31 /*Nothing. Sorry to bother you.*/ EXIT
	++ @32 /*I've decided to kill you!*/ EXTERN TALMISS _bTalosPriestess5
	END
END


//Mazzy comments on stealing the necklace.
INTERJECT_COPY_TRANS2 MAEVAR 17 _bMazzyCommentStealTalosNecklace1 /*Now get moving! I've told you the mark; you do the rest. Pick it from her in her sleep if you must, but do not bother me again without the goods!*/	
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @33 /*Stealing is wrong, even from a priestess of Talos. If we can think of no other way to accomplish this task, then we must do our utmost to return the necklace afterwards.*/
	END
	
//Priest of Cyric Interjects When you return the necklace.
INTERJECT_COPY_TRANS MAEVAR 23 _bCyricWantsTalosNecklace1 /*It's a mystery how they walk with a dinner plate around their necks. I'll file it with the other garbage sent to Calimshan. They like jewelry big, I hear.*/
	== MVGUARD1 IF ~Global("_bStealTalosNecklace","GLOBAL",1)~ THEN @34 /*Um... Mae'Var... sir... that ship left yesterday morning.*/
	== MAEVAR IF ~Global("_bStealTalosNecklace","GLOBAL",1)~ THEN @35 /*You are interrupting me and that is a dangerous habit. Hmmm... <CHARNAME>, here, have it back. We have enough clutter around here.*/
		DO ~GiveItemCreate("MISC4Y",Player1,0,0,0)~
	=  IF ~Global("_bStealTalosNecklace","GLOBAL",1)~ THEN @36 /*Now where was I? Ahh... yes, my petty burglars. Do not be too proud of your success. That was an easy job with little danger, though you may want to watch out for storms.*/
	DO ~AddJournalEntry(@1002,QUEST)~ /*Necklace of Talos: Necklace Retained.

Mae'Var gave me the necklace back. The chief thief did not truly want the item, he only wanted to test my willingness to jump at his command. He also gave me a cryptic warning about watching out for storms, I assume because Talos is a god of lightning. Perhaps I should return it.*/
	END
	
//Priest of Cyric Interjects when you return the statue.
INTERJECT_COPY_TRANS MAEVAR 22 _bCyricWantsStatue1 /*Ehh, kind of gaudy, isn't it? Can't see what's so compelling about it. I'll toss it in with the garbage going to Waterdeep. Lots of dainty collectors up there.*/
	== MVGUARD1 IF ~Global("_bStealLathanderStatue","GLOBAL",1)~ THEN @34 /*Um... Mae'Var... sir... that ship left yesterday morning.*/
	== MAEVAR IF ~Global("_bStealLathanderStatue","GLOBAL",1)~ THEN @37 /*You are interrupting me and that is a dangerous habit. Hmmm... <CHARNAME>, here, have it back. We have enough clutter around here.*/
		DO ~GiveItemCreate("MISC4X",Player1,0,0,0)~
	= @38 /*Now where was I? Ahh... yes, my petty burglars. Do not be too proud of your success; that was an easy job with little danger.*/
	DO ~AddJournalEntry(@1005,QUEST)~ /*Statuette of Lathander: Statuette Retained.

Mae'Var gave me the statuette back. The chief thief did not truly want the item, he only wanted to test my willingness to jump at his command.*/
	END
	
//Talking with Dawnmaster Kreel After Taking the Statue
APPEND DAWNMAS IF WEIGHT #-1 ~Global("_bStealLathanderStatue","GLOBAL",1)~ THEN BEGIN _StealLathander1
	SAY @39 /*You are the thieves who stole from this temple. You will have no service from Lathander until you return the statuette. Please leave.*/
	+ ~PartyHasItem("MISC4X")~ + @40 /*I have it here. My apologies for taking it but the theft was necessary.*/ DO ~TakePartyItem("MISC4X")~ GOTO _StealLathander2
	+ ~PartyHasItem("MISC4X")~ + @41 /*Fine. Here's the statue but I'm not sorry.*/ DO ~TakePartyItem("MISC4X")~ GOTO _StealLathander3
	+ ~!PartyHasItem("MISC4X")~ + @6 /*I lost it. I'm sorry. Can I pay you for a new one?*/ GOTO _StealLathander5
	++ @42 /*I'm sorry that your statuette was stolen, but it wasn't me.*/ GOTO _StealLathander4
	++ @43 /*How did you know that I took it?*/ GOTO _StealLathander4
	++ @44 /*Whatever. I didn't want anything from you anyway.*/ EXIT
	++ @16 /**leave**/ EXIT
	END
	
	IF ~~ THEN _StealLathander2
	SAY @45 /*Lathander blesses you for making amends. You will always be welcome here in the future.*/
	IF ~~ THEN DO ~SetGlobal("_bStealLathanderStatue","GLOBAL",0) AddJournalEntry(@1006,QUEST_DONE)~ /*Statuette of Lathander: The Statue Returned

I returned the statuette I stole to the Temple of Lathander and received the thanks of Dawnmaster Kreel. The temple will once again offer me services.*/
	EXIT
	END
	
	IF ~~ THEN _StealLathander3
	SAY @46 /*Your actions have made amends regardless of your intent. You will always be welcome here in the future.*/ 
	IF ~~ THEN DO ~SetGlobal("_bStealLathanderStatue","GLOBAL",0) AddJournalEntry(@1006,QUEST_DONE)~ EXIT
	END
	
	IF ~~ THEN _StealLathander5
	SAY @460 /*We would prefer that our relic be returned. However, if it is truly beyond your reach, a donation of 100 gold would allow us to commission another one.*/
	+ ~PartyGoldGT(99)~ + @23 /*Okay. Here.*/ DO ~TakePartyGold(100)~ GOTO _StealLathander6
	++ @24 /*I don't have that much.*/ GOTO _StealLathander7
	END
	
	IF ~~ THEN _StealLathander6
	SAY @45 /*Lathander blesses you for making amends. You will always be welcome here in the future.*/
	IF ~~ THEN DO ~SetGlobal("_bStealLathanderStatue","GLOBAL",0) AddJournalEntry(@1007,QUEST_DONE)~ EXIT /*Although I did not return the temple's relic, I have made a donation to Dawnmaster Kreel as compensation and the temple of Lathander will once again offer me services.*/
	END

	IF ~~ THEN _StealLathander7
	SAY @461 /*Then it is time for you to leave. Return when you are able to make amends for your ill deed.*/
	IF ~~ THEN EXIT
	END
END
	
CHAIN DAWNMAS _StealLathander4
@47 /*You were seen entering our temple before the statuette was taken and it was missing when you left. The statuette also carries a small part of Lathander's power and I can feel its traces on you now.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyWritesNoteToTemple","GLOBAL",1)~ 
THEN @48 /*Also, did I not tell you? I wrote him a note saying that we took the statuette and promised its return.*/
== _BCLARAJ IF ~InMyArea("_bClara") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyWritesNoteToTemple","GLOBAL",1)~ THEN
@480 /*Mazzy! You're not supposed to tell the mark. That's like rule number one.*/
== DAWNMAS @49 /*Please return our relic. I do not have the time or the resources to seek it out myself.*/
EXIT

//On Entering the Docks with Mazzy in your party if you took the statue or necklace.
CHAIN 
IF  WEIGHT #-1 ~Global("_bMazzyWritesNoteToTemple","GLOBAL",2)~ THEN MAZZYJ _bMazzywrotenote0
@50 /*Let us finish our work with Mae'Var quickly, <CHARNAME>. Then we can kill him, destroy his guild, and return what we stole to the temple.*/
DO ~SetGlobal("_bMazzyWritesNoteToTemple","GLOBAL",3)~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN
@51 /*Aye, Mazzy, that is what I like to hear! Let's kill 'em all, take their gold, an' burn th' place to the ground!*/
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
@52 /*Boo agrees with the little paladin! No more sneaking around. We must break down evil's door and smite until no evil is left to be smoten!*/
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN
@53 /*When you are busy carving your path of death, Mazzy, do remember that this thief is on your side and would like to remain among the living.*/
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN
@54 /*I do not need an excuse to slaughter a whole building full of rivvin males, and especially not for killing Shadow Thieves; two of them were foolish enough to accost me the first night I entered this city. They wanted to put me to work for them, but first they wanted to try me out for free.*/
= @55 /*I had to finish them far too quickly and slip away before the guards arrived, but with this group we can take our time. We should flay them all, bathe in their blood, and rip their breaths from their bodies scream by scream. Their deaths should last weeks, <CHARNAME>, not the few minutes that we take normally.*/
== IF_FILE_EXISTS _BCLARAJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN
@56 /*Um... Mazzy? When you say that you're going to kill all of the Shadow Thieves, you're not including me, right?*/
== MAZZYJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN
@57 /*When the time comes, Clara, I shall inform you so that you may choose your side.*/
== IF_FILE_EXISTS _BCLARAJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN
@58 /*Do I have to choose a side? I really don't want to die.*/
== MAZZYJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN
@59 /*Then I recommend you choose my side and I shall do my utmost to protect you. Or if you wish, you may simply lie low while I kill your compatriots.*/
== IF_FILE_EXISTS _BCLARAJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN
@60 /*But that's dangerous too. They'll know that I was with you and <CHARNAME> and might decide to take revenge. I think I'll just stay close to you. And behind you... definitely behind you.*/
== MAZZYJ @61 /*<CHARNAME>, I should also mention that I left a note at the temple apologizing for our theft and promising to return the item within a week. So we had best be moving.*/
END
	++ @62 /*You did WHAT?!*/ GOTO _bMazzywrotenote1
	++ @63 /**sigh* Of course you did. I shouldn't even be surprised.*/ EXIT
	++ @64 /*Mazzy, you do know the meaning of incognito, don't you? Because this really isn't it.*/ GOTO _bMazzywrotenote2
	++ @65 /*That was a good idea. Hopefully we can get through this situation with our honor left intact.*/ EXIT
	++ @66 /*Then we must hurry. I would not wish to incur the wrath of the gods just yet.*/ EXIT
	
APPEND MAZZYJ IF ~~ THEN _bMazzywrotenote1
	SAY @67 /*I did not want them to worry about the theft; it would have caused them grief and anxiety, and by writing a note to explain our good intentions, I have prevented that.*/
	= @68 /*Really, <CHARNAME>, I do not know why you are surprised. Come, let us get a move on; the <DAYNIGHTALL> is wasting.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bMazzywrotenote2
	SAY @69 /*I do not move incognito, <CHARNAME>. I stride forward in the light, my armour glistening in the sun as I cry out a challenge to my enemies so that they will be prepared to meet me in honourable combat upon the field of battle.*/
	= @70 /*Really, <CHARNAME>, I do not know why you are surprised. Now let us get a move on; the <DAYNIGHTALL> is wasting.*/
	IF ~~ THEN EXIT
	END
END
