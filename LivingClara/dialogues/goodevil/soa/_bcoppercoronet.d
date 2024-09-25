
//Lehtinan Conversation to Remove Guard in Back
EXTEND_BOTTOM LEHTIN 14 
	++ @0 /*I am always in the market for slaves, do you mind if I look at yours?*/ GOTO _bLehtinanAllowsCNinBack1
END

CHAIN LEHTIN _bLehtinanAllowsCNinBack1
@1 /*(Hurrmm) Slavery is illegal in this city so I resent your implication that we have them in this establishment.*/
= @2 /*But if you wish to go in the back and look around I will tell the guards not to stop you.*/
DO ~SetGlobal("Backroom","GLOBAL",1) Unlock("DOOR17") Unlock("DOOR25")ActionOverride("guard3",DestroySelf())~
EXIT
