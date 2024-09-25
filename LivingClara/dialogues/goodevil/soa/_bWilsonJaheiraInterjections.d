
//Interjecting into Meroni's dialogue when she comes to get Jaheira after you've finished the Harper Hold.
INTERJECT_COPY_TRANS2 JAHEIRAJ 100 _bJaheiraWilsonInterject1 /*I... Yes, I see. If you would give me a moment, I will do what needs be done.*/
== WILSONJ IF ~IfValidForPartyDialogue("Wilson")~ THEN @0 /*Roar!*/
== JAHEIRAJ IF ~IfValidForPartyDialogue("Wilson")~ THEN @1 /*There is no need for that, Wilson. She is an ally and my presence is needed.*/
END
//Next dialogue is JAMERONI State 3: Make your farewells quick. You will not be gone long.

//Interjecting into Jaheira's dialogue when she returns if she's not romancing CN.
INTERJECT_COPY_TRANS2 JAHEIRAP 9 _bJaheiraWilsonInterject2 /*Hail there! I said I would return, and I have. Sorry to have kept you waiting, but there were things I had to take care of. Now that we have met once again, there is something I must ask of you. We must go... we must go to the Harper Hold in Athkatla.*/
== WILSONJ IF ~IfValidForPartyDialogue("Wilson")~ THEN @2 /*Roar!*/
== JAHEIRAP IF ~IfValidForPartyDialogue("Wilson")~ THEN @3 /*Haha, yes, I am happy to see you too.*/
	= @4 /*<CHARNAME>, I bring a request from the Harpers.*/
END
//Next line is JAHEIRAP State 10: I have been asked to bring you, and we must go soon. They will allow us to pass the wards of the door, but I must be with you, and I must be conscious.

//Interjecting into Jaheira's conversation with Galvarey in the Harper Hold.
INTERJECT_COPY_TRANS2 JAGALVAR 43 _bJaheiraWilsonInterject3 /*You have no voice here and little choice in the matter. Certainly you can fight, but there are six Harpers to contend with. The odds are quite clearly...*/
== WILSONJ IF ~IfValidForPartyDialogue("Wilson") OR(2) Global("_bWilsonJaheira","GLOBAL",1) Global("_bWilsonJaheira","GLOBAL",2)~ THEN @5 /*Snuffle? Grr...*/
== JAGALVAR IF ~IfValidForPartyDialogue("Wilson") OR(2) Global("_bWilsonJaheira","GLOBAL",1) Global("_bWilsonJaheira","GLOBAL",2)~ THEN @6 /*Not to mention Jaheira's pet bear. You have no hope of victory.*/
END
//Next line is JAHEIRAJ State 139: Nay, Galvarey, there is but you and your four lackeys. I will have no part in this!

//Interjecting into Jaheira's Conversation with Baron Ployer after she gets poisoned.
INTERJECT_COPY_TRANS2 JAHEIRAJ 32 _bJaheiraWilsonInterject4 /*What have you just done, Ployer?! Speak!*/
== WILSONJ IF ~IfValidForPartyDialogue("Wilson")~ THEN @7 /*ROAR!*/
END
//Next line is BARONP State 13: It is my gift to you. You will be slowly destroyed, just as my family was. It is my curse, my nasty, nasty curse. A little something I had made just for you.

//Jaheira-Wilson talk if Jaheira is poisoned by Baron Ployer.
CHAIN IF WEIGHT #-1 ~Global("_bBaronPloyerWilsonTalk","GLOBAL",2)~ THEN WILSONJ _bJaheiraWilsonPoisonTalk1
@8 /*Whine, sniff sniff.*/
	DO ~SetGlobal("_bBaronPloyerWilsonTalk","GLOBAL",3)~
== JAHEIRAJ @9 /**cough* Do not worry yourself. I have survived worse.*/
== WILSONJ @10 /*Snuffle?*/
== JAHEIRAJ @11 /*Yes... yes there is something you can do for me. Find Ployer. Find him and end this... and if I do not make it, then avenge me.*/
== WILSONJ @12 /*Growl... Roar!*/
== JAHEIRAJ @13 /*I am not dying yet... I am merely making plans. Oohh...*/
== WILSONJ @14 /*Whine?*/
== JAHEIRAJ @15 /*No, that would be quite improper. I can still walk... ooohhhh *cough**/
== WILSONJ @16 /*Grrf.*/
== JAHEIRAJ @17 /*Yes. Yes, I will ride you. Thank you.*/
EXIT

//Interjection into Terminsel's final dialogue if your reputation is not high enough for the good conversation.
INTERJECT JATERMIN 9 _bJaheiraWilsonInterject5 /*Hmm. I see. If you are doubting, then perhaps ye are not as much in the right as ye thought. I leave ye with that thought. I'm sure it will serve as penance enough.*/
== WILSONJ IF ~IfValidForPartyDialogue("Wilson") OR(2) Global("_bWilsonJaheira","GLOBAL",1) Global("_bWilsonJaheira","GLOBAL",2)~ THEN @18 /*Roar, snuffle snort?*/
== JATERMIN @19 /*Ye wish to speak? Of course ye may do so.*/
== WILSONJ @20 /*Sniff sniff growl gruh! Snuffle, sniff... roar roar.*/
== JATERMIN @21 /*<CHARNAME>'s goodness or evilness is irrelevant when judging the merits of Jaheira's actions? I do not see how, but perhaps ye can explain.*/
== WILSONJ @22 /*Gruff, gruh... sniff. Sniff roar snuffle! Sniff sniff mrrf?*/
== JATERMIN @23 /*Hmm, perhaps ye have some merit in thy argument. <CHARNAME> was judged for being a child of Bhaal... for what <PRO_HESHE> was rather than for <PRO_HISHER> actions.*/
== WILSONJ @24 /*Growl growl grrr... roar!*/
== JATERMIN @25 /*Ye are correct. If not for Jaheira, Galvarey and Demin might have directed their corruption elsewhere. Hmm...*/
	= @26 /*Jaheira, I have one last question and then I shall leave ye to thy thoughts. This bear of thine... is he worth it? Does he change thy calculations as to what ye have lost?*/
	= @27 /*Would ye sacrifice it all again to have what ye have now?*/
== JAHEIRAJ @28 /*Undoubtedly. I would do as such again without hesitation. [JAHEIRD9]*/ 
END JATERMIN 11 /*Then that is the measure from which the incident shall be judged. Think no more of it.*/
//This shuffles you back to the good path and gets Jaheira her Harper pin.

//This talk triggers one hour after you kill Dermin
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraDerminTalk","GLOBAL",2)~ THEN JAHEIRAJ _bJaheiraWilsonDerminTalk1
	@29 /*What?! What is it you want? [JAHEIRB4.WAV]*/
		DO ~SetGlobal("_bWilsonJaheiraDerminTalk","GLOBAL",3)~
== WILSONJ @30 /*Growl? [OH87203]*/
== JAHEIRAJ @31 /*Fine. I'm fine!*/
	= @32 /*Well?*/
== WILSONJ @33 /*Snuffle, snort.*/
== JAHEIRAJ @34 /*That's what I said but I meant... I'm sorry, I shouldn't need to play these games. I'm just so mad, and I don't know how to get it out.*/
	= @35 /*I... I know why I am upset, but I can't seem to shake it. I am angry with that dungweasel Dermin for... for making me feel guilty about killing him!*/
	= @36 /*Isn't that ridiculous? The bastard was putting people in danger for nothing, and I feel guilty for ending it!*/
== WILSONJ @37 /*Growl... grr. Roar.*/
== JAHEIRAJ @38 /*I know; I was just not prepared for this. I am not used to mourning my enemies. It's not much easier than mourning friends, and I have done enough of that.*/
	= @39 /*I will need a bit of space for now. Damn, why is this so hard? Remove the bad seeds and walk into the sunset; that's how it's supposed to go. Nice and clean.*/
EXIT

//This talk triggers one hour after you enter Suldanessellar
CHAIN IF WEIGHT #-1 ~Global("_bWilsonJaheiraSuldanTalk","GLOBAL",2)~ THEN JAHEIRAJ _bJaheiraWilsonSuldanessellarTalk1
	@40 /*We have to be nearing our goal. It has been so long a journey, and we've been through so much! I hope this does not end up all being for naught. [JAHEIRB7.WAV]*/
	DO ~SetGlobal("_bWilsonJaheiraSuldanTalk","GLOBAL",3)~
== WILSONJ @41 /*Growl roar! [OH87192.WAV]*/
== JAHEIRAJ @42 /*On this we agree. We will do what we can, but we must be sure to exact a payment from this Irenicus that will prove permanent.*/
	= @43 /*There can be no mercy for this creature. What he has done is unforgivable.*/
== WILSONJ @44 /*Growl gruh grrf?*/
== JAHEIRAJ @45 /*I can live with that.*/
== WILSONJ @46 /*Roar.*/
== JAHEIRAJ @47 /*Then we will continue with a single mind. We will find a way to end this.*/
EXIT

//Jaheira leaving if they're romancing.
EXTEND_BOTTOM JAHEIRAP 42 /*What? You cannot mean— I stood by you through a very difficult time; I have turned my back on many of my own brethren! Am I to be cast aside like any other member of the group? I'm not sure I could return after something like this.*/ 
IF ~IfValidForPartyDialogue("WILSON") OR(2) Global("_bWilsonJaheira","GLOBAL",1) Global("_bWilsonJaheira","GLOBAL",2)~ THEN EXTERN WILSONJ _bJaheiraWilsonOutofGroup1
END

CHAIN WILSONJ _bJaheiraWilsonOutofGroup1
	@48 /*Growl? [OH87194]*/
== JAHEIRAP @49 /*No, I am not overreacting! I am... I...*/
	= @50 /*I shall return to the woods near the abandoned amphitheater. If you change your mind, you will find me there.*/
END
	++ @51 /*Don't go. I value the contribution you make and don't want you to leave.*/ EXTERN JAHEIRAP 43 /*I thank you. I have a lot invested in this group, and I should not like to leave just yet.*/
	++ @52 /*Okay, we shall find you there.*/ EXTERN JAHEIRAP _bJaheiraWilsonOutofGroup2
	
CHAIN JAHEIRAP _bJaheiraWilsonOutofGroup2
	@53 /*<CHARNAME>, Wilson, I hope to see you both again.*/
		DO ~SetGlobal("_bJWLeaveGlobal","GLOBAL",1) SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("OH4000",1486,2906,W)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bJWLeaveGlobal","GLOBAL",1)~ THEN JAHEIRAP _bJaheiraWilsonOutofGroup3
	@54 /*It is about time you returned; I have been waiting here for who knows how long! We'd best get back together and get moving; I'll not serve nature or my fallen comrades by sitting about here. [JAHEIRE4]*/
END
	++ @55 /*Right you are. Let's go.*/ DO ~SetGlobal("_bJWLeaveGlobal","GLOBAL",0)~ GOTO 15 /*Good and done. We should make all speed to our destination.*/
	++ @56 /*Sorry, but I don't want you to rejoin just yet.*/ GOTO 14 /*Your loss, to be sure. I'll be here or in the vicinity. I want to be sure you can find me. We are bound on the same course, though different paths.*/

//Wilson leaving.
EXTEND_BOTTOM WILSONP 0 /*Sniff? Snort! GRROAR!*/ 
	++ @57 /*Go to the forest near the abandoned amphitheater. We'll find you there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("OH4000",1493,2940,W)~ EXIT
END




