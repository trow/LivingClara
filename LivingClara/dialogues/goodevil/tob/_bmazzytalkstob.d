//Mazzy TOB talks. No requirements.

//1st Protest at Evil
CHAIN IF WEIGHT #-1 ~Global("_bMazzyEvilProtest","GLOBAL",1)~ THEN MAZZY25J _bMazzyProtest1
@1 /*<CHARNAME>, I feel the need to mention that you are not being quite as selfless and virtuous as I would prefer.*/
DO ~SetGlobal("_bMazzyEvilProtest","GLOBAL",2)~
= @2 /*We are becoming a true power in this world and it would be desirable to use that power for good.*/
EXIT

//2nd Protest at Evil
CHAIN IF WEIGHT #-1 ~Global("_bMazzyEvilProtest2","GLOBAL",1)~ THEN MAZZY25J _bMazzyProtest2
@3 /*<CHARNAME>, once again I must bring up the direction you seem to be taking and how it is not what I would wish.*/
DO ~SetGlobal("_bMazzyEvilProtest2","GLOBAL",2)~
= @4 /*Please consider your words and your actions more carefully. You saved my life and I would not see us come to blows.*/
EXIT

//3rd Protest at Evil
CHAIN IF WEIGHT #-1 ~Global("_bMazzyEvilProtest3","GLOBAL",1)~ THEN MAZZY25J _bMazzyProtest3
@5 /*<CHARNAME>, this is unacceptable! You could be a force for kindness and light in this world but instead you grasp for self-serving power at every opportunity.*/
DO ~SetGlobal("_bMazzyEvilProtest3","GLOBAL",2)~
= @6 /*I can no longer sit idly by and watch this occur, I must...*/
= @7 /*I must...*/
= @8 /*I...*/
= @9 /*I give up. You will be who you will be and I will continue by your side as long as I can.*/
END
	++ @10 /*I'm sorry? I don't understand.*/ + _bMazzyProtest4
	++ @11 /*Wait... what? I did not see this coming.*/ + _bMazzyProtest4
	++ @12 /*So you aren't going to try to murder me?*/ + _bMazzyProtest4
	
CHAIN MAZZY25J _bMazzyProtest4
@13 /*You grasp for power, you are self-serving, and one could even call you evil, but what purpose would challenging you serve?*/
= @14 /*If I succeeded, you would be dead, but our enemies are more evil than you are and we cannot defeat them without your help.*/
= @15 /*And if I fell in the attempt, then what good could I accomplish in the future? I am still young and I have decades of helping people lying ahead of me. Fighting you would be a victory for evil either way.*/
= @16 /*So do whatever you will. I can only hope that I will influence you with my example.*/
EXIT

