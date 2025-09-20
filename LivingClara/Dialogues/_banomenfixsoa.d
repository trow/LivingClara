
APPEND ANOMENJ // Anomen Romance Fix
IF WEIGHT #-1 ~Global("_bAnomenRomanceFix","GLOBAL",2) Global("_bAnomenRomanceActive","GLOBAL",0)~ THEN  _bAnomenRomanceFix1
	SAY @0 /*My Lady, I fear we might have had a misunderstanding. I wish to continue as before. Can you forgive me?*/
	++ @1 /*No Anomen, I just want us to be friends.*/ DO ~SetGlobal("_bAnomenRomanceFix","GLOBAL",3)~ EXIT
	++ @2 /*Of course, Anomen. All is forgiven.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",1) SetGlobal("_bAnomenRomanceFix","GLOBAL",0)~ EXIT
	END
END

APPEND ANOMENJ // Anomen Romance Fix
IF WEIGHT #-1 ~Global("_bAnomenRomanceFix","GLOBAL",2) Global("_bAnomenRomanceActive","GLOBAL",2)~ THEN  _bAnomenRomanceFix1
	SAY @0 /*My Lady, I fear we might have had a misunderstanding. I wish to continue as before. Can you forgive me?*/
	++ @1 /*No Anomen, I just want us to be friends.*/ DO ~SetGlobal("_bAnomenRomanceFix","GLOBAL",3)~ EXIT
	++ @2 /*Of course, Anomen. All is forgiven.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2) SetGlobal("_bAnomenRomanceFix","GLOBAL",0)~ EXIT
	END
END




