
//Fate Spirit dialogue has to be separate for EET to work right.
// After Bodhi is summoned via Fate Spirit.

BEGIN _bBod25

//if you saved her
APPEND _bBod25 IF ~Global("_BBodhiSummoned","GLOBAL",2)~ THEN _bbs1
SAY @1 /*So, you wish me to hunt with you once again? Excellent. Let our prey fear the sound of our approach.*/ 
	IF ~~ THEN DO ~SetGlobal("_bBodhiJoinedTOB","GLOBAL",1) SetGlobal("_bBodhiSummoned","GLOBAL",3) JoinParty()~ EXIT
	END
END

