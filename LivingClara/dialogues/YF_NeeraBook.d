//Neera Book Banters

//Imoen SOA
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Imoen2") InMyArea("NEERA") Global("YF_NEERABOOKIM","GLOBAL",0)~ THEN BIMOEN2 YF_NeeraBook1
@1 /*So... what'cha reading there?*/
== BNEERA @2 /*“The Grimoire of Absolute Annihilation.” You'd love it!*/
== BIMOEN2 @3 /*"...translated from Gnomish and including all original diagrams." Ooh, sexy.*/
= @4 /*Can I read over your shoulder?*/
DO ~SetGlobal("YF_NEERABOOKIM","GLOBAL",1) ChangeStat("Imoen2",INT,1,ADD)~
== BNEERA @5 /*Sure! Snuggle close. You can help me understand some of this, I don't think I'm getting all of it.*/
EXIT

//Imoen TOB
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Imoen2") InMyArea("NEERA") Global("YF_NEERABOOKIM","GLOBAL",0)~ THEN BIMOEN25 YF_NeeraBook1
@1 /*So... what'cha reading there?*/
== BNEERA25 @2 /*“The Grimoire of Absolute Annihilation.” You'd love it!*/
== BIMOEN25 @3 /*"...translated from Gnomish and including all original diagrams." Ooh, sexy.*/
= @4 /*Can I read over your shoulder?*/
DO ~SetGlobal("YF_NEERABOOKIM","GLOBAL",1) ChangeStat("Imoen2",INT,1,ADD)~
== BNEERA25 @5 /*Sure! Snuggle close. You can help me understand some of this, I don't think I'm getting all of it.*/
EXIT


//Nalia SOA
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Nalia") InMyArea("NEERA") Global("YF_NEERABOOKNA","GLOBAL",0)~ THEN BNALIA YF_NeeraBook2
@6 /*Neera, you've been reading that book during every spare moment. What is it?*/
== BNEERA @7 /*Oh, this? This is “The Grimoire of Absolute Annihilation.” It's awesome!*/
= @8 /*Though I'm not sure I understand everything and I don't want to make a mistake.*/
= @9 /*Do you want to take a turn?*/
== BNALIA @10 /*Oh, can I? That would be wonderful. I remember the spell books in my father's keep... so many good hours...*/
DO ~SetGlobal("YF_NEERABOOKNA","GLOBAL",1) ChangeStat("Nalia",INT,1,ADD)~
= @11 /*Thanks, Neera!*/
EXIT

//Nalia TOB
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Nalia") InMyArea("NEERA") Global("YF_NEERABOOKNA","GLOBAL",0)~ THEN BNALIA25 YF_NeeraBook2
@6 /*Neera, you've been reading that book during every spare moment. What is it?*/
== BNEERA25 @7 /*Oh, this? This is “The Grimoire of Absolute Annihilation.” It's awesome!*/
= @8 /*Though I'm not sure I understand everything and I don't want to make a mistake.*/
= @9 /*Do you want to take a turn?*/
== BNALIA25 @10 /*Oh, can I? That would be wonderful. I remember the spell books in my father's keep... so many good hours...*/
DO ~SetGlobal("YF_NEERABOOKNA","GLOBAL",1) ChangeStat("Nalia",INT,1,ADD)~
= @11 /*Thanks, Neera!*/
EXIT


//Aerie SOA
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Aerie") InMyArea("NEERA") Global("YF_NEERABOOKAER","GLOBAL",0)~ THEN BAERIE YF_NeeraBook3
@12 /*Is-is that a Gnomish book you're reading? It looks just like the ones my uncle Quayle taught me with.*/
= @13 /*Do you read Gnomish too?*/
== BNEERA @14 /*Me? No, it's translated into common. Has all the original pictures though. Have you read this one?*/
== BAERIE @15 /*"The Grimoire of Absolute Annihilation." Are you sure that's safe?*/
== BNEERA @16 /*Of course not. It's about harnessing the power of the universe to blow things up!*/
= @17 /*Do you want to borrow the book when I'm not reading it?*/
DO ~SetGlobal("YF_NEERABOOKAER","GLOBAL",1) ChangeStat("Aerie",INT,1,ADD)~
== BAERIE @18 /*Oh, can I? Thanks, Neera! Sometimes I like blowing things up too.*/
EXIT

//Aerie TOB
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Aerie") InMyArea("NEERA") Global("YF_NEERABOOKAER","GLOBAL",0)~ THEN BAERIE25 YF_NeeraBook3
@12 /*Is-is that a Gnomish book you're reading? It looks just like the ones my uncle Quayle taught me with.*/
= @13 /*Do you read Gnomish too?*/
== BNEERA25 @14 /*Me? No, it's translated into common. Has all the original pictures though. Have you read this one?*/
== BAERIE25 @15 /*"The Grimoire of Absolute Annihilation." Are you sure that's safe?*/
== BNEERA25 @16 /*Of course not. It's about harnessing the power of the universe to blow things up!*/
= @17 /*Do you want to borrow the book when I'm not reading it?*/
DO ~SetGlobal("YF_NEERABOOKAER","GLOBAL",1) ChangeStat("Aerie",INT,1,ADD)~
== BAERIE25 @18 /*Oh, can I? Thanks, Neera! Sometimes I like blowing things up too.*/
EXIT


//CN SOA
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") Global("YF_NEERABOOKCN","GLOBAL",0) InMyArea(Player1) OR(2) Class(Player1,BARD) Class(Player1,MAGE_ALL)~ THEN BNEERA YF_NeeraBook4
@19 /*<CHARNAME>, Clara gave me a book that I thought you might want to look at.*/
DO ~SetGlobal("YF_NEERABOOKCN","GLOBAL",1)~
= @20 /*It's called “The Grimoire of Absolute Annihilation.” You can borrow it when I'm not reading it, if you'd like.*/
END
	++ @21 /*Thanks, Neera, I'll look at it.*/ GOTO YF_ClaraCNGrimoire1
	++ @22 /*No thanks, Neera, I've read it already. In the original Gnomish!*/ GOTO YF_ClaraCNGrimoire2
	++ @23 /*Sorry, Neera, I don't like to read.*/GOTO YF_ClaraCNGrimoire3
	
CHAIN BNEERA YF_ClaraCNGrimoire1
@24 /*You're welcome! You owe me one.*/
DO ~ChangeStat(Player1,INT,1,ADD)~
EXIT

CHAIN BNEERA YF_ClaraCNGrimoire2
@25 /*Of course you did. Well... fine then!*/
EXIT

CHAIN BNEERA YF_ClaraCNGrimoire3
@26 /*So I've noticed. Your loss.*/
EXIT

//CN TOB
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") Global("YF_NEERABOOKCN","GLOBAL",0) InMyArea(Player1) OR(2) Class(Player1,BARD) Class(Player1,MAGE_ALL)~ THEN BNEERA25 YF_NeeraBook4
@19 /*<CHARNAME>, Clara gave me a book that I thought you might want to look at.*/
DO ~SetGlobal("YF_NEERABOOKCN","GLOBAL",1)~
= @20 /*It's called “The Grimoire of Absolute Annihilation.” You can borrow it when I'm not reading it, if you'd like.*/
END
	++ @21 /*Thanks, Neera, I'll look at it.*/ GOTO YF_ClaraCNGrimoire1
	++ @22 /*No thanks, Neera, I've read it already. In the original Gnomish!*/ GOTO YF_ClaraCNGrimoire2
	++ @23 /*Sorry, Neera, I don't like to read.*/GOTO YF_ClaraCNGrimoire3
	
CHAIN BNEERA25 YF_ClaraCNGrimoire1
@24 /*You're welcome! You owe me one.*/
DO ~ChangeStat(Player1,INT,1,ADD)~
EXIT

CHAIN BNEERA25 YF_ClaraCNGrimoire2
@25 /*Of course you did. Well... fine then!*/
EXIT

CHAIN BNEERA25 YF_ClaraCNGrimoire3
@26 /*So I've noticed. Your loss.*/
EXIT


//Edwin SOA
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Edwin") InMyArea("NEERA") Global("YF_NEERABOOKED","GLOBAL",0)~ THEN BEDWIN YF_NeeraBook5
@27 /*"The Grimoire of Absolute Annihilation,” translated FROM Gnomish?*/
DO ~SetGlobal("YF_NEERABOOKED","GLOBAL",1)~
= @28 /*What, was someone sleeping during her Gnomish lessons?*/
== BNEERA @29 /*I never took Gnomish, so there.*/
= @30 /*Why are you bothering me anyway? Don't tell me you want to borrow it.*/
== BEDWIN @31 /*Borrow your "Grimoire for Idiots"? No, I read the real version already... in Gnomish, of course.*/
== BNEERA @32 /*Jerk.*/
EXIT

//Edwin TOB
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Edwin") InMyArea("NEERA") Global("YF_NEERABOOKED","GLOBAL",0)~ THEN BEDWIN25 YF_NeeraBook5
@27 /*"The Grimoire of Absolute Annihilation,” translated FROM Gnomish?*/
DO ~SetGlobal("YF_NEERABOOKED","GLOBAL",1)~
= @28 /*What, was someone sleeping during her Gnomish lessons?*/
== BNEERA25 @29 /*I never took Gnomish, so there.*/
= @30 /*Why are you bothering me anyway? Don't tell me you want to borrow it.*/
== BEDWIN25 @31 /*Borrow your "Grimoire for Idiots"? No, I read the real version already... in Gnomish, of course.*/
== BNEERA25 @32 /*Jerk.*/
EXIT


//Jan SOA
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Jan") InMyArea("NEERA") Global("YF_NEERABOOKJAN","GLOBAL",0)~ THEN BJAN YF_NeeraBook6
@33 /*Is that “The Grimoire of Absolute Annihilation?” I have never read that.*/
== BNEERA @34 /*Do you want to borrow it?*/
== BJAN @35 /*You got me a version translated FROM Gnomish?*/
= @36 /*You clearly don't realize this, Neera, but I read Gnomish, so it would've made more sense to get me a version translated to Gnomish.*/
== BNEERA @37 /*I know that! I didn't get it for...*/
== BJAN @38 /*I suppose I could translate it into Gnomish myself. I can just see it now, "The Grimoire of Absolute Annihilation, translated from Gnomish and with all original diagrams, now translated back into Gnomish by Jan Jansen.”*/
= @39 /*It has all the makings of a bestseller. Well, not among you humans, of course, since none of you read Gnomish...*/
== BNEERA @40 /*I'm a half-elf!*/
== BJAN @41 /*I don't see you elves really buying it either, given that you're all too snooty to learn Gnomish.*/
== BNEERA @42 /*I'm a HALF-ELF! One parent was an elf and one parent was a human!*/
== BJAN @43 /*Not that I ever learned Elvish either. In fact, I don't know how we've been having this conversation given that I'm speaking Gnomish and you're babbling away in Elvish.*/
== BNEERA @44 /*We. Are. Both. Speaking. Common!*/
== BJAN @45 /*There you go again, dearie, acting like I can understand you.*/
= @46 /*I will borrow your book though, thank you!*/
DO ~SetGlobal("YF_NEERABOOKJAN","GLOBAL",1) ChangeStat("Jan",INT,1,ADD)~
= @47 /*Oh look, it's in Common! You may not realize this, given that I'm a gnome and you can't understand a word I'm saying, but I read Common too.*/
== BNEERA @48 /*Aaaaaagh!*/
EXIT

//Jan TOB
CHAIN IF ~Global("YF_NeeraHasGrimoire","GLOBAL",1) IfValidForPartyDialog("NEERA") IfValidForPartyDialog("Jan") InMyArea("NEERA") Global("YF_NEERABOOKJAN","GLOBAL",0)~ THEN BJAN25 YF_NeeraBook6
@33 /*Is that “The Grimoire of Absolute Annihilation?” I have never read that.*/
== BNEERA25 @34 /*Do you want to borrow it?*/
== BJAN25 @35 /*You got me a version translated FROM Gnomish?*/
= @36 /*You clearly don't realize this, Neera, but I read Gnomish, so it would've made more sense to get me a version translated to Gnomish.*/
== BNEERA25 @37 /*I know that! I didn't get it for...*/
== BJAN25 @38 /*I suppose I could translate it into Gnomish myself. I can just see it now, "The Grimoire of Absolute Annihilation, translated from Gnomish and with all original diagrams, now translated back into Gnomish by Jan Jansen.”*/
= @39 /*It has all the makings of a bestseller. Well, not among you humans, of course, since none of you read Gnomish...*/
== BNEERA25 @40 /*I'm a half-elf!*/
== BJAN25 @41 /*I don't see you elves really buying it either, given that you're all too snooty to learn Gnomish.*/
== BNEERA25 @42 /*I'm a HALF-ELF! One parent was an elf and one parent was a human!*/
== BJAN25 @43 /*Not that I ever learned Elvish either. In fact, I don't know how we've been having this conversation given that I'm speaking Gnomish and you're babbling away in Elvish.*/
== BNEERA25 @44 /*We. Are. Both. Speaking. Common!*/
== BJAN25 @45 /*There you go again, dearie, acting like I can understand you.*/
= @46 /*I will borrow your book though, thank you!*/
DO ~SetGlobal("YF_NEERA25BOOKJAN","GLOBAL",1) ChangeStat("Jan",INT,1,ADD)~
= @47 /*Oh look, it's in Common! You may not realize this, given that I'm a gnome and you can't understand a word I'm saying, but I read Common too.*/
== BNEERA25 @48 /*Aaaaaagh!*/
EXIT
