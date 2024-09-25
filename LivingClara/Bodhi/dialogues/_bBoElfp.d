BEGIN _bBoElfp

//If you remove Bodhi from your party.
APPEND _bBoElfP IF ~Global("_BBodElfRemoved","GLOBAL",0)~ THEN _bbodhiElfLeaving1
SAY @0 /*So, <CHARNAME>, is this the point where we part ways?*/
	++ @1 /*No, I still want you with me.*/ GOTO bBodhiElfPDoesntLeave1
	++ @2 /*Yes, wait right here.*/  GOTO _bBodhiElfWaits1
	+~!AreaCheck("AR4000") !AreaCheck("AR4500")~+ @3 /*Yes, return to my pocket plane and wait there.*/ GOTO _bBodhiElfPPlane1
	END
END

CHAIN _bBoElfP _bBodhiElfPPlane1
	@4 /*That's a pity... I do so enjoy your presence.*/
	= @5 /*Don't make me wait too long, I might hunger for some... company.*/
	DO ~SetGlobal("_BBodElfRemoved","GLOBAL",1) CreateVisualEffectObject("spdimndr",Myself) Wait(2) MoveBetweenAreas("AR4500",[1615.1679],S)~
EXIT

CHAIN _bBoElfP _bBodhiElfWaits1
	@4 /*That's a pity... I do so enjoy your presence.*/
	= @5 /*Don't make me wait too long, I might hunger for some... company.*/
		DO ~SetGlobal("_BBodElfRemoved","GLOBAL",1)~
EXIT

CHAIN _bBoElfP bBodhiElfPDoesntLeave1
	@6 /*I am delighted to hear that. We have been having so much fun that I could not bear to leave.*/
		DO ~JoinParty()~ 
EXIT

//If Bodhi is waiting and you talk to her.
APPEND _bBoElfP IF ~Global("_BBodElfRemoved","GLOBAL",1)~ THEN _bbodhiElfWaiting1
SAY @7 /*Finally... I am so hungry that I could eat a whole family of halflings. Shall we resume our travels?*/
	++ @8 /*Yes.*/ DO ~SetGlobal("_BBodElfRemoved","GLOBAL",0) JoinParty()~ EXIT
	++ @9 /*No, just wait here.*/ EXIT 
	END
END


