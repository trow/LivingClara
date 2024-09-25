BEGIN _bBod25p


//If you remove Bodhi from your party.
APPEND _bBod25P IF ~Global("_BBodhiRemoved","GLOBAL",0) !Global("_BBodhiBurns","GLOBAL",3) !Global("_BBodhiBurns","GLOBAL",4)~ THEN _bbodhiask
SAY @0 /*You wish me to leave?*/
	++ @1 /*No, my mistake. Stay with me.*/ DO ~JoinParty()~ EXIT
	+ ~!AreaCheck("AR4500")~ + @2 /*Yes, just wait here.*/ DO ~SetGlobal("_BBodhiRemoved","GLOBAL",1)~ EXIT
	+ ~AreaCheck("AR4500")~ + @2 /*Yes, just wait here.*/ DO ~SetGlobal("_BBodhiRemoved","GLOBAL",1) MoveToPointNoInterrupt([1615.1679]) Face(0)~ EXIT
	+~!AreaCheck("AR4000") !AreaCheck("AR4500")~+ @3 /*Yes, but return to my pocket plane. I shall meet you there.*/ DO ~SetGlobal("_BBodhiRemoved","GLOBAL",1) CreateVisualEffectObject("spdimndr",Myself) Wait(2) MoveBetweenAreas("AR4500",[1615.1679],S)~ EXIT
	END
END

//If Bodhi is waiting and you talk to her.
APPEND _bBod25P IF ~Global("_BBodhiRemoved","GLOBAL",1)~ THEN _bbodhidefault
SAY @4 /*Finally. I was beginning to hunger. Shall we resume our travels?*/
	++ @5 /*Yes.*/ DO ~SetGlobal("_BBodhiRemoved","GLOBAL",0) JoinParty()~ EXIT
	++ @6 /*No, just wait here.*/ EXIT 
	END
END

//Bodhi's talk after coming back if dying.
APPEND _bBod25P IF WEIGHT #-1 ~Global("_BBodhiMist","GLOBAL",8) Global("_BBodhiRemoved","GLOBAL",2)~ THEN _bbodhimisttalkp8
	SAY @7 /*You have survived! That was unexpected, but not undesired.*/
	IF ~~ THEN DO ~SetGlobal("_BBodhiMist","GLOBAL",0) SetGlobal("_BBodhiRemoved","GLOBAL",0) JoinParty()~ EXIT
	END
END

//Bodhi's talk after coming back if dying.
APPEND _bBod25P IF WEIGHT #-1 ~Global("_BBodhiBurns","GLOBAL",7) Global("_BBodhiRemoved","GLOBAL",2)~ THEN _bbodhiburnstalkp7
	SAY @8 /*Finally. I do not know why you insist on traveling during the day.*/
	IF ~~ THEN DO ~SetGlobal("_BBodhiBurns","GLOBAL",0) SetGlobal("_BBodhiRemoved","GLOBAL",0) JoinParty()~ EXIT
	END
END




