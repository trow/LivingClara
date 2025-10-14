
APPEND ANOMENJ // Anomen Romance Fix
IF WEIGHT #-1 ~Global("YF_AnomenRomanceFix","GLOBAL",2) Global("YF_AnomenRomanceActive","GLOBAL",0)~ THEN  YF_AnomenRomanceFix1
	SAY @0 /*My Lady, I fear we might have had a misunderstanding. I wish to continue as before. Can you forgive me?*/
	++ @1 /*No Anomen, I just want us to be friends.*/ DO ~SetGlobal("YF_AnomenRomanceFix","GLOBAL",3)~ EXIT
	++ @2 /*Of course, Anomen. All is forgiven.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",1) SetGlobal("YF_AnomenRomanceFix","GLOBAL",0)~ EXIT
	END
END

APPEND ANOMENJ // Anomen Romance Fix
IF WEIGHT #-1 ~Global("YF_AnomenRomanceFix","GLOBAL",2) Global("YF_AnomenRomanceActive","GLOBAL",2)~ THEN  YF_AnomenRomanceFix1
	SAY @0 /*My Lady, I fear we might have had a misunderstanding. I wish to continue as before. Can you forgive me?*/
	++ @1 /*No Anomen, I just want us to be friends.*/ DO ~SetGlobal("YF_AnomenRomanceFix","GLOBAL",3)~ EXIT
	++ @2 /*Of course, Anomen. All is forgiven.*/ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2) SetGlobal("YF_AnomenRomanceFix","GLOBAL",0)~ EXIT
	END
END




