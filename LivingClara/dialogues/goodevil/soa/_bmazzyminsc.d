
//Mazzy-Minsc Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyMinscTalk","GLOBAL",2)~ THEN MAZZYJ _bMazzyMinsc1
@1 /*Minsc, although your fighting style is most unusual, I cannot criticize its effectiveness.*/
DO ~SetGlobal("_bMazzyMinscTalk","GLOBAL",3)~
== MINSCJ @2 /*It is the fighting of Rashemen! I am a berserker! Have you noticed my beserkering?*/
== MAZZYJ @3 /*It was impossible to miss. You are a long way from home.*/
== MINSCJ @4 /*Yes! Boo and I are on our dejemma, but we lost our witch and now I do not know if we will ever see Rashemen again.*/
== MAZZYJ @5 /*Oh... Dynaheir. My apologies for bringing it up... I did not wish to cause you pain.*/
== MINSCJ IF ~Global("MinscWitch","GLOBAL",1) IfValidForPartyDialog("Aerie")~ THEN @6 /*As Boo would say, there is no pain in the truth. We failed our Wychalarn and she passed beyond the veil, but now we have another witch and this one we shall not lose!*/
== AERIEJ IF ~Global("MinscWitch","GLOBAL",1) IfValidForPartyDialog("Aerie")~ THEN @7 /*He--he means me. I am his new witch, I think. He means to protect me... to protect all of us.*/
== MINSCJ IF ~OR(2) !Global("MinscWitch","GLOBAL",1) !IfValidForPartyDialog("Aerie")~ THEN @8 /*As Boo would say, there is no pain in the truth. We failed our Wychalarn and she passed beyond the veil, but we can still give evil a mighty kick. And we can still protect our friends!*/
== MAZZYJ @9 /*We could not ask for a more able or loyal protector, Minsc. I am glad to count you among my companions.*/
== MINSCJ @10 /*And we, you! All evil will tremble when they hear our battle cries!*/
EXIT

//Mazzy-Minsc-Jan Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyMinscJanTalk","GLOBAL",2)~ THEN MAZZYJ _bMazzyMinscJan1
@11 /*Forgive my curiosity, Minsc, but I must know about Boo.*/
DO ~SetGlobal("_bMazzyMinscJanTalk","GLOBAL",3)~
== MINSCJ @12 /*What would you like to know? There is much about Boo worth telling.*/
= @13 /*He is a miniature giant space hamster, and he has been my friend for many years.*/
== MAZZYJ @14 /*A miniature giant space hamster? That cannot be a real thing.*/
== JANJ @15 /*Oh but it is! They were created by gnomes, you know, the giant space hamsters, not the miniature kind. You see, giant space hamsters powered the sidewheeler ships, by a process you could not possibly understand.*/
= @16 /*Their meat is also delicious, in fact I had a cousin...*/
== MINSCJ @17 /*There will be no eating of hamsters!*/
== JANJ @18 /*Certainly not the miniature kind. Boo would not be much more than a mouthful. Unless we could grow him... in fact, with the right spell perhaps we could create a race of giant miniature giant space hamsters and open up a sandwich shop.*/
== MINSCJ @19 /*Hamsters do like sandwiches! Boo always has room for another sandwich.*/
== JANJ @20 /*Sandwiches however are too roomy for Boo. If I could just borrow him, I believe I could copy him and write a spell of giant miniature giant space hamster summoning.*/
= @21 /*Now I know what you're thinking, "Brilliant idea, Jan, but the hamsters will unsummon upon death so how will we put their meat in a sandwich?"*/
= @22 /*And you are right, which is why we need a spell of giant miniature giant space hamster protection from unsummoning, which we will cast on the hamsters after we summon them but before we carve them into appropriately sized blocks of delicious hamster meat...*/
== MINSCJ @23 /*I said that there will be no eating of hamsters! Now you have asked for it! Boo will have your eyes!*/
== MAZZYJ @24 /*Calm yourself, Minsc. Jan's stories are without meaning as usual. He is overly talkative, but if we killed everyone who annoyed us, how virtuous would we be?*/
== MINSCJ @25 /*You are right, Mazzy.*/
= @26 /*Jan, you have been granted a reprieve, but next time you anger Boo, I will not stand in his way.*/
EXIT


//TOB Version
//Mazzy-Minsc Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyMinscTalk","GLOBAL",2)~ THEN MAZZY25J _bMazzyMinsc1
@1 /*Minsc, although your fighting style is most unusual, I cannot criticize its effectiveness.*/
DO ~SetGlobal("_bMazzyMinscTalk","GLOBAL",3)~
== MINSC25J @2 /*It is the fighting of Rashemen! I am a berserker! Have you noticed my beserkering?*/
== MAZZY25J @3 /*It was impossible to miss. You are a long way from home.*/
== MINSC25J @4 /*Yes! Boo and I are on our dejemma, but we lost our witch and now I do not know if we will ever see Rashemen again.*/
== MAZZY25J @5 /*Oh... Dynaheir. My apologies for bringing it up... I did not wish to cause you pain.*/
== MINSC25J IF ~Global("MinscWitch","GLOBAL",1) IfValidForPartyDialog("Aerie")~ THEN @6 /*As Boo would say, there is no pain in the truth. We failed our Wychalarn and she passed beyond the veil, but now we have another witch and this one we shall not lose!*/
== AERIEJ IF ~Global("MinscWitch","GLOBAL",1) IfValidForPartyDialog("Aerie")~ THEN @7 /*He--he means me. I am his new witch, I think. He means to protect me... to protect all of us.*/
== MINSC25J IF ~OR(2) !Global("MinscWitch","GLOBAL",1) !IfValidForPartyDialog("Aerie")~ THEN @8 /*As Boo would say, there is no pain in the truth. We failed our Wychalarn and she passed beyond the veil, but we can still give evil a mighty kick. And we can still protect our friends!*/
== MAZZY25J @9 /*We could not ask for a more able or loyal protector, Minsc. I am glad to count you among my companions.*/
== MINSC25J @10 /*And we, you! All evil will tremble when they hear our battle cries!*/
EXIT

//Mazzy-Minsc-Jan Talk
CHAIN IF WEIGHT #-1 ~Global("_bMazzyMinscJanTalk","GLOBAL",2)~ THEN MAZZY25J _bMazzyMinscJan1
@11 /*Forgive my curiosity, Minsc, but I must know about Boo.*/
DO ~SetGlobal("_bMazzyMinscJanTalk","GLOBAL",3)~
== MINSC25J @12 /*What would you like to know? There is much about Boo worth telling.*/
= @13 /*He is a miniature giant space hamster, and he has been my friend for many years.*/
== MAZZY25J @14 /*A miniature giant space hamster? That cannot be a real thing.*/
== JAN25J @15 /*Oh but it is! They were created by gnomes, you know, the giant space hamsters, not the miniature kind. You see, giant space hamsters powered the sidewheeler ships, by a process you could not possibly understand.*/
= @16 /*Their meat is also delicious, in fact I had a cousin...*/
== MINSC25J @17 /*There will be no eating of hamsters!*/
== JAN25J @18 /*Certainly not the miniature kind. Boo would not be much more than a mouthful. Unless we could grow him... in fact, with the right spell perhaps we could create a race of giant miniature giant space hamsters and open up a sandwich shop.*/
== MINSC25J @19 /*Hamsters do like sandwiches! Boo always has room for another sandwich.*/
== JAN25J @20 /*Sandwiches however are too roomy for Boo. If I could just borrow him, I believe I could copy him and write a spell of giant miniature giant space hamster summoning.*/
= @21 /*Now I know what you're thinking, "Brilliant idea, Jan, but the hamsters will unsummon upon death so how will we put their meat in a sandwich?"*/
= @22 /*And you are right, which is why we need a spell of giant miniature giant space hamster protection from unsummoning, which we will cast on the hamsters after we summon them but before we carve them into appropriately sized blocks of delicious hamster meat...*/
== MINSC25J @23 /*I said that there will be no eating of hamsters! Now you have asked for it! Boo will have your eyes!*/
== MAZZY25J @24 /*Calm yourself, Minsc. Jan's stories are without meaning as usual. He is overly talkative, but if we killed everyone who annoyed us, how virtuous would we be?*/
== MINSC25J @25 /*You are right, Mazzy.*/
= @26 /*Jan, you have been granted a reprieve, but next time you anger Boo, I will not stand in his way.*/
EXIT
