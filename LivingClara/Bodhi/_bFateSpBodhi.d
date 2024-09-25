// Bodhi is summoned via Fate Spirit. This code is taken directly from the game.
// #3 means that Bodhi should be placed after the first 3 lines.

EXTEND_TOP FATESP 6 #3
+ ~!InMyArea("_bBodhi") Global("_BBodhiSummoned","GLOBAL",0)~ + @0 /*Bring me Bodhi, the bloodthirsty vampire.*/
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("_bBod25",[1999.1228],0) 
SetGlobal("_bBodhiSummoned","GLOBAL",1)~ GOTO 8
END

