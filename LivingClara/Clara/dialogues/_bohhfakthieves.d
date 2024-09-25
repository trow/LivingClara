CHAIN 
IF WEIGHT #-1 ~Global("_bRenalOHHFAK","GLOBAL",1) NumTimesTalkedToGT(0)~ THEN RENAL _brenalohhfakclara1
@1 /*You... yes, you girl. You're one of ours, aren't you?*/
DO ~SetGlobal("_bRenalOHHFAK","GLOBAL",2)~
== OHHFAK @2 /*Yes? I am with <CHARNAME>... <PRO_HESHE> is taking me to Dragomir's Tomb.*/
== RENAL @3 /*Tomb robbing? That's dangerous work, especially with so many undead about. I admire your initiative, though I encourage caution as well.*/
= @4/*You should make sure to work during the day. There's a risk of guards, but better them than the undead. I'm sorry to say that we've completely lost control of the graveyard at night.*/
= @5 /*Bring her back safely, <CHARNAME>. She's a pretty thing, clearly ambitious, and this guild cannot afford to lose anyone else.*/
EXIT

