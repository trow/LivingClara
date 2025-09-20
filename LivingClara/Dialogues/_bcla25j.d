BEGIN _bcla25j

//Final Solaris Conversation - yes, I coded this first
INTERJECT_COPY_TRANS2 FINSOL01 27 _bClaraFinalTOB
== _bcla25j IF ~IfValidForPartyDialog("_bClara")~ THEN @1 /*Wow, <CHARNAME>. You have the chance to become a god and leave all this behind. When you choose awesome power, don't forget us little folks who helped you to get here.*/
END

//Hexxat Talk if both in party
CHAIN IF WEIGHT #-1 ~Global("_BBCLARAHEX","GLOBAL",1)~ THEN HEXXA25J _bClaraHexTrauma
@2 /*Forgive me, Clara... This is the only way.*/
DO ~SetGlobal("_BBCLARAHEX","GLOBAL",2)~
== _bcla25j @3 /*The Sleeper... she wakes! Mistress, I have done as you command—please let me live!*/
= @4 /*No, you don't control me anymore! I am not your slave!*/
== HEXXA25J @5 /*I do not need a slave; I am alive.*/
= @6 /*You are alive too. Let us enjoy the <DAYNIGHTALL>.*/
EXIT
