//1st Saradas/Clara Banter
CHAIN IF ~InMyArea("!sartob") !ActuallyInCombat() IsValidForPartyDialog("!sartob") IfValidForPartyDialog("_bClara") Global("_BBCLARASAR","GLOBAL",0)~ THEN B_BCLA25 _bClaraSaradas1
@1 /*Hey, Saradas, can I ask you a question?*/
DO ~SetGlobal("_BBCLARASAR","GLOBAL",1)~
== ~!SAR25B~ @2 /*Of course. Curious minds should be rewarded and the young will not learn unless the elders share their wisdom. What do you wish to know?*/
== B_BCLA25 @3 /*Well, I'm sure you weren't expecting to be summoned by <CHARNAME>... will someone be missing you? Do you have any family waiting for your return?*/
== ~!SAR25B~ @4 /*Ahh, I am afraid not. I have spent many years pursuing knowledge and arcane artifacts, and while I do not regret my choice, I have never had a family or a place to call my own.*/
= @5 /*Indeed, rumors of lost magics have often led my footsteps and while the temple will have noticed my absence, this isn't the first time that I've left suddenly. */
== B_BCLA25 @6 /*Oh, good. I'm glad to hear that.*/
== ~!SAR25B~ @7 /*You are?*/
== B_BCLA25 @8 /*Yeah, I mean, you're REALLY old. I was worried that <CHARNAME> had kidnapped somebody's great-grandfather and they'd try to track you down.*/
= @9 /*But if you don't have any family, that means we can keep your stuff if you die in your sleep. That's such a relief! Thanks!*/
== ~!SAR25B~ @10 /*That was... interesting.*/
EXIT

//2nd Saradas banter, he talks first
CHAIN IF ~InMyArea("_bClara") !ActuallyInCombat() IsValidForPartyDialog("!sartob") IfValidForPartyDialog("_bClara") Global("_BBCLARASAR","GLOBAL",1)~ THEN ~!SAR25B~ _bClaraSaradas2
@11 /*You are staring quite intently, Clara. Is there something that you need?*/
DO ~SetGlobal("_BBCLARASAR","GLOBAL",2)~
== B_BCLA25 @12 /*Nope, just making sure you're still alive.*/
== ~!SAR25B~ @13 /*Indeed I am. Sorry to disappoint you.*/
== B_BCLA25 @14 /*I'm not disappointed. I'm impressed. I've never seen ANYONE as old as you and I want to know your secret. How'd you stay alive for centuries?*/
== ~!SAR25B~ @15 /*Centuri- How old do you think I am?*/
== B_BCLA25 @16 /*I don't know. Two hundred? You look like you're two hundred. But you fight like a young man.*/
== ~!SAR25B~ @17 /*You are an odd child, Clara, with an odd view of life. I do not know whether to be flattered or insulted when you speak.*/
= @18 /*However, if you truly wish to know the secrets of longevity, I would be pleased to instruct you if I can.*/
== B_BCLA25 @19 /*Really? That's fantastic! Teach me how to live forever... Well, as long as it's easy and I don't have to change at all.*/
== ~!SAR25B~ @20 /*I see...*/
= @21 /*In that case, I'm afraid it's magic, child, and you just don't have the skill.*/
DO ~ChangeStat("_bClara",SAVEVSDEATH,-1,ADD) ChangeStat("!sartob",SAVEVSDEATH,-1,ADD)~
== B_BCLA25 @22 /*Aww. That's too bad. Thanks for trying anyway.*/
EXIT
