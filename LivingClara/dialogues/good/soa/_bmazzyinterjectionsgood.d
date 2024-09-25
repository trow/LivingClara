//SOA Interjections

CHAIN IF WEIGHT #-1 ~IfValidForPartyDialog("Mazzy")~ THEN MADAM _bmazzynin1
@1 /*Greetings, my <LADYLORD>. I am Madame Nin, and I am here to ensure you are pleasantly accompanied. Are you interested in companionship, my <LADYLORD>?*/
== MAZZYJ @2 /*Pardon me, my lady, I must inform you that slavery is illegal in Athkatla and that we plan to free the poor souls imprisoned here, including these pleasure slaves. I imagine your guards will resist our efforts and the process will involve much death and bloodshed.*/
= @3 /*So if you value your life, my lady, I suggest that you leave the premises.*/
== MADAM @4 /*You do not scare me, halfling. If you try anything, the guards will make short work of you. Now, begone, all of you.*/
DO ~SetGlobal("MadamUpset","GLOBAL",1)~
== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~
THEN @5 /*You are a strong warrior, halfling, but sometimes you are irritating to have around.*/
== MAZZYJ IF ~InMyArea("DORN") InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~
THEN @6 /*Did you want a pleasure slave? I am not sorry. You may take out your vexation on the guards.*/
== KORGANJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN @7 /*Now what did ye do that fer, girl? I was going to enjoy me a fine lass, maybe two!*/
== MAZZYJ IF ~InMyArea("Korgan") InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN @8 /*Then I have saved two girls the unpleasantness of knowing you. They are slaves, Korgan. Find yourself someone free and willing.*/
== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ 
THEN @9 /*Athkatla was founded on corruption, Mazzy, and you will blunt your blade long before you drain this cesspool. However, I must admit that I do not like slavery. Perhaps we can help these folks at least.*/
== MAZZYJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
THEN @10 /*I am glad to hear that. Maybe you are not so evil for a thief.*/
== MINSCJ IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
THEN @1001 /*Boo says you are right, Mazzy. Sound the call and we will attack!*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~
THEN @11 /*Finally! This pit of vice and vipers has needed a good cleansing for too long.*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~
THEN @12 /*If we free these slaves, another establishment will restart the trade within a month. However, we might as well kill the guards and owners; maybe they have something worth taking.*/
== AERIEJ IF ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @13 /*W—we cannot just leave. Not when there are people suffering...*/
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~
THEN @14 /*Mazzy is right. We cannot let the lower classes be exploited in this way.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN @15 /*Yes, tiny paladin. Let us spill rivvin blood this <DAYNIGHTALL>.*/
== MAZZYJ @16 /*The madame has been adequately warned; If she stays her death will be just. Let us go. We have slaves to attend to.*/
END
	++ @17 /*Well spoken, Mazzy. Let's go free them.*/ EXTERN MAZZYJ _bmazzynin2
	++ @18 /*I agree that the slaves should be freed, but did you have to tell them our plans ahead of time? Now they'll be expecting us!*/ EXTERN MAZZYJ _bmazzynin3
	++ @19 /*Mazzy, you do not lead this group. I get to make these decisions, not you.*/ EXTERN MAZZYJ _bmazzynin4
	++ @20 /*Mazzy! Some of us wanted to enjoy pleasure slaves!*/ EXTERN MAZZYJ _bmazzynin5
	+ ~OR(3) !InMyArea("Aerie") !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ + @21 /*Mazzy, I have no intention of freeing the slaves. Who wants to risk injury over some scrawny prisoners?*/ EXTERN MAZZYJ _bmazzynin6
	+ ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ + @21 /*Mazzy, I have no intention of freeing the slaves. Who wants to risk injury over some scrawny prisoners?*/ EXTERN AERIEJ _bmazzynin7
	
APPEND MAZZYJ IF ~~ THEN _bmazzynin2
	SAY @22 /*I recommend we begin with those in the fighting pits. They can aid us in our fight.*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazzynin3
	SAY @23 /*Excellent! That means our enemies will gather together, confident and prepared. None will escape!*/
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bmazzynin4
	SAY @24 /*Oh? But I am a member of this party and I too must face the consequences of our actions. Were you planning on freeing the slaves?*/
		++ @25 /*Of course, I was. But that doesn't mean I wanted to march right in the front door and announce our strategy. Now they'll be expecting us.*/ GOTO _bmazzynin3
		++ @26 /*Yes, but I was hoping to watch another pit fight and enjoy a few pleasure slaves before I did.*/ GOTO _bmazzynin5
		+ ~OR(3) !InMyArea("Aerie") !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ + @27 /*Why would I bother to do that? Who cares about a few damn slaves?*/ GOTO _bmazzynin6 
		+ ~InMyArea("Aerie") InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ + @27 /*Why would I bother to do that? Who cares about a few damn slaves?*/ EXTERN AERIEJ _bmazzynin7
	END
	
	IF ~~ THEN _bmazzynin5
	SAY @28 /*These slaves are people, <CHARNAME>, and they do not exist solely for your pleasure. They deserve to be freed.*/
	IF ~~ THEN GOTO _bmazzynin6
	END
END
	
CHAIN MAZZYJ _bmazzynin6 
@29 /*I will free them with or without you, <CHARNAME>. Will you choose to help?*/
== MADAM @30 /*Kill the halfling, <CHARNAME>, and enjoy all the pleasure slaves you want.*/
END
	++ @31 /*No, I need her. Let's go, Mazzy.*/ EXIT 
	++ @32 /*Mazzy is right, Madame Nin, and I recommend you leave.*/ EXIT
	++ @33 /*Excellent idea. Time to die, halfling.*/ DO ~SetGlobal("MadamUpset","GLOBAL",0) SetGlobal("_bMazzyHostile","GLOBAL",1)~ EXIT

APPEND AERIEJ IF ~~ THEN _bmazzynin7
	SAY @34 /*You cannot mean that <CHARNAME>. I have been a slave and I would not wish that fate on anyone. You must have sympathy.*/ 
	IF ~~ THEN EXTERN MAZZYJ _bmazzynin6
	END
END
	

//At D'Arnise Hold. Talking with Lady Delcia Cain.
INTERJECT_COPY_TRANS2 DELCIA 8 _bMazzyDelcia1 /*Lady Delcia Caan: “I suppose I should expect nothing less. Your lack of breeding is apparent in your close-set eyes. Loot as you will, but you will not get the satisfaction of a fearful response from me.”*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @35 /*<CHARNAME>, stop! My Lady, this is a misunderstanding. We are here to rescue you on Nalia's behalf. We have her permission to take whatever equipment and items we need in order to battle the evil creatures invading your castle.*/
END 

INTERJECT_COPY_TRANS2 DELCIA 9 _bMazzyDelcia2 /*Do as you will. I will not lose my dignity just because you threaten my life. Indeed, I would rather die than lose respect for myself. Frankly, I don't know how you peasants stand it.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @36 /*<CHARNAME>, I will not let you do this. She is rude, yes, but she does not deserve to die.*/
	DO ~SetGlobal("_bMazzyHostile","GLOBAL",1)~
END


//When Anomen fights to stop Dorn from killing the Priest in the Order of The Radiant Heart
INTERJECT_COPY_TRANS2 ANOMENJ 321 /*Slay the blackguard!*/ _bMazzyHelpsAnomenStopDorn1
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @37 /*How can you not intervene, <CHARNAME>? You are not the person that I thought and I will stop you.*/
	DO ~SetGlobal("_bMazzyHostile","GLOBAL",1)~
END


//After you refuse the Djinn a second time
INTERJECT_COPY_TRANS TRGENI01 11 _bRefuseTheDjinn2 /*If that is what you wish, wayfarer, may you have pleasant diversions in your travels.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("zahraajob","GLOBAL",0) Global("zahraarefused","GLOBAL",1)~
	THEN @38 /*Enough, <CHARNAME>. If you will not help my home, then I shall end the threat myself. Draw your weapon, djinn!*/
	DO ~ActionOverride("Mazzy",Attack("TRGENI01"))~
END

//Slaves in Thieves Guild options
EXTEND_BOTTOM SHTHLT01 96 /*Very well. Now, I must ask. She does not like it, but there is good money in smuggling slaves. Should she dabble in this as well?*/
IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXTERN MAZZYJ _bMazzyNoSlaves1
END

EXTEND_BOTTOM SHTHLT01 97 /*Since you are being risky anyway, I should tell you that there is a lot of money to be made in smuggling slaves. The dangers are high though.*/
IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXTERN MAZZYJ _bMazzyNoSlaves2
END

EXTEND_BOTTOM SHTHLT01 98 /*You're playing it safe, but I should ask anyway. There is money to be made in smuggling slaves. Should Morsa dabble in this?*/
IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXTERN MAZZYJ _bMazzyNoSlaves3
END

EXTEND_BOTTOM SHTHLT01 99 /*There is something else to consider. There is good money in smuggling slaves. Should Morsa dabble in this as well?*/
IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXTERN MAZZYJ _bMazzyNoSlaves4
END

	
CHAIN MAZZYJ _bMazzyNoSlaves1
@39 /*No, <CHARNAME>. It is bad enough that you took this guild; I cannot stand by and let you deal in slavery.*/
== SHTHLT01 @40 /*It is your choice, guildmaster. What are your instructions?*/
END
	++ @41 /*She would just be the transport, so I see no harm.*/ DO ~SetGlobal("_bThiefSlaves","GLOBAL",1)~ EXTERN SHTHLT01 100
	++ @42 /*Absolutely not. I won't have it.*/ EXTERN SHTHLT01 101
	
CHAIN MAZZYJ _bMazzyNoSlaves2
@39 /*No, <CHARNAME>. It is bad enough that you took this guild; I cannot stand by and let you deal in slavery.*/
== SHTHLT01 @40 /*It is your choice, Guild Master. What are your instructions?*/
END
	++ @43 /*The gold will ease any pangs of guilt I feel. Have her do it.*/ DO ~SetGlobal("_bThiefSlaves","GLOBAL",1)~ EXTERN SHTHLT01 102
	++ @44 /*I will have no such thing in my guild.*/ EXTERN SHTHLT01 100

CHAIN MAZZYJ _bMazzyNoSlaves3
@39 /*No, <CHARNAME>. It is bad enough that you took this guild; I cannot stand by and let you deal in slavery.*/
== SHTHLT01 @40 /*It is your choice, Guild Master. What are your instructions?*/
END
	++ @45 /*By all means. She will just be a go-between, so I see nothing wrong.*/ DO ~SetGlobal("_bThiefSlaves","GLOBAL",1)~ EXTERN SHTHLT01 101
	++ @46 /*I will not have such a thing in my guild. I forbid it.*/ EXTERN SHTHLT01 103
	
CHAIN MAZZYJ _bMazzyNoSlaves4
@39 /*No, <CHARNAME>. It is bad enough that you took this guild; I cannot stand by and let you deal in slavery.*/
== SHTHLT01 @40 /*It is your choice, Guild Master. What are your instructions?*/
END
	++ @47 /*Certainly. If not us, then someone else. We might as well profit.*/ DO ~SetGlobal("_bThiefSlaves","GLOBAL",1)~ EXTERN SHTHLT01 100
	++ @48 /*No, I will not allow it. I will not have the guild associated with slave trading.*/ EXTERN SHTHLT01 101


CHAIN IF WEIGHT #-2 ~Global("_bThiefSlaves","GLOBAL",1)~ THEN MAZZYJ _bMazzySaidNOSLAVES
@49 /* I warned you, <CHARNAME>. If you are truly willing to engage in slavery, then you are evil to the core and I must stop you now before more innocents are hurt!*/
= @50 /*Draw steel and face me! Today you and all your Shadow Thieves will meet their reckoning!*/
DO ~SetGlobal("_bThiefSlaves","GLOBAL",2) SetGlobal("_bMazzyHostile","GLOBAL",1)~
EXIT


//Dorn Helmite Camp
INTERJECT_COPY_TRANS2 OHDHOKK 1 _bMazzyHokkney /*Tyr will not suffer this monster to live. We but waited for the opportunity to end it for all time.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @59 /*I am on Tyr's side in this, <CHARNAME>. If you mean to kill these priests, you will need to go through me as well.*/
END

//Helmite Camp Objection
EXTEND_BOTTOM DORNJ 369 /*All must perish. Ur-Gothoz has altered my mission, and if you stand in my way, you should pray he does not alter it further.*/ 
	++ @60 /*Hold up, Dorn. I was willing to kill Terpfen, but an entire Helmite camp is another story.*/ + _bDornMazzyCamp
END

CHAIN DORNJ _bDornMazzyCamp
@61 /*You are a fool, <CHARNAME>. Only a fool would have believed that this could end another way.*/
END
	++ @62 /*Fine. But your patron needs to make up his damn mind.*/ + 371
	++ @63 /*Perhaps. This power of yours better be worth it.*/ + 370
	++ @64 /*Maybe I am a fool. But I will not let you do this.*/ + _bDornMadAgain
	
CHAIN DORNJ _bDornMadAgain
@65 /*Then I will kill you first!*/
DO ~SetGlobal("OHD_PLOT","GLOBAL",-1) SetGlobal("KickedOut","LOCALS",1) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy()~
EXIT

//Resurrection Gorge Line before Mazzy Attacks
CHAIN IF WEIGHT #-1 ~Global("_bMazzyRitualMad","GLOBAL",1)~ THEN MAZZYJ _bMazzyGorgeRitual
@66 /*How could you do this, <CHARNAME>? You and the blackguard shall both pay!*/
DO ~SetGlobal("_bMazzyRitualMad","GLOBAL",2) SetGlobal("_bMazzyHostile","GLOBAL",1)~
EXIT


//TOB Interjections
EXTEND_BOTTOM DORN25J 148 /*With me, <CHARNAME>! Help me drive this prancing cockatiel back to Lunia!*/
IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXTERN MAZZY25J _bDornNoAngel
END

EXTEND_BOTTOM OHDPLANJ 9 /*Dorn Il-Khan—die!*/
IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXTERN MAZZY25J _bDornNoAngel
END

CHAIN MAZZY25J _bDornNoAngel
@51 /*I will not aid Dorn in this, <CHARNAME>! Leave the half-orc to his fate or you will fight me as well.*/
END
	++ @52 /*Get back in line, Mazzy, or face my blade!*/ DO ~ActionOverride("OHDPLANJ",Enemy()) SetGlobal("_bMazzyHostile","GLOBAL",1)~ EXIT
	++ @53 /*You're right. This has gone far enough. Dorn, you're on your own.*/ EXTERN DORN25J _bDornNoAngel2
	
CHAIN DORN25J _bDornNoAngel2
@54 /*You abandon me! Well, I am not such a fool as to face this on my own.*/
== DORN25J IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @59 /*Come, tiefling. Our companions have turned against us and I will not have you die like this!*/
== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @60 /*This sparrow will fly with you, Dark-Edge. A wise bird knows when retreat is the best tactic to keep our plumage brilliant and our blood beneath the skin.*/
DO ~ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~
== DORN25J @61 /*Goodbye, <CHARNAME>. May the gods curse your self-righteous soul!*/
DO ~ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~
== OHDPLANJ @55 /*You cannot run from me, Dorn.*/
= @56 /*I will slay Dorn. Bring justice to his friends.*/
DO ~EscapeArea()~
== MAZZY25J @57 /*No! We are not responsible for his crimes!*/
= @58 /*Why does no one ever listen to me? If we must defend ourselves, we will!*/
EXIT
