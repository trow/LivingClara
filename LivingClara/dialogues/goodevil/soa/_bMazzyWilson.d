//Mazzy-Wilson Banter SOA
CHAIN IF ~InParty("Mazzy") InMyArea("Mazzy") IfValidForPartyDialog("Mazzy") IfValidForPartyDialog("Wilson") Global("_BMAZWILSON","GLOBAL",0)~ THEN BWILSON _bMazzyWilson1
@1 /*Growl. Roar!*/
DO ~SetGlobal("_BMAZWILSON","GLOBAL",1)~
== BMAZZY @2 /*I fight well? Like a badger, you say? I shall take that as a compliment.*/ 
= @3 /*You fight fiercely as well, like... like... like a grizzly bear!*/
== BWILSON @4 /*Snuffle, rff?*/
== BMAZZY @5 /*I realize that you are a grizzly bear. I could not think of anything else to say.*/
== BWILSON @6 /*Roar, roar, snuffle?*/
== BMAZZY @7 /*There are many halflings in the world and yes, plenty of them are strong fighters like myself.*/
== BWILSON @8 /*Growl, growl. Roar.*/
== BMAZZY @9 /*No, halflings never attempt to conquer the world; that is one of our chief virtues.*/
== BWILSON @10 /*Snuffle!*/
== BMAZZY @11 /*Yes, I suppose that is a virtue of grizzlies as well.*/
EXIT

//Mazzy-Wilson Banter TOB
CHAIN IF ~InParty("Mazzy") InMyArea("Mazzy") IfValidForPartyDialog("Mazzy") IfValidForPartyDialog("Wilson") Global("_BMAZWILSON","GLOBAL",0)~ THEN BWILSO25 _bMazzyWilson1
@1 /*Growl. Roar!*/
DO ~SetGlobal("_BMAZWILSON","GLOBAL",1)~
== BMAZZY25 @2 /*I fight well? Like a badger, you say? I shall take that as a compliment.*/ 
= @3 /*You fight fiercely as well, like... like... like a grizzly bear!*/
== BWILSO25 @4 /*Snuffle, rff?*/
== BMAZZY25 @5 /*I realize that you are a grizzly bear. I could not think of anything else to say.*/
== BWILSO25 @6 /*Roar, roar, snuffle?*/
== BMAZZY25 @7 /*There are many halflings in the world and yes, plenty of them are strong fighters like myself.*/
== BWILSO25 @8 /*Growl, growl. Roar.*/
== BMAZZY25 @9 /*No, halflings never attempt to conquer the world; that is one of our chief virtues.*/
== BWILSO25 @10 /*Snuffle!*/
== BMAZZY25 @11 /*Yes, I suppose that is a virtue of grizzlies as well.*/
EXIT
