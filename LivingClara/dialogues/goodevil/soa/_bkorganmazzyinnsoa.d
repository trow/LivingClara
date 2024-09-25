CHAIN // Korgan and Mazzy Inn Scene before rest.
IF ~Global("_BKTRM","GLOBAL",1)~ THEN KORGANJ _BKTRM0
@0 /*Ye all go to sleep. I need a drink. I haven't been this parched since I was stranded in the Plains of Purple Dust fer three long weeks. */ 
= @1 /*I ever tell ye about that, Mazzy? I had naught but me axe an' a talking skull fer company. Now the skull...*/
== MAZZYJ @2 /*I do not want to hear your story, Korgan. I'm sure it is bloody and ultimately pointless, and I am going to see the innkeeper about a private room and bath.*/
== KORGANJ @3 /*Ye an' yer private rooms with baths. Ye are throwing yer gold away, girl. Fer the price of each ye could drown yerself in ale an' women!*/
== MAZZYJ @4 /*There are two rewards for hero-work, Korgan. One is the joy on the faces of those you help. The other is having enough money to afford truly clean accommodations.*/
== KORGANJ @5 /*Ha, ye do not fool me, lass. I have seen ye in battle. Ye find yer reward in combat, in th' thrill of clashing weapons an' the joy of cutting down yer enemies!*/
== MAZZYJ @6 /*Perhaps there is some truth to what you say... Still, I will leave you to your ale. Enjoy your <DAYNIGHTALL>, Korgan.*/
== KORGANJ @7 /*I intend to, lass. Go waste yer gold on yer fancy bath an' room. I will have a <DAYNIGHTALL> to remember!*/ 
== PLAYER1 @8 /**You go to your bed and fall asleep as soon as you lie down.**/
DO ~SetGlobal("_BKTRM","GLOBAL",2) StartMovie("restinn") ApplySpell("Korgan",HEAL_NO_VISUAL) ApplySpellRES("_bintox","Korgan") UndoExplore()~
EXIT



CHAIN // Korgan and Mazzy Inn Scene after 1st rest. (SOA & TOB inn file)
IF ~Global("_BKTRM","GLOBAL",2)~ THEN KORGANJ _BKTRM1
@9 /*YEEEEAARGH!*/
DO ~SetGlobal("_BKTRM","GLOBAL",3) ApplySpell("Mazzy",MAZZY_HASTE) ApplySpell("Mazzy",MAZZY_STRENGTH) UndoExplore()~
== PLAYER1 @10 /**You are not sure how long you were asleep or what woke you, though you have a hazy memory of Korgan shouting. When you listen, you can hear the sounds of running feet and worried voices throughout the inn.**/
END
	++ @11 /*It was probably nothing. *Go back to sleep.**/ EXTERN KORGANJ _BKTRM3
	++ @12 /**Go to the main room of the inn to find Korgan.**/ EXTERN PLAYER1 _BKTRM2

APPEND PLAYER1 IF ~~ THEN _BKTRM2
	SAY @13 /**You arrive in the main room where Korgan had been drinking, but the dwarf is nowhere to be found. His weapons, armor, and clothes are strewn in little piles on the floor.**/
	++ @14 /*KOOOORGAAAN! WHERE AAAARE YOU?*/ EXTERN KORGANJ _BKTRM3
	++ @15 /*I have a bad feeling about this.*/ EXTERN KORGANJ _BKTRM3
	++ @16 /*Umm... Has anyone seen a naked dwarf?*/ EXTERN KORGANJ _BKTRM3
	++ @161 /*I should have stayed in bed.*/ EXTERN KORGANJ _BKTRM3
	END
END

APPEND KORGANJ IF ~~ THEN _BKTRM3
	SAY @17 /*RAAAAAAAAAAAAAAAAAAAAAAAAAAGH!*/ 
	IF ~~ THEN DO ~ApplySpellRES("_b7dam","Korgan")~
	EXTERN PLAYER1 _BKTRM4
	END
END	
	
CHAIN PLAYER1 _BKTRM4
@18 /**You hurry toward Korgan's shout. You see many others running in the same direction and as you get closer, you hear the sounds of combat.**/
DO ~ApplySpellRES("_b7dam","Korgan")~
= @19 /**There is a crowd of people blocking the hallway. You push through them and discover a smashed-in door leading to a private room. It had clearly once been barred but now it is hanging loosely from one hinge.**/
DO ~ApplySpellRES("_b7dam","Korgan")~
= @20 /**You rush through the doorway, stopping short when you see Mazzy.**/
DO ~ApplySpellRES("_b7dam","Korgan")~
== MAZZYJ @21 /**She is completely naked, standing behind a wash basin with her short bow in her hands. She has cast haste upon herself and is firing arrows as quickly as she can across the room.**/
DO ~ApplySpellRES("_b7dam","Korgan")~
= @22 /*Get back! I have this!*/
DO ~ApplySpellRES("_b7dam","Korgan")~
END
	++ @23 /*What's happening? Are you all right?*/ DO ~ApplySpellRES("_b7dam","Korgan")~ EXTERN KORGANJ _BKTRM4
	++ @24 /*I heard Korgan scream. What's going on?*/ DO ~ApplySpellRES("_b7dam","Korgan")~ EXTERN KORGANJ _BKTRM4
	++ @2401 /*Oh my god... I don't even want to know.*/ DO ~ApplySpellRES("_b7dam","Korgan")~ EXTERN KORGANJ _BKTRM4

CHAIN KORGANJ _BKTRM4
@25 /**Korgan's cry of pain and rage jerks your attention to your left. The dwarf is also naked and looks like a pincushion; arrows are embedded in his chest, legs and belly.**/ 
DO ~ApplySpellRES("_b7dam","Korgan")~
= @26 /**He is barely able to walk as he stumbles toward Mazzy, his fists slamming into the walls and furniture, destroying everything they touch.**/
DO ~ApplySpellRES("_b7dam","Korgan")~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @27 /*I will aid you, Mazzy! Foul dwarf! Feel Torm's wrath!*/
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @28 /*Come Boo, the tiny paladin is in danger! We must aid her!*/
== IF_FILE_EXISTS RASAADJ IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @29 /*I am coming, Mazzy. Selûne's light protect you!*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @30 /*We have to help her!*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsKnight","GLOBAL",1)~ 
THEN @31 /*To intrude on a lady cannot be allowed. To arms!*/
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~
THEN @32 /*Oh my lord! Guards! Guards!*/
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @33 /*Now here is some proper entertainment. (I shall watch eagerly.)*/
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ 
THEN @34 /*Well... this is unfortunate. Does anyone care for a wager? I'll give 4-to-1 odds on Korgan winning this.*/
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ 
THEN @35 /*Sorry, lad. My money is on Mazzy. Never mess with a shorty in a rage; my great-great-grandmother Angelica taught me that when I was young. She was an absolute terror with a frying pan – you did not want to steal her turnips, no sirree.*/
END
	++ @36 /*I'm coming, Mazzy!*/ DO ~ApplySpellRES("_b7dam","Korgan")~ EXTERN MAZZYJ _BKTRM5
	++ @37 /*Umm, do you need help, Mazzy?*/ DO ~ApplySpellRES("_b7dam","Korgan")~ EXTERN MAZZYJ _BKTRM5
	++ @38 /*You two seem to be working everything out. I'll just wait until you're done.*/ DO ~ApplySpellRES("_b7dam","Korgan")~ EXTERN MAZZYJ _BKTRM5
	++ @39 /*Noooooo! Don't hurt Korgan!*/ DO ~ApplySpellRES("_b7dam","Korgan")~ EXTERN MAZZYJ _BKTRM5
	++ @40 /*Korgan! I'll save you!*/ DO ~ApplySpellRES("_b7dam","Korgan")~ EXTERN MAZZYJ _BKTRM5
	
CHAIN MAZZYJ _BKTRM5
@41 /*He is mine! I will finish this!*/
= @42 /**Mazzy grabs her sword from the floor and charges Korgan, shoving the point of her blade into his throat.**/
DO ~ApplySpellRES("_b7dam","Korgan")~
== KORGANJ @43 /**Bellowing in pain and rage, Korgan wraps his arms around Mazzy and pulls her toward him but the halfling doesn't let go of her weapon.**/
DO ~ApplySpellRES("_b7dam","Korgan")~
== MAZZYJ @44 /**Blinded by spraying blood, she pushes her sword deeper and deeper.**/
DO ~ApplySpellRES("_b7dam","Korgan")~
= @45 /*Die! Die! DIE!*/
DO ~ApplySpellRES("_b7dam","Korgan")~
== KORGANJ @46 /*Urrrghl...*/
DO ~Kill("Korgan")~
== MAZZYJ @47 /**Mazzy slowly rises to her feet. Her skin is slick and red from head to toe but the blood seems to be Korgan's, not hers.**/
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
THEN @48 /*Mazzy, if Korgan's life was the price we had pay to see you without your clothes on, then it was a price worth paying. (One I'd pay again.)*/
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @49 /*Tiny warrior, I was worried for your safety. But Boo tells me I should not trouble my large head about so mighty a combatant.*/
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ 
THEN @50 /*You know, a well-placed trap is a much cleaner deterrent against unwanted visitors. Now we'll have to pay for the furniture and wash all this blood off the floor.*/
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ 
THEN @51 /*What happened? Why was he here? Why did you kill him? I haven't seen so much blood since... since...*/
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
THEN @52 /*Nature teaches us that the female of a species is often the more dangerous. It seems the dwarf forgot.*/
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ 
THEN @53 /*Ahh, my hound, my hound, my foolish dog of war. Why did you try to sail your way past such hostile and formidable defenses when there are so many safe and welcoming ports?*/
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
THEN @54 /*While you were justified in your actions, Mazzy, losing one of our best fighters will make our task more difficult.*/
== IF_FILE_EXISTS DORNJ IF ~InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ 
THEN @55 /*I approve, halfling. The dwarf was always too much of a braggart for my tastes.*/
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @56 /*You are brave, Mazzy. Feel no guilt for the dwarf. The only proper response to evil is righteous steel. However, I would remind you that modesty is also called for. I will get your cloak.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ 
THEN @57 /*It was certain that someone here would kill the dwarf eventually, but even I am surprised that it was the little paladin.*/ 
= @58 /*However, this is no more than Korgan deserves for thinking that he, a male, could force his will on a female, even one so small.*/
== IF_FILE_EXISTS RASAADJ IF ~InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN @59 /*I am grieved that it came to this, Mazzy. Had I known Korgan's intentions, I would have guarded your door myself.*/
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
THEN @60 /*Now this reminds of the time my cousin battled a host of vampire turnips. You see, her field was ripe for picking but she forgot to harvest before the full moon and the turnips then turned vampire...*/
= @61 /*...well, actually, this isn't like that time at all.*/
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
THEN @62 /*That was quite a showing. I don't think you really need a squire, Mazzy. You seem to do just fine while on your own.*/
== IF_FILE_EXISTS NEERAJ IF ~InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN @63 /*I'm really glad we're friends, Mazzy. You're kind of scary when you're mad.*/
== IF_FILE_EXISTS OHHFAK IF ~InParty("OHHFAK") !StateCheck("OHHFAK",CD_STATE_NOTVALID)~ 
THEN @64 /*What is... happening? I do not understand. We should be going to the tomb... to Dragomir's Tomb.*/
== IF_FILE_EXISTS _BCLARAJ IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ 
THEN @6401 /*Oh... wow...*/
== IF_FILE_EXISTS HEXXATJ IF ~InParty("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ 
THEN @65 /*That was interesting, but I'm rather hungry now.*/
== WILSONJ IF ~InMyArea("Wilson") IfValidForPartyDialog("Wilson")~
THEN @6500 /*Grr... growl. ROAR!*/
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ 
THEN @66 /*Well, that is one way to deal with that. Remind me not to barge in on your baths without casting Protection from Normal Missiles first.*/
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @67 /*How did this happen? Shouldn't there be guards to stop this sort of thing? No one was ever allowed to barge into my room back home.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0) Global("AnomenIsKnight","GLOBAL",0)~ 
THEN @68 /*Maybe you are not quite so useless after all, halfling. You have struck a mighty blow for law.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ 
THEN @69 /**sarcastically* The great Mazzy Fentan successfully vanquishes an unarmed dwarf. Let us all sing her praises.*/
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsKnight","GLOBAL",1)~ 
THEN @70 /*A blow for justice! I cannot believe I ever doubted your abilities, my lady.*/
END
	++ @71 /*Are you hurt, Mazzy? What happened?*/ EXTERN MAZZYJ _BKTRM6
	++ @72 /*What is going on here, Mazzy? You had better tell me now!*/ EXTERN MAZZYJ _BKTRM7
	++ @73 /*Blast it, Mazzy! What did you do that for?*/ EXTERN MAZZYJ _BKTRM7
	
APPEND MAZZYJ IF ~~ THEN _BKTRM6
	SAY @74 /*I am unharmed and what occurred was that Korgan demanded entry into my quarters. I denied his request and threatened to kill him if he broke in.*/
	++ @75 /*And...?*/ + _BKTRM8
	++ @76 /*I think I know what happened next.*/ + _BKTRM8
	END
	
	IF ~~ THEN _BKTRM7
	SAY @77 /*That is the wrong question, <CHARNAME>. You should be asking, "Excuse me, Mazzy, are you wounded?" At which point I would respond, "Thank you for your concern, <CHARNAME>, but I am uninjured."*/
	= @78 /*Then you could say, "I am relieved to hear that Mazzy, but something is puzzling me. I see Korgan naked and dead on your floor and while I couldn't help but notice that your door is broken, I cannot perceive what came to pass. Can you enlighten me?"*/
	= @79 /*And I would respond, "Of course, <CHARNAME>, it is hardly your fault that you are so dim-witted. Korgan demanded entry into my quarters. I denied his request and threatened to kill him if he broke in."*/
	++ @75 /*And...?*/ + _BKTRM8
	++ @76 /*I think I know what happened next.*/ + _BKTRM8
	END
	
	IF ~~ THEN _BKTRM8
	SAY @80 /*He broke in. Now please remove his body, politely escort all of these people out of my room, and do your best to shut what remains of my door so that I may bathe. Again.*/
	= @81 /*Oh, do be careful with Korgan; we will need his body whole to raise him in the morning.*/
	++ @82 /*After all that, you want us to raise him?*/ + _BKTRM9
	++ @83 /*Just leave him dead. I've wanted to kick him out of the group for ages but I was worried that he'd attack us if I did.*/ + _BKTRM10
	++ @84 /*So you can kill him again, right? I want to help this time.*/ + _BKTRM11
	++ @85 /*I was already going to raise Korgan. He's a strong fighter and I need him.*/ + _BKTRM12
	++ @86 /*Of course I'm going to raise Korgan. He's fun to have around.*/ + _BKTRM13
	END

	IF ~~ THEN _BKTRM9
	SAY @87 /*Yes, I do. Korgan is a miserable, murderous bastard who has no respect for other people's wishes, but he's paid about as much as one can for his misdeeds and I don't want his death on my conscience.*/
	+ ~CheckStatGT(Player1,12,WIS)~ + @88 /*I'm glad you're all right, Mazzy, but I don't understand something. You've killed many enemies less evil than Korgan and left them dead. Why do you really want to bring him back?*/ GOTO _BKTRM15
	++ @89 /*Well, I'm glad you're all right.*/ GOTO _BKTRM14
	++ @90 /**Say nothing.**/ GOTO _BKTRM16
	END
	
	IF ~~ THEN _BKTRM10
	SAY @91 /*Korgan is a miserable, murderous, bastard who has no respect for other people, but he's paid about as much as one can for his misdeeds and I don't want his death on my conscience. I killed him so it should be my decision.*/
	+ ~CheckStatGT(Player1,12,WIS)~ + @88 /*I'm glad you're all right, Mazzy, but I don't understand something. You've killed many enemies less evil than Korgan and left them dead. Why do you really want to bring him back?*/ GOTO _BKTRM15
	++ @89 /*Well, I'm glad you're all right.*/ GOTO _BKTRM14
	++ @90 /**Say nothing.**/ GOTO _BKTRM16
	END
	
	IF ~~ THEN _BKTRM11
	SAY @92 /*No, I really do want Korgan alive. He is a miserable, murderous bastard who has no respect for other people's wishes, but he's paid about as much as one can for his misdeeds and I don't want his death on my conscience.*/
	+ ~CheckStatGT(Player1,12,WIS)~ + @88 /*I'm glad you're all right, Mazzy, but I don't understand something. You've killed many enemies less evil than Korgan and left them dead. Why do you really want to bring him back?*/ GOTO _BKTRM15
	++ @89 /*Well, I'm glad you're all right.*/ GOTO _BKTRM14
	++ @90 /**Say nothing.**/ GOTO _BKTRM16
	END
	
	IF ~~ THEN _BKTRM12
	SAY @93 /*Be wary of those you need, <CHARNAME>. You have no guarantee that Korgan's axe will always be targeted at your enemies.*/
	IF ~~ THEN GOTO _BKTRM16
	END
	
	IF ~~ THEN _BKTRM13
	SAY @94 /**smiles* We have different ideas of fun, <CHARNAME>, although I will admit that I did enjoy killing him.*/
	IF ~~ THEN GOTO _BKTRM16
	END
	
	IF ~~ THEN _BKTRM14
	SAY @95 /*Thank you, <CHARNAME>. I am glad as well.*/
	IF ~~ THEN GOTO _BKTRM16
	END
END
	
CHAIN MAZZYJ _BKTRM15
@96 /*Because Korgan was right! I do enjoy battle and killing him was an exhilarating experience; it was the high point of my day.*/
= @97 /*I will not allow Korgan to leave this world being right. He is a vile person and he will end his days being wrong!*/
= @98 /*...At least if I have anything to say about it.*/
= @99 /*Now I am finished talking about Korgan and I am tired of everyone staring at me. Goodnight and please leave!*/
== PLAYER1 @104 /**You drag Korgan's body away and go back to sleep.**/
DO ~SetGlobal("_BMazzyKilledKorgan","GLOBAL",1) Explore() RestParty()~ 
EXIT 


CHAIN MAZZYJ _BKTRM16
@100 /*But please leave now. I would like some privacy.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ 
THEN @101 /*A question for you, little warrior: Why do you really wish to raise Korgan? You cannot expect me to believe that you prefer him alive.*/ 
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ 
THEN @102 /*The truth, little one. Do not bother trying to deceive me; you may not be a real paladin but you are still terrible at lying.*/
== MAZZYJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ 
THEN @96 /*Because Korgan was right! I do enjoy battle and killing him was an exhilarating experience; it was the high point of my <DAYNIGHT>.*/
= @97 /*I will not allow Korgan to leave this world being right. He is a vile person and he will end his days being wrong!*/
= @98 /*...At least if I have anything to say about it.*/
== VICONIJ IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ 
THEN @103 /*Ha! You are a vicious, self-righteous creature, Mazzy, but I am beginning to like you. Take another bath, tiny paladin. I will herd everyone out.*/
== PLAYER1 @104 /**You drag Korgan's body away and go back to sleep.**/
DO ~SetGlobal("_BMazzyKilledKorgan","GLOBAL",1) Explore() RestParty()~ 
EXIT


CHAIN //After Korgan raised. 
IF ~Global("_BKTRM","GLOBAL",3)~ THEN KORGANJ _BKTRM17
@105 /*There ye are, Mazzy! By me axe, girl, all I wanted was a bath!*/
== MAZZYJ @106 /*You were free to take a bath alone, Korgan. You wanted one with me and I said no.*/
== KORGANJ @107 /*Har har, that ye did, lass. An' what a no it was! Well, ye have nothing to fear from me now, Mazzy, though I want ye twice as much as before.*/
= @108 /*I swear by me honour that I'll stick to burying me axe in th' heads of yer enemies an' keep me clothes on around ye from now on.*/
== MAZZYJ @109 /*I know I have nothing to fear from you, Korgan and I just proved it. If you try that again, I will lop off your head and bring it to my mother. She has been trying to find some powdered dwarf skull for several years now; she needs it for a spell to waterproof the roof.*/
= @110 /*I am wondering though, can I really trust your honour?*/
== KORGANJ @111 /*Normally, ye could not, but it's been a while since anyone cut up old Korgan like that an' I meant what I said. Th' axe on me belt be yers and th' one in me trousers I will keep to meself.*/
= @112 /*I swear this on th' blood of me mother, th' bones of me father, and th' axe I used to avenge 'em both.*/
== MAZZYJ @113 /*I accept your oath.*/
== KORGANJ @114 /*'Twas a shame ye were so quick with those arrows; had I taken ye it would have been a tumble to remember.*/
== MAZZYJ @115 /*I believe you will remember it anyway, Korgan. But I do not wish to discuss this any more. Let us be off.*/
DO ~SetGlobal("_BKTRM","GLOBAL",4) ApplySpellRES("_bREP","Korgan")~
EXIT
