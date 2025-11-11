EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("NPSHLD") Global("YF_AnomenIsAntipaladin","GLOBAL",1) InParty("Anomen") Global("YF_NPSHDforge","GLOBAL",0)~ THEN GOTO YF_NPSHD00
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN YF_NPSHD00
 SAY @0
= @1
    IF ~Global("YF_NPSHDforge","GLOBAL",0)
    PartyHasItem("NPSHLD") 
    PartyHasItem("OHHROD")
	PartyHasItem("DWDUST")
    PartyGoldGT(9999)
      ~ THEN REPLY @2 DO ~SetGlobal("YF_NPSHDMaker","GLOBAL",1)
                                 SetGlobal("YF_NPSHDforge","GLOBAL",1)
                                 SetGlobal("ImpForgeStuff","GLOBAL",1)
                                 TakePartyItem("NPSHLD")
                                 TakePartyItem("OHHROD")
								 TakePartyItem("DWDUST")
                                 DestroyItem("NPSHLD")
                                 DestroyItem("OHHROD")
								 DestroyItem("DWDUST")
                                 TakePartyGold(10000)
                                 DestroyGold(10000)~ GOTO 11
    // 11 starts "cutsmith" cutscene,

 
    IF ~~ THEN REPLY @3 GOTO YF_NPSHD01
    END

    IF ~~ THEN BEGIN YF_NPSHD01 SAY @4
      COPY_TRANS BOTSMITH 4
    END
  END