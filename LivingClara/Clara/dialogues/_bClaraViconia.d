
//Viconia and Clara's post-1st-banter dialogue
CHAIN IF WEIGHT #-1 ~Global("_bClaraRealizesMistakeViconia","GLOBAL",1)~ THEN _bClaraj _bClaraRegretsViconiaPoison
	@175 /*Oh no, did I promise you anything you wanted earlier?*/
	DO ~SetGlobal("_bClaraRealizesMistakeViconia","GLOBAL",2)~
== VICONIJ @176 /*Yes... you did.*/
== _bClaraj @177 /*That was stupid of me.*/
== VICONIJ @178 /*Yes... it was.*/
== _bClaraj @179 /*I would like to renegotiate.*/
== VICONIJ @180 /*Absolutely not.*/
== _bClaraj @181 /*Well... then I've changed my mind. I don't want to make poison anymore. Take it back.*/
== VICONIJ @182 /*You asked me to teach you, I named my price, and you agreed. The agreement is set and it cannot be changed. It is binding.*/
== _bClaraj @183 /*Maybe I was lying? People break their promises all the time.*/
== VICONIJ @184 /*Not to me... not to a priestess of my power. I have bound your vow and it is done. You might as well accept it.*/
== _bClaraj @185 /**sigh* Will I regret this? Will it hurt?*/
== VICONIJ @186 /*Life hurts. You will survive and be stronger for it.*/
== _bClaraj @187 /*Will it make me poor?*/
== VICONIJ @188 /*No, it will most likely make you one of the richest rivvil in Amn.*/
== _bClaraj @189 /*Well... that doesn't sound too bad. Let's make some poison!*/
	DO ~AddJournalEntry(@190,QUEST)~ /*Clara promised Viconia whatever she wanted in exchange for lessons in making poison. This kind of thing never ends well.*/
EXIT

//Viconia and Clara's Genocide Quest
CHAIN IF WEIGHT #-1 ~Global("_bViconiaKillsAll","GLOBAL",2)~ THEN VICONIJ _bViconiaKillsTheRivven1
@1 /*Share a whispered word with me, Caroline. I wish to collect on your debt.*/
	DO ~SetGlobal("_bViconiaKillsAll","GLOBAL",3)~
	= @2 /*You listen as well, <CHARNAME>... I cannot move without your permission.*/
== _bClaraj @3 /*So who do you want me to kill now?*/
== VICONIJ @4 /*The collected rivvin. All of them.*/
	= @5 /*Or at least all that we can conveniently reach in Amn.*/
== _bClaraj @6 /*Everyone? Couldn't we narrow it down? Also, does that include me?*/
== VICONIJ @7 /*Those who travel with me will be safe, of course. You have received the antidote, as have the rest of our former companions. I put it in our food.*/
	= @8 /*And not everyone will die; I'm sure I've missed a few... but enough will for it to be... satisfying.*/
== _bClaraj @9 /*I don't think I want to kill everyone...*/
	= @10 /*Why me? Why can't you kill them yourself?*/
== VICONIJ @11 /*I have been preparing for this ever since I left Beregost. I have spread my poison throughout the land, placing it in the water... the food... on those I touch... but I cannot activate it on my own.*/
	= @12 /*Activating the poison requires an incantation, one that must be spoken willingly by one of the race to be affected. To kill rivvin, one of them must will the deaths of their own people.*/
	= @13 /*You must walk among them whispering the words, and around you death will follow.*/
== _bClaraj @14 /*If I refuse you, I will die horribly, won't I? My promise was attached to my life?*/
== VICONIJ @15 /*Of course, I am not so foolish as to take people at their word... especially not you.*/
== _bClaraj @16 /*I want my friends to live.*/
== VICONIJ @17 /*Very well, I will give you some vials of antidote. How many do you need?*/
== _bClaraj @18 /*(Five... six...) Ten! I need ten doses... plus two spares... so twelve.*/
== VICONIJ @19 /*That will not be difficult... I have more than that in my pack.*/
== _bClaraj @20 /*Okay then. I'll do it.*/
== VICONIJ @21 /*Not so fast, you are not the only party involved.*/
	= @22 /*<CHARNAME>, I owe you my life and I need your permission.*/
END
	+ ~Race(Player1,HUMAN)~+ @23 /*I could do it, Viconia. It doesn't have to be Clara.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",2)~ GOTO _bPlayer1offerskillall1
	++ @24 /*You have it, Viconia. You may proceed as you wish.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",2)~ GOTO _bClarakillsall1
	++ @25 /*You can do it, Viconia, but not yet. Ask me again in a week.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",0) SetGlobalTimer("_bGenocideDelayedOneWeek","GLOBAL",ONE_WEEK)~ GOTO _bCNdemandsViconiaWait1
	++ @26 /*What is the range of the incantation? How far away will people die?*/ GOTO _bCNAsksViconiaGenocideQuestions1
	++ @27 /*Why, Viconia? Why would you want to do this?*/ GOTO _bCNAsksViconiaGenocideQuestions2
	++ @39 /*Will this affect those who are only half human?*/ GOTO _bCNAsksViconiaGenocideQuestions3
	+ ~NumInPartyGT(3)~ + @28 /*Even if I accept this, others here will not.*/ GOTO _bCNSaysOthersNoAcceptGenocide1
	++ @29 /*No, Viconia, I will never allow it.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",2)~ GOTO _bPlayer1saysnogenocide
	++ @30 /*You're a monster, Viconia. Leave and never return.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",2)~ GOTO _bPlayer1saysViconialeaveforever
	
	
CHAIN VICONIJ _bViconiaKillsTheRivven2
	@22 /*<CHARNAME>, I owe you my life and I need your permission.*/
END
	+ ~Race(Player1,HUMAN)~ + @23 /*I could do it, Viconia. It doesn't have to be Clara.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",2)~ GOTO _bPlayer1offerskillall1
	++ @24 /*You have it, Viconia. You may proceed as desired.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",2)~ GOTO _bClarakillsall1
	++ @25 /*You can do it, Viconia, but not yet. Ask me again in a week.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",0) SetGlobalTimer("_bGenocideDelayedOneWeek","GLOBAL",ONE_WEEK)~ GOTO _bCNdemandsViconiaWait1
	++ @26 /*What is the range of the incantation? How far away will people die?*/ GOTO _bCNAsksViconiaGenocideQuestions1
	++ @27 /*Why, Viconia? Why would you want to do this?*/ GOTO _bCNAsksViconiaGenocideQuestions2
	++ @39 /*Will this affect those who are only half human?*/ GOTO _bCNAsksViconiaGenocideQuestions3
	+ ~NumInPartyGT(3)~ + @28 /*Even if I accept this, others here will not.*/ GOTO _bCNSaysOthersNoAcceptGenocide1
	++ @29 /*No, Viconia, I will never allow it.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",2)~ GOTO _bPlayer1saysnogenocide
	++ @30 /*You're a monster, Viconia. Leave and never return.*/ DO ~SetGlobal("_bGenocideWaitsAWeek","GLOBAL",2)~ GOTO _bPlayer1saysViconialeaveforever
	
CHAIN VICONIJ _bPlayer1offerskillall1
	@31 /*You would do that? For me? Even though I have no hold over you?*/
	= @32 /*That is so... sweet, <CHARNAME>. I do not know how to thank you.*/
		DO ~SetGlobal("_bCNKillsAll","GLOBAL",1)~
	= @33 /*Everything is already prepared. You merely need to walk among the rivvin and say the following words: "Tlu a gre'as'anto." Speak them with all the love that you can muster... for death is a gift you must give from the bottom of your heart.*/
== _bClaraj @53 /*Don't forget about my friends, Viconia.*/
== VICONIJ @54 /*Of course, your friends need the antidote. What will you tell them?*/ 
== _bClaraj @55 /*That there are reports of a plague sweeping the land and killing humans at an alarming rate so I'm giving them a Potion of Protection from Plague that I found on my journeys.*/
	= @56 /*We should talk to Rose Bouquet in the Bridge District. I'll start there.*/
		DO ~AddJournalEntry(@58,QUEST)~ /*Viconia has spent months poisoning everyone in Amn, but she needs a human to activate the final piece and I agreed to help her. Clara needs give the antidote to her friends before we start and wants us to travel to the Bridge District to talk to Rose Bouquet.*/
	//Name will be @57 "Viconia's Peace"
EXIT

CHAIN VICONIJ _bClarakillsall1
	@34 /*Thank you, <CHARNAME>, you do not know what this means to me.*/
		DO ~SetGlobal("_bClaraKillsAll","GLOBAL",1)~
	= @35 /*Clara, everything is already prepared. You merely need to walk among the rivvin and say the following words: "Tlu a gre'as'anto." Speak them with all the love that you can muster... for death is a gift you must give them from the bottom of your heart.*/
== _bClaraj @53 /*Don't forget about my friends, Viconia.*/
== VICONIJ @54 /*Of course, your friends need the antidote. What will you tell them?*/ 
== _bClaraj @55 /*That there are reports of a plague sweeping the land and killing humans at an alarming rate so I'm giving them a Potion of Protection from Plague that I found on my journeys.*/
	= @56 /*We should talk to Rose Bouquet in the Bridge District. I'll start there.*/	
		DO ~AddJournalEntry(@59,QUEST)~ /*Viconia has spent months poisoning everyone in Amn, but she needs a human to activate the final piece. Clara promised to give Viconia anything in exchange for knowledge, so Viconia is demanding that she activate the poison in order to pay her debt. Clara needs to give the antidote to her friends before we start and wants us to travel to the Bridge District to talk to Rose Bouquet.*/
	//Name will be @57 "Viconia's Peace"
EXIT

CHAIN VICONIJ _bCNdemandsViconiaWait1
	@36 /*I have waited years, <CHARNAME>. I can wait a little while longer.*/
EXIT

APPEND VICONIJ IF ~~ THEN _bCNAsksViconiaGenocideQuestions1
	SAY @37 /*The range? I am not sure... I have never seen this poison in action. I found the details in a book long ago... but I have never had the chance to test it.*/
		= @38 /*Whether the poison reaches the length of one house or one city is not overly important. We can adjust. The only important thing is this...*/
	IF ~~ THEN GOTO _bViconiaKillsTheRivven2
	END

	IF ~~ THEN _bCNAsksViconiaGenocideQuestions2
	SAY @40 /*Why? Because I want peace, <CHARNAME>. I want to sleep without fear. I want to walk with my face in the sun.*/
	= @41 /*Perhaps when this is over, I could settle in Amn and live my life. I cannot do that if rivvin are everywhere, but with them dead, other races would take control and I would have room to breathe.*/
	= @42 /*I would still have to fight for my place in the world... I am not so naive as to think that violence ends when the rivvin die, but at least I would have a chance at peace.*/
	= @43 /*That is all I want, <CHARNAME>, a chance. Will you give it to me?*/
	IF ~~ THEN GOTO _bViconiaKillsTheRivven2
	END

	IF ~~ THEN _bCNAsksViconiaGenocideQuestions3
	SAY @44 /*It shouldn't. The mongrel half-breeds will be protected by their non-human blood.*/
	= @45 /*Though I have never tested this... I am not completely sure what will happen.*/ 
	= @46 /*I found this incantation in an old drow book cataloging poisons that could be made in the world above, so I cannot say for certain what percentage of human blood is required.*/
	= @47 /*But I wish to move forward regardless.*/
	IF ~~ THEN GOTO _bViconiaKillsTheRivven2
	END
	
	IF ~~ THEN _bCNSaysOthersNoAcceptGenocide1
	SAY @48 /*I am not so foolish as to suggest that we tell anyone else. This is a secret the three of us must take to our graves.*/
	= @49 /*When the rivvin fall, do try to act surprised. People will assume that it's a plague and we will give them no reason to believe otherwise.*/
	IF ~~ THEN GOTO _bViconiaKillsTheRivven2
	END
	
	IF ~~ THEN _bPlayer1saysnogenocide
	SAY @50 /*I am sorry to hear that, but I must accept your decision. Let us continue.*/ 
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bPlayer1saysViconialeaveforever
	SAY @51 /*I am the monster they made me, <CHARNAME>. Farewell.*/
	IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
	END
END

APPEND VICONIJ IF WEIGHT #-1 ~Global("_bGenocideWaitsAWeek","GLOBAL",1)~ THEN _bViconiaKillsTheRivven3
	SAY @52 /*It has been a week. What do you say? Will the rivvin fall?*/
	IF ~~ THEN GOTO _bViconiaKillsTheRivven2
	END
END

//Talking to Rose
CHAIN IF WEIGHT #-1003 ~IfValidForPartyDialog("_bClara") Global("_bAllRivvinMustDie","GLOBAL",0) OR(2) Global("_bClaraKillsAll","GLOBAL",1) Global("_bCNKillsAll","GLOBAL",1)~ THEN MURDGIRL _bClaraGivesAntidotes1
	@60 /*Clara! It's always great to see you.*/
== _bClaraj @68 /*Rose, I have no time so just listen. There is a plague sweeping through Amn and killing all the humans. I have Potions of Protection from Plague for you and Terl. Where is he?*/
== MURDGIRL @69 /*He should be at our house. I'll take it to him.*/
== _bClaraj @70 /*Thank the gods. Here, drink this. And here's another one for Terl. Take a third too, just to be safe; I have extra. Now go!*/
== MURDGIRL @71 /*Thanks, Clara! We owe you one.*/
	DO ~EscapeArea()~
== _bClaraJ @72 /*<CHARNAME>, I'll distribute the others as quickly as I can. Rest here and I will be back as soon as I finish.*/
		DO ~AddJournalEntry(@101,QUEST) Wait(2) SetGlobal("_bClaraAntidoteTalk","GLOBAL",2) RestParty() Wait(6)~
		/*Clara gave the antidote to Rose and Terl and now she's traveling throughout Athkatla to give it to the rest of her friends as well.*/
EXIT

//After the rest.
CHAIN IF ~Global("_bClaraAntidoteTalkCN","GLOBAL",1)~ THEN _bClaraj _bClaraGivesAntidotes2
	@61 /*I found everyone. Are you going to do it now?*/
== VICONIJ @62 /*I think we should. No time like the present. <CHARNAME>, you may begin.*/
END
	++ @63 /**softly* Tlu a gre'as'anto.*/ DO ~AddexperienceParty(100000) SetGlobal("_bClaraAntidoteTalkCN","GLOBAL",2) SetGlobal("_bAllRivvinMustDie","GLOBAL",1)~ EXIT
	
CHAIN IF ~Global("_bClaraAntidoteTalkClara","GLOBAL",1)~ THEN _bClaraj _bClaraGivesAntidotes3
	@64 /*I found everyone. Should I begin now?*/
== VICONIJ @65 /*I think we should. No time like the present.*/
== _bClaraj @66 /*(You can do this, Clara. It's them or you.) *softly* Tlu a gre'as'anto.*/
	DO ~AddexperienceParty(100000) SetGlobal("_bClaraAntidoteTalkClara","GLOBAL",2) SetGlobal("_bAllRivvinMustDie","GLOBAL",1)~
== VICONIJ @67 /*And so it begins.*/
EXIT

//Post Death Talk. Rose starts the talk but the script is in Clara.bcs since Rose doesn't have a bcs file.
CHAIN IF WEIGHT #-665 ~Global("_bPostGenocideRoseTalk","GLOBAL",1)~ THEN MURDGIRL _bRosePostGenocideTalk1
	@73 /*Look, people are falling everywhere! Is this the plague?*/
		DO ~SetGlobal("_bPostGenocideRoseTalk","GLOBAL",2)~
== _bClaraj @74 /*It must be! Careful everyone, a plague is upon is!*/
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @75 /*By Arvoreen, this is horrible! Is this happening all over Amn? We must go to my house, <CHARNAME>, and see if my family is all right! And then we must help these people!*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia") IfValidForPartyDialog("Mazzy") OR(2) Global("_bMazzyVicFriends","GLOBAL",1) Global("_bMazzyVicFriends","GLOBAL",2)~ THEN @76 /*I will aid them in any way I can, Mazzy. If anyone lives, bring them to me and I will cure them!*/
== MAZZYJ IF ~IfValidForPartyDialog("Viconia") IfValidForPartyDialog("Mazzy") OR(2) Global("_bMazzyVicFriends","GLOBAL",1) Global("_bMazzyVicFriends","GLOBAL",2)~ THEN @77 /*Thank you, Viconia, you are becoming a true hero.*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn")~ THEN @78 /*By Torm, such death around us! We must check on my family immediately, and then the Order.*/
== _bBodhij IF ~IfValidForPartyDialog("_bBodhi")~ THEN @79 /*So much wasted blood and flesh...  a pity.*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie") !Dead("Quayle")~ THEN @80 /*<CHARNAME>, please let us go to the circus! I must see if Quayle is all right!*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie") Dead("Quayle")~ THEN @81 /*S-So much death! Why? Who could do this?*/
== EDWINJ IF ~IfValidForPartyDialog("Edwin")~ THEN @82 /*(Are all the humans dying? Interesting that I am not affected.) Quickly, let us find the greatest wizards and see if they live. (And take their spellbooks if they do not.)*/
== IMOEN2J IF ~IfValidForPartyDialog("Imoen2")~ THEN @83 /*Everyone's dying? Why? What's causing this?*/
== JAHEIRAJ IF ~IfValidForPartyDialog("Jaheira")~ THEN @84 /*By nature, we cannot let this stand! We must find the cause and stop it.*/
== MINSCJ IF ~IfValidForPartyDialog("Minsc")~ THEN @85 /*No! Boo's tiny heart breaks at the sight of such needless death!*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen")~ THEN @86 /*Have the gods all turned against us? How could this be happening?*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") !Dead("Cor")~ THEN @87 /*The words pain me, but we should check on my father. I... I wish to see if the bastard still draws breath.*/
== CERNDJ IF ~IfValidForPartyDialog("Cernd")~ THEN @88 /*Perhaps these people are dying of a natural plague. Sickness often sweeps a population when it needs to be culled. Yet this death still makes my stomach turn.*/
== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis")~ THEN @89 /*This sparrow's eyes have not seen such death in aeons despite my travels across the planes. Is this simply the hand of fate, my raven? Does your blood draw you to destruction or does death sweep before your footsteps and murder in your wake?*/
== JANJ IF ~IfValidForPartyDialog("Jan")~ THEN @90 /*By Uncle Spanky's Thumb! Is this a disease? Is all of Amn infected? We must go to the Jansen residence and see if they're okay. One might suppose that you could see if other people are okay too, but why would you? Checking to see if tall folk are okay is a waste of time... if you turn your back but for a moment, they die of old age.*/
	DO ~SetGlobal("_bJanGenocideFamilyWorry","GLOBAL",1)~
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @91 /*All th' long-limbs are dying? Hah, serves 'em right! Th' only problem is that I nae be killin' 'em.*/
== NALIAJ IF ~IfValidForPartyDialog("Nalia")~ THEN @92 /*People are dying? <CHARNAME>, we have to help them!*/
== VALYGARJ IF ~IfValidForPartyDialog("Valygar")~ THEN @93 /*The stench of death surrounds us! What foul magic is at work here?!*/
== DORNJ IF ~IfValidForPartyDialog("DORN")~ THEN @94 /*Hah! Look at them fall! Weak and shiftless to their last breath, pleading to their gods to save them.*/
== NEERAJ IF ~IfValidForPartyDialog("NEERA")~ THEN @95 /*<CHARNAME>, maybe we shouldn't be here. We're powerful and all, but this might be beyond us.*/
== RASAADJ IF ~IfValidForPartyDialog("RASAAD")~ THEN @96 /*My friend, we must get to the bottom of this. Such a great tragedy cannot be left unavenged!*/
== WILSONJ IF ~IfValidForPartyDialog("WILSON")~ THEN @97 /*Snuffle. Whine.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @98 /**quietly* Rivvin... you don't smell any better dead than you do alive.*/

== IF_FILE_EXISTS CMALORAJ IF ~IfValidForPartyDialog("CMAlora")~ THEN @980 /*Leapin' lizards, what's going on? This isn't fun at all!*/
== IF_FILE_EXISTS 7XAloraJ IF ~IfValidForPartyDialog("7XAlora")~ THEN @980 /*Leapin' lizards, what's going on? This isn't fun at all!*/
== IF_FILE_EXISTS O#CORANJ IF ~IfValidForPartyDialog("O#Coran")~ THEN @981 /*I think it's time to leave, <CHARNAME>. Lady Luck has clearly turned her back on Athkatla and a smart fellow leaves when Beshaba is around.*/
== IF_FILE_EXISTS 7XCoranJ IF ~IfValidForPartyDialog("7XCORAN")~ THEN @981 /*I think it's time to leave, <CHARNAME>. Lady Luck has clearly turned her back on Athkatla and a smart fellow leaves when Beshaba is around.*/
== IF_FILE_EXISTS C#AJANJ IF ~IfValidForPartyDialog("C#Ajantis")~ THEN @982 /*Is this an attack upon Athkatla? What could be causing this?*/
== IF_FILE_EXISTS 7XAJANJ IF ~IfValidForPartyDialog("7XAJAN")~ THEN @982 /*Is this an attack upon Athkatla? What could be causing this?*/
== IF_FILE_EXISTS O#TIAXJ IF ~IfValidForPartyDialog("O#TIAX")~ THEN @983 /*Tiax rules all! Even when all is dying.*/
== IF_FILE_EXISTS 7XTIAXJ IF ~IfValidForPartyDialog("7XTIAX")~ THEN @983 /*Tiax rules all! Even when all is dying.*/
== IF_FILE_EXISTS RH#ADRJ IF ~IfValidForPartyDialog("RH#ADRIAN")~ THEN @984 /*What is going on? Did we escape from Irenicus just to perish from a plague?*/
== IF_FILE_EXISTS ADANGELJ IF ~IfValidForPartyDialog("ADANGEL")~ THEN @985 /*First Baldur's Gate, now Athkatla... Will any city remain unscathed when you are finished, chief?*/
== IF_FILE_EXISTS ANISHAIJ IF ~IfValidForPartyDialog("ANISHAI")~ THEN @986 /*Hmm, this is interesting... A poison or a sickness? We should be careful, pretty one.*/
== IF_FILE_EXISTS C-ARANJ IF ~IfValidForPartyDialog("C-ARAN")~ THEN @987 /*Diseases don't pick sides, <CHARNAME>, an' this one seems nasty. Might be time to think about movin' on.*/
== IF_FILE_EXISTS O#BRANJ IF ~IfValidForPartyDialog("O#BRAN")~ THEN @988 /*Tempus willing, we must find a way to stop this!*/
== IF_FILE_EXISTS 7XBRANJ IF ~IfValidForPartyDialog("7XBRAN")~ THEN @988 /*Tempus willing, we must find a way to stop this!*/
== IF_FILE_EXISTS LK#ARATJ IF ~IfValidForPartyDialog("arath")~ THEN @989 /*I have never liked the city, but this... so many lost innocents.*/
== IF_FILE_EXISTS FHFRNJ IF ~IfValidForPartyDialog("FHFRN")~ THEN @990 /*People are dropping everywhere, <CHARNAME>. I know you're a big hero, but I'm just a simple fellow. This is far out of my league.*/
== IF_FILE_EXISTS ~B!GavJ~ IF ~IfValidForPartyDialog("B!Gavin2")~ THEN @991 /*Lathander protect us! This cannot be happening.*/
== IF_FILE_EXISTS FHLANDJ IF ~IfValidForPartyDialog("FHLAND") IfValidForPartyDialog("FHLSEB")~ THEN @992 /*Sebastian! Are you all right? You're not feeling ill?*/
== IF_FILE_EXISTS FHLSEBJ IF ~IfValidForPartyDialog("FHLSEB") IfValidForPartyDialog("FHLAND")~ THEN @993 /*I am fine, cousin. Though I cannot say the same for these poor souls.*/
== IF_FILE_EXISTS FHNATJ IF ~IfValidForPartyDialog("NATH")~ THEN @994 /*Are you all right, <CHARNAME>? Even the strongest person might quail at so much death.*/
== IF_FILE_EXISTS LK#NINDJ IF ~IfValidForPartyDialog("Ninde")~ THEN  @995 /*This is most fascinating, Bhaalspawn. I wonder if this is a true disease or if your heritage is spilling out into the world... If we have a moment, I wish to collect one of these bodies as a specimen.*/
== IF_FILE_EXISTS C0PainaJ IF ~IfValidForPartyDialog("C0Paina")~ THEN @996 /*My spiders will eat well tonight.*/
== IF_FILE_EXISTS C0sire2J IF ~IfValidForPartyDialog("C0Sirene")~ THEN @997 /*Ilmater's mercy, no...*/
== IF_FILE_EXISTS 1XSKIEJ IF ~IfValidForPartyDialog("SKIEDV")~ THEN @998 /*Oh gods, this is awful. I hope this plague doesn't spread to Baldur's Gate!*/
== IF_FILE_EXISTS 7XSkiJ IF ~IfValidForPartyDialog("7XSKI")~ THEN @998 /*Oh gods, this is awful. I hope this plague doesn't spread to Baldur's Gate!*/
== IF_FILE_EXISTS g#TYRISJ IF ~IfValidForPartyDialog("g#TYRIS")~ THEN @999 /*Why is everyone dying? Has Death Adder's power reached this world?*/
== IF_FILE_EXISTS LK#YESJ IF ~IfValidForPartyDialog("LK#YESLK")~ THEN @1000 /*By Clangeddin's 'ammer! <CHARNAME>, we must be helpin' these folks as best we can.*/
== IF_FILE_EXISTS 7XYESJ IF ~IfValidForPartyDialog("7XYES")~ THEN @1000 /*By Clangeddin's 'ammer! <CHARNAME>, we must be helpin' these folks as best we can.*/
== IF_FILE_EXISTS O#XANJ IF ~IfValidForPartyDialog("O#XAN")~ THEN @1001 /*Do you see now, <CHARNAME>? It is only a matter of time before death claims us all.*/
== IF_FILE_EXISTS 7XXANJ IF ~IfValidForPartyDialog("7XXAN")~ THEN @1001 /*Do you see now, <CHARNAME>? It is only a matter of time before death claims us all.*/
== IF_FILE_EXISTS L#FOUJ IF ~IfValidForPartyDialog("L#FOU")~ THEN @1002 /*This reminds me of the Shade Lord's magic, but on a much larger scale.*/
== IF_FILE_EXISTS L0WILLJ IF ~IfValidForPartyDialog("L0WILL")~ THEN @1003 /*There will be many spirits born this <DAYNIGHTALL>.*/
== IF_FILE_EXISTS RH#ISRJ IF ~IfValidForPartyDialog("RH#ISRA2")~ THEN @1004 /*As a knight of the Ruby Rose, I cannot let sickness run unchecked.*/

== VICONIJ IF ~IfValidForPartyDialog("Viconia") Global("_bCNKillsAll","GLOBAL",1)~ THEN @107 /*The incantation seems to have an impressive range, <CHARNAME>, but keep at it. We don't want anyone to escape.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia") Global("_bClaraKillsAll","GLOBAL",1)~ THEN @108 /*The incantation seems to have an impressive range, Clara, but keep at it. We don't want anyone to escape.*/
== MURDGIRL @99 /*Can you help them, <CHARNAME>, Clara? You have to help them!*/
	DO ~AddJournalEntry(@100,QUEST)~ /*Most of the Humans in the Bridge District are dead, though Rose lived because Clara gave her the antidote. I should travel throughout Amn and make sure the rest of the humans die.*/
EXIT

//Code to Kill everyone.
//Five Flagons Inn
CHAIN IF ~Global("_bClaraKillsAllFiveFlagons","GLOBAL",1)~ THEN _bClaraj _bGenocideFiveFlagonsTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllFiveFlagons","GLOBAL",2) AddJournalEntry(@103,QUEST) AddexperienceParty(20000)~ /*All humans in the Five Flagons Inn have died.*/
		= @104 /**cries softly* No more plays...*/
== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis")~ THEN @105 /*The theater will come again, do not fret... merely fewer humans shall partake.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllFiveFlagons","GLOBAL",1)~ THEN PLAYER1 _bGenocideFiveFlagonsTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllFiveFlagons","GLOBAL",2) AddJournalEntry(@103,QUEST) AddexperienceParty(20000)~ /*All humans in the Five Flagons Inn have died.*/
== _bClaraj	IF ~IfValidForPartyDialog("_bClara")~ THEN @104 /**cries softly* No more plays...*/
== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis")~ THEN @105 /*The theater will come again, do not fret... merely fewer humans shall partake.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Desolar's Inn
CHAIN IF ~Global("_bClaraKillsAllDesolar","GLOBAL",1)~ THEN _bClaraj _bGenocideDesolarTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllDesolar","GLOBAL",2) AddJournalEntry(@109,QUEST) AddexperienceParty(20000)~ /*I went into Desolar's Inn and all the humans there are dead too.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllDesolar","GLOBAL",1)~ THEN PLAYER1 _bGenocideDesolarTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllDesolar","GLOBAL",2) AddJournalEntry(@109,QUEST) AddexperienceParty(20000)~ /*I went into Desolar's Inn and all the humans there are dead too.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Docks District
CHAIN IF ~Global("_bClaraKillsAllDocks","GLOBAL",1)~ THEN _bClaraj _bGenocideDocksTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllDocks","GLOBAL",2) AddJournalEntry(@110,QUEST) AddexperienceParty(100000)~ /*I went into the Docks district and the humans there are dead as well. I should look around and make sure we got them all.*/
== JAHEIRAJ IF ~IfValidForPartyDialog("Jaheira")~ THEN @112 /*What do you keep muttering, child?*/
== _bClaraj IF ~IfValidForPartyDialog("Jaheira")~ THEN @113 /*Just a prayer my father taught me, Jaheira. A blessing for the dead. I've never seen anything so horrible.*/
== JAHEIRAJ IF ~IfValidForPartyDialog("Jaheira")~ THEN @114 /*You are right about that... this is death on a scale I have not seen for some time. We will help those we can.*/
== _bClaraj IF ~!Dead("Aran")~ THEN @162 /*<CHARNAME>, we should check on the Shadow Thieves and Aran. Make sure they're alright.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllDocks","GLOBAL",1)~ THEN PLAYER1 _bGenocideDocksTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllDocks","GLOBAL",2) AddJournalEntry(@110,QUEST) AddexperienceParty(100000)~ /*I went into the Docks district and the humans there are dead as well. I should look around and make sure we got them all.*/
== _bClaraj IF ~!Dead("Aran") IfValidForPartyDialog("_bClara")~ THEN @162 /*<CHARNAME>, we should check on the Shadow Thieves and Aran. Make sure they're alright.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Sea's Bounty
CHAIN IF ~Global("_bClaraKillsAllSeaBounty","GLOBAL",1)~ THEN _bClaraj _bGenocideSeaBountyTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllSeaBounty","GLOBAL",2) AddJournalEntry(@115,QUEST) AddexperienceParty(20000)~ /*The Sea's Bounty is empty. I never realized how many of Athkatla's people were humans until they died.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllSeaBounty","GLOBAL",1)~ THEN PLAYER1 _bGenocideSeaBountyTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllSeaBounty","GLOBAL",2) AddJournalEntry(@115,QUEST) AddexperienceParty(20000)~ /*The Sea's Bounty is empty. I never realized how many of Athkatla's people were humans until they died.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Temple of Oghma
CHAIN IF ~Global("_bClaraAllKillsOghma","GLOBAL",1)~ THEN _bClaraj _bGenocideOghmaTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraAllKillsOghma","GLOBAL",2) AddJournalEntry(@1150,QUEST) AddexperienceParty(20000)~ /*The Temple of Oghma has fallen silent. Even knowledge couldn't save it.*/
		== IF_FILE_EXISTS ~B!GAVJ~ IF ~IfValidForPartyDialog("b!gavin2") Dead("b!lanie")~ THEN @1151 /*No! Lanie! No, my daughter... I was supposed to keep you safe.*/
		DO ~SetGlobal("_bGavinDeadLanie","GLOBAL",1)~
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllOghma","GLOBAL",1)~ THEN PLAYER1 _bGenocideOghmaTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllOghma","GLOBAL",2) AddJournalEntry(@1150,QUEST) AddexperienceParty(20000)~ /*The Temple of Oghma has fallen silent. Even knowledge couldn't save it.*/
		== IF_FILE_EXISTS ~B!GAVJ~ IF ~IfValidForPartyDialog("b!gavin2") Dead("b!lanie")~ THEN @1151 /*No! Lanie! No, my daughter... I was supposed to keep you safe.*/
			DO ~SetGlobal("_bGavinDeadLanie","GLOBAL",1)~
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//City Gates
CHAIN IF ~Global("_bClaraKillsAllCityGates","GLOBAL",1)~ THEN _bClaraj _bGenocideCityGatesTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllCityGates","GLOBAL",2) AddJournalEntry(@116,QUEST) AddexperienceParty(100000)~ /*Everyone around the city gates is dead. I should search the inn too.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllCityGates","GLOBAL",1)~ THEN PLAYER1 _bGenocideCityGatesTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllCityGates","GLOBAL",2) AddJournalEntry(@116,QUEST) AddexperienceParty(100000)~ /*Everyone around the city gates is dead. I should search the inn too.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Crooked Crane
CHAIN IF ~Global("_bClaraKillsAllCrookedCrane","GLOBAL",1)~ THEN _bClaraj _bGenocideCrookedCraneTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllCrookedCrane","GLOBAL",2) AddJournalEntry(@117,QUEST) AddexperienceParty(20000)~ /*The Crooked Crane is humanless.*/
		== IF_FILE_EXISTS LK#NINDJ IF ~IfValidForPartyDialog("Ninde")~ THEN  @1170 /*A pity. I shall find myself missing this charming pit's more intriguing characters.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllCrookedCrane","GLOBAL",1)~ THEN PLAYER1 _bGenocideCrookedCraneTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllCrookedCrane","GLOBAL",2) AddJournalEntry(@117,QUEST) AddexperienceParty(20000)~ /*The Crooked Crane is humanless.*/
		== IF_FILE_EXISTS LK#NINDJ IF ~IfValidForPartyDialog("Ninde")~ THEN  @1170 /*A pity. I shall find myself missing this charming pit's more intriguing characters.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Slums
CHAIN IF ~Global("_bClaraKillsAllSlums","GLOBAL",1)~ THEN _bClaraj _bGenocideSlumsTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllSlums","GLOBAL",2) AddJournalEntry(@119,QUEST) AddexperienceParty(100000)~ /*The slums have been emptied of human life, but I should check around... maybe loot the Copper Coronet.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @118 /**quietly* Dead bodies everywhere... a foul stench emanating from every quarter... no change here.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllSlums","GLOBAL",1)~ THEN PLAYER1 _bGenocideSlumsTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllSlums","GLOBAL",2) AddJournalEntry(@119,QUEST) AddexperienceParty(100000)~ /*The slums have been emptied of human life, but I should check around... maybe loot the Copper Coronet.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @118 /**quietly* Dead bodies everywhere... a foul stench emanating from every quarter... no change here.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Copper Coronet
CHAIN IF ~Global("_bClaraKillsAllCoronet","GLOBAL",1)~ THEN _bClaraj _bGenocideCoronetTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
== SURLY IF ~!Dead("Surly")~ THEN @121 /*Hey, you're not dead... I'm surprised. Give me a hand with all these bodies. I'll feed them to my dogs. This is my place now!*/
		DO ~SetGlobal("_bClaraKillsAllCoronet","GLOBAL",2) AddJournalEntry(@120,QUEST) AddexperienceParty(20000)~ /*The Copper Coronet is full of dead bodies. The fighting dogs will eat well.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllCoronet","GLOBAL",1)~ THEN PLAYER1 _bGenocideCoronetTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
== SURLY IF ~!Dead("Surly")~ THEN @121 /*Hey, you're not dead... I'm surprised. Give me a hand with all these bodies. I'll feed them to my dogs. This is my place now!*/
		DO ~SetGlobal("_bCNKillsAllCoronet","GLOBAL",2) AddJournalEntry(@120,QUEST) AddexperienceParty(20000)~ /*The Copper Coronet is full of dead bodies. The fighting dogs will eat well.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Jan's House
CHAIN IF WEIGHT #-1 ~Global("_bGenocideJanTalksFamily","GLOBAL",1)~ THEN JANJ _bJanSeesFamilyGenoicde
	@122 /*You're all okay! I knew the tall folk's diseases wouldn't affect us! We're too healthy.*/
		DO ~SetGlobal("_bGenocideJanTalksFamily","GLOBAL",2)~
	= @123 /*No harm done then. In fact there's a lot of empty real estate right now, we should think about expanding... just like great-aunt Tina's second husband Radcliffe did during the great herring famine. Nothing's cheap like a house owned by starving people... they'll sell it for a bowl of turnips, and Radcliffe had turnips to spare.*/
	= @124 /*Sure the story ended with him being chased by an angry mob, but that was incidental and unrelated to his speculative actions.*/
EXIT

//Waukeen's Promenade
CHAIN IF ~Global("_bClaraKillsAllPromenade","GLOBAL",1)~ THEN _bClaraj _bGenocidePromenadeTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllPromenade","GLOBAL",2) AddJournalEntry(@125,QUEST) AddexperienceParty(100000)~ /*Waukeen's Promenade is empty of trade. Might as well look around.*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie") !Dead("Quayle")~ THEN @126 /*C-can we go to the circus, <CHARNAME>? Please we... we have to see if Quayle is... is...*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan") !Dead("Ribald")~ THEN @127 /*We should loot th' Adventurer's Mart! Best be gettin' th' goods before some lily-limbered elf sneaks in an' swipes it all!*/
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") !Dead("Ribald")~ THEN @128 /*I would like to see if Ribald Barterman has survived. He is a friend.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllPromenade","GLOBAL",1)~ THEN PLAYER1 _bGenocidePromenadeTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllPromenade","GLOBAL",2) AddJournalEntry(@125,QUEST) AddexperienceParty(100000)~ /*Waukeen's Promenade is empty of trade. Might as well look around.*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie") !Dead("Quayle")~ THEN @126 /*C-can we go to the circus, <CHARNAME>? Please we... we have to see if Quayle is... is...*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan") !Dead("Ribald")~ THEN @127 /*We should loot th' Adventurer's Mart! Best be gettin' th' goods before some lily-limbered elf sneaks in an' swipes 'em all!*/
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") !Dead("Ribald")~ THEN @128 /*I would like to see if Ribald Barterman has survived. He is a friend.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Circus
CHAIN IF ~Global("_bClaraKillsAllCircus","GLOBAL",1)~ THEN _bClaraj _bGenocideCircusClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllCircus","GLOBAL",2) AddJournalEntry(@129,QUEST) AddexperienceParty(20000)~ /*Quayle is alive. The circus will continue.*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie")~ THEN @130 /*Quayle! You're alive!*/
== QUAYLE IF ~IfValidForPartyDialog("Aerie")~ THEN @131 /*Aerie! I hoped you would make it. Whatever this strange disease is that's sweeping Amn, it only seems to affect humans.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllCircus","GLOBAL",1)~ THEN PLAYER1 _bGenocideCircusTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllCircus","GLOBAL",2) AddJournalEntry(@129,QUEST) AddexperienceParty(20000)~ /*No more circus. The animals survived though.*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie") !Dead("Quayle")~ THEN @130 /*Quayle! You're alive!*/
== QUAYLE IF ~IfValidForPartyDialog("Aerie") !Dead("Quayle")~ THEN @131 /*Aerie! I hoped you would make it. Whatever this strange disease is that's sweeping Amn, it only seems to affect humans.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Adventurer's Mart
CHAIN IF ~Global("_bClaraKillsAllAdventurer","GLOBAL",1) !Dead("Ribald")~ THEN _bClaraj _bGenocideAdventurerClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllAdventurer","GLOBAL",2) AddJournalEntry(@132,QUEST) AddexperienceParty(20000)~ /*Ribald Barterman is a half-elf so he's still alive. The Adventurer's Mart will continue.*/
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @133 /*Ribald, you're alive! My heart is glad for it.*/
== RIBALD IF ~IfValidForPartyDialog("Mazzy")~ THEN @134 /*And you as well! Though I fear many of our friends were not so fortunate.*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @135 /*Ye're alive! Ye useless, grass-eating, long-limb! Can't we trust ye to die on time!*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @136 /*Ninety-nine humans die out of a hundred and ye're the one who lives! Oh th' indignity!*/
== RIBALD IF ~IfValidForPartyDialog("Korgan")~ THEN @137 /*Is that what saved me? My father was an elf... Can't you tell a half-elf apart from a human?*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @138 /*Bah! All ye long-limbs look alike. I don' know how ye expect me t' tell ye apart.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllAdventurer","GLOBAL",1) !Dead("Ribald")~ THEN PLAYER1 _bGenocideAdventurerTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllAdventurer","GLOBAL",2) AddJournalEntry(@132,QUEST) AddexperienceParty(20000)~ /*Ribald Barterman is a half-elf so he's still alive. The Adventurer's Mart will continue.*/
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @133 /*Ribald, you're alive! My heart is glad for it.*/
== RIBALD IF ~IfValidForPartyDialog("Mazzy")~ THEN @134 /*And you as well! Though I fear many of our friends were not so fortunate.*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @135 /*Ye're alive! Ye useless, grass-eating, long-limb! Can't we trust ye to die on time!*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @136 /*Ninety-nine humans die out of a hundred and ye're the one who lives! Oh th' indignity!*/
== RIBALD IF ~IfValidForPartyDialog("Korgan")~ THEN @137 /*Is that what saved me? My father was an elf... Can't you tell a half-elf apart from a human?*/
== KORGANJ IF ~IfValidForPartyDialog("Korgan")~ THEN @138 /*Bah! All ye long-limbs look alike. I don' know how ye expect me t' tell ye apart.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Graveyard
CHAIN IF ~Global("_bClaraKillsAllGraveyard","GLOBAL",1)~ THEN _bClaraj _bGenocideGraveyardTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllGraveyard","GLOBAL",2) AddJournalEntry(@139,QUEST) AddexperienceParty(100000)~ /*Everyone in the Graveyard is still dead.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @140 /*The graveyard, <CHARNAME>? Why bring us here? Everyone here is already dead.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllGraveyard","GLOBAL",1)~ THEN PLAYER1 _bGenocideGraveyardTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllGraveyard","GLOBAL",2) AddJournalEntry(@139,QUEST) AddexperienceParty(100000)~ /*Everyone in the Graveyard is still dead.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @140 /*The graveyard, <CHARNAME>? Why bring us here? Everyone here is already dead.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Temple District
CHAIN IF ~Global("_bClaraKillsAllTempleDistrict","GLOBAL",1)~ THEN _bClaraj _bGenocideTempleDistrictTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllTempleDistrict","GLOBAL",2) AddJournalEntry(@141,QUEST) AddexperienceParty(100000)~ /*The humans in the Temple District are dead. Their gods did not save them.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @142 /**quietly* Rivvin, rivvin, where are your gods now?*/
	= @143 /*<CHARNAME>, we should avoid the Temple of Talos. If his lackeys are indeed dead, the god will be enraged and we do not want to draw his eye.*/
== IF_FILE_EXISTS ~B!GAVJ~ IF ~IfValidForPartyDialog("b!gavin2") Global("TempleShout0901","GLOBAL",0)~ THEN @1430 /*We must go to the Temple of Lathander immediately! Surely the priests will have protected those inside.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("TempleShout0901","GLOBAL",0)~ THEN @144 /*No, not the Temple of Helm! <CHARNAME>, we must check inside and see if anyone still draws breath!*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn") Global("TempleShout0903","GLOBAL",0)~ THEN @145 /*The Order! Did the gods curse them too! <CHARNAME>, we must go there immediately!*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllTempleDistrict","GLOBAL",1)~ THEN PLAYER1 _bGenocideTempleDistrictTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllTempleDistrict","GLOBAL",2) AddJournalEntry(@141,QUEST) AddexperienceParty(100000)~ /*The humans in the Temple District are dead. Their gods did not save them.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @142 /**quietly* Rivvin, rivvin, where are your gods now?*/
	= @143 /*<CHARNAME>, we should avoid the Temple of Talos. If his lackeys are indeed dead, the god will be enraged and we do not want to draw his eye.*/
== IF_FILE_EXISTS ~B!GAVJ~ IF ~IfValidForPartyDialog("b!gavin2") Global("TempleShout0901","GLOBAL",0)~ THEN @1430 /*We must go to the Temple of Lathander immediately! Surely the priests will have protected those inside.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("TempleShout0901","GLOBAL",0)~ THEN @144 /*No, not the Temple of Helm! <CHARNAME>, we must check inside and see if anyone still draws breath!*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn") Global("TempleShout0903","GLOBAL",0)~ THEN @145 /*The Order! Did the gods curse them too! <CHARNAME>, we must go there immediately!*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Temple of Helm
CHAIN IF ~Global("_bClaraKillsAllHelm","GLOBAL",1)~ THEN _bClaraj _bGenocideHelmTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllHelm","GLOBAL",2) AddJournalEntry(@146,QUEST) AddexperienceParty(20000)~ /*Helm's Temple is understaffed.*/
== IF_FILE_EXISTS C#AJANJ IF ~IfValidForPartyDialog("C#Ajantis")~ THEN @1460 /*This is impossible! How could Helm not have foreseen this?*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen")~ THEN @147 /*No... NOOOOO! I swear, by Helm, that I shall find out what caused this devastation and avenge my sworn brothers!*/
== _bClaraj IF ~IfValidForPartyDialog("Anomen") Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN @148 /*Anomen, I'm so sorry this happened. I swear to help you in any way I can. We will discover how this tragedy occurred together.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN @149 /*Thank you, my love. I do not know how I could maintain the will to live without you by my side.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllHelm","GLOBAL",1)~ THEN PLAYER1 _bGenocideHelmTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllHelm","GLOBAL",2) AddJournalEntry(@146,QUEST) AddexperienceParty(20000)~ /*Helm's Temple is understaffed.*/
== IF_FILE_EXISTS C#AJANJ IF ~IfValidForPartyDialog("C#Ajantis")~ THEN @1460 /*This is impossible! How could Helm not have foreseen this?*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen")~ THEN @147 /*No... NOOOOO! I swear, by Helm, that I shall find out what caused this devastation and avenge my sworn brothers!*/
== _bClaraj IF ~IfValidForPartyDialog("Anomen") IfValidForPartyDialog("_bClara") Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN @148 /*Anomen, I'm so sorry this happened. I swear to help you in any way I can. We will discover how this tragedy occurred together.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") IfValidForPartyDialog("_bClara") Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN @149 /*Thank you, my love. I do not know how I could maintain the will to live without you by my side.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Order of the Radiant Heart
CHAIN IF ~Global("_bClaraKillsAllOrder","GLOBAL",1)~ THEN _bClaraj _bGenocideOrderTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllOrder","GLOBAL",2) AddJournalEntry(@150,QUEST) AddexperienceParty(20000)~ /*The Most Noble Order of the Radiant Heart has fallen into shadow.*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn")~ THEN @151 /*How could this happen? By Torm, there are no words to describe this.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",0)~ @152 /*No... the Order! Why? How? The gods should have prevented this!*/
== IF_FILE_EXISTS C#AJANJ IF ~IfValidForPartyDialog("C#Ajantis") Global("_bAjantisdeathtalk","GLOBAL",0)~ THEN @1520 /*The Order of the Radiant Heart is finished... I cannot believe it.*/
DO ~SetGlobal("_bAjantisdeathtalk","GLOBAL",1)~
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllOrder","GLOBAL",1)~ THEN PLAYER1 _bGenocideOrderTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllOrder","GLOBAL",2) AddJournalEntry(@150,QUEST) AddexperienceParty(20000)~ /*The Most Noble Order of the Radiant Heart has fallen into shadow.*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn")~ THEN @151 /*How could this happen? By Torm, there are no words to describe this.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("AnomenIsNotKnight","GLOBAL",0)~ @152 /*No... the Order! Why? How? The gods should have prevented this!*/
== IF_FILE_EXISTS C#AJANJ IF ~IfValidForPartyDialog("C#Ajantis") Global("_bAjantisdeathtalk","GLOBAL",0)~ THEN @1520 /*The Order of the Radiant Heart is finished... I cannot believe it.*/
DO ~SetGlobal("_bAjantisdeathtalk","GLOBAL",1)~
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Government District
CHAIN IF ~Global("_bClaraKillsAllGovernment","GLOBAL",1)~ THEN _bClaraj _bGenocideGovernmentTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllGovernment","GLOBAL",2) AddJournalEntry(@153,QUEST) AddexperienceParty(100000)~ /*Even the mighty have fallen. The government and nobles of Athkatla are no more.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @154 /**quietly* All the money and power in the world, rivvin, and what did it get you? Does it serve you well in the Abyss?*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn")~ THEN @155 /*We must proceed to my house immediately!*/
== ANOMENJ IF ~!Dead("Cor") IfValidForPartyDialog("Anomen")~ THEN @156 /*If we have time, I suppose we should stop by house and see if my father still lives.*/
== _bClaraj IF ~!Dead("Cor") Global("_bLadyDelryn","GLOBAL",1)~ THEN @157 /*<CHARNAME>, we must go see my Lord Husband, Cor! Oh how I pray to the gods that his heart still beats!*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllGovernment","GLOBAL",1)~ THEN PLAYER1 _bGenocideGovernmentTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllGovernment","GLOBAL",2) AddJournalEntry(@153,QUEST) AddexperienceParty(100000)~ /*Even the mighty have fallen. The government and nobles of Athkatla are no more.*/
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @154 /**quietly* All the money and power in the world, rivvin, and what did it get you? Does it serve you well in the Abyss?*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn")~ THEN @155 /*We must proceed to my house immediately!*/
== ANOMENJ IF ~!Dead("Cor") IfValidForPartyDialog("Anomen")~ THEN @156 /*If we have time, I suppose we should stop by house and see if my father still lives.*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara") !Dead("Cor") Global("_bLadyDelryn","GLOBAL",1)~ THEN @157 /*<CHARNAME>, we must go see my Lord Husband, Cor! Oh how I pray to the gods that his heart still beats!*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Firecam Estate
CHAIN IF ~Global("_bClaraKillsAllFirecam","GLOBAL",1)~ THEN _bClaraj _bGenocideFirecamTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllFirecam","GLOBAL",2) AddJournalEntry(@158,QUEST) AddexperienceParty(20000)~ /*Keldorn's family is dead.*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn")~ THEN @159 /*No! By Torm, no...*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllFirecam","GLOBAL",1)~ THEN PLAYER1 _bGenocideFirecamTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllFirecam","GLOBAL",2) AddJournalEntry(@158,QUEST) AddexperienceParty(20000)~ /*Keldorn's family is dead.*/
== KELDORJ IF ~IfValidForPartyDialog("Keldorn")~ THEN @159 /*No! By Torm, no...*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Council of Six Building
CHAIN IF ~Global("_bClaraKillsAllCouncil","GLOBAL",1)~ THEN _bClaraj _bGenocideCouncilTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllCouncil","GLOBAL",2) AddJournalEntry(@160,QUEST) AddexperienceParty(20000)~ /*The Council of Six has almost certainly lost a few members.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllCouncil","GLOBAL",1)~ THEN PLAYER1 _bGenocideCouncilTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllCouncil","GLOBAL",2) AddJournalEntry(@160,QUEST) AddexperienceParty(20000)~ /*The Council of Six has almost certainly lost a few members.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Aran's Hideout
CHAIN IF ~Global("_bClaraKillsAllAran","GLOBAL",1)~ THEN _bClaraj _bGenocideAranTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
	DO ~SetGlobal("_bClaraKillsAllAran","GLOBAL",2) AddJournalEntry(@161,QUEST) AddexperienceParty(20000)~ /*Aran has fallen. I bet this place contains vast riches.*/
== TASSA IF ~!Dead("tassa") Detect("tassa")~ THEN @163 /*Clara, you're alive! It's been so horrible; everyone here is dying.*/
	= @165 /*This was a sweet gig while I had it, but it's run its course. Thanks for the Plague Protection Potion, Clara. I owe you my life.*/
	DO ~SetGlobal("_btassagenocidetalk","GLOBAL",1) EscapeArea() ChangeEnemyAlly(Myself,NEUTRAL)~
== IF_FILE_EXISTS ANISHAIJ IF ~IfValidForPartyDialog("ANISHAI")~ THEN @1650 /*If the Shadowmaster is dead, perhaps we should take over.*/
== PLAYER1 @167 /*If most of the Shadow Thieves are dead, we should loot this place.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllAran","GLOBAL",1)~ THEN PLAYER1 _bGenocideAranTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
	DO ~SetGlobal("_bCNKillsAllAran","GLOBAL",2) AddJournalEntry(@161,QUEST) AddexperienceParty(20000)~ /*Aran has fallen. I bet this place contains vast riches.*/
== TASSA IF ~!Dead("tassa") IfValidForPartyDialog("_bClara") Detect("tassa")~ THEN @163 /*Clara, you're alive! It's been so horrible; everyone here is dying.*/
	= @165 /*This was a sweet gig while I had it, but it's run its course. Thanks for the Plague Protection Potion, Clara. I owe you my life.*/
		DO ~SetGlobal("_btassagenocidetalk","GLOBAL",1) EscapeArea() ChangeEnemyAlly(Myself,NEUTRAL)~
== TASSA IF ~!Dead("tassa") !IfValidForPartyDialog("_bClara") Detect("tassa")~ THEN @166 /*If you're here to see Aran, you're too late. He's dead, as is almost everyone else. Time to take my pay and be gone.*/
		DO ~SetGlobal("_btassagenocidetalk","GLOBAL",1) EscapeArea() ChangeEnemyAlly(Myself,NEUTRAL)~
== IF_FILE_EXISTS ANISHAIJ IF ~IfValidForPartyDialog("ANISHAI")~ THEN @1650 /*If the Shadowmaster is dead, perhaps we should take over.*/
== PLAYER1 @167 /*If most of the Shadow Thieves are dead, we should loot this place.*/
EXIT

//Tassa's back-up dialogue if you came in a different door.
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_btassagenocidetalk","GLOBAL",0) IfValidForPartyDialog("_bClara")~ THEN TASSA _bgenocidetalktassa1 
	@163 /*Clara, you're alive! It's been so horrible; everyone here is dying.*/
	= @165 /*This was a sweet gig while I had it, but it's run its course. Thanks for the Plague Protection Potion, Clara. I owe you my life.*/
		DO ~SetGlobal("_btassagenocidetalk","GLOBAL",1) EscapeArea()~
EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_btassagenocidetalk","GLOBAL",0) !IfValidForPartyDialog("_bClara")~ THEN TASSA _bgenocidetalktassa2 
	@166 /*If you're here to see Aran, you're too late. He's dead, as is almost everyone else. Time to take my pay and be gone.*/
		DO ~SetGlobal("_btassagenocidetalk","GLOBAL",1) EscapeArea()~
EXIT

//Mitsu
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bmitsugenocidetalk","GLOBAL",0)~ THEN ARNMAN04 _bgenocidetalkmitsu
	@164 /*Hey, ye're not dead, lucky you! I'm not dead either! All the big 'uns are though so let us loot 'em an' be gone.*/
		DO ~SetGlobal("_bmitsugenocidetalk","GLOBAL",1) EscapeArea()~
EXIT

//Booter (Clara only)
CHAIN IF WEIGHT #-999 ~Global("_bClaraKillsAllBooter","GLOBAL",1)~ THEN _bClaraj _bGenocideBooterTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllBooter","GLOBAL",2)~
== BOOTER @170 /*What's that ye be mutterin' girlie?*/
== _bClaraj @171 /*Just a prayer for the dead that my father taught me. What will you do now?*/
== BOOTER @172 /*Aran be dead... th' other leaders be dyin'... how's a dwarf supposed to make an honest livin'?*/
== BOOTER @173 /*Nothin' to do but grab what gold I kin carry an' be on me way.*/
	DO ~EscapeArea()~
EXIT

//Booter (No clara)
CHAIN IF WEIGHT #-998 ~!Global("_bClaraKillsAllBooter","GLOBAL",1) Global("_bAllRivvinMustDie","GLOBAL",1)~ THEN BOOTER _bGenocideBooterTalkClara2
	@172 /*Aran be dead... th' other leaders be dyin'... how's a dwarf supposed to make an honest livin'?*/
	= @173 /*Nothin' to do but grab what gold I kin carry an' be on me way.*/
	DO ~EscapeArea()~
EXIT

//Guild Entrance (friendly)
CHAIN IF ~Global("_bClaraKillsAllGuild","GLOBAL",1)~ THEN _bClaraj _bGenocideGuildTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllGuild","GLOBAL",2) AddJournalEntry(@174,QUEST) AddexperienceParty(20000)~ /*Almost everyone in the Thieves Guild is dead. All their money belongs to the living.*/
== IF_FILE_EXISTS ANISHAIJ IF ~IfValidForPartyDialog("ANISHAI")~ THEN @1910 /*What a pity. This could have been a prosperous guild.*/
== BMTHIEF @191 /*Well, isn't this a spot of opportunity? I believe I am the owner of my own store now. Time to go off to greener pastures.*/
	DO ~EscapeArea()~
== PLAYER1 @167 /*If most of the Shadow Thieves are dead, we should loot this place.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllGuild","GLOBAL",1)~ THEN PLAYER1 _bGenocideGuildTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllGuild","GLOBAL",2) AddJournalEntry(@174,QUEST) AddexperienceParty(20000)~ /*Almost everyone in the Thieves Guild is dead. All their money belongs to the living.*/
== IF_FILE_EXISTS ANISHAIJ IF ~IfValidForPartyDialog("ANISHAI")~ THEN @1910 /*What a pity. This could have been a prosperous guild.*/
== BMTHIEF @191 /*Well, isn't this a spot of opportunity? I believe I am the owner of my own store now. Time to go off to greener pastures.*/
	DO ~EscapeArea()~
== PLAYER1 @167 /*If most of the Shadow Thieves are dead, we should loot this place.*/
EXIT

//Renal's Hideout (friendly)
CHAIN IF ~Global("_bClaraKillsAllRenal","GLOBAL",1)~ THEN _bClaraj _bGenocideRenalTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllRenal","GLOBAL",2) AddJournalEntry(@192,QUEST) AddexperienceParty(20000)~ /*Poor Renal Bloodscalp.*/
== PLAYER1 @167 /*If most of the Shadow Thieves are dead, we should loot this place.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllRenal","GLOBAL",1)~ THEN PLAYER1 _bGenocideRenalTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllRenal","GLOBAL",2) AddJournalEntry(@192,QUEST) AddexperienceParty(20000)~ /*Poor Renal Bloodscalp.*/
== PLAYER1 @167 /*If most of the Shadow Thieves are dead, we should loot this place.*/
EXIT

//Jardine's talk if he's alive and sees the PC.
CHAIN IF WEIGHT #-999 ~Global("JardineTalksGenocide","GLOBAL",1)~ THEN DELRYNG1 _bJardineSeesPCGenocide1
	@193 /*You're alive! Thank the gods! It must indeed be a plague.*/
		DO ~SetGlobal("JardineTalksGenocide","GLOBAL",2)~
== _bClaraj IF ~IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1)~ THEN @194 /*I am so relieved that my potion was effective. How is my Lord Husband?*/
== DELRYNG1 IF ~IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1)~ THEN @195 /*He... he is dying, my lady. I'm sorry.*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1)~ THEN @196 /*Oh no... but he had the same potion! It should have saved him! Did I give him the wrong one? Did the store I bought them from cheat me?*/
== DELRYNG1 IF ~IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1)~ THEN @197 /*It is not your fault, my lady. He is an old man and was in ill health. You should not blame yourself.*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1)~ THEN @198 /**sob* I... I can't bear this...*/
== ANOMENJ IF ~IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1) IfValidForPartyDialog("Anomen")~ THEN @199 /*Clara, we have not always seen eye-to-eye but... I am sorry it is ending like this. You should take heart knowing that you brought my father some measure of happiness before his passing.*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1) IfValidForPartyDialog("Anomen")~ THEN @200 /**sniff* Thank you, Anomen.*/
== ANOMENJ IF ~!IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1) IfValidForPartyDialog("Anomen")~ THEN @201 /*Jardine! I am pleased to see you live as well. How is my father?*/
== DELRYNG1 IF ~!IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1) IfValidForPartyDialog("Anomen")~ THEN @202 /*I am sorry, my lord. He is dying...*/
== ANOMENJ IF ~!IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1) IfValidForPartyDialog("Anomen")~ THEN @203 /**sigh* And so passes the last of my family. Thank you, Jardine, for everything.*/
== _bClaraj IF ~Global("_bAnomenClaraRomance","GLOBAL",2) IfValidForPartyDialog("_bClara")~ THEN @204 /*I am so relieved that my potion was effective. You are a good man, Jardine.*/
== ANOMENJ IF ~Global("_bAnomenClaraRomance","GLOBAL",2) IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Anomen")~ THEN @205 /*That was good thinking, Caroline, protecting Jardine from plague. I would have been sorry to lose him.*/
== ANOMENJ IF ~Global("_bAnomenClaraRomance","GLOBAL",2) !IfValidForPartyDialog("_bClara") IfValidForPartyDialog("Anomen")~ THEN @206 /*And you live as well! I am relieved, I would... I would have been sorry to lose you.*/
== DELRYNG1 @207 /*I will continue to perform my duties. May the gods gods go with you.*/
EXIT

//Talks with various members around town.
//Courtesans in Bridge District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bbprost1genocidetalk","GLOBAL",0) IfValidForPartyDialog("_bClara")~ THEN BPROST1 _bgenocidetalkbprost1
	@208 /*Clara! Yer potion worked. I'm alive! But look around, it's so horrible...*/
		DO ~SetGlobal("_bbprost1genocidetalk","GLOBAL",1)~
== _bClaraj @209 /*It is... the plague is killing everyone...*/
EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bbprost2genocidetalk","GLOBAL",0) IfValidForPartyDialog("_bClara")~ THEN BPROST2 _bgenocidetalkbprost2
	@208 /*Clara! Yer potion worked. I'm alive! But look around, it's so horrible...*/
		DO ~SetGlobal("_bbprost2genocidetalk","GLOBAL",1)~
== _bClaraj @209 /*It is... the plague is killing everyone...*/
EXIT
	
//Town crier in Bridge District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_btownc01genocidetalk","GLOBAL",0)~ THEN TOWNC01 _bgenocidetalktownc01
	@210 /*Hear ye, hear ye! Plague sweeps Amn, killing nearly all humans. Athkatla in turmoil! Traders and merchants flee! City blacklisted from trade!*/
END
	++ @211 /*Tell me more of this plague, crier.*/ GOTO _bgenocidetalktownc011
	++ @212 /*Humans die. I can't imagine why anyone should care.*/ GOTO _bgenocidetalktownc012
	++ @213 /*I don't have the time for this.*/ GOTO _bgenocidetalktownc013
	
CHAIN TOWNC01 _bgenocidetalktownc011
	@214 /*A plague has come to Athkatla and is now spreading uncontrollably through Amn!*/
		DO ~SetGlobal("_btownc01genocidetalk","GLOBAL",1)~
	= @215 /*It seems to only affect humans, proving fatal to more than nine out of ten who come in contact with it!*/
	= @216 /*Looting is widespread as non-humans move house to house taking the belongings of those who have no one else to claim them!*/
	= @217 /*Speculation is that this disease must have come from an infected traveler of partial human blood. Someone who could carry the plague but for whom it wasn't fatal!*/
	= @218 /*Human merchants have fled the city, but enterprising gnomes and halflings have stepped into the gap, selling basic necessities at three times normal prices!*/
	= @219 /*But don't just listen to the news, go make it! A massive human die-off means more room for the rest of us! Opportunity awaits!*/
EXIT

CHAIN TOWNC01 _bgenocidetalktownc012
	@220 /*Opportunity! A massive die-off means more room for the rest of us! Don't just listen to the news, go make it!*/
EXIT

CHAIN TOWNC01 _bgenocidetalktownc013
	@221 /*Be that way. Those who don't have time for the news are doomed to repeat it.*/
EXIT

//Cowled Wizard
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bmage1genocidetalk","GLOBAL",0) IfValidForPartyDialog("Viconia") IfValidForPartyDialog("_bClara")~ THEN MAGE1 _bgenocidetalkmage1
	@222 /*S-stay back! I'm a Cowled Wizard! I have power...*/
		DO ~SetGlobal("_bmage1genocidetalk","GLOBAL",1)~
== VICONIJ @223 /*I am sure you do, rivvil... but tell me, why are you not dead?*/
== MAGE1 @224 /*...I don't know! I only transferred here from headquarters yesterday! I don't know what's going on...*/
== VICONIJ @225 /*Headquarters... so the Cowled Wizards will survive me in their magical lair far away...*/
== _bClaraj @226 /*You can't get them all, Viconia.*/
== VICONIJ @227 /*So it would seem...*/
== MAGE1 @228 /*...I just arrived... but now that people are dying they won't let me go back! All travel to and from headquarters is forbidden and I have nowhere to go.*/
	DO ~Kill(Myself)~
== VICONIJ @229 /*...but I got that one.*/	
EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bmage1genocidetalk","GLOBAL",0) OR(2) !IfValidForPartyDialog("Viconia") !IfValidForPartyDialog("_bClara")~ THEN MAGE1 _bgenocidetalkmage1
	@222 /*S-stay back! I'm a Cowled Wizard! I have power...*/
	= @228 /*...I just arrived... but now that people are dying they won't let me go back! All travel to and from headquarters is forbidden and I have nowhere to go.*/
EXIT

//Hidden Refuge
CHAIN IF ~Global("_bClaraKillsAllRefuge","GLOBAL",1)~ THEN _bClaraj _bGenocideRefugeTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllRefuge","GLOBAL",2) AddJournalEntry(@230,QUEST) AddexperienceParty(100000)~ /*We visited the Hidden Refuge. I assume we'll have the same deadly effect.*/
== NEERAJ IF ~IfValidForPartyDialog("NEERA")~ THEN @231 /*Oh no! Has the disease spread here too? <CHARNAME>, we must see if Telana is all right!*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllRefuge","GLOBAL",1)~ THEN PLAYER1 _bGenocideRefugeTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllRefuge","GLOBAL",2) AddJournalEntry(@230,QUEST) AddexperienceParty(100000)~ /*We visited the Hidden Refuge. I assume we'll have the same deadly effect.*/
== NEERAJ IF ~IfValidForPartyDialog("NEERA")~ THEN @231 /*Oh no! Has the disease spread here too? <CHARNAME>, we must see if Telana is all right!*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//If Telana is dead and Neera sees her.
CHAIN IF WEIGHT #-999 ~Global("_bNeeraTelanaDead","GLOBAL",1)~ THEN NEERAJ _bNeeraDeadTelanaTalk
	@232 /*No! Telana! Not you...*/
		DO ~SetGlobal("_bNeeraTelanaDead","GLOBAL",2)~
== MINSCJ IF ~IfValidForPartyDialog("Minsc")~ THEN @233 /*My mighty heart breaks for you, Neera! And even stoic Boo is weeping!*/
== NEERAJ @234 /*No...*/
EXIT

//Aran's Hideout Talks- Missy
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1)~ THEN ARNGRL01 _bMissyGenocideTalk1
	@235 /*Hah, they're all dead! All these coats are mine now, you hear! Keep your hands off!*/
		DO ~EscapeArea()~
EXIT

//Aran's Hideout Talks- Achon
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1)~ THEN ARNMAN05 _bAchonGenocideTalk1
	@236 /*Free... After all that. Well, I'm not one to question my good fortune.*/
		DO ~EscapeArea()~
EXIT

//Aran's Hideout Talks- Dwarf Prisoner
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1)~ THEN ARNMAN06 _bDwarfPrisonerGenocideTalk1
	@237 /*I'm free? Really? I cannot believe it. I guess I will take my leave.*/
		DO ~EscapeArea()~
EXIT

//Aran's Hideout Talks- Pelanna
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1)~ THEN PELANNA _bPelannaGenocideTalk1
	@273 /*They're all dead! Useless weaklings! Who am I going to train now?!*/
		DO ~EscapeArea()~
EXIT

//Umar Hills
CHAIN IF ~Global("_bClaraKillsAllUmar","GLOBAL",1)~ THEN _bClaraj _bGenocideUmarTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllUmar","GLOBAL",2) AddJournalEntry(@238,QUEST) AddexperienceParty(100000)~ /*Umar's Curse has returned.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllUmar","GLOBAL",1)~ THEN PLAYER1 _bGenocideUmarTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllUmar","GLOBAL",2) AddJournalEntry(@238,QUEST) AddexperienceParty(100000)~ /*Umar's Curse has returned.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Imnesvale Inn
CHAIN IF ~Global("_bClaraKillsAllImnesvale","GLOBAL",1)~ THEN _bClaraj _bGenocideImnesvaleClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllImnesvale","GLOBAL",2) AddJournalEntry(@239,QUEST) AddexperienceParty(20000)~ /*Imnesvale is no more.*/
== IF_FILE_EXISTS g#TYRISJ IF ~IfValidForPartyDialog("g#TYRIS")~ THEN @2390 /*Guld's teeth, not these people too...*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllImnesvale","GLOBAL",1)~ THEN PLAYER1 _bGenocideImnesvaleTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllImnesvale","GLOBAL",2) AddJournalEntry(@239,QUEST) AddexperienceParty(20000)~ /*Imnesvale is no more.*/
== IF_FILE_EXISTS g#TYRISJ IF ~IfValidForPartyDialog("g#TYRIS")~ THEN @2390 /*Guld's teeth, not these people too...*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Windspear Hills
CHAIN IF ~Global("_bClaraKillsAllWindspear","GLOBAL",1)~ THEN _bClaraj _bGenocideWindspearTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllWindspear","GLOBAL",2) AddJournalEntry(@240,QUEST) AddexperienceParty(100000)~ /*We visited every farm and hut around the Windspear Hills, but all the peasants are dead.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllWindspear","GLOBAL",1)~ THEN PLAYER1 _bGenocideWindspearTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllWindspear","GLOBAL",2) AddJournalEntry(@240,QUEST) AddexperienceParty(100000)~ /*We visited every farm and hut around the Windspear Hills, but all the peasants are dead.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Trademeet
CHAIN IF ~Global("_bClaraKillsAllTrademeet","GLOBAL",1)~ THEN _bClaraj _bGenocideTrademeetTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllTrademeet","GLOBAL",2) AddJournalEntry(@241,QUEST) AddexperienceParty(100000)~ /*The once bustling town of Trademeet is now silent.*/
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") !Dead("vara")~ THEN @242 /*It grieves my heart to see a shadow fall upon my homeland like this. Come, <CHARNAME>, let us find my family and see if there is anything we can do to help these people.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllTrademeet","GLOBAL",1)~ THEN PLAYER1 _bGenocideTrademeetTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllTrademeet","GLOBAL",2) AddJournalEntry(@241,QUEST) AddexperienceParty(100000)~ /*The once bustling town of Trademeet is now silent.*/
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") !Dead("vara")~ THEN @242 /*It grieves my heart to see a shadow fall upon my homeland like this. Come, <CHARNAME>, let us find my family and see if there is anything we can do to help these people.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Trademeet Inn
CHAIN IF ~Global("_bClaraKillsAllTradmeetInn","GLOBAL",1)~ THEN _bClaraj _bGenocideTrademeetInnClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllTradmeetInn","GLOBAL",2) AddJournalEntry(@243,QUEST) AddexperienceParty(20000)~ /*The Trademeet Inn hosts only the dead.*/
== IF_FILE_EXISTS FHFRNJ IF ~IfValidForPartyDialog("FHFRN")~ THEN @2430 /*No... not Vyatri too...*/
== IF_FILE_EXISTS LK#YESJ IF ~IfValidForPartyDialog("LK#YESLK")~ THEN @2431 /*All these poor lads an' lasses. Clangeddin's blessing on their souls.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllTrademeetInn","GLOBAL",1)~ THEN PLAYER1 _bGenocideTrademeetInnTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllTrademeetInn","GLOBAL",2) AddJournalEntry(@243,QUEST) AddexperienceParty(20000)~ /*The Trademeet Inn hosts only the dead.*/
== IF_FILE_EXISTS FHFRNJ IF ~IfValidForPartyDialog("FHFRN")~ THEN @2430 /*No... not Vyatri too...*/
== IF_FILE_EXISTS LK#YESJ IF ~IfValidForPartyDialog("LK#YESLK")~ THEN @2431 /*All these poor lads an' lasses. Clangeddin's blessing on their souls.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Mazzy's conversation at home.
CHAIN IF WEIGHT #-1 ~Global("_bMazzyGenocideFamilyTalk","GLOBAL",1)~ THEN MAZZYJ _bMazzyFamilyGenocide1
	@244 /*Mother, it is so good to see you well, but the devastation...*/
		DO ~SetGlobal("_bMazzyGenocideFamilyTalk","GLOBAL",2)~
	= @245 /*Who is that? A human who has resisted the virus?*/
== VARA1 @246 /*We found her in the street... she must be from out of town. She lives but lies unconscious.*/
	= @247 /*Her condition is not improving though. If only there were some way to help her.*/
EXIT

//Viconia's talk after the previous talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyGenocideFamilyTalk","GLOBAL",3)~ THEN VICONIJ _bMazzyFamilyGenocide2
	@248 /*Mazzy, Vara, perhaps I can heal her.*/
		DO ~SetGlobal("_bMazzyGenocideFamilyTalk","GLOBAL",4)~
	= @249 /*The others have all been beyond my help, but she may be... salvageable.*/ 
== MAZZYJ @250 /*Please, Viconia, do what you can and I will aid you in any way that I am able.*/
== VICONIJ @251 /*Let me lay my hands on her and see...*/
	= @252 /*She is part elven... an ancestor on her mother's side... barely enough to notice, but it has kept her alive this long.*/
	= @253 /*She is strong... some healing on my part... and a potion to purge disease from the body...*/
	= @254 /*There... she should recover in time, though it may take many days for her to get back her strength... weeks even.*/
== VARA1 @255 /*We shall tend her for as long as is required. Thank you, Viconia, you are a true hero.*/
== MAZZYJ @256 /*I wish all those humans who thought you were a threat could see you now... helping one of their own in need.*/
	= @257 /*I am proud to be your friend.*/
EXIT

//Halfling Peasant Woman in Trademeet
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_btrftow04genocidetalk","GLOBAL",0)~ THEN TRFTOW04 _bgenocidetalktrftow04
	@258 /*The large folk are dying everywhere. We are overwhelmed trying to give each one a proper burial.*/
		DO ~SetGlobal("_btrftow04genocidetalk","GLOBAL",1)~
EXIT

//Halfling Peasant Man in Trademeet
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_btrmtow03genocidetalk","GLOBAL",0)~ THEN TRMTOW03 _bgenocidetalktrmtow03
	@263 /*So many bodies... and nothing we can do for them...*/
		DO ~SetGlobal("_btrmtow03genocidetalk","GLOBAL",1)~
EXIT

//Wallace in Trademeet
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bwall1genocidetalk","GLOBAL",0)~ THEN WALL1 _bgenocidetalkwall1
	@259 /*The big folk are perishing. I tried to help some, but I'm not much of a cleric, I'm afraid.*/
		DO ~SetGlobal("_bwall1genocidetalk","GLOBAL",1)~
EXIT

//De'Arnise Hold
CHAIN IF ~Global("_bClaraKillsAllDeArnise","GLOBAL",1)~ THEN _bClaraj _bGenocideDeArniseTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllDeArnise","GLOBAL",2) AddJournalEntry(@260,QUEST) AddexperienceParty(100000)~ /*We visited every farm and hamlet on De'Arnise land, but all of the peasants have passed away.*/
== NALIAJ IF ~IfValidForPartyDialog("Nalia")~ THEN @261 /*All my people... they are all dead. I failed them... I failed them all...*/
	= @262 /*My father would be so ashamed of me. *sobs**/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllDeArnise","GLOBAL",1)~ THEN PLAYER1 _bGenocideDeArniseTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllDeArnise","GLOBAL",2) AddJournalEntry(@260,QUEST) AddexperienceParty(100000)~ /*We visited every farm and hamlet on De'Arnise land, but all of the peasants have passed away.*/
== NALIAJ IF ~IfValidForPartyDialog("Nalia")~ THEN @261 /*All my people... they are all dead. I failed them... I failed them all...*/
	= @262 /*My father would be so ashamed of me. *sobs**/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Reedle in Bridge District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_breedlegenocidetalk","GLOBAL",0)~ THEN REEDLE _bgenocidetalkreedle
	@264 /*Big folk are perishing! The world is ending! Buy some fish!*/
		DO ~SetGlobal("_breedlegenocidetalk","GLOBAL",1)~
EXIT

//Elven Storekeep in Bridge District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bbshop02genocidetalk","GLOBAL",0)~ THEN BSHOP02 _bgenocidetalkbshop02
	@265 /*The death around us is beyond comprehension. I have never seen anything like it.*/
		DO ~SetGlobal("_bbshop02genocidetalk","GLOBAL",1)~
EXIT

//Elven Sailor in Bridge District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bbsailor2genocidetalk","GLOBAL",0)~ THEN BSAILOR2 _bgenocidetalkbsailor2
	@266 /*Just my luck. With my human companions dead, we have too few hands to depart this bleak graveyard for a more lively port.*/
		DO ~SetGlobal("_bbsailor2genocidetalk","GLOBAL",1)~
EXIT

//Halfling Commoner in Bridge District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bbftown3genocidetalk","GLOBAL",0)~ THEN BFTOWN3 _bgenocidetalkbftown3
	@267 /*So much death... What can one little halfling do?*/
		DO ~SetGlobal("_bbftown3genocidetalk","GLOBAL",1)~
EXIT

//Halfling Commoner in Bridge District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bbbegg2genocidetalk","GLOBAL",0)~ THEN BBEGG2 _bgenocidetalkbbegg2
	@268 /*No more begging for me. I can take what my family needs right from the big folks' houses!*/
		DO ~SetGlobal("_bbbegg2genocidetalk","GLOBAL",1) EscapeArea()~
EXIT

//Jeremiah Jamtoes in Council of Six building
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bcivfrus1genocidetalk","GLOBAL",0)~ THEN CIVFRUS1 _bgenocidetalkcivfrus1
	@269 /*Would you look at that? I waited so long that the whole government died of boredom. I'm going home.*/
		DO ~SetGlobal("_bcivfrus1genocidetalk","GLOBAL",1) EscapeArea()~
EXIT

//Jeremiah Jamtoes in Council of Six building
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_btoadygenocidetalk","GLOBAL",0)~ THEN TOADY _bgenocidetalktoady
	@270 /*Lord Pehllus is dead. Who do I toady for now?*/
		DO ~SetGlobal("_btoadygenocidetalk","GLOBAL",1)~
EXIT

//Haletlatess Jillian of the Temple District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bpwauk2genocidetalk","GLOBAL",0)~ THEN PWAUK2 _bgenocidetalkpwauk2
	@271 /*We will need the blessings of Cyrrollalee now more than ever. With the tall folk gone, it will be up to us to rebuild.*/
		DO ~SetGlobal("_bpwauk2genocidetalk","GLOBAL",1)~
EXIT

//Halfling Woman of the Temple District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bpostul1genocidetalk","GLOBAL",0)~ THEN POSTUL1 _bgenocidetalkpostul1
	@272 /*How could the tall ones' gods allow this to happen? Are they dead as well?*/
		DO ~SetGlobal("_bpostul1genocidetalk","GLOBAL",1)~
EXIT

//Dwarf Ruffian in the Docks District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bdruff2genocidetalk","GLOBAL",0)~ THEN DRUFF2 _bgenocidetalkdruff2
	@274 /*Har har, look at all the weaklings dyin'.*/
		DO ~SetGlobal("_bdruff2genocidetalk","GLOBAL",1)~
EXIT

//Ikert (Shopkeeper in docks district)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bdshop01genocidetalk","GLOBAL",0)~ THEN DSHOP01 _bgenocidetalkdshop01
	@275 /*Greetings my <LADYLORD>! Have you seen the death surrounding us? We seem to be immune... how curious.*/
		DO ~SetGlobal("_bdshop01genocidetalk","GLOBAL",1)~
EXIT

//Mithrest Inn (Waukeen's Promenade)
CHAIN IF ~Global("_bClaraKillsAllMithrest","GLOBAL",1)~ THEN _bClaraj _bGenocideMithrestClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllMithrest","GLOBAL",2) AddJournalEntry(@276,QUEST) AddexperienceParty(20000)~ /*The Mithrest Inn is quiet.*/
== IF_FILE_EXISTS RH#ADRJ IF ~IfValidForPartyDialog("RH#ADRIAN")~ THEN @2760 /*How awful. I guess I won't be drinking here again.*/
== IF_FILE_EXISTS FHNATJ IF ~IfValidForPartyDialog("NATH")~ THEN @2761 /*No... You may call me naive, <CHARNAME>, but I hoped these people would be spared.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllMithrest","GLOBAL",1)~ THEN PLAYER1 _bGenocideMithrestCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllMithrest","GLOBAL",2) AddJournalEntry(@276,QUEST) AddexperienceParty(20000)~ /*The Mithrest Inn is quiet.*/
== IF_FILE_EXISTS RH#ADRJ IF ~IfValidForPartyDialog("RH#ADRIAN")~ THEN @2760 /*How awful. I guess I won't be drinking here again.*/
== IF_FILE_EXISTS FHNATJ IF ~IfValidForPartyDialog("NATH")~ THEN @2761 /*No... You may call me naive, <CHARNAME>, but I hoped these people would be spared.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Den of Seven Vales (Waukeen's Promonade)
CHAIN IF ~Global("_bClaraKillsAllSevenVales","GLOBAL",1)~ THEN _bClaraj _bGenocideSevenValesClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllSevenVales","GLOBAL",2) AddJournalEntry(@277,QUEST) AddexperienceParty(20000)~ /*The Den of the Seven Vales is human-free.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllSevenVales","GLOBAL",1)~ THEN PLAYER1 _bGenocideSevenValesCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllSevenVales","GLOBAL",2) AddJournalEntry(@277,QUEST) AddexperienceParty(20000)~ /*The Den of the Seven Vales is human-free.*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Mencar Pebblecrusher
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bsevpat01genocidetalk","GLOBAL",0)~ THEN SEVPAT01 _bgenocidetalksevpat01
	@278 /*I don't know what ye did to me friends, but ye've messed with the wrong dwarf! Now ye die!*/
		DO ~SetGlobal("_bsevpat01genocidetalk","GLOBAL",1) SetGlobal("RiatavinFight","GLOBAL",1) Enemy()~
EXIT

//Viconia final talk
CHAIN IF WEIGHT #-1 ~Global("_bViconiaGenocideFinalTalk","GLOBAL",1)~ THEN VICONIJ _bviconiagenocidetalkfinal1
	@279 /*Would you walk with me <CHARNAME>? I could use some company.*/
		DO ~SetGlobal("_bViconiaGenocideFinalTalk","GLOBAL",2)~
	= @280 /*The moon is so beautiful, is it not? And the stars stretch on forever...*/
	= @281 /*I was so afraid of the sky when I first came to the surface, but now...*/
	= @282 /*Now I could gaze at the moon forever.*/
	= @283 /*I did not, however, ask your company to share my lunar musings. I have a question for you.*/
	= @284 /*Why, <CHARNAME>? Why are you helping me to do this?*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @285 /*Yeah, <CHARNAME>, why? I had to agree so your crazy high priestess wouldn't murder me for breach-of-contract, but you could've just refused.*/
	= @286 /*So why didn't you? You could have prevented all of this!*/
== VICONIJ IF ~IfValidForPartyDialog("_bClara")~ THEN @287 /*Our silent uninvited eavesdropper has a point.*/
== VICONIJ @288 /*Well? I am curious as to your answer.*/
END
	++ @289 /*I am the <PRO_SONDAUGHTER> of the God of Murder. I am just getting started.*/ GOTO _bviconiagenocidetalkfinal2
	++ @290 /*I hate people and I enjoy watching them die.*/ GOTO _bviconiagenocidetalkfinal2
	+ ~Global("ViconiaRomanceActive","GLOBAL",2)~ + @291 /*I love you, Viconia. I would murder the whole world for you.*/ GOTO _bviconiagenocidetalkfinal3
	+ ~OR(2) !Global("ViconiaMatch","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",0)~ + @292 /*I love you, Viconia. I always have. I would murder the whole world just to see you smile.*/ GOTO _bviconiagenocidetalkfinal4
	+ ~Global("ViconiaMatch","GLOBAL",1) OR(2) Global("ViconiaRomanceActive","GLOBAL",3) Global("ViconiaRomanceActive","GLOBAL",1)~ + @293 /*I love you, Viconia. I would murder the whole world for you.*/ GOTO _bviconiagenocidetalkfinal5
	++ @294 /*Human beings are a disease sweeping across the land and we are the cure.*/ GOTO _bviconiagenocidetalkfinal6
	++ @295 /*You asked for my help. Helping people is what I do.*/ GOTO _bviconiagenocidetalkfinal7
	++ @310 /*I get bored easily. This has been very entertaining.*/ GOTO _bviconiagenocidetalkfinal8
	
CHAIN VICONIJ _bviconiagenocidetalkfinal2
	@296 /*Then I am lucky that I am your friend and not your enemy.*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @297 /*If you do decide to challenge an army or something equally crazy, would you warn me first? I'll want to sit that one out.*/
	= @298 /*It's been an interesting story so far, but I'd like to make it to the end.*/
== VICONIJ @299 /*We have eliminated the bulk of the rivvin in Amn, but I am sure that many more have so far eluded us.*/
	= @300 /*We should be thorough.*/
EXIT

CHAIN VICONIJ _bviconiagenocidetalkfinal3
	@301 /*I... I am touched my ssinssrigg. Others have tried to please me, but none have done so so thoroughly.*/
	= @302 /*And now I will give you your reward.*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @303 /*And this is where I walk away. You two psychos have fun.*/
== VICONIJ @304 /*Call a rest immediately! I shall have you now, no matter who might be watching.*/
	= @305 /*Let them look on in wonder and amazement, our world shall contain only each other.*/
		DO ~RestParty()~
EXIT

CHAIN VICONIJ _bviconiagenocidetalkfinal4
	@306 /*You... love me? I never realized... I never even gave you a chance.*/
		DO ~SetGlobal("LoveTalk","LOCALS",51) SetGlobal("ViconiaMatch","GLOBAL",1) SetGlobal("ViconiaRomanceActive","GLOBAL",2)~
	= @307 /*Yet you have pleased me more than anyone, male or female, ever has before.*/
	= @308 /*I accept, <CHARNAME>. I am yours and you are mine.*/
	= @302 /*And now I will give you your reward.*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @303 /*And this is where I walk away. You two psychos have fun.*/
== VICONIJ @304 /*Call a rest immediately! I shall have you now, no matter who might be watching.*/
	= @305 /*Let them look on in wonder and amazement, our world shall contain only each other.*/
		DO ~RestParty()~
EXIT

CHAIN VICONIJ _bviconiagenocidetalkfinal5
	@309 /*You... love me?*/
		DO ~SetGlobal("LoveTalk","LOCALS",51) SetGlobal("ViconiaMatch","GLOBAL",1) SetGlobal("ViconiaRomanceActive","GLOBAL",2)~
	= @301 /*I... I am touched my ssinssrigg. Others have tried to please me, but none have done so so thoroughly.*/
	= @302 /*And now I will give you your reward.*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @303 /*And this is where I walk away. You two psychos have fun.*/
== VICONIJ @304 /*Call a rest immediately! I shall have you now, no matter who might be watching.*/
	= @305 /*Let them look on in wonder and amazement, our world shall contain only each other.*/
		DO ~RestParty()~
EXIT
	
CHAIN VICONIJ _bviconiagenocidetalkfinal6
	@311 /*I could not agree more. We should not stop until we have rid the land of every last one.*/
== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @312 /*Except Clara. You meant to say: "...every last one, except Clara and her friends."*/
== VICONIJ IF ~IfValidForPartyDialog("_bClara")~ THEN @313 /*Yes, yes, we can leave you and your companions alive. Just do try to not have too many children.*/
== VICONIJ @314 /*Come, come, there are still many rats to flush out of their holes. I'm certain a hamlet or two must have escaped us.*/
EXIT

CHAIN VICONIJ _bviconiagenocidetalkfinal7
	@315 /*You did it merely because I asked? I am touched.*/
	= @316 /*You truly are a hero.*/
EXIT

CHAIN VICONIJ _bviconiagenocidetalkfinal8
	@317 /*Boredom is a terrible thing. And the more power one gains, the quicker it sets in.*/
	= @318 /*Perhaps that is why the gods are so cruel.*/
EXIT

//Halfling Man in Docks District
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bdhalf1genocidetalk","GLOBAL",0)~ THEN DHALF1 _bgenocidetalkdhalf1
	@319 /*With the big folks all dying, the docks are the safest they have ever been.*/
		DO ~SetGlobal("_bdhalf1genocidetalk","GLOBAL",1)~
EXIT

//Hawker in Waukeen's Promanade
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bhawker01genocidetalk","GLOBAL",0)~ THEN HAWKER01 _bgenocidetalkhawker01
	@320 /*Come one, come all! Even the end of the world does not close the Adventurer's Mart!*/
		DO ~SetGlobal("_bhawker01genocidetalk","GLOBAL",1)~
EXIT

//Brelm in Adventurer's Mart
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bbrelmgenocidetalk","GLOBAL",0)~ THEN BRELM _bgenocidetalkbrelm
	@321 /*This plague sweeping through the city... we adventurers should be findin' a cure we should.*/
		DO ~SetGlobal("_bbrelmgenocidetalk","GLOBAL",1)~
EXIT

//Heretic Temple
CHAIN IF ~Global("_bClaraKillsAllHeretic","GLOBAL",1)~ THEN _bClaraj _bGenocideHereticTalkClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllHeretic","GLOBAL",2) AddexperienceParty(100000)~
== RASAADJ IF ~IfValidForPartyDialog("RASAAD")~ THEN @322 /*The disease should not have reached this temple, but we should check nonetheless.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllHeretic","GLOBAL",1)~ THEN PLAYER1 _bGenocideHereticTalkCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllHeretic","GLOBAL",2) AddexperienceParty(100000)~ 
== RASAADJ IF ~IfValidForPartyDialog("RASAAD")~ THEN @322 /*The disease should not have reached this temple, but we should check nonetheless.*/
== PLAYER1 @111 /*Perhaps we should look around. See if there are any survivors.*/
EXIT

//Inside Heretic temple
CHAIN IF ~Global("_bClaraKillsAllHereticInside","GLOBAL",1)~ THEN _bClaraj _bGenocideHereticInsideClara
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bClaraKillsAllHereticInside","GLOBAL",2) AddJournalEntry(@323,QUEST) AddexperienceParty(20000)~ /*The Heretics are no more.*/
== RASAADJ IF ~IfValidForPartyDialog("RASAAD") GlobalLT("OHR_PLOT","GLOBAL",6)~ THEN @324 /*No! No! How will I find Alorgoth if everyone is dead?!*/
== RASAADJ IF ~IfValidForPartyDialog("RASAAD") GlobalGT("OHR_PLOT","GLOBAL",5)~ THEN @325 /*No! My brothers... How did the plague reach them?*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

CHAIN IF ~Global("_bCNKillsAllHereticInside","GLOBAL",1)~ THEN PLAYER1 _bGenocideHereticInsideCN
	@102 /**softly* Tlu a gre'as'anto...*/
		DO ~SetGlobal("_bCNKillsAllHereticInside","GLOBAL",2) AddJournalEntry(@323,QUEST) AddexperienceParty(20000)~ /*The Heretics are no more.*/
== RASAADJ IF ~IfValidForPartyDialog("RASAAD") GlobalLT("OHR_PLOT","GLOBAL",6)~ THEN @324 /*No! No! How will I find Alorgoth if everyone is dead?!*/
== RASAADJ IF ~IfValidForPartyDialog("RASAAD") GlobalGT("OHR_PLOT","GLOBAL",5)~ THEN @325 /*No! My brothers... How did the plague reach them?*/
== PLAYER1 @106 /*There's nothing we can do here. We should move on.*/
EXIT

//Out of party NPC talks
//Copper Coronet
//Korgan
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bkorgandeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN KORGANP _bkorgandeathtalk1
	@326 /*All th' long-limbs be dying off? Time to loot th' cellar then. Get me hands on th' good stuff.*/
		DO ~SetGlobal("_bkorgandeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bkorgandeathtalk","GLOBAL",0)~ THEN KORGANA _bkorgandeathtalk1
	@326 /*All th' long-limbs be dying off? Time to loot th' cellar then. Get me hands on th' good stuff.*/
		DO ~SetGlobal("_bkorgandeathtalk","GLOBAL",1)~
	EXIT

//Minsc
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bminscdeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN MINSCP _bminscdeathtalk1
	@327 /*No! These people should not die! Boo does not know what's happening.*/
		DO ~SetGlobal("_bminscdeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bminscdeathtalk2","GLOBAL",0)~ THEN MINSCA _bminscdeathtalk2
	@85 /*No! Boo's tiny heart breaks at the sight of such needless death!*/
		DO ~SetGlobal("_bminscdeathtalk2","GLOBAL",1)~
	EXIT

//Edwin
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bEdwindeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN EDWINP _bEdwindeathtalk1
	@328 /*Have you come to beg for my assistance with this plague? The great Edwin Odesseiron is too powerful to die from disease. (That must be why I am not affected.)*/
		DO ~SetGlobal("_bEdwindeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bEdwindeathtalk","GLOBAL",0)~ THEN EDWIN _bEdwindeathtalk1
	@328 /*Have you come to beg for my assistance with this plague? The great Edwin Odesseiron is too powerful to die from disease. (That must be why I am not affected.)*/
		DO ~SetGlobal("_bEdwindeathtalk","GLOBAL",1)~
	EXIT

//Nalia
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bNaliadeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN NALIAP _bNaliadeathtalk1
	@329 /*We have to help these people, <CHARNAME>. I've never seen a plague like this.*/
		DO ~SetGlobal("_bNaliadeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bNaliadeathtalk","GLOBAL",0)~ THEN NALIA _bNaliadeathtalk1
	@330 /*We have to help these people. I've never seen a plague like this.*/
		DO ~SetGlobal("_bNaliadeathtalk","GLOBAL",1)~
	EXIT

//Imoen
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bImoendeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN IMOEN2P _bImoendeathtalk1
	@331 /*I'm so glad to see you safe, <CHARNAME>. You haven't caught this illness, have you? I don't want to lose you after all that we've been through.*/
		DO ~SetGlobal("_bImoendeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bImoendeathtalk","GLOBAL",0)~ THEN IMOEN2 _bImoendeathtalk1
	@331 /*I'm so glad to see you safe, <CHARNAME>. You haven't caught this illness, have you? I don't want to lose you after all that we've been through.*/
		DO ~SetGlobal("_bImoendeathtalk","GLOBAL",1)~
	EXIT


//Keldorn
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bKeldorndeathtalk","GLOBAL",0) AreaCheck("AR0903") Global("KickedOut","LOCALS",1)~ THEN KELDORP _bKeldorndeathtalk1
	@332 /*How could this happen? How could the Order have fallen?*/
		DO ~SetGlobal("_bKeldorndeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bKeldorndeathtalk2","GLOBAL",0) !AreaCheck("AR0903") Global("KickedOut","LOCALS",1)~ THEN KELDORP _bKeldorndeathtalk2
	@333 /*All this death... How could this happen?*/
		DO ~SetGlobal("_bKeldorndeathtalk2","GLOBAL",1)~
	EXIT


//Rasaad (never talked, not in temple & in temple)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bRasaaddeathtalk","GLOBAL",0)~ THEN RASAAD _bRasaaddeathtalk1
	@334 /*What is happening? Has Selûne hid her face for good?*/
		DO ~SetGlobal("_bRasaaddeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bRasaaddeathtalk","GLOBAL",0) !AreaCheck("OH4101") Global("KickedOut","LOCALS",1)~ THEN RASAADP _bRasaaddeathtalk1
	@334 /*What is happening? Has Selûne hid her face for good?*/
		DO ~SetGlobal("_bRasaaddeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("OHR_TEMPLE_HOSTILE","GLOBAL",0) Global("OHR_PLOT","GLOBAL",6) AreaCheck("OH4101") Global("KickedOut","LOCALS",1)~ THEN RASAADP _bRasaaddeathtalk2
	@335 /*No! My brothers... How did this plague reach us? And why I am I unscathed?*/
	EXIT    //permanent change since he won't rejoin you anyway 


//Dorn
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bDorndeathtalk","GLOBAL",0) OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) OR(2) AreaCheck("AR0510") AreaCheck("AR0523") Global("KickedOut","LOCALS",1)~ THEN DORNP _bDorndeathtalk1
	@336 /*Why did these weaklings have to die? My bard will be displeased.*/
		DO ~SetGlobal("_bDorndeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bDorndeathtalk2","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN DORNP _bDorndeathtalk2
	@337 /*Hah! Weep and pray all you wish, fools, your gods aren't answering.*/
		DO ~SetGlobal("_bDorndeathtalk2","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bDorndeathtalk2","GLOBAL",0)~ THEN DORN _bDorndeathtalk2
	@337 /*Hah! Weep and pray all you wish, fools, your gods aren't answering.*/
		DO ~SetGlobal("_bDorndeathtalk2","GLOBAL",1)~
	EXIT

//HaerDalis
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bHDdeathtalk","GLOBAL",0) OR(2) AreaCheck("AR0510") AreaCheck("AR0523") Global("KickedOut","LOCALS",1)~ THEN HAERDAP _bHDdeathtalk1
	@338 /*What a loss of life and talent to silence this bright stage.*/
		DO ~SetGlobal("_bHDdeathtalk","GLOBAL",1)~
	== DORNJ IF ~IfValidForPartyDialog("DORN") Global("_bHDDORNRomance","GLOBAL",2)~ THEN @339 /*Do not weep, tiefling. These lives aren't worth your pain.*/
	== HAERDAP IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNRomance","GLOBAL",2)~ THEN @340 /*I do not cry for their deaths, my vulture. Death is the only ending. This sparrow mourns the art they would have made.*/
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bHDdeathtalk2","GLOBAL",0) !AreaCheck("AR0510") !AreaCheck("AR0523") Global("KickedOut","LOCALS",1)~ THEN HAERDAP _bHDdeathtalk2
	@341 /*See the strength of entropy, my raven? A great tidal wave of death that sweeps across the land. The world shall be a whole new place once it subsides.*/
		DO ~SetGlobal("_bHDdeathtalk2","GLOBAL",1)~
	EXIT

//Jaheira
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bJaheiradeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN JAHEIRAP _bJaheiradeathtalk1
	@342 /*This cannot be a natural illness, <CHARNAME>, not with how it spreads. I am pleased to see that you survive.*/
		DO ~SetGlobal("_bJaheiradeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bJaheiradeathtalk","GLOBAL",0)~ THEN JAHEIRA _bJaheiradeathtalk1
	@342 /*This cannot be a natural illness, <CHARNAME>, not with how it spreads. I am pleased to see that you survive.*/
		DO ~SetGlobal("_bJaheiradeathtalk","GLOBAL",1)~
	EXIT

//Cernd  (not in Druid Grove area, nobody lives there)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bCernddeathtalk","GLOBAL",0) !AreaCheck("AR1901") Global("KickedOut","LOCALS",1)~ THEN CERNDP _bCernddeathtalk1
	@343 /*Death from sickness may be natural, but this seems far too sudden. I find myself ill at ease.*/
		DO ~SetGlobal("_bCernddeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bCernddeathtalk","GLOBAL",0) !AreaCheck("AR1901")~ THEN CERND _bCernddeathtalk1
	@343 /*Death from sickness may be natural, but this seems far too sudden. I find myself ill at ease.*/
		DO ~SetGlobal("_bCernddeathtalk","GLOBAL",1)~
	EXIT

//Neera 
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bNeeradeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN NEERAP _bNeeradeathtalk1
	@344 /*This is terrible... All this death and magic can't do a thing...*/
		DO ~SetGlobal("_bNeeradeathtalk","GLOBAL",1)~
	EXIT


//Valygar (not in cabin)
CHAIN IF WEIGHT #-999 ~!AreaCheck("AR1101") Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bValygardeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN VALYGARP _bValygardeathtalk1
	@345 /*Have you heard about this plague, <CHARNAME>? Probably some wizard's spell gone wrong.*/
		DO ~SetGlobal("_bValygardeathtalk","GLOBAL",1)~
	EXIT

//Mazzy (not in Shadow Temple, so she has to be at home)
CHAIN IF WEIGHT #-999 ~!AreaCheck("AR1401") Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bMazzydeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN MAZZYP _bMazzydeathtalk1
	@346 /*It grieves my heart to see a shadow fall upon my homeland.*/
		DO ~SetGlobal("_bMazzydeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~!AreaCheck("AR1401") Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bMazzydeathtalk","GLOBAL",0)~ THEN MAZZY _bMazzydeathtalk1
	@346 /*It grieves my heart to see a shadow fall upon my homeland.*/
		DO ~SetGlobal("_bMazzydeathtalk","GLOBAL",1)~
	EXIT

//Aerie (in circus/not in circus)
CHAIN IF WEIGHT #-999 ~AreaCheck("AR0607") !Dead("Quayle") Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAeriedeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN AERIEP _bAeriedeathtalk1
	@347 /*This s-sickness is everywhere. It's t-terrible. But at least Q-Quayle is still alive.*/
		DO ~SetGlobal("_bAeriedeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~OR(2) !AreaCheck("AR0607") Dead("Quayle") Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAeriedeathtalk2","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN AERIEP _bAeriedeathtalk2
	@348 /*S-So much death! I-I don't know what to do!*/
		DO ~SetGlobal("_bAeriedeathtalk2","GLOBAL",1)~
	EXIT

//Anomen (Copper Coronet if never talked/didn't romance, Manor if did quests)
CHAIN IF WEIGHT #-999 ~AreaCheck("AR1001") IfValidForPartyDialog("_bClara") Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAnomendeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN ANOMENP _bAnomendeathtalk
	@349 /*Greetings, <CHARNAME>. I am glad to see you well. I don't know what caused this terrible sickness, but my family's holdings will survive.*/
== _bClaraj IF ~Global("_bAnomenClaraRomance","GLOBAL",2) IfValidForPartyDialog("_bClara")~ THEN @350 /*That is wonderful to hear, my darling. I know that you were worried.*/
== ANOMENP IF ~Global("_bAnomenClaraRomance","GLOBAL",2) IfValidForPartyDialog("_bClara")~ THEN @351 /*It is due to your diligence, my love. I would never have thought to give Potions of Protection from Plague to our captains just in case.*/
== _bClaraj IF ~Global("_bAnomenClaraRomance","GLOBAL",2) IfValidForPartyDialog("_bClara")~ THEN @352 /*I simply wanted to protect what you have worked so hard for. However, if we have some wealth to spare, perhaps we should try to help those in need.*/
== ANOMENP IF ~Global("_bAnomenClaraRomance","GLOBAL",2) IfValidForPartyDialog("_bClara")~ THEN @353 /*We shall help all those we can. Let nobles of lesser houses hide away in terror.*/
		DO ~SetGlobal("_bAnomendeathtalk","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-999 ~OR(2) !AreaCheck("AR1001") !IfValidForPartyDialog("_bClara") Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAnomendeathtalk1","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN ANOMENP _bAnomendeathtalk1
@354 /*By Helm! This plague is a tragedy beyond measure.*/
		DO ~SetGlobal("_bAnomendeathtalk1","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAnomendeathtalk2","GLOBAL",0)~ THEN ANOMEN _bAnomendeathtalk2
@86 /*Have the gods all turned against us? How could this be happening?*/
		DO ~SetGlobal("_bAnomendeathtalk2","GLOBAL",1)~
	EXIT


//Jan 
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bJandeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN JANP _bJandeathtalk1
@355 /*The big folk are dying left and right, but all us gnomes are fine, healthier than ever. We're made of sturdy stuff, we are.*/
= @356 /*In fact, this might be the perfect opportunity for a new round of expansion... Jansen-Brand Self-Burying-Coffins... Jansen-Brand Self-Digging-Graves... there's a fortune to be made.*/
		DO ~SetGlobal("_bJandeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bJandeathtalk2","GLOBAL",0)~ THEN JAN _bJandeathtalk2
	@357 /*By Uncle Spanky's Thumb! Is this a disease? Is all of Amn infected?*/
		DO ~SetGlobal("_bJandeathtalk2","GLOBAL",1)~
	EXIT

//Mod NPCs start here
//Alora in BG2 mod
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAloradeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN IF_FILE_EXISTS CMALORAP _bAloradeathtalk1
	@358 /*<CHARNAME>! You're still alive! It's been so boring here. Picking pockets is no fun when everyone's dead.*/
		DO ~SetGlobal("_bAloradeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAloradeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS CMALORA _bAloradeathtalk1
	@358 /*<CHARNAME>! You're still alive! It's been so boring here. Picking pockets is no fun when everyone's dead.*/
		DO ~SetGlobal("_bAloradeathtalk","GLOBAL",1)~
EXIT

//Smiling Imp's Alora mod
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAloradeathtalk","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN IF_FILE_EXISTS 7XALORAP _bAloraImpdeathtalk1
	@358 /*<CHARNAME>! You're still alive! It's been so boring here. Picking pockets is no fun when everyone's dead.*/
		DO ~SetGlobal("_bAloradeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAloradeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS 7XALORA _bAloraImpdeathtalk1
	@358 /*<CHARNAME>! You're still alive! It's been so boring here. Picking pockets is no fun when everyone's dead.*/
		DO ~SetGlobal("_bAloradeathtalk","GLOBAL",1)~
EXIT

//Coran
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bCorandeathtalk","GLOBAL",0) Global("O#CoranKickedOut","GLOBAL",1)~ THEN IF_FILE_EXISTS O#CORANP _bCorandeathtalk1
	@359 /*I heard rumors of a plague and now the humans are dropping dead like flies. Do you know anything about this, <CHARNAME>? Trouble always seems to have you at its heart.*/
		DO ~SetGlobal("_bCorandeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bCorandeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS O#CORAN _bCorandeathtalk1
	@359 /*I heard rumors of a plague and now the humans are dropping dead like flies. Do you know anything about this, <CHARNAME>? Trouble always seems to have you at its heart.*/
		DO ~SetGlobal("_bCorandeathtalk","GLOBAL",1)~
	EXIT
	
//Smiling Imp's Coran
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bCorandeathtalk","GLOBAL",0) Global("CoranJoined","LOCALS",0)~ THEN IF_FILE_EXISTS 7XCoranP _bCoranImpdeathtalk1
	@359 /*I heard rumors of a plague and now the humans are dropping dead like flies. Do you know anything about this, <CHARNAME>? Trouble always seems to have you at its heart.*/
		DO ~SetGlobal("_bCorandeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bCorandeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS 7XCoran _bCoranImpdeathtalk1
	@359 /*I heard rumors of a plague and now the humans are dropping dead like flies. Do you know anything about this, <CHARNAME>? Trouble always seems to have you at its heart.*/
		DO ~SetGlobal("_bCorandeathtalk","GLOBAL",1)~
EXIT	
	
	

//Ajantis
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) AreaCheck("AR0903") Global("_bAjantisdeathtalk","GLOBAL",0) Global("C#AjantisKickedOut","GLOBAL",1)~ THEN IF_FILE_EXISTS C#AJANP _bAjantisdeathtalk1
	@360 /*The Order of the Radiant Heart is finished... I cannot believe it.*/
		DO ~SetGlobal("_bAjantisdeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) !AreaCheck("AR0903") Global("_bAjantisdeathtalk2","GLOBAL",0) Global("C#AjantisKickedOut","GLOBAL",1)~ THEN IF_FILE_EXISTS C#AJANP _bAjantisdeathtalk2
	@361 /*A dark shadow has fallen upon the land... We must find a way to stop this plague, <CHARNAME>. It is our duty.*/
		DO ~SetGlobal("_bAjantisdeathtalk2","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) AreaCheck("AR0903") Global("_bAjantisdeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS C#AJAN _bAjantisdeathtalk1
	@360 /*The Order of the Radiant Heart is finished... I cannot believe it.*/
		DO ~SetGlobal("_bAjantisdeathtalk","GLOBAL",1)~
EXIT

//Smiling Imp's Ajantis
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) AreaCheck("AR0903") Global("_bAjantisdeathtalk","GLOBAL",0) Global("AJANTISRejected","LOCALS",0)!InParty("7XAJAN")~ THEN IF_FILE_EXISTS 7XAJANP _bAjantisImpdeathtalk1
	@360 /*The Order of the Radiant Heart is finished... I cannot believe it.*/
		DO ~SetGlobal("_bAjantisdeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) !AreaCheck("AR0903") Global("_bAjantisdeathtalk2","GLOBAL",0) Global("AJANTISRejected","LOCALS",0)!InParty("7XAJAN")~ THEN IF_FILE_EXISTS 7XAJANP _bAjantisImpdeathtalk2
	@361 /*A dark shadow has fallen upon the land... We must find a way to stop this plague, <CHARNAME>. It is our duty.*/
		DO ~SetGlobal("_bAjantisdeathtalk2","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) AreaCheck("AR0903") Global("_bAjantisdeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS 7XAJAN _bAjantisdeathtalk1
	@360 /*The Order of the Radiant Heart is finished... I cannot believe it.*/
		DO ~SetGlobal("_bAjantisdeathtalk","GLOBAL",1)~
EXIT



//Kulyok's Tiax
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bTiaxdeathtalk","GLOBAL",0) Global("O#TiaxKickedOut","GLOBAL",1)~ THEN IF_FILE_EXISTS O#TIAXP _bTiaxdeathtalk1
	@362 /*Kneel before Tiax and beg his mercy, for Tiax rules a kingdom of the dead!*/
		DO ~SetGlobal("_bTiaxdeathtalk","GLOBAL",1)~
EXIT

//Smiling Imps's Tiax
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bTiaxdeathtalk","GLOBAL",0) Global("TIAXInParty","LOCALS",1)~ THEN IF_FILE_EXISTS 7XTIAXP _bTiaxImpdeathtalk1
	@362 /*Kneel before Tiax and beg his mercy, for Tiax rules a kingdom of the dead!*/
		DO ~SetGlobal("_bTiaxdeathtalk","GLOBAL",1)~
EXIT

//Adrian
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) AreaCheck("AR0704") Global("_bAdriandeathtalk","GLOBAL",0) Global("RH#AdrianJoined","GLOBAL",0)~ THEN IF_FILE_EXISTS RH#ADRP _bAdriandeathtalk
	@363 /*I thought I was safe here, but everyone suddenly started screaming and falling down dead.*/
		DO ~SetGlobal("_bAdriandeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) !AreaCheck("AR0704") Global("_bAdriandeathtalk1","GLOBAL",0) Global("RH#AdrianJoined","GLOBAL",0)~ THEN IF_FILE_EXISTS RH#ADRP _bAdriandeathtalk1
	@364 /*Is nowhere safe? I thought Irenicus was bad, but this... this is horrible.*/
		DO ~SetGlobal("_bAdriandeathtalk1","GLOBAL",1)~
	EXIT

//Angelo
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAngelodeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS ADANGEL _bAngelodeathtalk1
	@365 /*The graveyard has been busy lately. Perhaps I should be worried.*/
		DO ~SetGlobal("_bAngelodeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAngelodeathtalk1","GLOBAL",0) Global("ADAngelKickedOut","GLOBAL",1)~ THEN IF_FILE_EXISTS ADANGELP _bAngelodeathtalk2
	@366 /*If you don't need me, chief, I might become a gravedigger. It'd be a step down from the Flaming Fist, but right now the money's good.*/
		DO ~SetGlobal("_bAngelodeathtalk1","GLOBAL",1)~
	EXIT

//Anishai
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAnishaideathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS ANISHAI _bAnishaideathtalk1
	@367 /*Hello, pretty one. I'm pleased to see you're still alive.*/
		DO ~SetGlobal("_bAnishaideathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAnishaideathtalk","GLOBAL",0) Global("AnishaiJoined","GLOBAL",0)~ THEN IF_FILE_EXISTS ANISHAIP _bAnishaideathtalk1
	@367 /*Hello, pretty one. I'm pleased to see you're still alive.*/
		DO ~SetGlobal("_bAnishaideathtalk","GLOBAL",1)~
	EXIT

//Aran
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bArandeathtalk2","GLOBAL",0) Global("KickedOut","LOCALS",1)~ THEN IF_FILE_EXISTS C-ARANP _bArandeathtalk2
	@368 /*Everyone jus' started dying... I need t' get outta here!*/
		DO ~SetGlobal("_bArandeathtalk2","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bArandeathtalk2","GLOBAL",0)~ THEN IF_FILE_EXISTS C-ARAN _bArandeathtalk2
	@368 /*Everyone jus' started dying... I need t' get outta here!*/
		DO ~SetGlobal("_bArandeathtalk2","GLOBAL",1)~
	EXIT

//Arath
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bArathdeathtalk2","GLOBAL",0) Global("LK#ArathJoined","LOCALS",0)~ THEN IF_FILE_EXISTS LK#ARATP _bArathdeathtalk2
	@369 /*Perhaps this is a sign that I should return to my grove after all.*/
		DO ~SetGlobal("_bArathdeathtalk2","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bArathdeathtalk2","GLOBAL",0)~ THEN IF_FILE_EXISTS LK#ARATH _bArathdeathtalk2
	@369 /*Perhaps this is a sign that I should return to my grove after all.*/
		DO ~SetGlobal("_bArathdeathtalk2","GLOBAL",1)~
	EXIT

//Branwen
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bBranwendeathtalk","GLOBAL",0) Global("O#BranKickedOut","GLOBAL",1)~ THEN IF_FILE_EXISTS O#BRANP _bBranwendeathtalk
	@370 /*By Tempus, it is good to see you. We all need friends in these dark times.*/
		DO ~SetGlobal("_bBranwendeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bBranwendeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS O#BRAN _bBranwendeathtalk
	@370 /*By Tempus, it is good to see you. We all need friends in these dark times.*/
		DO ~SetGlobal("_bBranwendeathtalk","GLOBAL",1)~
	EXIT
	
//Smiling Imp's Branwen
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bBranwendeathtalk","GLOBAL",0) Global("BranInParty","LOCALS",3)~ THEN IF_FILE_EXISTS 7XBRANP _bBranwendeathtalk
	@370 /*By Tempus, it is good to see you. We all need friends in these dark times.*/
		DO ~SetGlobal("_bBranwendeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bBranwendeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS 7XBRAN _bBranwendeathtalk
	@370 /*By Tempus, it is good to see you. We all need friends in these dark times.*/
		DO ~SetGlobal("_bBranwendeathtalk","GLOBAL",1)~
	EXIT	
	
	

//Faren
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bFarendeathtalk","GLOBAL",0) Global("FHFarenKicked","GLOBAL",1)~ THEN IF_FILE_EXISTS FHFRNP _bFarendeathtalk
	@371 /*This plague has spread through Amn like wildfire. I'm starting to think it's time to leave.*/
		DO ~SetGlobal("_bFarendeathtalk","GLOBAL",1)~
	EXIT

//Gavin
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bGavindeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS ~B!GAV~ _bGavindeathtalk
	@372 /*I cannot speak now, <CHARNAME>. The priests are overrun and I must do what I can to help.*/
		DO ~SetGlobal("_bGavindeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bGavinDeadLanie","GLOBAL",0) Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bGavindeathtalk2","GLOBAL",0) Global("B!GavJoin","GLOBAL",0)~ THEN IF_FILE_EXISTS ~B!GAVP~ _bGavindeathtalk
	@373 /*There are so many dead and dying. Even Lathander's blessing cannot save them all.*/
		DO ~SetGlobal("_bGavindeathtalk2","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bGavinDeadLanie","GLOBAL",1) Global("B!GavJoin","GLOBAL",0)~ THEN IF_FILE_EXISTS ~B!GAVP~ _bGavindeathtalk2
	@374 /*My daughter... My daughter is DEAD, <CHARNAME>. Why didn't Lathander take my life as well?*/
	EXIT   //overwrites forever. He ain't recovering any time soon.

//Andrei & Sebastian 
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bLuxleydeathtalk2","GLOBAL",0) Global("FHLJoined","GLOBAL",0)~ THEN IF_FILE_EXISTS FHLANDP _bLuxleydeathtalk
	@375 /*What's going on? They're dying... But I'm not done shopping yet!*/
	== IF_FILE_EXISTS FHLSEBP IF ~Detect("FHLAND")~ THEN @376 /*Andrei! This is hardly the time!*/
		DO ~SetGlobal("_bLuxleydeathtalk2","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bLuxleydeathtalk1","GLOBAL",0)~ THEN IF_FILE_EXISTS FHLAND _bLuxleydeathtalk1
	@377 /*We should leave Athkatla, Seb. I don't want you to get sick.*/
	== IF_FILE_EXISTS FHLSEB IF ~Detect("FHLAND")~ THEN @378 /*You may be right, Andrei. I don't want to lose you either.*/
		DO ~SetGlobal("_bLuxleydeathtalk1","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bLuxleydeathtalk3","GLOBAL",0) Global("FHLJoined","GLOBAL",0)~ THEN IF_FILE_EXISTS FHLSEBP _bLuxleydeathtalk3
	@379 /*Is this plague infecting humans? Why haven't we both fallen ill?*/
	== IF_FILE_EXISTS FHLANDP IF ~Detect("FHLSEB")~ THEN @380 /*Don't worry, Seb... We're Luxleys. No disease will take us down.*/
		DO ~SetGlobal("_bLuxleydeathtalk3","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bLuxleydeathtalk3","GLOBAL",0)~ THEN IF_FILE_EXISTS FHLSEB _bLuxleydeathtalk3
	@379 /*Is this plague infecting humans? Why haven't we both fallen ill?*/
	== IF_FILE_EXISTS FHLAND IF ~Detect("FHLSEB")~ THEN @380 /*Don't worry, Seb... We're Luxleys. No disease will take us down.*/
		DO ~SetGlobal("_bLuxleydeathtalk3","GLOBAL",1)~
	EXIT

//Nathaniel
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bNathdeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS FHNAT _bNathdeathtalk
	@381 /*<CHARNAME>! You came back! I'm pleased to see this plague didn't kill you too.*/
		DO ~SetGlobal("_bNathdeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bNathdeathtalk","GLOBAL",0) Global("NathKicked","LOCALS",1)~ THEN IF_FILE_EXISTS FHNATP _bNathdeathtalk
	@381 /*<CHARNAME>! You came back! I'm pleased to see this plague didn't kill you too.*/
		DO ~SetGlobal("_bNathdeathtalk","GLOBAL",1)~
	EXIT

//Ninde
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bNindedeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS LK#NIND _bNindedeathtalk
	@382 /*Hello, my little god-spawn. Did you miss me?*/
	= @383 /*It has been such a dull and dreary wait, though watching these people die has offered some small amusement. I didn't kill them, if you were wondering.*/
		DO ~SetGlobal("_bNindedeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bNindedeathtalk","GLOBAL",0) Global("LK#NindeJoined","LOCALS",0)~ THEN IF_FILE_EXISTS LK#NINDP _bNindedeathtalk
	@382 /*Hello, my little god-spawn. Did you miss me?*/
	= @383 /*It has been such a dull and dreary wait, though watching these people die has offered some small amusement. I didn't kill them, if you were wondering.*/
		DO ~SetGlobal("_bNindedeathtalk","GLOBAL",1)~
	EXIT

//Sirene
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bSirenedeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS C0sire2 _bSirenedeathtalk
	@384 /*Ilmater, One Who Endures... Help me relieve this suffering.*/
		DO ~SetGlobal("_bSirenedeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bSirenedeathtalk","GLOBAL",0) Global("C0SireneKickedOut","LOCALS",1) Global("C0SireneKickedOut","LOCALS",1)~ THEN IF_FILE_EXISTS C0sire2p _bSirenedeathtalk
	@384 /*Ilmater, One Who Endures... Help me relieve this suffering.*/
		DO ~SetGlobal("_bSirenedeathtalk","GLOBAL",1)~
	EXIT

//Skie
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bSkiedeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS 1XSKIE _bSkiedeathtalk
	@385 /*<CHARNAME>! Hi! I think... I think I might be in trouble. People are dying everywhere.*/
		DO ~SetGlobal("_bSkiedeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bSkiedeathtalk","GLOBAL",0)  Global("SkieInParty","LOCALS",0)~ THEN IF_FILE_EXISTS 1XSKIEP _bSkiedeathtalk
	@385 /*<CHARNAME>! Hi! I think... I think I might be in trouble. People are dying everywhere.*/
		DO ~SetGlobal("_bSkiedeathtalk","GLOBAL",1)~
EXIT

//Smiling Imp's Skie
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bSkiedeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS 7XSki _bSkieImpdeathtalk
	@385 /*<CHARNAME>! Hi! I think... I think I might be in trouble. People are dying everywhere.*/
		DO ~SetGlobal("_bSkiedeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bSkiedeathtalk","GLOBAL",0)  Global("SkieInParty","GLOBAL",0)!InParty("7XSKI")~ THEN IF_FILE_EXISTS 7XSkiP _bSkieImpdeathtalk
	@385 /*<CHARNAME>! Hi! I think... I think I might be in trouble. People are dying everywhere.*/
		DO ~SetGlobal("_bSkiedeathtalk","GLOBAL",1)~
EXIT


//Tyris
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bTyrisdeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS g#TYRIS _bTyrisdeathtalk
	@386 /*I hope you reconsider soon, <CHARNAME>. I would like to leave this place of death.*/
		DO ~SetGlobal("_bTyrisdeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bTyrisdeathtalk","GLOBAL",0) Global("G#TF.KickedOut","LOCALS",1)~ THEN IF_FILE_EXISTS g#TYRISP _bTyrisdeathtalk
	@386 /*I hope you reconsider soon, <CHARNAME>. I would like to leave this place of death.*/
		DO ~SetGlobal("_bTyrisdeathtalk","GLOBAL",1)~
	EXIT

//Xan
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bXandeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS O#XAN _bXandeathtalk
	@387 /*Destruction is in the air. Do you feel it? We're all doomed.*/
		DO ~SetGlobal("_bXandeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bXandeathtalk","GLOBAL",0) Global("O#XanKickedOut","GLOBAL",1)~ THEN IF_FILE_EXISTS O#XANP _bXandeathtalk
	@387 /*Destruction is in the air. Do you feel it? We're all doomed.*/
		DO ~SetGlobal("_bXandeathtalk","GLOBAL",1)~
	EXIT

//Lava's Yeslick
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bYeslickdeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS LK#YESL _bYeslickdeathtalk
	@388 /*I be glad to see ya, <PRO_LADLASS>. Even all me skill cannae be keepin' folks alive.*/ 
		DO ~SetGlobal("_bYeslickdeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bYeslickdeathtalk","GLOBAL",0) Global("LK#YeslickJoined","LOCALS",0)~ THEN IF_FILE_EXISTS LK#YESP _bYeslickdeathtalk
	@388 /*I be glad to see ya, <PRO_LADLASS>. Even all me skill cannae be keepin' folks alive.*/ 
		DO ~SetGlobal("_bYeslickdeathtalk","GLOBAL",1)~
	EXIT
	
//Smiling Imp's Yeslick
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bYeslickdeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS 7XYES _bYeslickImpdeathtalk
	@388 /*I be glad to see ya, <PRO_LADLASS>. Even all me skill cannae be keepin' folks alive.*/ 
		DO ~SetGlobal("_bYeslickdeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bYeslickdeathtalk","GLOBAL",0) Global("YeslickJoined","LOCALS",0)~ THEN IF_FILE_EXISTS 7XYESP _bYeslickImpdeathtalk
	@388 /*I be glad to see ya, <PRO_LADLASS>. Even all me skill cannae be keepin' folks alive.*/ 
		DO ~SetGlobal("_bYeslickdeathtalk","GLOBAL",1)~
	EXIT	
	

//Isra (always goes to temple of Lathander on leaving)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bIsradeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS RH#ISR _bIsradeathtalk
	@417 /*The Firehair protect us! This plague seems to have no end.*/ 
		DO ~SetGlobal("_bIsradeathtalk","GLOBAL",1)~
	EXIT

CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bIsradeathtalk","GLOBAL",0) Global("rh#IsraJoined","GLOBAL",0)~ THEN IF_FILE_EXISTS RH#ISRP _bIsradeathtalk
	@418 /*By the glory of Sune! How could the temple fall?*/ 
		DO ~SetGlobal("_bIsradeathtalk","GLOBAL",1)~
	EXIT


//Survivor Lines   (mod & otherwise)
//Raoul - mod
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bRaouldeathtalk","GLOBAL",0)~ THEN IF_FILE_EXISTS ~A!RAOUL~ _bRaouldeathtalk
	@389 /*I don't know why I'm still alive, but this will be great for business.*/  
		DO ~SetGlobal("_bRaouldeathtalk","GLOBAL",1)~
== _bClaraj IF ~IfValidForPartyDialog("_bClara")~ THEN @390 /**whispers* I didn't want Rose to be alone. Besides, he sells cool things.*/
EXIT

//2nd Cowled Wizard - mod added
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bCW2Talk","GLOBAL",0)~ THEN IF_FILE_EXISTS MAGE2 _bCW2deathtalk
	@391 /*Stay away from me! Don't touch me! I'm a Cowled Wizard! No disease will kill me!*/
	= @392 /*The others always laughed when I purified my food and water and cleaned my clothes with magic, but WHO'S LAUGHING NOW?*/
	DO ~SetGlobal("_bCW2Talk","GLOBAL",1)~
== VICONIJ IF ~IfValidForPartyDialog("Viconia")~ THEN @393 /*A pity. This one's paranoia might actually keep him alive.*/
EXIT 

//Alexia (Umar Hills)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bAlexiaTalk","GLOBAL",0)~ THEN IF_FILE_EXISTS UCMGCL01 _bAlexiaTalk
	@394 /*The humans in Imnesvale have all died. This is a tragedy.*/
		DO ~SetGlobal("_bAlexiaTalk","GLOBAL",1)~
EXIT 

//Indigo (Umar Hills) - mod
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bIndigoTalk","GLOBAL",0)~ THEN IF_FILE_EXISTS LMINDI _bIndigoTalk
	@395 /*Darkness has reached the Umar Hills, yet I still remain. If that is a blessing or a curse, I cannot say.*/
		DO ~SetGlobal("_bIndigoTalk","GLOBAL",1)~
EXIT 

//Halmar (slum) - mod
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bHalmarTalk","GLOBAL",0)~ THEN IF_FILE_EXISTS FHFHAL _bHalmarTalk
	@396 /*Don't bother me. I'm busy. The slums just got a new boss.*/
		DO ~SetGlobal("_bHalmarTalk","GLOBAL",1)~
EXIT 

//Heartwarden of Sune (WP) - mod
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1)~ THEN IF_FILE_EXISTS ISNFXPS _bSuneTalk
	@397 /*Sune's blessing be upon you, adventurer. Even a plague such as this cannot snuff out love and beauty.*/
EXIT  //permanent change since priest inside dies

//Dirty Boy (Innershade)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bDBTalk","GLOBAL",0)~ THEN IF_FILE_EXISTS 9XSTORYT _bDBTalk
	@398 /*Innershade is dying. Who will hear my stories now?*/
		DO ~SetGlobal("_bDBTalk","GLOBAL",1)~
EXIT 

//Food Merchant (Innershade)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bFMTalk","GLOBAL",0)~ THEN IF_FILE_EXISTS 9XFOOD _bFMTalk
	@399 /*People may be getting sick, but my food is safe. I guarantee it.*/
		DO ~SetGlobal("_bFMTalk","GLOBAL",1)~
EXIT 

//Aimi (Trademeet) - mod
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) !Global("RE_AimiVisit","GLOBAL",3)~ THEN IF_FILE_EXISTS REAIMI _bAimiTalk
	@400 /*Well... I suppose I can take your order now that Vyatri's gone...*/
EXIT //permanent change

//Kram (WP) - mod
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1)~ THEN IF_FILE_EXISTS A#KRAM2 _bKramTalk
	@401 /*Galoomp is dead... I can't believe it.*/
	= @402 /*But I... I will continue this shop in my friend's memory.*/
EXIT  //permanent change

//Joster – thief guild
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bJosterTalk","GLOBAL",0)~ THEN SHTH05 _bJosterTalk
	@403 /*People may be dying, but you are still responsible for your guild quota. Do not cross the Shadow Thieves.*/
		DO ~SetGlobal("_bJosterTalk","GLOBAL",1)~
EXIT 

//Iltheia – bard stronghold
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1)~ THEN BDACT04 _bTheaterTalk
	@404 /*Even the best actress cannot perform a play alone. It seems it falls to me to create another troupe... with myself as lead, of course.*/
EXIT  //permanent

//Samuel Thunderburp
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bSTTalk","GLOBAL",0)~ THEN FFBART _bSTTalk
	@405 /*Hello, my friends... My clientele be dying but the Five Flagons will stay open as long as possible. People will need a cheery smile and a strong beverage more than ever.*/
		DO ~SetGlobal("_bSTTalk","GLOBAL",1)~
== FFBART IF ~Global("Playhouse","GLOBAL",1)~ THEN @406 /*You may need to find new actors for your playhouse, but you will be able to rebuild in time.*/
EXIT 

//Elence Fielding (Umar Hills)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bElenceTalk","GLOBAL",0)~ THEN UHMER01 _bElenceTalk
	@407 /*Good to see you again, <SIRMAAM>. So many of my customers are no longer with us.*/
		DO ~SetGlobal("_bElenceTalk","GLOBAL",1)~
EXIT 

//Loren – druid boy
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("DruidQuest2","GLOBAL",2)~ THEN DRSHLO01 _bDruidTalk
	@408 /*Hello, <PRO_SIRMAAM>. Death has touched this grove, but I remain. Thank you for saving me.*/
COPY_TRANS DRSHLO01 8
//permanent

//Madulf (Umar Hills)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bMadulfTalk","GLOBAL",0)~ THEN UHOGRE01 _bMadulfTalk
	@409 /*Madulf pleased to see you, <PRO_RACE>. Humans dying but Madulf and fellows stay to protect village. Not all dead yet.*/
		DO ~SetGlobal("_bMadulfTalk","GLOBAL",1)~
EXIT 

//Captain Jeremy  (mod)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1) Global("_bJeremyTalk","GLOBAL",0)~ THEN IF_FILE_EXISTS O#JEREMY _bJeremyTalk
	@410 /*You're the Bhaalspawn, then? This be a bad business in Athkatla. We should sail while we still can.*/
	DO ~SetGlobal("_bJeremyTalk","GLOBAL",1)~
END
	++ @411 /*Yes, I'm the Bhaalspawn.*/ GOTO 1
	++ @412 /*Aye, aye, captain.*/ GOTO 1
	++ @413 /*How are you still alive?*/ + _bJeremyDeath

CHAIN IF_FILE_EXISTS O#JEREMY _bJeremyDeath
@414 /*This old sea dog has his tricks and I don't share them. (Though perhaps that hag was right about her blessing after all.)*/
= @415 /*Are you ready to go?*/
COPY_TRANS O#JEREMY 1

//Kebodi - Mod (Mithrest Inn)
CHAIN IF WEIGHT #-999 ~Global("_bAllRivvinMustDie","GLOBAL",1)~ THEN IF_FILE_EXISTS G3KEBODI _bKebodiTalk
	@416 /*Leave me be, guv'ner. The Sir is dead and I dunno what to do now.*/
EXIT  //permanent change
