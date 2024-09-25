APPEND MAZZYJ IF  WEIGHT #-1 ~Global("_bmazzystopsdorn","GLOBAL",1)~ THEN _bMazzyDorn0
	SAY @1 /*How could you agree to help this villain murder a man? You are not the person that I thought and I will stop you!*/
	IF ~~ THEN DO ~SetGlobal("_bmazzystopsdorn","GLOBAL",2) SetGlobal("_bMazzyHostile","GLOBAL",1)~ EXIT
	END
END
