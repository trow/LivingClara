BEGIN _bclaraj

//Beginning talk moved to _bclara

//If you go see Renal Bloodscalp with Clara.
CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(0) Global("_bClaraRenal","GLOBAL",1) InParty("_bClara") Global("_bRenalClara","GLOBAL",1) !Global("_bRenalOHHFAK","GLOBAL",2)~ THEN RENAL _bRenalClara1
@1 /*There you are, Clara. I had assumed you were dead since people who dare to miss their payments usually are.*/
= @2 /*I suppose you have some outlandish explanation as to why you couldn't pay your dues on time like everyone else?*/
DO ~SetGlobal("_bClaraRenal","GLOBAL",2) SetGlobal("_bRenalClara","GLOBAL",2)~
== _BCLARAJ @3 /*Actually, sir, I do. You see, I was possessed by an ancient vampire named Hexxat who was using me to recruit <CHARNAME> to kill Dragomir, an even ancienter vampire whom she didn't like. We killed Dragomir, or at least <CHARNAME> did... I was possessed so I can't really say I did anything... and then Hexxat killed me, so <CHARNAME> killed her, but then <CHARNAME> raised me so...*/
== RENAL @4 /*Stop. Just stop. I don't care. You are with <CHARNAME> and that is all the explanation I require. Go aid <PRO_HIMHER> in <PRO_HISHER> missions and all will be forgiven.*/
= @5 /*As for you, <CHARNAME>, good work destroying those vampires; it pleases me to hear of dissension and infighting in their ranks. There is no need for you to dally here; get back out there and continue the good work.*/
EXIT

//Clara-Imoen Talk
CHAIN IF WEIGHT #-1 ~Global("_bCITalk","GLOBAL",1)~ THEN _BCLARAJ _bClaraImoen
@6 /*Hello.*/
DO ~SetGlobal("_bCITalk","GLOBAL",2)~
== IMOEN2J @7 /*Oh, I didn't see you there. Hi, I'm Imoen. <CHARNAME> didn't introduce us.*/
= @8 /*You must be really good at hiding. I usually see everyone.*/
== _BCLARAJ @9 /*I have a way of fading from memory when I want to; even the people who are looking for me often forget that I am there.*/
= @10 /*So you're the sister we came all this way to rescue.*/
= @11 /*And we did. We stormed the fortress and rescued the maiden.*/
= @12 /*We won. Now we live happily ever after. Right?*/
== IMOEN2J @13 /*Yup! Just as soon as we get back to Athkatla.*/
= @14 /*You seem a bit down. Let's try this again.*/
= @15 /*Hi, I'm Imoen. I just had my soul ripped from my body. What's your story?*/
== _BCLARAJ @16 /*My family was killed, a vampire killed me, and then <CHARNAME> saved me, so now I follow <PRO_HESHE> around and try not to die horribly.*/
= @17 /*Pretty much normal from what I've seen.*/
== IMOEN2J @18 /*Yeah, that's basically everyone's story. We're a party of the lost and the alone.*/
= @19 /*Come on, keep your head up. We have another round of trying-not-to-die-horribly ahead of us.*/
EXIT

//Clara-Viconia Talk, after can poison
CHAIN IF WEIGHT #-1 ~Global("_bclarapoisontalk","GLOBAL",1)~ THEN _BCLARAJ _bClaraViconiaPoison
@20 /*Home sweet home. The smell of this bar always brings me back.*/
DO ~SetGlobal("_bclarapoisontalk","GLOBAL",2)~
== DRUNK1 @21 /*Looksh at that sweet thing. 'ey girlie! Come over here *burp* and gives us a kish.*/
== DRUNK2 @22 /*Now Garoll, my *hic* friend... don't keepsh 'er all to yourshelf.*/
= @23 /*'ey sweet tits, I needs a kish too!*/
== _BCLARAJ @24 /*Them?*/
== VICONIJ @25 /*They're drunk rivvin males. The world will never, ever miss drunk rivvin males.*/
== _BCLARAJ @26 /*All right, then. Watch me work. You won't see a thing.*/
= @27 /*Garoll, was it? You're such a strong, handsome man. Of course I will give you a kiss. There. One for the top of your head. Ohh, feel your arm, you're so strong.*/
= @28 /*And one for your friend. Oooh, he's strong too.*/
= @29 /*Now you two boys sit right here while I go chat with my friend over there. We need to freshen up, but we'll see you soon.*/
== VICONIJ @30 /*Are you quite finished? I want to vomit just from listening to you.*/
== _BCLARAJ @31 /*Now, where to?*/
== VICONIJ @32 /*Now we wait and watch them die.*/
== _BCLARAJ @33 /*So what do we do while we wait?*/
= @34 /*I know! Let's play a game! See it's called the Lying Game and...*/
== VICONIJ @35 /*I do not play games.*/
== _BCLARAJ @36 /*But it's fun. See, first you...*/
== VICONIJ @37 /*Shh.*/
== _BCLARAJ @38 /*You're no fun at all.*/
== DRUNK1 @39 /**hic* I don't feel so good.*/
DO ~Kill("drunk1")~
== DRUNK2 @40 /**burp* Garoll, you okay? Ohhhh.*/
DO ~Kill("drunk2")~
== VICONIJ @41 /*That was quicker than I expected. You used more than required to destroy such weaklings.*/
== _BCLARAJ @42 /*Just another couple of drunks who couldn't hold their liquor. Can we go now?*/
== VICONIJ @43 /*Yes. My day is a little brighter already.*/
EXIT


