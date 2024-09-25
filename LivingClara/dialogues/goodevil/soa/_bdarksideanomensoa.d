
//Anomen's objection to Dorn joining. Adding !Global("AnomenIsNotKnight","GLOBAL",1) to all responses that lead into states:
//ANOMENJ 318 You told me nothing of having business at the temple.
//ANOMENJ 319 Whatever this villain has planned for my god's temple, I can't permit it.
//ANOMENJ 320 Whatever this villain has planned for my god's temple, I can't permit it.
//ANOMENJ 321 Slay the blackguard!

ALTER_TRANS DORN BEGIN 2 END BEGIN 4 END BEGIN "TRIGGER" ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS DORN BEGIN 2 END BEGIN 5 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END

ALTER_TRANS DORN BEGIN 6 END BEGIN 0 END BEGIN "TRIGGER" ~!IfValidForPartyDialog("KELDORN") OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS DORN BEGIN 6 END BEGIN 1 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN") !IfValidForPartyDialog("KELDORN")~ END
ALTER_TRANS DORN BEGIN 6 END BEGIN 4 END BEGIN "TRIGGER" ~!IfValidForPartyDialog("KELDORN") OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS DORN BEGIN 6 END BEGIN 5 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN") !IfValidForPartyDialog("KELDORN")~ END

ALTER_TRANS KELDORJ BEGIN 260 END BEGIN 1 END BEGIN "TRIGGER" ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS KELDORJ BEGIN 260 END BEGIN 2 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS KELDORJ BEGIN 260 END BEGIN 3 END BEGIN "TRIGGER" ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS KELDORJ BEGIN 260 END BEGIN 4 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END

ALTER_TRANS KELDORJ BEGIN 261 END BEGIN 0 END BEGIN "TRIGGER" ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS KELDORJ BEGIN 261 END BEGIN 1 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END

ALTER_TRANS KELDORJ BEGIN 262 END BEGIN 2 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END

EXTEND_BOTTOM KELDORJ 262 /*You plan to attack a temple of the Radiant Heart, <CHARNAME>? You know I cannot let that stand.*/ 
	+ ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ + @3 /*You can't let that stand? Then I can't let you stand. Draw your blade!*/
	DO ~LeaveParty() ActionOverride("KELDORN",Enemy())~ EXIT 
END


//Keldorn fights Dorn if he tries to attack the temple.
CHAIN IF WEIGHT #-1 ~Global("_bkeldornattacksdornattemple","GLOBAL",1)~ THEN KELDORJ _bkeldornstopddorn1
@0 /*You plan to attack a temple of the Radiant Heart, <CHARNAME>? You know I cannot let that stand.*/
	DO ~SetGlobal("_bkeldornattacksdornattemple","GLOBAL",2)~
END
	++ @1 /*Keldorn, my friend, you need to lighten up. Don't you know a joke when you hear one?*/ GOTO 264
	++ @2 /*Relax, Keldorn. It was a plan, barely that... 'twas but the first tiny inkling of a scheme, if not less, the barest sketch of the notion of the vague possibility of a plot. So this one doesn't come to fruition. I'll live. I've got others.*/ GOTO 264
	++ @3 /*You can't let that stand? Then I can't let you stand. Draw your blade!*/ DO ~LeaveParty() ActionOverride("KELDORN",Enemy())~ EXIT


//After Anomen Fails Test - additional CN option
EXTEND_BOTTOM ANOMENJ 105 /*Perhaps. Or perhaps I should slaughter the whole lot of them.*/
++ @4 /*Someday, Anomen, but not yet. We are not yet strong enough to prevail.*/ + _bAnomenHatesRadiant
END

CHAIN ANOMENJ _bAnomenHatesRadiant
@5 /**sigh* You are right as usual, <CHARNAME>. Let us go forth. The Order's day of reckoning can wait.*/
EXIT

//Coding to change Anomen's Interjection with Sir Ryan Trawl and the Fallen Paladin Quest. Turn off old interjection, add new one.
//AnomenJ state 200 is "Hmph. Such manner of base scum should be put to death, in my opinion. To be a fully sworn paladin and to turn your back on your sworn oaths is inconceivable." This turns that off.

INTERJECT_COPY_TRANS2 KAYL2 25 _bAnomenEvilFallenPaladinQuest1
/*Recently, one of our highest-ranking officers was implicated in smuggling slaves. His name is Anarg, and though he was once a friend, he was expelled from the Order.*/
	== ANOMENJ IF ~Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("Anomen")~ THEN @6 /*It seems the oppressive rules of the Order can break even their most dedicated lackeys.*/
END

ALTER_TRANS KAYL2 BEGIN 10 END BEGIN 0 END BEGIN "TRIGGER" ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Mazzy")
OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialog("Anomen")~ END 

ALTER_TRANS KAYL2 BEGIN 10 END BEGIN 2 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Anomen")~ END 

ALTER_TRANS KAYL2 BEGIN 10 END BEGIN 3 END BEGIN "TRIGGER" ~!IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Mazzy") 
OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialog("Anomen")~ END 

ALTER_TRANS KELDORJ BEGIN 130 END BEGIN 0 END BEGIN "TRIGGER" ~!IfValidForPartyDialogue("Mazzy") OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialog("Anomen")~ END

ALTER_TRANS KELDORJ BEGIN 130 END BEGIN 1 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IsValidForPartyDialog("Anomen")~ END 

ALTER_TRANS KELDORJ BEGIN 130 END BEGIN 2 END BEGIN "TRIGGER" ~IsValidForPartyDialogue("Mazzy") OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialogue("Anomen")~ END 





