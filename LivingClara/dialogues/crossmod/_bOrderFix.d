//To allow you to finish Mazzy's quest if Keldorn has the Radiant Heart
//Lines that build off Prelates first line are duplicated here so things install right.

//Prelate Conversations - all additions
EXTEND_TOP HPRELATE %_bMazzyNPCFix1%   /*It is good to see you again, Keldorn*/
	+ ~Global("_bMazzyJoinOrder","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @42 /*Before we go, Keldorn actually needs to talk to you.*/ GOTO _bkeldmaz7A
	+ ~Global("_bMazzyNeedsSponsors","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @73 /*We have found a second sponsor for Mazzy.*/ GOTO _bkeldmaz13
	+ ~Global("_bMazzyKillEye","GLOBAL",1) Dead("UnseeingEye") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @86 /*I have found and defeated the Unseeing Eye, a blind beholder. The cult will not survive without its god.*/ GOTO _bMazzyOrderQuests2
	+ ~Global("_bMazzyAvengeParty","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Dead("shadel") Dead("ShaDra01")~ + @89 /*The Shade Lord and his Shadow Dragon are dead. Mazzy's party is avenged.*/ GOTO _bMazzyOrderQuests3
	+ ~Dead("cefald01") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyTrademeet","GLOBAL",1)~ + @91 /*Trademeet is saved. The animal attacks have stopped.*/ GOTO _bMazzyOrderQuests4
	+ ~Global("_bMazzyToSeeRyan","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @95 /*We have done everything Sir Ryan Trawl has asked of us. He said we should return to you.*/ GOTO _bMazzyOrderQuests6
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Imoen2") !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bAlmostRescuedImoen
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bRescuedImoenforPrelate
END

EXTEND_TOP HPRELATE %_bMazzyNPCFix2%   /*Keldorn... I am pleased to welcome you back amongst us.  You seem well.  Have you business with me, <CHARNAME>?*/
	+ ~Global("_bMazzyJoinOrder","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @43 /*Actually, Keldorn is the one who needs to talk to you.*/ GOTO _bkeldmaz7A
	+ ~Global("_bMazzyNeedsSponsors","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @73 /*We have found a second sponsor for Mazzy.*/ GOTO _bkeldmaz13
	+ ~Global("_bMazzyKillEye","GLOBAL",1) Dead("UnseeingEye") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @86 /*I have found and defeated the Unseeing Eye, a blind beholder. The cult will not survive without its god.*/ GOTO _bMazzyOrderQuests2
	+ ~Global("_bMazzyAvengeParty","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Dead("shadel") Dead("ShaDra01")~ + @89 /*The Shade Lord and his Shadow Dragon are dead. Mazzy's party is avenged.*/ GOTO _bMazzyOrderQuests3
	+ ~Dead("cefald01") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyTrademeet","GLOBAL",1)~ + @91 /*Trademeet is saved. The animal attacks have stopped.*/ GOTO _bMazzyOrderQuests4
	+ ~Global("_bMazzyToSeeRyan","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @95 /*We have done everything Sir Ryan Trawl has asked of us. He said we should return to you.*/ GOTO _bMazzyOrderQuests6
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Imoen2") !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bAlmostRescuedImoen
	+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("_bMazzyMustRescueImoen","GLOBAL",1) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) !Global("_bMazzyJoinOrder","GLOBAL",6)~ + @104 /*Mazzy and I have rescued Imoen.*/ GOTO _bRescuedImoenforPrelate
END

CHAIN HPRELATE _bkeldmaz7A
@440 /*Of course, I would be pleased to speak with him.*/
DO ~SetGlobal("_bMazzyJoinOrder","GLOBAL",3)~
EXIT

//Prelate Conversations - if still need a sponsor
CHAIN HPRELATE _bkeldmaz13
@74 /*Oh? Who is it?*/
END
	++ @75 /*Nevermind, we will keep looking.*/ EXIT
	+ ~Global("AnomenIsKnight","GLOBAL",0) Global("AnomenIsNotKnight","GLOBAL",0) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ + @69 /*What about you, Anomen?*/ EXTERN ANOMENJ _bkeldmaz11
	+ ~Global("AnomenIsKnight","GLOBAL",1) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ + @69 /*What about you, Anomen?*/ EXTERN ANOMENJ _bkeldmaz9
	+ ~Global("PaladinOrder","GLOBAL",1)~ + @70 /*I will sponsor Mazzy.*/ EXTERN MAZZYJ _bkeldmaz12
	+ ~Global("_bGarrenSponsorsMazzy","GLOBAL",1)~ + @76 /*Garren Windspear has agreed to sponsor Mazzy. I have his note here.*/ GOTO _bkeldmaz14

CHAIN ANOMENJ _bkeldmaz9
@60 /*I will speak for the halfling.*/
== MAZZYJ @61 /*You? I thought you hated me?*/
== ANOMENJ @62 /*I admit I was jealous of you, Mazzy. I was offended that you, a tiny halfling women of common birth, should be a knight when I was not.*/
= @63 /*But I have made my peace with it. After all, we are both knights now, are we not?*/
= @64 /*You are a great warrior with a noble spirit, and you will make a fine addition to our ranks.*/
== MAZZYJ @65 /*Thank you. This means so much to me.*/
== HPRELATE @66 /*You have your sponsors, Mazzy, but there are still tasks you must complete before you can be one of us. Speak to me again in a moment.*/
DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",2)~
EXIT

CHAIN ANOMENJ _bkeldmaz11
@71 /*I am just a squire, <CHARNAME>, not a knight like the giant Mazzy Fentan. How could an unimportant foot soldier like myself speak for one so worthy? Go find someone else.*/
DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",1) AddJournalEntry (@1015,QUEST)~ 
EXIT

CHAIN MAZZYJ _bkeldmaz12
@72 /*Oh thank you, <CHARNAME>!*/
== HPRELATE @66 /*You have your sponsors, Mazzy, but there are still tasks you must complete before you can be one of us. Speak to me again in a moment.*/
DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",2)~
EXIT

CHAIN HPRELATE _bkeldmaz14
@77 /*We will of course confirm this, but you seem to have your sponsors, Mazzy.*/
= @78 /*However, there are still tasks you must complete before you can be one of us. Speak to me again in a moment.*/
DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",2)~
EXIT 

APPEND HPRELATE IF WEIGHT #-3 ~Global("_bMazzyNeedsSponsors","GLOBAL",2) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN _bkeldmaz15
SAY @79 /*Mazzy, you have your sponsors to join the Order. However, we must ensure that our decision is beyond approach when adding our first non-human member.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyNeedsSponsors","GLOBAL",3)~ GOTO _bMazzyOrderQuests1
	END
END

CHAIN HPRELATE _bMazzyOrderQuests1 
@80 /*Here is what you need to do:*/
== HPRELATE IF ~!Dead("UnseeingEye")~ THEN @81 /*The Cult of the Unseeing Eye still plagues the city. Your mentor, Keldorn, was sent on a mission to investigate and end this threat but he has not yet completed it. You must help him do so.*/
DO ~SetGlobal("_bMazzyKillEye","GLOBAL",1)~
== HPRELATE IF ~OR(2) !Dead("shadel") !Dead("ShaDra01")~ THEN @82 /*You have new companions now, but the Shade Lord and the Shadow Dragon Thaxll'ssillyia murdered your previous companions. They must be avenged. Go do so and then speak to me again.*/
DO ~SetGlobal("_bMazzyAvengeParty","GLOBAL",1)~
== HPRELATE IF ~!Dead("cefald01")~ THEN @83 /*Your home town of Trademeet is under attack by wild beasts. You must secure your home before we can proceed.*/
DO ~SetGlobal("_bMazzyTrademeet","GLOBAL",1)~
== HPRELATE IF ~Dead("shadel") Dead("ShaDra01") Dead("cefald01") Dead("UnseeingEye") Global("_bMazzyToSeeRyan","GLOBAL",0)~ THEN @84 /*I cannot think of anything at the moment, but speak with Sir Ryan Trawl. He may have a quest for you.*/
DO ~SetGlobal("_bMazzyToSeeRyan","GLOBAL",1)~
== MAZZYJ @85 /*I will do so immediately.*/
DO ~AddJournalEntry (@1016,QUEST)~ /*Another barrier
Although Mazzy has been sponsored to join the Order, Prelate Wessalen asked her to complete a series of quests to prove her worth. I am starting to wonder if the man truly intends to allow Mazzy membership at all. However, this clearly means much to my companion and I intended to complete most of these tasks anyway.*/
EXIT


APPEND HPRELATE IF ~~ THEN _bMazzyOrderQuests2
SAY @87 /*Excellent. The victory of light over shadow is always to be celebrated.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyKillEye","GLOBAL",2)~ GOTO _bMOQ2
	END
	
	IF ~~ THEN  _bMOQ2
	SAY @88 /*I have another task for you.*/
	IF ~~ THEN GOTO  _bMazzyOrderQuests1
	END
	
	IF ~~ THEN _bMazzyOrderQuests3
	SAY @90 /*Wonderful. You are true heroes.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyAvengeParty","GLOBAL",2)~ GOTO _bMOQ2
	END

	IF ~~ THEN _bMazzyOrderQuests4
	SAY @92 /*So I have heard, and the order thanks you.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyTrademeet","GLOBAL",2)~ GOTO _bMOQ2
	END
END


CHAIN HPRELATE  _bMazzyOrderQuests6
@96 /*Really? Well, this is inconvenient.*/
DO ~SetGlobal("_bMazzyToSeeRyan","GLOBAL",3)~
= @97 /*Hmm, there must be something else...*/
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
THEN @98 /*Perhaps she has done everything the Order requires?*/
== HPRELATE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @99 /*No, no... yes! Sir Mazzy, your friend, <CHARNAME>, <PRO_HESHE> needs to rescue that maiden, Imoen, from an evil wizard.*/
== HPRELATE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @100 /*You are a knight, go rescue your maiden. We will speak more when you return.*/
== MAZZYJ IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @101 /*I will accomplish this and return immediately.*/
DO ~SetGlobal("_bMazzyMustRescueImoen","GLOBAL",1)~
== HPRELATE IF ~OR(2) GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%) !Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @102 /**sigh* She has done everything that we require. Mazzy, congratulations, you are now a member of the Order of the Radiant Heart.*/
== MAZZYJ IF ~OR(2) GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%) !Global("C#IM_ImoenStays","GLOBAL",0)~
THEN @103 /*Thank you, I have dreamed of this for so long. You will not regret it.*/
DO ~SetGlobal("_bMazzyJoinOrder","GLOBAL",6) AddXPObject("Mazzy",250000) ReputationInc(1) AddJournalEntry(@1017,QUEST_DONE)~ /*A Member At Last
The Order of the Radiant Heart has finally run out of excuses to keep Mazzy from joining their illustrious membership. If the prelate had realized her stubbornness earlier, he could have saved us all a lot of trouble. But I am pleased to know that my friend has finally realized her long held dream.*/
EXIT

CHAIN HPRELATE _bAlmostRescuedImoen
@105 /*Well then, where is she? Return when you have her.*/
EXIT

CHAIN HPRELATE _bRescuedImoenforPrelate
@106 /*Well then, where is she?*/
== IMOEN2J @107 /*Here! I'm right here! See! All rescued!*/
= @108 /*So has Mazzy completed every single wild-goose-chase you could possibly think of?*/
== HPRELATE @102 /**Sigh* Yes. She has done everything that we require. Mazzy, congratulations, you are now a member of the Order of the Radiant Heart.*/
== MAZZYJ @103 /*Thank you, I have dreamed of this for so long. You will not regret it.*/
DO ~SetGlobal("_bMazzyJoinOrder","GLOBAL",6) AddXPObject("Mazzy",250000) ReputationInc(1) AddJournalEntry(@1017,QUEST_DONE)~
EXIT
