// Clara is summoned via Fate Spirit. This code is taken directly from the game.
// #4 means that Clara should be placed right after the first 4 lines.

EXTEND_TOP FATESP 6 #4
+ ~!InMyArea("_bClara") Global("ClaraSummoned","GLOBAL",0)~ + @0 /*Bring me Clara, the human shadowdancer.*/
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("_bCla25",[1999.1228],0) 
SetGlobal("ClaraSummoned","GLOBAL",1)~ GOTO 8
END

//Has to be separate in order to be compatible with EET