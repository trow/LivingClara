BEGIN YF_cl25j

//Final Solaris Conversation - yes, I coded this first
INTERJECT_COPY_TRANS2 FINSOL01 27 YF_ClaraFinalTOB
== YF_cl25j IF ~IfValidForPartyDialog("YF_Clara")~ THEN @1 /*Wow, <CHARNAME>. You have the chance to become a god and leave all this behind. When you choose awesome power, don't forget us little folks who helped you to get here.*/
END

//Hexxat Talk if both in party
CHAIN IF WEIGHT #-1 ~Global("YF_BCLARAHEX","GLOBAL",1)~ THEN HEXXA25J YF_ClaraHexTrauma
@2 /*Forgive me, Clara... This is the only way.*/
DO ~SetGlobal("YF_BCLARAHEX","GLOBAL",2)~
== YF_cl25j @3 /*The Sleeper... she wakes! Mistress, I have done as you command—please let me live!*/
= @4 /*No, you don't control me anymore! I am not your slave!*/
== HEXXA25J @5 /*I do not need a slave; I am alive.*/
= @6 /*You are alive too. Let us enjoy the <DAYNIGHTALL>.*/
EXIT
