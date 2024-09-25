BEGIN _bBodhi

//Trigger this dialogue if HPLT(Myself,10) Global("Death","LOCALS",0)

//Conversation to start Bodhi in your party.
CHAIN IF WEIGHT #-1 ~HPLT(Myself,10) Global("Death","LOCALS",0) GlobalGT("BodhiJob","GLOBAL",0) Global("_bBodhiInLairJoinTalk","GLOBAL",0)~ THEN C6BODHI _bBodhiJoinsSoA1
	@1 /*<CHARNAME>, wait! We were allies before, let us be allies again.*/
		DO ~SetGlobal("_bBodhiInLairJoinTalk","GLOBAL",1)~
END
	++ @2 /*No more lies! No more tricks! No more delays! Bodhi, you die here!*/ EXTERN C6BODHI 5
	++ @3 /*Hahahahahahahahahahahahahahahahahahahahahaha! No.*/ EXTERN C6BODHI 5
	++ @4 /*But then you would have Imoen's soul forever. I'm sorry, but you have to die.*/ EXTERN C6BODHI 5
	++ @5 /*I'm listening. Tell me more.*/ GOTO _bBodhiJoinsSoA2
	
CHAIN C6BODHI _bBodhiJoinsSoA2
	@6 /*I will help you destroy Irenicus.*/
	= @7 /*Let me keep this life, keep this soul. I am whole again as I have not been since I was cast out of Suldanessellar.*/
END
	++ @8 /*You'd betray your own brother? Why?*/ GOTO _bBodhiJoinsSoA3
	++ @9 /*Save the story. I don't care.*/ EXTERN C6BODHI 5
	++ @10 /*But then you would have Imoen's soul forever. I'm sorry, but you have to die.*/ EXTERN C6BODHI 5
	
CHAIN C6BODHI _bBodhiJoinsSoA3
	@11 /*To live! I want to live, <CHARNAME>. I will aid you. I will fight with you.*/
	= @12 /*I will feed on your enemies and rend their flesh!*/
END
	++ @13 /*No more lies! No more delays! Time to die, Bodhi!*/ EXTERN C6BODHI 5
	++ @14 /*Yeah, that's not gonna happen.*/ EXTERN C6BODHI 5
	++ @15 /*I've always wanted you with me, Bodhi. You're the one who keeps running away.*/ GOTO _bBodhiJoinsSoA4
	
CHAIN C6BODHI _bBodhiJoinsSoA4
	@16 /*No more running, not now. My power, my life will be yours! Every night I will fight for you!*/
END
	++ @17 /*Oh right, the whole can't-live-in-sunlight thing. That sounds inconvenient. Better just to kill you.*/ EXTERN C6BODHI 5
	+~IfValidForPartyDialog("Imoen2")~+ @18 /*I really prefer to fight during the day. So I'm picking Imoen instead.*/ EXTERN C6BODHI 5
	++ @19 /*I accept your offer, Bodhi.*/ GOTO _bBodhiJoinsSoA5
	+~Global("_bBodhihasCloakofDragomir","GLOBAL",1)~+ @20 /*Since you have the Cloak of Dragomir you won't be completely useless. I accept.*/ GOTO _bBodhiJoinsSoA5
	
CHAIN C6BODHI _bBodhiJoinsSoA5
	@21 /*An excellent decision. Once we kill Jon and retrieve your soul, we will be siblings, will we not?*/
== IMOEN2J IF ~IfValidForPartyDialog("Imoen2")~ THEN @22 /*No! I'm <PRO_HISHER> sister, not you! That's my soul!*/
	DO ~ChangeAIScript("janx",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
	= @23 /*<CHARNAME>, after all we've been through, how could you do this to me?*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn")~ THEN @24 /*You would side with the personification of evil herself? This is unacceptable.*/
	DO ~ChangeAIScript("keldornx",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @25 /*You betray the Order! You betray your friends! No, I will not allow this!*/
	DO ~ChangeAIScript("anomx",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @26 /*Hmm, Bodhi would be a powerful ally. I will follow your lead, <CHARNAME>.*/
== JAHEIRAJ IF ~IfValidForPartyDialog("Jaheira")~ THEN @27 /*No, no! She was Irenicus' most loyal ally. Khalid's blood is on her hands! I will see her destroyed!*/
	DO ~ChangeAIScript("druidx",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== NEERAJ IF ~IfValidForPartyDialog("Neera")~ THEN @28 /*And people call me crazy. I hope you know what you're doing, <CHARNAME>.*/
== MINSCJ IF ~IfValidForPartyDialog("Minsc")~ THEN @29 /*What! You would side with Evil against Goodness! Boo will have your eyes!*/
	DO ~ChangeAIScript("minsx",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== NEERAJ IF ~IfValidForPartyDialog("Neera") IfValidForPartyDialog("Minsc") Global("_bMinscNeera","GLOBAL",2)~ 
	THEN @30 /*Wait, we're fighting <CHARNAME> now? Minsc, you need to warn me when you're going to do something like this!*/ 
	DO ~ChangeAIScript("ohbgerr2",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== VALYGARJ IF ~IfValidForPartyDialog("Valygar")~ THEN @31 /*This unnatural creature cannot be allowed to continue her existence. I will fight you if I must.*/
	DO ~ChangeAIScript("valygx",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== NALIAJ IF ~IfValidForPartyDialog("Nalia")~ THEN @32 /*You'd betray your friends? Your family? This is unforgivable!*/
	DO ~ChangeAIScript("janx",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis")~ THEN @33 /*A bargain struck with demons may be a deal ill-made. You have a tiger by the tail, oh raven, and you had best hold her tight.*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie")~ THEN @34 /*<CHARNAME>, this... this is not right! I w-will stop you!*/
	DO ~ChangeAIScript("aeriex",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("Aerie") Global("HaerDalisRomanceActive","GLOBAL",2)~
	THEN @35 /*Ahh, my awakened mourning dove, you sing truly about <CHARNAME>. <PRO_HESHE> is a monster, but fear not! Your sparrow will help you bring <PRO_HIMHER> down.*/
	DO ~ChangeAIScript("haerdax",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== DORNJ IF ~IfValidForPartyDialog("Dorn")~ THEN @36 /*It is a mistake to forgive our enemies. Be careful lest this creature turn on you as well.*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @37 /*I prefer me axe fer killin' things. Th' blood sucker had best not be gettin' between me an' me enemies.*/
== RASAADJ IF ~IfValidForPartyDialog("Rasaad")~ THEN @38 /*Selûne would turn her face from me forever should I allow this to occur.*/
	DO ~ChangeAIScript("wtasight",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== EDWINJ IF ~IfValidForPartyDialog("Edwin")~ THEN @39 /*Yes, we will be well-rid of that snivelling brat. (And perhaps this vampire can assist my own quest for immortality.)*/
== JANJ IF ~IfValidForPartyDialog("Jan")~ THEN @40 /*Now this reminds me of a story, <CHARNAME>, about my great-great-great-aunt Meredith. She was obsessed with cats, the bigger fangs the better, and she had quite a collection by the time that she grew old. Cats in the cupboard, kittens on the counter, great big tomcats in the privvy too.*/
	= @41 /*Meredith loved those fluffy nightmares. She loved them more than her own flesh and blood. But cats aren't loyal, are they? They're all fangs and teeth and hunger, much like yon vampire, and one day my great-great-great-aunt Meredith stopped answering her door. My pappy had to break in, but they never found her body. Just all those fat and fluffy cats purring on the floor.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @42 /*I approve, <CHARNAME>. You have finally found someone who the rivvin will fear even more than me. With Bodhi running down peasants and feasting on their flesh, perhaps I may walk by unnoticed.*/
== YOSHJ IF ~IfValidForPartyDialog("Yoshimo")~ THEN @43 /*I do not believe this is a good idea, but I understand her desperation. Although I cannot fault your willingness to forgive those who have harmed you, this may be a mistake.*/
== HEXXATJ IF ~IfValidForPartyDialog("Hexxat")~ THEN @44 /*Two vampires in this group is one too many, <CHARNAME>. But I will keep my peace for now.*/
== _bClaraJ IF ~IfValidForPartyDialog("_bClara")~ THEN @45 /*As long as she keeps her fangs to herself, I guess she can come along.*/
== CERNDJ IF ~IfValidForPartyDialog("Cernd")~ THEN @46 /*Bodhi is an unnatural creature and this goes against the balance. I must prevent this!*/
	DO ~ChangeAIScript("druidx",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== WILSONJ IF ~IfValidForPartyDialog("Wilson")~ THEN @47 /*Roar!*/ 
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @48 /*Bodhi's evil must be ended at any cost. If you choose to stand between us, then I will strike you down!*/
	DO ~SetGlobal("_bMazzyHostile","GLOBAL",762) ChangeAIScript("mazzyx",SPECIFICS) ChangeAIScript("useitem",GENERAL) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
== C6DRIZZ2 IF ~InMyArea("C6drizz2")~ THEN @49 /*No! We cannot fail now, not when she is so close to death!*/ DO ~SetGlobal("AttackedDrizzt","GLOBAL",742) Enemy() Attack([PC])~
== C6ERIC IF ~InMyArea("C6Eric")~ THEN @50 /*The vampire is about to fall! I will finish this! For the Order!*/ DO ~SetGlobal("AttackedOrder","GLOBAL",742) Enemy() Attack([PC])~
== C6BODHI @51 /*Thank you, <CHARNAME>. You will not regret this!*/
	DO ~SetGlobal("Death","LOCALS",1) ClearAllActions() StartCutSceneMode() StartCutScene("_bBoJoin")~
EXIT

//In case Bodhi joins your party before you see her guard above.
INTERJECT C6BGUARD 0 _bBodhiLairGuardTalk1 /*Thy audacity is impressive, <CHARNAME>. It does thee little good, for my mistress has ordained a baptism of blood and pain for thee*/
	== _bBodhij IF ~IfValidForPartyDialog("_bBodhi")~ THEN @52 /*Your loyalty is commendable, but such hostility is no longer required. <CHARNAME> and I have joined forces.*/
	== C6BGUARD IF ~IfValidForPartyDialog("_bBodhi")~ THEN @53 /*As you command, mistress.*/
	DO ~ClearAllActions() ChangeEnemyAlly(Myself,ALLY) ClearAllActions()~
EXIT

//Dialogue for Bodhi joining you.
CHAIN IF ~Global("_bBodhiJoinsParty","GLOBAL",1)~ THEN _bBodhi _bBodhiJoinDialogue1
	@54 /*And now, we hunt! Run and hide, little prey... you are no match for our combined might.*/
		DO ~SetGlobal("_bBodhiJoinsParty","GLOBAL",2) JoinParty()~
EXIT
	
