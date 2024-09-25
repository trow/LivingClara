//Pala Talk
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyOwesPala","GLOBAL",0) Global("_bMazzyRomance","GLOBAL",2)~ THEN PALA _bPalaSharesTalk
@1 /*Well, aren't you a fine one? I don't suppose my sister would be willing to share.*/
DO ~SetGlobal("_bMazzyOwesPala","GLOBAL",1)~
== MAZZYJ @2 /*You and Danno already have each other. There is no need to get greedy.*/
== PALA @3 /*Well, if we cannot *have* <CHARNAME>,  maybe we can simply borrow <PRO_HIMHER> for a while? We would return <PRO_HIMHER> unharmed.*/
= @4 /*You took one of ours... it would only be fair.*/
== MAZZYJ @5 /*Absolutely not.*/
END
	++ @6 /*Are you sure? Your sister is cute.*/ EXTERN MAZZYJ _bPalaSharesTalk1
	++ @7 /*She was joking, I take it? I only want you of course.*/ EXTERN MAZZYJ _bPalaSharesTalk2
	++ @8 /*How did you take one of theirs? What does that mean?*/ EXTERN MAZZYJ _bPalaSharesTalk3

CHAIN MAZZYJ _bPalaSharesTalk1
@9 /*It would not just be my sister, <CHARNAME>. She does not cheat on Danno. They share.*/
END
	++ @10 /*Both of them? Count me in!*/ + _bPalaSharesTalk4 
	++ @11 /*Oh. In that case, I'm not interested.*/ + _bPalaSharesTalk5
	
CHAIN MAZZYJ _bPalaSharesTalk4
@12 /*I am pleased by your adventurous spirit, my love. But... no.*/
EXIT

CHAIN MAZZYJ _bPalaSharesTalk5
@13 /*A silly reason to refuse... you should refuse because we are together and I do not wish you to accept.*/
EXIT

CHAIN MAZZYJ _bPalaSharesTalk2
@14 /*I am glad to hear it, but she was only joking in that she knew I would not agree. She was quite serious about wanting you.*/
EXIT

CHAIN MAZZYJ _bPalaSharesTalk3
@15 /*She is referring to Korrich, my second love. I'll tell you about it later.*/
EXIT

 //All the Vara Grandkids Talks
 //Halfling Male no Imoen
 CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bVaraWantsGKids","GLOBAL",0) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2) GlobalGT("PalaCureFound","GLOBAL",2) GlobalTimerExpired("PalaWakeUp","GLOBAL") Race(Player1,HALFLING) Gender(Player1,MALE) OR(2) !Global("_bImoenMazzyRomance","GLOBAL",2) !InParty("Imoen2")~ THEN VARA1 _bVaraWantsGrandKids1
@16 /*Hello, <CHARNAME>, it's good to see you again.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",1)~ THEN @161 /*Mazzy wrote me saying that you were courting her so let me have another look at you.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @162 /*Mazzy wrote me saying that you are now together so let me have another look at you.*/
== VARA1 @17 /*Strong, healthy, reasonably graceful.*/
= @18 /*Have you thought about settling down, raising a family, having children?*/
== MAZZYJ @19 /*Mother! Behave yourself.*/
== VARA1 @20 /*Oh very well, but you can't blame a mother for trying.*/
= @21 /*<CHARNAME>, be welcome here as always. Our home and hearth are yours.*/
DO ~SetGlobal("_bVaraWantsGKids","GLOBAL",1)~
EXIT
 
 //Halfling Male, Imoen
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bVaraWantsGKids","GLOBAL",0) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2) GlobalGT("PalaCureFound","GLOBAL",2) GlobalTimerExpired("PalaWakeUp","GLOBAL") Race(Player1,HALFLING) Gender(Player1,MALE) Global("_bImoenMazzyRomance","GLOBAL",2) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN VARA1 _bVaraWantsGrandKids2
@16 /*Hello, <CHARNAME>, it's good to see you again.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",1)~ THEN @161 /*Mazzy wrote me saying that you were courting her so let me have another look at you.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @162 /*Mazzy wrote me saying that you are now together so let me have another look at you.*/
== VARA1 @17 /*Strong, healthy, reasonably graceful.*/
= @18 /*Have you thought about settling down, raising a family, having children?*/
== MAZZYJ @19 /*Mother! Behave yourself.*/
== VARA1 @20 /*Oh very well, but you can't blame a mother for trying.*/
= @22 /*And you must be Imoen! Graceful, beautiful, well done, Mazzy!*/
= @23 /*I don't suppose YOU want children?*/
== MAZZYJ @24 /*Seriously, mother? I bring home a woman and you still pester her about grandchildren?*/
= @25 /*Must I explain to you the mechanics of reproduction?*/
== VARA1 @26 /*Don't mock me. I thought that this might happen. I found this item years ago and I've been saving it just for this moment.*/
= @27 /*You can use this magical girdle to temporarily become a man and get Imoen pregnant. Or vice versa. The transformation is safe, instant, and complete; I've double-checked.*/
= @28 /*Here you go. Enjoy!*/ DO ~GiveItemCreate("_BBELT2",Player1,0,0,0)~
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @29 /*Finally! I've been searching for this girdle. Let me see that!*/
DO ~SetGlobal("_bEdwinTalksVara","GLOBAL",1)~
= @30 /*Yes, now fools I will... (Why is this so hard to put on?)*/
= @31 /*Nothing is happening! Why is nothing happening?*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @32 /*Is that Edwin Odesseiron ? I didn't recognize you.*/
= @33 /*The belt is magically enchanted to fit everyone, but it only changes halflings.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @34 /*Bah, useless! Get it away from me.*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @35 /*Sorry to disappoint you.*/
== MAZZYJ @36 /*Very well, mother, you've had your fun and one of us can now become a man. However, you do see that Imoen is human, do you not?*/
= @37 /*A human and a halfling cannot produce children.*/
== VARA1 @38 /*Maybe Imoen would rather be a halfling?*/
= @39 /*I have this spell that turns people into halflings. It took me two years to learn and the components cost almost as much as this house, but I've tested it and it works perfectly.*/
== MAZZYJ @40 /*I'm sorry, what?*/
== VARA1 @41 /*I said that I can turn Imoen into a halfling, if she doesn't mind.*/
== IMOEN2J @42 /*Oooh, yaay! Halfling me!*/
== MAZZYJ @43 /*Imoen, are you sure about this? Please do not do it just for me. I am not even sure that I want a family.*/
= @44 /*In addition, I am fairly certain that my mother has no idea how to change you back.*/
== IMOEN2J @45 /*You worry too much, Mazzy. This is a great opportunity; when am I going to have another chance like this again?*/
= @46 /*If I don't like it, I'll figure something out.*/
== VARA1 @47 /*So, Imoen, this is going to take some time. The rest of your companions might as well go see the town.*/
= @48 /*First you're going to need to remove all of your clothes, take this jar, and spread it all over your body.*/
== MAZZYJ @49 /**sigh* Here we go.*/
= @50 /*I will help you, Imoen... you have no idea what you have gotten yourself into.*/
DO ~SetGlobal("_bVaraWantsGKids","GLOBAL",1) SetGlobal("_bImoenHalfling","GLOBAL",1)~
EXIT

  //Halfling Female no Imoen
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bVaraWantsGKids","GLOBAL",0) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2) GlobalGT("PalaCureFound","GLOBAL",2) GlobalTimerExpired("PalaWakeUp","GLOBAL") Race(Player1,HALFLING) Gender(Player1,FEMALE) OR(2) !Global("_bImoenMazzyRomance","GLOBAL",2) !InParty("Imoen2")~ THEN VARA1 _bVaraWantsGrandKids3
@16 /*Hello, <CHARNAME>, it's good to see you again.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",1)~ THEN @161 /*Mazzy wrote me saying that you were courting her so let me have another look at you.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @162 /*Mazzy wrote me saying that you are now together so let me have another look at you.*/
== VARA1 @17 /*Strong, healthy, reasonably graceful.*/
= @18 /*Have you thought about settling down, raising a family, having children?*/
== MAZZYJ @24 /*Seriously, mother? I bring home a woman and you still pester her about grandchildren?*/
= @25 /*Must I explain to you the mechanics of reproduction?*/
== VARA1 @26 /*Don't mock me. I thought that this might happen. I found this item years ago and I've been saving it just for this moment.*/
= @74 /*You can use this magical girdle to temporarily become a man and get <CHARNAME> pregnant. Or vice versa. The transformation is safe, instant, and complete; I've double-checked.*/
= @28 /*Here you go. Enjoy!*/ DO ~GiveItemCreate("_BBELT2",Player1,0,0,0)~
== MAZZYJ @75 /*I do not believe this, mother! I thought that for once I would be free of your nonsense!*/
= @76 /*We have had this discussion already and I will not have it again.*/
== VARA1 @77 /*Well you can't blame a mother for trying. Keep the girdle; maybe you'll have some fun with it anyway.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @29 /*Finally! I've been searching for this girdle. Let me see that!*/
DO ~SetGlobal("_bEdwinTalksVara","GLOBAL",1)~
= @30 /*Yes, now fools I will... (Why is this so hard to put on?)*/
= @31 /*Nothing is happening! Why is nothing happening?*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @32 /*Is that Edwin Odesseiron ? I didn't recognize you.*/
= @33 /*The belt is magically enchanted to fit everyone, but it only changes halflings.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @34 /*Bah, useless! Get it away from me.*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @35 /*Sorry to disappoint you.*/
== VARA1 @21 /*<CHARNAME>, be welcome here as always. Our home and hearth are yours.*/
DO ~SetGlobal("_bVaraWantsGKids","GLOBAL",1)~
EXIT
   
   //Halfling Female, Imoen
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bVaraWantsGKids","GLOBAL",0) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2) GlobalGT("PalaCureFound","GLOBAL",2) GlobalTimerExpired("PalaWakeUp","GLOBAL") Race(Player1,HALFLING) Gender(Player1,FEMALE) Global("_bImoenMazzyRomance","GLOBAL",2) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN VARA1 _bVaraWantsGrandKids4
@16 /*Hello, <CHARNAME>, it's good to see you again.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",1)~ THEN @161 /*Mazzy wrote me saying that you were courting her so let me have another look at you.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @162 /*Mazzy wrote me saying that you are now together so let me have another look at you.*/
== VARA1 @17 /*Strong, healthy, reasonably graceful.*/
= @22 /*And you must be Imoen! Graceful, beautiful, well done, Mazzy!*/
= @78 /*Have either of you thought about settling down, raising a family, having children?*/
== MAZZYJ @79 /*Seriously, mother? I bring home two women and you're still going to pester them about grandchildren?*/
= @25 /*Must I explain to you the mechanics of reproduction?*/
== VARA1 @26 /*Don't mock me. I thought that this might happen. I found this item years ago and I've been saving it just for this moment.*/
= @80 /*You can use this magical girdle to temporarily become a man and get one of your lovers pregnant. Or vice versa. The transformation is safe, instant, and complete... I've double-checked.*/
= @28 /*Here you go. Enjoy!*/ DO ~GiveItemCreate("_BBELT2",Player1,0,0,0)~
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @29 /*Finally! I've been searching for this girdle. Let me see that!*/
DO ~SetGlobal("_bEdwinTalksVara","GLOBAL",1)~
= @30 /*Yes, now fools I will... (Why is this so hard to put on?)*/
= @31 /*Nothing is happening! Why is nothing happening?*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @32 /*Is that Edwin Odesseiron ? I didn't recognize you.*/
= @33 /*The belt is magically enchanted to fit everyone, but it only changes halflings.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @34 /*Bah, useless! Get it away from me.*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @35 /*Sorry to disappoint you.*/
== MAZZYJ @36 /*Fine, mother, you've had your fun and one of us can now become a man. However, you do see that Imoen is human, do you not?*/
= @37 /*A human and a halfling cannot produce children.*/
== VARA1 @38 /*Maybe Imoen would rather be a halfling?*/
= @39 /*I have this spell that turns people into halflings. It took me two years to learn and the components cost almost as much as this house, but I've tested it and it works perfectly.*/
== MAZZYJ @40 /*I'm sorry, what?*/
== VARA1 @41 /*I said that I can turn Imoen into a halfling, if she doesn't mind.*/
== IMOEN2J @42 /*Oooh, yaay! Halfling me!*/
== MAZZYJ @43 /*Imoen, are you sure about this? Please do not do this just for me. I am not even sure that I want a family.*/
= @44 /*In addition, I am fairly certain that my mother has no idea how to change you back.*/
== IMOEN2J @45 /*You worry too much, Mazzy. This is a great opportunity; when am I going to have another chance like this again?*/
= @46 /*If I don't like it, I'll figure something out.*/
== VARA1 @47 /*So, Imoen, this is going to take some time. The rest of your companions might as well go see the town.*/
= @48 /*First you're going to need to remove your clothes, take this jar, and spread it all over your body.*/
== MAZZYJ @49 /**sigh* Here we go.*/
= @50 /*I will help you, Imoen... you have no idea what you have gotten yourself into.*/
DO ~SetGlobal("_bVaraWantsGKids","GLOBAL",1) SetGlobal("_bImoenHalfling","GLOBAL",1)~
EXIT

	
	//Other Race Male, no Imoen
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bVaraWantsGKids","GLOBAL",0) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2) GlobalGT("PalaCureFound","GLOBAL",2) GlobalTimerExpired("PalaWakeUp","GLOBAL") !Race(Player1,HALFLING) Gender(Player1,MALE) OR(2) !Global("_bImoenMazzyRomance","GLOBAL",2) !InParty("Imoen2")~ THEN VARA1 _bVaraWantsGrandKids5
@16 /*Hello, <CHARNAME>, it's good to see you again.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",1)~ THEN @161 /*Mazzy wrote me saying that you were courting her so let me have another look at you.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @162 /*Mazzy wrote me saying that you are now together so let me have another look at you.*/
== VARA1 @17 /*Strong, healthy, reasonably graceful.*/
= @18 /*Have you thought about settling down, raising a family, having children?*/
== MAZZYJ @81 /*Mother, you do see that <CHARNAME> is a <PRO_RACE>, don't you? <PRO_HESHE> cannot get me pregnant.*/
== VARA1 @82 /*Maybe <PRO_HESHE> would rather be a halfling?*/
= @39 /*I have this spell that turns people into halflings. It took me two years to learn and the components cost almost as much as this house, but I've tested it and it works perfectly.*/
== MAZZYJ @40 /*I'm sorry, what?*/
== VARA1 @83 /*I said I can turn <CHARNAME> into a halfling, if <PRO_HESHE> doesn't mind.*/
END
	++ @84 /*Really? Great. Let's do it now.*/ + _bCNWantsHalfling1
	++ @85 /*What are the components? You said they're expensive?*/ + _bCNAsksHalflingCosts1
	++ @86 /*No, I'm sorry, I'm really happy being a <PRO_RACE>.*/ + _bCNRejectsHalfling1
	
CHAIN VARA1 _bCNRejectsHalfling1
@87 /*Oh well, you can't blame a mother for trying.*/
= @88 /*If you ever change your mind, you know where to find me.*/
DO ~SetGlobal("_BVaraOffersHalfling","GLOBAL",1) SetGlobal("_bVaraWantsGKids","GLOBAL",1)~
EXIT

CHAIN VARA1 _bCNAsksHalflingCosts1
@89 /*Oh, no need to worry about that. I gathered everything I needed years ago just in case Pala or Mazzy developed a taste for the exotic.*/
== MAZZYJ @90 /*Why am I not surprised?*/
== VARA1 @91 /*So how about it <CHARNAME>?*/
END
	+ ~Global("_bImoenHalfling","GLOBAL",0)~ + @92 /*Yes. Let's do it now.*/ + _bCNWantsHalfling1
	+ ~Global("_bImoenHalfling","GLOBAL",1)~ + @92 /*Yes. Let's do it now.*/ + _bCNImoenHalfling1
	+ ~Global("_bImoenHalfling","GLOBAL",0)~ + @86 /*No, I'm sorry, I'm really happy being a <PRO_RACE>.*/ + _bCNRejectsHalfling1
	+ ~Global("_bImoenHalfling","GLOBAL",1)~ + @86 /*No, I'm sorry, I'm really happy being a <PRO_RACE>.*/ + _bCNRejectsHalfling2
	
CHAIN VARA1 _bCNWantsHalfling1
@93 /*Excellent! I'll start the preparations immediately.*/
== MAZZYJ @94 /*<CHARNAME>, are you sure about this? Please do not do this just for me. I am not even sure whether or not I want a family.*/
= @44 /*In addition, I am fairly certain that my mother has no idea how to change you back.*/
END
	++ @95 /*Oh, well in that case I've changed my mind.*/ + _bCNRejectsHalfling1
	++ @96 /*It's not just for you, Mazzy. I've always wanted to be a halfling.*/ + _bCNWantsHalfling2
	++ @97 /*Who cares? I gotta try this.*/ + _bCNWantsHalfling2 
	
CHAIN VARA1 _bCNWantsHalfling2
@98 /*So, <CHARNAME>, this is going to take some time. The rest of your companions might as well go see the town.*/ 
= @48 /*First you're going to need to remove your clothes, take this jar, and spread it all over your body.*/
== MAZZYJ @49 /**sigh* Here we go.*/
= @99 /*I will help you, <CHARNAME>... you have no idea what you have gotten yourself into.*/
DO ~SetGlobal("_bVaraWantsGKids","GLOBAL",1) SetGlobal("_bCNHalfling","GLOBAL",1)~
EXIT
	 
//Other Race Male, Imoen 
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bVaraWantsGKids","GLOBAL",0) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2) GlobalGT("PalaCureFound","GLOBAL",2) GlobalTimerExpired("PalaWakeUp","GLOBAL") !Race(Player1,HALFLING) Gender(Player1,MALE) Global("_bImoenMazzyRomance","GLOBAL",2) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN VARA1 _bVaraWantsGrandKids6
@16 /*Hello, <CHARNAME>, it's good to see you again.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",1)~ THEN @161 /*Mazzy wrote me saying that you were courting her so let me have another look at you.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @162 /*Mazzy wrote me saying that you are now together so let me have another look at you.*/
== VARA1 @17 /*Strong, healthy, reasonably graceful.*/
= @22 /*And you must be Imoen! Graceful, beautiful, well done, Mazzy!*/
= @78 /*Have either of you thought about settling down, raising a family, having children?*/
== MAZZYJ @100 /*Seriously, mother? <CHARNAME> is a <PRO_RACE> and Imoen's both a human and a woman. I cannot have children with either of them.*/
= @25 /*Must I explain to you the mechanics of reproduction?*/
== VARA1 @26 /*Don't mock me. I thought that this might happen. I found this item years ago and I've been saving it just for this moment.*/
= @27 /*You can use this magical girdle to temporarily become a man and get Imoen pregnant. Or vice versa. The transformation is safe, instant, and complete; I've double-checked.*/
= @28 /*Here you go. Enjoy!*/ DO ~GiveItemCreate("_BBELT2",Player1,0,0,0)~
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @29 /*Finally! I've been searching for this girdle. Let me see that!*/
DO ~SetGlobal("_bEdwinTalksVara","GLOBAL",1)~
= @30 /*Yes, now fools I will... (Why is this so hard to put on?)*/
= @31 /*Nothing is happening! Why is nothing happening?*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @32 /*Is that Edwin Odesseiron ? I didn't recognize you.*/
= @33 /*The belt is magically enchanted to fit everyone, but it only changes halflings.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @34 /*Bah, useless! Get it away from me.*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @35 /*Sorry to disappoint you.*/
== MAZZYJ @118 /*Fine, mother, you've had your fun and one of us can now become a man, but neither of them is a halfling.*/
= @102 /*My earlier statement still stands. I cannot have a baby with either Imoen or <CHARNAME>.*/
== VARA1 @103 /*Maybe one of them would rather be a halfling?*/
= @39 /*I have this spell that turns people into halflings. It took me two years to learn and the components cost almost as much as this house, but I've tested it and it works perfectly.*/
== MAZZYJ @40 /*I'm sorry, what?*/
== VARA1 @104 /*I said I can turn <CHARNAME> and Imoen into halflings, if they don't mind.*/
== IMOEN2J @105 /*Well count me in. This sounds fun! What about you, <CHARNAME>?*/
DO ~SetGlobal("_bImoenHalfling","GLOBAL",1)~
END
	++ @106 /*I'm in too. Let's do it now.*/ + _bCNImoenHalfling1
	++ @85 /*What are the components? You said they're expensive?*/ + _bCNAsksHalflingCosts1
	++ @86 /*No, I'm sorry, I'm really happy being a <PRO_RACE>.*/ + _bCNRejectsHalfling2
	
CHAIN VARA1 _bCNRejectsHalfling2
@107 /*Oh well, one is still better than nothing.*/
= @108 /*<CHARNAME>, if you ever change your mind, you know where to find me.*/
DO ~SetGlobal("_BVaraOffersHalfling","GLOBAL",1) SetGlobal("_bVaraWantsGKids","GLOBAL",1)~
= @109 /*Imoen, I will get started immediately.*/
== MAZZYJ @110 /*Are you absolutely certain that you want to do this, Imoen?*/
== IMOEN2J @45 /*You worry too much, Mazzy. This is a great opportunity; when am I going to have another chance like this again?*/
= @46 /*If I don't like it, I'll figure something out.*/
== VARA1 @47 /*So, Imoen, this is going to take some time. The rest of your companions might as well go see the town.*/
= @48 /*First you're going to need to remove your clothes, take this jar, and spread it all over your body.*/
== MAZZYJ @49 /**sigh* Here we go.*/
= @50 /*I will help you, Imoen... you have no idea what you have gotten yourself into.*/
EXIT
	
CHAIN VARA1 _bCNImoenHalfling1
@93 /*Excellent! I'll start the preparations immediately.*/
== MAZZYJ @111 /*<CHARNAME>, Imoen, are you sure about this? Please do not do it just for me. I am not even sure whether or not I want a family.*/
= @44 /*In addition, I am fairly certain that my mother has no idea how to change you back.*/
END
	++ @95 /*Oh, well in that case I've changed my mind.*/ + _bCNRejectsHalfling2
	++ @96 /*It's not just for you, Mazzy. I've always wanted to be a halfling.*/ + _bCNImoenHalfling2
	++ @97 /*Who cares? I gotta try this.*/ + _bCNImoenHalfling2
	
CHAIN VARA1 _bCNImoenHalfling2
@112 /*So, <CHARNAME>, Imoen, this is going to take some time.*/ 
= @48 /*First you're going to need to remove your clothes, take this jar, and spread it all over your body.*/
== MAZZYJ @49 /**sigh* Here we go.*/
= @113 /*I will help you both... you have no idea what you have gotten yourself into.*/
DO ~SetGlobal("_bCNHalfling","GLOBAL",1) SetGlobal("_bVaraWantsGKids","GLOBAL",1)~
EXIT

//Other Race Female, no Imoen 
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bVaraWantsGKids","GLOBAL",0) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2) GlobalGT("PalaCureFound","GLOBAL",2) GlobalTimerExpired("PalaWakeUp","GLOBAL") !Race(Player1,HALFLING) Gender(Player1,FEMALE) OR(2) !Global("_bImoenMazzyRomance","GLOBAL",2) !InParty("Imoen2")~ THEN VARA1 _bVaraWantsGrandKids7
@16 /*Hello, <CHARNAME>, it's good to see you again.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",1)~ THEN @161 /*Mazzy wrote me saying that you were courting her so let me have another look at you.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @162 /*Mazzy wrote me saying that you are now together so let me have another look at you.*/
== VARA1 @17 /*Strong, healthy, reasonably graceful.*/
= @18 /*Have you thought about settling down, raising a family, having children?*/
== MAZZYJ @24 /*Seriously, mother? I bring home a woman and you're still going to pester her about grandchildren?*/
= @25 /*Must I explain to you the mechanics of reproduction?*/
== VARA1 @26 /*Don't mock me. I thought that this might happen. I found this item years ago and I've been saving it just for this moment.*/
= @74 /*You can use this magical girdle to temporarily become a man and get <CHARNAME> pregnant. Or vice versa. The transformation is safe, instant, and complete; I've double-checked.*/
= @28 /*Here you go. Enjoy!*/ DO ~GiveItemCreate("_BBELT2",Player1,0,0,0)~
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @29 /*Finally! I've been searching for this girdle. Let me see that!*/
DO ~SetGlobal("_bEdwinTalksVara","GLOBAL",1)~
= @30 /*Yes, now fools I will... (Why is this so hard to put on?)*/
= @31 /*Nothing is happening! Why is nothing happening?*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @32 /*Is that Edwin Odesseiron ? I didn't recognize you.*/
= @33 /*The belt is magically enchanted to fit everyone, but it only changes halflings.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @34 /*Bah, useless! Get it away from me.*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @35 /*Sorry to disappoint you.*/
== MAZZYJ @114 /*Fine, mother, you've had your fun and one of us can now become a man, but you do see that <CHARNAME> is a <PRO_RACE>, don't you?*/
= @115 /*A <PRO_RACE> and a halfling cannot produce children.*/
== VARA1 @82 /*Maybe <PRO_HESHE> would rather be a halfling?*/
= @39 /*I have this spell that turns people into halflings. It took me two years to learn and the components cost almost as much as this house, but I've tested it and it works perfectly.*/
== MAZZYJ @40 /*I'm sorry, what?*/
== VARA1 @83 /*I said I can turn <CHARNAME> into a halfling, if <PRO_HESHE> doesn't mind.*/
END
	++ @84 /*Really? Great. Let's do it now.*/ + _bCNWantsHalfling1
	++ @85 /*What are the components? You said they're expensive?*/ + _bCNAsksHalflingCosts1
	++ @86 /*No, I'm sorry, I'm really happy being a <PRO_RACE>.*/ + _bCNRejectsHalfling1

	 
	 //Other Race Female, Imoen
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bVaraWantsGKids","GLOBAL",0) OR(2) Global("_bMazzyRomance","GLOBAL",1) Global("_bMazzyRomance","GLOBAL",2) GlobalGT("PalaCureFound","GLOBAL",2) GlobalTimerExpired("PalaWakeUp","GLOBAL") !Race(Player1,HALFLING) Gender(Player1,FEMALE) Global("_bImoenMazzyRomance","GLOBAL",2) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN VARA1 _bVaraWantsGrandKids8
@16 /*Hello, <CHARNAME>, it's good to see you again.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",1)~ THEN @161 /*Mazzy wrote me saying that you were courting her so let me have another look at you.*/
== VARA1 IF ~Global("_bMazzyRomance","GLOBAL",2)~ THEN @162 /*Mazzy wrote me saying that you are now together so let me have another look at you.*/
== VARA1 @17 /*Strong, healthy, reasonably graceful.*/
= @22 /*And you must be Imoen! Graceful, beautiful, well done, Mazzy!*/
= @78 /*Have either of you thought about settling down, raising a family, having children?*/
== MAZZYJ @116 /*Seriously, mother? Both Imoen and <CHARNAME> are women and both are not halflings.*/
= @117 /*I cannot have children with either of them. Must I explain to you the mechanics of reproduction?*/
== VARA1 @26 /*Don't mock me. I thought that this might happen. I found this item years ago and I've been saving it just for this moment.*/
= @80 /*You can use this magical girdle to temporarily become a man and get one of your lovers pregnant. Or vice versa. The transformation is safe, instant, and complete; I've double-checked.*/
= @28 /*Here you go. Enjoy!*/ DO ~GiveItemCreate("_BBELT2",Player1,0,0,0)~
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @29 /*Finally! I've been searching for this girdle. Let me see that!*/
DO ~SetGlobal("_bEdwinTalksVara","GLOBAL",1)~
= @30 /*Yes, now fools I will... (Why is this so hard to put on?)*/
= @31 /*Nothing is happening! Why is nothing happening?*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @32 /*Is that Edwin Odesseiron ? I didn't recognize you.*/
= @33 /*The belt is magically enchanted to fit everyone, but it only changes halflings.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @34 /*Bah, useless! Get it away from me.*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @35 /*Sorry to disappoint you.*/
== MAZZYJ @118 /*Fine, mother, you've had your fun and one of us can now become a man, but neither of them is a halfling.*/
= @102 /*My earlier statement still stands. I cannot have a baby with either Imoen or <CHARNAME>.*/
== VARA1 @103 /*Maybe one of them would rather be a halfling?*/
= @39 /*I have this spell that turns people into halflings. It took me two years to learn and the components cost almost as much as this house, but I've tested it and it works perfectly.*/
== MAZZYJ @40 /*I'm sorry, what?*/
== VARA1 @104 /*I said I can turn <CHARNAME> and Imoen into halflings, if they don't mind.*/
== IMOEN2J @105 /*Well count me in. This sounds fun! What about you, <CHARNAME>?*/
DO ~SetGlobal("_bImoenHalfling","GLOBAL",1)~
END
	++ @106 /*I'm in too. Let's do it now.*/ + _bCNImoenHalfling1
	++ @85 /*What are the components? You said they're expensive?*/ + _bCNAsksHalflingCosts1
	++ @86 /*No, I'm sorry, I'm really happy being a <PRO_RACE>.*/ + _bCNRejectsHalfling2
	
	 
	 //Just Imoen
CHAIN IF WEIGHT #-1 ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bVaraWantsGKids","GLOBAL",0) !Global("_bMazzyRomance","GLOBAL",1) !Global("_bMazzyRomance","GLOBAL",2) GlobalGT("PalaCureFound","GLOBAL",2) GlobalTimerExpired("PalaWakeUp","GLOBAL") Global("_bImoenMazzyRomance","GLOBAL",2) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN VARA1 _bVaraWantsGrandKids9
@119 /*You must be Imoen! Graceful, beautiful, well done, Mazzy!*/
= @23 /*I don't suppose YOU want children?*/
== MAZZYJ @24 /*Seriously, mother? I bring home a woman and you're still going to pester her about grandchildren?*/
= @25 /*Must I explain to you the mechanics of reproduction?*/
== VARA1 @26 /*Don't mock me. I thought that this might happen. I found this item years ago and I've been saving it just for this moment.*/
= @27 /*You can use this magical girdle to temporarily become a man and get Imoen pregnant. Or vice versa. The transformation is safe, instant, and complete; I've double-checked.*/
= @28 /*Here you go. Enjoy!*/ DO ~GiveItemCreate("_BBELT2",Player1,0,0,0)~
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @29 /*Finally! I've been searching for this girdle. Let me see that!*/
DO ~SetGlobal("_bEdwinTalksVara","GLOBAL",1)~
= @30 /*Yes, now fools I will... (Why is this so hard to put on?)*/
= @31 /*Nothing is happening! Why is nothing happening?*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @32 /*Is that Edwin Odesseiron ? I didn't recognize you.*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @33 /*The belt is magically enchanted to fit everyone, but it only changes halflings.*/
== EDWINJ IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @34 /*Bah, useless! Get it away from me.*/
== VARA1 IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @35 /*Sorry to disappoint you.*/
== MAZZYJ @36 /*Fine, mother, you've had your fun and one of us can now become a man, but you do see that Imoen is a human, don't you?*/
= @37 /*A human and a halfling cannot produce children.*/
== VARA1 @38 /*Maybe Imoen would rather be a halfling?*/
= @39 /*I have this spell that turns people into halflings. It took me two years to learn and the components cost almost as much as this house, but I've tested it and it works perfectly.*/
== MAZZYJ @40 /*I'm sorry, what?*/
== VARA1 @41 /*I said that I can turn Imoen into a halfling, if she doesn't mind.*/
== IMOEN2J @42 /*Oooh, yaay! Halfling me!*/
== MAZZYJ @43 /*Imoen, are you sure about this? Please do not do it just for me. I am not even sure that I want a family.*/
= @44 /*In addition, I am fairly certain that my mother has no idea how to change you back.*/
== IMOEN2J @45 /*You worry too much, Mazzy. This is a great opportunity; when am I going to have another chance like this again?*/
= @46 /*If I don't like it, I'll figure something out.*/
== VARA1 @47 /*So, Imoen, this is going to take some time. The rest of your companions might as well go see the town.*/
= @48 /*First you're going to need to remove all of your clothes, take this jar, and spread it all over your body.*/
== MAZZYJ @49 /**sigh* Here we go.*/
= @50 /*I will help you, Imoen... you have no idea what you have gotten yourself into.*/
DO ~SetGlobal("_bVaraWantsGKids","GLOBAL",1) SetGlobal("_bImoenHalfling","GLOBAL",1)~
EXIT

//Post Halfling Transformation
APPEND VARA1 IF WEIGHT #-1 ~Global("_bVaraWantsGKids","GLOBAL",4)~ THEN _bHalflingsNow
	SAY @51 /*It worked! I haven't done that in years.*/
	IF ~Global("_bImoenHalfling","GLOBAL",1) !Global("_bCNHalfling","GLOBAL",1)~ THEN DO ~SetGlobal("_bImoenHalfling","GLOBAL",2) SetGlobal("_bVaraWantsGKids","GLOBAL",5)~ EXTERN MAZZYJ _bImoenHalfling1
	IF ~!Global("_bImoenHalfling","GLOBAL",1) Global("_bCNHalfling","GLOBAL",1)~ THEN DO ~SetGlobal("_bVaraWantsGKids","GLOBAL",5) SetGlobal("_bCNHalfling","GLOBAL",2)~ EXTERN MAZZYJ _bCNHalfling1
	IF ~Global("_bImoenHalfling","GLOBAL",1) Global("_bCNHalfling","GLOBAL",1)~ THEN DO ~SetGlobal("_bVaraWantsGKids","GLOBAL",5) SetGlobal("_bImoenHalfling","GLOBAL",2) SetGlobal("_bCNHalfling","GLOBAL",2)~ EXTERN MAZZYJ _bImoenCNHalflings
	END
END

APPEND MAZZYJ IF ~~ THEN _bImoenHalfling1
	SAY @52 /*That is amazing. I... I cannot believe my eyes.*/
	= @53 /*Imoen, you make a good-looking halfling.*/
	= @54 /**chuckles* I suppose this means I should not break up with you.*/
	IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN EDWINJ _bEdwinWantsSpell
	IF ~OR(3) !InMyArea("Edwin") !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN VARA1 _bImoenHalflingRest
	END
	 
	IF ~~ THEN _bCNHalfling1
	SAY @52 /*That is amazing. I... I cannot believe my eyes.*/
	= @70 /*<CHARNAME>, you make a good-looking halfling.*/
	= @54 /**chuckles* I suppose this means I should not break up with you.*/
	IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN EDWINJ _bEdwinWantsSpell
	IF ~OR(3) !InMyArea("Edwin") !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN VARA1 _bCNHalflingRest
	END

	IF ~~ THEN _bImoenCNHalflings
	SAY @52 /*That is amazing. I... I cannot believe my eyes.*/
	= @72 /*<CHARNAME>, Imoen, you make two good-looking halflings.*/
	= @54 /**chuckles* I suppose this means I should not break up with you.*/
	IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN EDWINJ _bEdwinWantsSpell
	IF ~OR(3) !InMyArea("Edwin") !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN VARA1 _bImoenCNHalflingRest
	END
END

APPEND VARA1 IF ~~ THEN _bImoenHalflingRest
	SAY @55 /*Now, Imoen, your body has just undergone a momentous transformation and you are going to feel a bit odd.*/
	= @56 /*You should probably stay in bed for a day and then take it slow after that.*/
	IF ~~ THEN DO ~SetGlobal("_brestcheck","GLOBAL",2) RestParty()~ EXIT
	END
	
	IF ~~ THEN _bCNHalflingRest
	SAY @71 /*Now, <CHARNAME>, your body has just undergone a momentous transformation and you are going to feel a bit odd.*/
	= @56
	IF ~~ THEN DO ~SetGlobal("_brestcheck","GLOBAL",2) RestParty()~ EXIT
	END

	IF ~~ THEN  _bImoenCNHalflingRest
	SAY @73 /*Now, <CHARNAME> and Imoen, your bodies have just undergone a momentous transformation and you are going to feel a bit odd.*/
	= @56
	IF ~~ THEN DO ~SetGlobal("_brestcheck","GLOBAL",2) RestParty()~ EXIT
	END
END

CHAIN EDWINJ _bEdwinWantsSpell
@57 /*That spell! What was that spell!*/
= @58 /*I must have it. You must change me into an elf.*/
== VARA1 @59 /*An elf? My apologies, I only know how to make people into halflings.*/
= @60 /*Why would I care about making someone into an elf?*/
== EDWINJ @61 /*Because halflings are not immortal, you useless crone! What good would it do to turn me into a halfling?!*/
== VARA1 @62 /*It couldn't hurt any.*/
= @63 /*You know... the wizard who taught me the spell could turn people into anything... elves, dwarves, minotaurs, even dragons.*/
= @64 /*But he wanted me to turn him into a halfling so that was the only version I learned.*/
== EDWINJ @65 /*His name! What was his name? Where can I find him?*/
== VARA1 @66 /*His name is eluding me right now, you know how us old folks are. Sometimes I can't even remember yesterday.*/
= @67 /*Harrold, or Haggoth, or Horgot. Or was it Frederickson?*/
= @68 /*The name won't help you anyway because he's dead. Passed away years ago. No apprentices that I know of; he didn't really like people.*/
= @69 /*So I'm sorry, Edwin, but it's halflings or nothing.*/
== VARA1 IF ~Global("_bImoenHalfling","GLOBAL",2) !Global("_bCNHalfling","GLOBAL",2)~ @55 /*Now, Imoen, your body has just undergone a momentous transformation and you are going to feel a bit odd.*/
== VARA1 IF ~!Global("_bImoenHalfling","GLOBAL",2) Global("_bCNHalfling","GLOBAL",2)~ @71 /*Now, <CHARNAME>, your body has just undergone a momentous transformation and you are going to feel a bit odd.*/
== VARA1 IF ~Global("_bImoenHalfling","GLOBAL",2) Global("_bCNHalfling","GLOBAL",2)~ @73 /*Now, <CHARNAME> and Imoen, your bodies have just undergone a momentous transformation and you are going to feel a bit odd.*/
== VARA1 @56 /*You should probably stay in bed for a day and then take it slow after that.*/
DO ~RestParty()~
EXIT

EXTEND_BOTTOM VARA1 9 /*Thanks to you, my daughter Pala has awakened. I shall hold you dear in my heart, <CHARNAME>.*/
+ ~Global("_BVaraOffersHalfling","GLOBAL",1) !Race(Player1,HALFLING)~ + @120 /*Vara, I've reconsidered. Please make me into a halfling.*/ + _bCNWantsHalfling1
+ ~Global("_BVaraOffersHalfling","GLOBAL",1) !Race(Player1,HALFLING)~ + @121 /*Hello, Vara. It's good to see you again.*/ EXIT
END

//Viconia & Vara Talk
CHAIN IF WEIGHT #-5 ~Global("_bVaraHouseInvite","GLOBAL",1)~ THEN VARA1 _bViconiaInvite
@122 /*Hello, Viconia. I am Vara, Mazzy's mother.*/
= @123 /*Please make yourself at home.*/
== VICONIJ @124 /*Hah, that phrase has such a different meaning when applied to a drow.*/
= @125 /*But... thank you.*/
== VARA1 @126 /*I understand you have no home of your own. If you would like, you may shelter here when not travelling with <CHARNAME>.*/
== VICONIJ @127 /*Really? I could stay in this little halfling house? Would your neighbors not object?*/
== VARA1 @128 /*Trademeet is not a large city. You would be under my care and everyone would understand.*/
= @129 /*Or they would at least have the sense to keep their opinions to themselves.*/
== PALA IF ~!Dead("pala") !Dead("Danno") OR(2) Global("Pala","GLOBAL",0) GlobalTimerExpired("PalaWakeUp","GLOBAL")~
THEN @130 /*Yes, stay with us. You are a friend, and friends must always be given the warmth of the hearth.*/
= @131 /*And of the bed. You could share ours... the erotic secrets of the drow are legendary.*/
== DANNO1 IF ~!Dead("pala") !Dead("Danno") OR(2) Global("Pala","GLOBAL",0) GlobalTimerExpired("PalaWakeUp","GLOBAL")~
THEN @132 /*Really, Pala, there is no need to pressure the poor woman.*/
= @133 /*I am sure she is tired of every man and woman she meets trying to talk her clothes off.*/
= @134 /*Of course if she was willing...*/
== VARA1 IF ~!Dead("pala") !Dead("Danno") OR(2) Global("Pala","GLOBAL",0) GlobalTimerExpired("PalaWakeUp","GLOBAL")~
THEN @135 /*Viconia, you must forgive them, they forget their manners sometimes.*/
= @136 /*I have tried to teach Pala that not every attractive man or woman who walks by is a potential bed-mate.*/
= @137 /*Large folk are more discrete about such things.*/
= @138 /*You are welcome to stay either way.*/
== VICONIJ IF ~!Dead("pala") !Dead("Danno") OR(2) Global("Pala","GLOBAL",0) GlobalTimerExpired("PalaWakeUp","GLOBAL") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @139 /*The nights are cold and potential lovers are few...*/
== VICONIJ @140 /*I accept your offer. Thank you.*/
DO ~SetGlobal("_bViconiaMazzysHouse","GLOBAL",1) SetGlobal("_bVaraHouseInvite","GLOBAL",2)~
EXIT

EXTEND_BOTTOM VICONIP 1 /*Tch! I am through with your worthless, cowardly presence as it is! Oloth plynn dos, you worthless excuse for an abbil. If we meet again, it will be in battle, I assure you!*/ 
IF ~GlobalGT("_bViconiaMazzysHouse","GLOBAL",0)~ THEN + _bVtoHouse
END

CHAIN VICONIP _bVtoHouse
@141 /*I take my leave of you.*/
DO ~EscapeAreaMove("AR2002",480,276,6) SetGlobal("KickedOut","LOCALS",1)~
EXIT

EXTEND_BOTTOM VICONIP 0 /*So be it. It has been amusing to travel with you. If you have further need of me, you can find me in the Graveyard District of Athkatla... away from murderous rivvil eyes.*/ 
IF ~Global("_bViconiaMazzysHouse","GLOBAL",1)~ THEN + _bVtoHouse1
END

CHAIN VICONIP _bVtoHouse1
@142 /*On second thought, I will accept the offer of friendship I received from Mazzy's mother. You will find me at House Fentan.*/
END
	++ @143 /*We'll meet you at Mazzy's house if we need your services again.*/ DO ~EscapeAreaMove("AR2002",480,276,6) SetGlobal("KickedOut","LOCALS",1) SetGlobal("_bViconiaMazzysHouse","GLOBAL",2)~ EXIT
	++ @144 /*Just wait here, Viconia. If we need you again, we'll come back for you.*/ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT

EXTEND_BOTTOM VICONIP 0 /*So be it. It has been amusing to travel with you. If you have further need of me, you can find me in the Graveyard District of Athkatla... away from murderous rivvil eyes.*/ 
IF ~Global("_bViconiaMazzysHouse","GLOBAL",2)~ THEN + _bVtoHouse2
END

CHAIN VICONIP _bVtoHouse2
@145 /*On second thought, I will return to Mazzy's house. Her family's hospitality was... quaint but comforting.*/
END
	++ @143 /*We'll meet you at Mazzy's house if we need your services again.*/ DO ~EscapeAreaMove("AR2002",480,276,6) SetGlobal("KickedOut","LOCALS",1)~ EXIT
	++ @144 /*Just wait here, Viconia. If we need you again, we'll come back for you.*/ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
