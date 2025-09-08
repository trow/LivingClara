//Start of Clara NPC quest

//If you haven't talked to Rose yet
CHAIN IF WEIGHT #-1 ~Global("_bRoseClaraTimer","GLOBAL",2)~ THEN _BCLARAJ _broseclaranudge
@1 /*Hey, <CHARNAME>, can we go to the Bridge District whenever it's convenient? I heard an old friend of mine might be working there.*/
DO ~SetGlobal("_bRoseClaraTimer","GLOBAL",3) AddJournalEntry(@999,USER)~ /*A Favor for Clara

Clara would like us to travel to the Bridge District. She's hoping to find a friend and from what I know about her past, she likely means one of the working girls.*/
END
	++ @2 /*We don't have time for that.*/ + _broseclaranudgeno
	++ @3 /*Of course.*/ + _broseclaranudgeyes
	
CHAIN _BCLARAJ _broseclaranudgeno
@4 /*Fine then. (Maybe I'll just sneak off and check on her anyway.)*/
EXIT

CHAIN _BCLARAJ _broseclaranudgeyes
@5 /*Thanks! You're the best.*/
EXIT

//Rose Talk
CHAIN IF WEIGHT #-1 ~IfValidForPartyDialog("_bClara") Global("_bRoseClara","GLOBAL",0)~ THEN MURDGIRL _broseclara
@83 /*Oh, honey, I'm not walking the right side of the street for what you want. I can point you in the right direction, though.*/
DO ~SetGlobal("_bRoseClara","GLOBAL",1)~
== _BCLARAJ @84 /*Rose? It is you! What are you doing here?*/
== MURDGIRL @85 /*Clara! I haven't seen you in ages! We all thought you died.*/
== _BCLARAJ @86 /*I did. <CHARNAME> here saved me and brought me back.*/
== MURDGIRL @87 /*Well I can't blame you for moving on to greener pastures. There's no future here.*/
== _BCLARAJ @88 /*About that... why are you...?*/
== MURDGIRL @89 /*Why am I trapped in this dangerous, impoverished wasteland where whores are sent to die?*/
= @90 /*You remember Little Tom? Did odd jobs for Mae'var? I bit his ear off.*/
== _BCLARAJ @91 /*Good for you! I hope the clerics healed it back on crooked.*/
== MURDGIRL @92 /*There was nothing to heal! I chewed and swallowed!*/
= @93 /*So now I'm here, but it's not so bad. I'm queen of this place! I claimed the best spot here between that mansion and this playhouse. Safest spot in the district.*/
= @94 /*I charge as much as every other girl here combined and I'm still busy, busy.*/
= @95 /*Lots of rich men too, always buying me things and paying for nice rooms; my life's the best it's ever been!*/
== _BCLARAJ @96 /*Just stay safe, all right?*/
== MURDGIRL @97 /*You too! Don't worry about Rose Bouquet. I've got nearly every guard, soldier, cut-purse, and mugger as a client. When I scream, someone always comes running to save me.*/
EXIT

//Terl Dialogue
CHAIN IF WEIGHT #-1 ~Global("_bRoseClara","GLOBAL",2) Global("_bRoseLibrary","GLOBAL",1)~ THEN _BCLARAJ _bRoseTerl1
@6 /*Someone's coming. Wait... Terl, is that you?*/
== TERL @7 /*Hello, Clara. It's good to see you again.*/
== TERL IF ~!IfValidForPartyDialog("Anomen")~ THEN @12 /*I have a letter for you.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen")~ THEN @8 /*Well, what is the message? Give it here.*/
== TERL IF ~IfValidForPartyDialog("Anomen")~ THEN @9 /*I'm sorry, my lord. My letter is for Clara.*/
== _BCLARAJ @13 /*Really? For me?*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen")~ THEN @10 /*Hmph. Of course it is. I knew that.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @11 /*And that's Lady Delryn to you, messenger.*/
== _BCLARAJ IF ~IfValidForPartyDialog("Anomen") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @14 /*It's all right, my love. I am sure that he did not mean any harm. May I see the letter?*/ 
== _BCLARAJ @15 /*Oh, it's from Rose Bouquet. You remember, <CHARNAME>, in the Bridge District? She wants to speak with me.*/
= @16 /*Next time we're in the area, we must go visit her. Please? It sounds important.*/
== ANOMENJ IF ~IfValidForPartyDialog("Anomen") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @17 /*You should not speak with such as her, Caroline. Now that you are Lady Delryn, it is most unseemly.*/
== _BCLARAJ IF ~IfValidForPartyDialog("Anomen") Global("_bLordAndLadyDelryn","GLOBAL",5)~ THEN @18 /*Do not fret, my lord. I hardly intend to bring her home for tea. However, a true noble must be charitable toward the lower classes. *whisper* Throw them a bit of kindness and they will love us desperately.*/
== _BCLARAJ @19 /*Thank you, Terl. Tell Rose I will be there as quickly as I can.*/
== TERL @20 /*Of course, it was my pleasure.*/
DO ~SetGlobal("_bRoseClara","GLOBAL",3) AddJournalEntry(@1000,USER) ActionOverride("Terl",EscapeArea())~ /*A Request From Rose Bouquet

Clara has received a letter from Rose Bouquet in the Bridge District. Next time we're in the area, we should speak with Rose and find out what she wants. It may be lucrative.*/
EXIT

//Rose Library Request
CHAIN IF WEIGHT #-1 ~IfValidForPartyDialog("_bClara") Global("_bRoseClara","GLOBAL",3)~ THEN MURDGIRL _bRoseLibrary
@21 /*Clara! Hi! Terl told me that he found you. I'm so glad that you could come.*/
DO ~SetGlobal("_bRoseClara","GLOBAL",4)~
== _BCLARAJ @22 /*Of course. I know we're on a super important quest and all, but <CHARNAME> is always glad to take another detour. What can we do for you?*/
== MURDGIRL @23 /*Well, now that the Shadow Master is dead, I've been thinking about the future. My future.*/
= @24 /*I don't want to be a courtesan forever, you know. Especially not with Terl and all.*/
== _BCLARAJ @25 /*You're real lucky to have a man like that. Most fellows wouldn't look twice at dames like you and I.*/
== MURDGIRL IF ~OR(2) Global("_bLordAndLadyDelryn","GLOBAL",5) Global("_bLadyDelryn","GLOBAL",1)~ THEN @26 /*What about your husband? I hear you're a noble now.*/
== _BCLARAJ IF ~OR(2) Global("_bLordAndLadyDelryn","GLOBAL",5) Global("_bLadyDelryn","GLOBAL",1)~ THEN @27 /*Oh, yes, I'm Lady Delryn and it is wonderful. But you know that's only because my dear husband doesn't know the truth.*/
== _BCLARAJ IF ~Global("_bLordAndLadyDelryn","GLOBAL",5) IfValidForPartyDialog("Anomen")~ THEN @28 /*I had to send him to that stall to look at jewelry just so I could talk to you.*/
== _BCLARAJ @29 /*Terl is different. He knows and he loves you anyway.*/
== MURDGIRL @30 /*You're right. He even asked me to marry him. Can you believe it?*/
= @31 /*We're going to start a family and if we're going to do that, well, I need a new profession. Something that my children can be proud of when they know.*/
== _BCLARAJ @32 /*So... what do you need us for? You don't want to be an adventurer, do you? <CHARNAME> is pretty strict about keeping <PRO_HISHER> company small.*/
== MURDGIRL @33 /**laughs* Of course not, don't be silly. I want to build a home with Terl, not run off into danger at the drop of a hat.*/
= @34 /*But since YOU'RE running into danger anyway, I was hoping you could do me a favor. See, I think I want to build a library, a place where anyone can come to read without needing to be a noble or one of those fancy wizard types.*/
= @35 /*Maybe I can offer classes too. I'm lucky to know the basics but there's plenty who can't even sign their names.*/
== MURDGIRL IF ~GlobalGT("_bMazzyHelpsWhores","GLOBAL",1)~ THEN @36 /*I heard the priests of Oghma have been teaching at the docks, but I'm sure space is limited and I want those girls to have other options too.*/
== MURDGIRL @37 /*Only, a library needs books, see, and I figure you're more likely to come across rare tomes than I am. I can pay you a little for each one; I have some money saved.*/
== _BCLARAJ @38 /*That sounds great. I mean, I don't know much about libraries, but I've always had a knack for finding things. You don't even have to pay me; consider it a favor for a friend.*/
== MURDGIRL @39 /*Are you sure? A girl still has to make a living.*/
== _BCLARAJ @40 /*Don't worry about me. I'm doing pretty well for myself these days.*/
= @41 /**whisper* To tell the truth, <CHARNAME> really only cares about magic items. I've been making a fortune selling everything that <PRO_HESHE> leaves behind.*/
== MURDGIRL @42 /*You always were a survivor. But in that case, I accept. Just bring me any books you find and I'll start my library.*/
= @43 /*Actually, now that I think about it, I'll take other papers and documents as well. I know the scholars here will pay for access to more exclusive items and that will help me keep my doors open to everyone else.*/
== _BCLARAJ @44 /*You really are a treasure, Rose. And I'm sure <CHARNAME> won't mind giving you some of the random notes we've picked up along the way. I'm not sure why <PRO_HESHE> keeps them honestly.*/
== MURDGIRL @45 /*Thanks, Clara. You're a good friend.*/
DO ~AddJournalEntry(@1001,USER)~ /*A Library for Rose

Rose Bouquet has asked Clara to bring her books and documents so she can build a library. A strange habit for a courtesan, but it's not as though anyone else is interested in most of this stuff. At least Rose is willing to take it off our hands.*/
== MURDGIRL @46 /*You too, <CHARNAME>. Feel free to stop by anytime.*/
EXIT

//The Endless Book Talk
EXTEND_BOTTOM MURDGIRL 0 /*Hello there, handsome. What is it that Rose can do for you? Need a little rest and relaxation from your travels?*/
	+ ~Global("_bRoseClara","GLOBAL",4)~ + @47 /*I've brought you something for your library.*/ + _bALLTHEBOOKS
END
	
EXTEND_BOTTOM MURDGIRL 1 /*Oh, honey, I'm not walking the right side of the street for what you want. I can point you in the right direction, though. What are you looking for?*/
	+ ~Global("_bRoseClara","GLOBAL",4)~ + @47 /*I've brought you something for your library.*/ + _bALLTHEBOOKS
END

EXTEND_BOTTOM MURDGIRL 18  /*Back again? This has to be the weirdest question I've ever asked a customer, but do you have what you wanted me to smell?*/
	+ ~Global("_bRoseClara","GLOBAL",4)~ + @48 /*No, but I've brought you something for your library.*/ + _bALLTHEBOOKS
END

EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseClara","GLOBAL",4)~ + @47 /*I've brought you something for your library.*/ + _bALLTHEBOOKS
END

EXTEND_BOTTOM MURDGIRL 27 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseClara","GLOBAL",4)~ + @47 /*I've brought you something for your library.*/ + _bALLTHEBOOKS
END

CHAIN MURDGIRL _bALLTHEBOOKS  //What were we thinking.......
@49 /*Wonderful. Let me see what you have.*/
== MURDGIRL IF ~PartyHasItem("BOOK01") !Global("_bRBook1","GLOBAL",1)~ THEN @50  /*Some sort of magical book? Thank you, <CHARNAME>, this will be a fine addition to my library.*/
DO ~TakePartyItem("BOOK01") DestroyItem("BOOK01") SetGlobal("_bRBook1","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK02") !Global("_bRBook2","GLOBAL",1)~ THEN @51  /*A wizard's spellbook? I probably don't want to to know where you found this, do I?*/
DO ~TakePartyItem("BOOK02") DestroyItem("BOOK02") SetGlobal("_bRBook2","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK09") Global("_bRBook9","GLOBAL",1)~ THEN @52  /*Another novel? Wonderful.*/
DO ~TakePartyItem("BOOK09") DestroyItem("BOOK09") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK09") !Global("_bRBook9","GLOBAL",1)~ THEN @53  /*Well, this doesn't seem as interesting as the others, but I suppose any good library needs some novels too.*/
DO ~TakePartyItem("BOOK09") DestroyItem("BOOK09") SetGlobal("_bRBook9","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK10") Global("_bRBook10","GLOBAL",1)~ THEN @54 /*An additional History of Calimshan? Thank you. It never hurts to have another copy.*/
DO ~TakePartyItem("BOOK10") DestroyItem("BOOK10") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK10") !Global("_bRBook10","GLOBAL",1)~ THEN @55 /*The History of Calimshan... That should make the scholars happy.*/
DO ~TakePartyItem("BOOK10") DestroyItem("BOOK10") SetGlobal("_bRBook10","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK11") Global("_bRBook11","GLOBAL",1)~ THEN @56  /*Another History of Cormyr? Well, the other is getting worn.*/
DO ~TakePartyItem("BOOK11") DestroyItem("BOOK11") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK11") !Global("_bRBook11","GLOBAL",1)~ THEN @57 /*History of Cormyr. I'll add it to the collection.*/
DO ~TakePartyItem("BOOK11") DestroyItem("BOOK11") SetGlobal("_bRBook11","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK12") Global("_bRBook12","GLOBAL",1)~ THEN @58 /*The History of Dambrath... still a door-stopper. Where did you find this thing?*/
DO ~TakePartyItem("BOOK12") DestroyItem("BOOK12") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK12") !Global("_bRBook12","GLOBAL",1)~ THEN @59 /*The History of Dambrath? You could kill someone with this book, <CHARNAME>. It's certainly heavy enough.*/
DO ~TakePartyItem("BOOK12") DestroyItem("BOOK12") SetGlobal("_bRBook12","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK13") Global("_bRBook13","GLOBAL",1)~ THEN @60  /*You've found another History of Durpar and Var the Golden? Wonderful, I wanted my own copy.*/
DO ~TakePartyItem("BOOK13") DestroyItem("BOOK13") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK13") !Global("_bRBook13","GLOBAL",1)~ THEN @61  /*The History of Durpar and Var the Golden... That's quite a mouthful. Hopefully it's interesting.*/
DO ~TakePartyItem("BOOK13") DestroyItem("BOOK13") SetGlobal("_bRBook13","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK14") Global("_bRBook14","GLOBAL",1)~ THEN @62  /*Oh good another short one... History of Estagund, that's a fine volume to practice reading with.*/
DO ~TakePartyItem("BOOK14") DestroyItem("BOOK14") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK14") !Global("_bRBook14","GLOBAL",1)~ THEN @63  /*History of Estagund. This is a short one, but thank you nonetheless.*/
DO ~TakePartyItem("BOOK14") DestroyItem("BOOK14") SetGlobal("_bRBook14","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK15") Global("_bRBook15","GLOBAL",1)~ THEN @64  /*Another History of Gondegal... That book was surprisingly entertaining, though perhaps that was due to Terl reading it aloud.*/
DO ~TakePartyItem("BOOK15") DestroyItem("BOOK15") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK15") !Global("_bRBook15","GLOBAL",1)~ THEN @65  /*Ooh, the History of Gondegal the Lost King sounds interesting. Perhaps I will have Terl read this one to me.*/
DO ~TakePartyItem("BOOK15") DestroyItem("BOOK15") SetGlobal("_bRBook15","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK16") Global("_bRBook16","GLOBAL",1)~ THEN @66  /*The History of Halruaa.... I needed another copy. The scholars have been fighting over this.*/
DO ~TakePartyItem("BOOK16") DestroyItem("BOOK16") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK16") !Global("_bRBook16","GLOBAL",1)~ THEN @67  /*Someone was asking me about the History of Halruaa a few days ago. This is perfect, <CHARNAME>.*/
DO ~TakePartyItem("BOOK16") DestroyItem("BOOK16") SetGlobal("_bRBook16","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK17") !Global("_bRBook17","GLOBAL",1)~ THEN @68  /*History of Luiren, Land of the Halflings...*/
== MURDGIRL IF ~PartyHasItem("BOOK17") Global("_bRBook17","GLOBAL",1)~ THEN @69  /*Ooh, another History of Luiren, Land of the Halflings...*/
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") Global("_bMRBook","GLOBAL",0) PartyHasItem("BOOK17")~ THEN @70 /*Written by the Tall Folk, no doubt. Such histories are usually full of lies and misconceptions.*/
== MURDGIRL IF ~IsValidForPartyDialog("Mazzy") PartyHasItem("BOOK17") Global("_bMRBook","GLOBAL",0)~ THEN @71 /*Then perhaps you should write me a review. I have heard that the best libraries have such things on hand.*/
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") PartyHasItem("BOOK17") Global("_bMRBook","GLOBAL",0)~ THEN @72 /*Perhaps.*/
DO ~SetGlobal("_bMRBook","GLOBAL",1)~
== MURDGIRL IF ~PartyHasItem("BOOK17") !Global("_bRBook17","GLOBAL",1)~ THEN @73 /*Wonderful. That should be fascinating.*/
DO ~TakePartyItem("BOOK17") DestroyItem("BOOK17") SetGlobal("_bRBook17","GLOBAL",1) AddexperienceParty(1000)~
== MURDGIRL IF ~PartyHasItem("BOOK17") Global("_bRBook17","GLOBAL",1)~ THEN @74 /*Lovely. I'll put this book with the others for now.*/
DO ~TakePartyItem("BOOK17") DestroyItem("BOOK17") AddexperienceParty(200)~

== MURDGIRL IF ~PartyHasItem("BOOK18") Global("_bRBook18","GLOBAL",1)~ THEN @75  /*Another History of Sembia... This will be appreciated.*/
DO ~TakePartyItem("BOOK18") DestroyItem("BOOK18") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK18") !Global("_bRBook18","GLOBAL",1)~ THEN @76  /*History of Sembia... This will do nicely.*/
DO ~TakePartyItem("BOOK18") DestroyItem("BOOK18") SetGlobal("_bRBook18","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK19") Global("_bRBook19","GLOBAL",1)~ THEN @77  /*Yet another History of Shadowdale? I'll put that with the rest.*/
DO ~TakePartyItem("BOOK19") DestroyItem("BOOK19") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK19") !Global("_bRBook19","GLOBAL",1)~ THEN @78  /*The History of Shadowdale I... Hmm, I wonder how many there are.*/
DO ~TakePartyItem("BOOK19") DestroyItem("BOOK19") SetGlobal("_bRBook19","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK20") Global("_bRBook20","GLOBAL",1)~ THEN @79  /*History of Shadowdale II... Good to have another one.*/
DO ~TakePartyItem("BOOK20") DestroyItem("BOOK20") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK20") !Global("_bRBook20","GLOBAL",1)~ THEN @80  /*History of Shadowdale II... Thank you, this will add to my collection.*/
DO ~TakePartyItem("BOOK20") DestroyItem("BOOK20") SetGlobal("_bRBook20","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK21") Global("_bRBook21","GLOBAL",1)~ THEN @100  /*Another History of Shadowdale III. I'll take it but I'm running out of space.*/
DO ~TakePartyItem("BOOK21") DestroyItem("BOOK21") SetGlobal("_bRBook21","GLOBAL",1) AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK21") !Global("_bRBook21","GLOBAL",1)~ THEN @101  /*The History of Shadowdale III. I will put it with the others.*/
DO ~TakePartyItem("BOOK21") DestroyItem("BOOK21") SetGlobal("_bRBook21","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK22") Global("_bRBook22","GLOBAL",1)~ THEN @102  /*Another History of Shadowdale IV... I'll take it. These slim volumes are perfect for my lessons.*/
DO ~TakePartyItem("BOOK22") DestroyItem("BOOK22") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK22") !Global("_bRBook22","GLOBAL",1)~ THEN @103  /*History of Shadowdale IV. This isn't very long at all, is it? I think the writers could have combined these into fewer books easily.*/
DO ~TakePartyItem("BOOK22") DestroyItem("BOOK22") SetGlobal("_bRBook22","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK23") Global("_bRBook23","GLOBAL",1)~ THEN @104  /*The History of Shadowdale... number five again? Well, can't hurt to have it on hand.*/
DO ~TakePartyItem("BOOK23") DestroyItem("BOOK23") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK23") !Global("_bRBook23","GLOBAL",1)~ THEN @105  /*Another History of Shadowdale.... number five? This is getting ridiculous.*/
DO ~TakePartyItem("BOOK23") DestroyItem("BOOK23") SetGlobal("_bRBook23","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK24") Global("_bRBook24","GLOBAL",1)~ THEN @106  /*Another History of Shadowdale VI? Terl is going to hate you when he's tripping over these.*/
DO ~TakePartyItem("BOOK24") DestroyItem("BOOK24") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK24") !Global("_bRBook24","GLOBAL",1)~ THEN @107  /*History of Shadowdale VI – Khelben Kills Jyordhan... Well, that rather spoils the plot, doesn't it? But thank you anyway.*/
DO ~TakePartyItem("BOOK24") DestroyItem("BOOK24") SetGlobal("_bRBook24","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK25") Global("_bRBook25","GLOBAL",1)~ THEN @108  /*The History of Shadowdale VII... Thank you. I found the first one informative.*/
DO ~TakePartyItem("BOOK25") DestroyItem("BOOK25") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK25") !Global("_bRBook25","GLOBAL",1)~ THEN @109  /*The History of Shadowdale VII. I swear these books are hardly worth the name. Though I'm sure most booksellers would still charge full price.*/
DO ~TakePartyItem("BOOK25") DestroyItem("BOOK25") SetGlobal("_bRBook25","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK26") Global("_bRBook26","GLOBAL",1)~ THEN @110  /*Another History of Shadowdale VIII? Still boring, but I'll take it.*/
DO ~TakePartyItem("BOOK26") DestroyItem("BOOK26") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK26") !Global("_bRBook26","GLOBAL",1)~ THEN @111  /*History of Shadowdale VIII? This place can't be *that* interesting.*/
DO ~TakePartyItem("BOOK26") DestroyItem("BOOK26") SetGlobal("_bRBook26","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK27") Global("_bRBook27","GLOBAL",1)~ THEN @112  /*You found the History of Shadowdale IX again? Lovely, this book has been surprisingly popular.*/
DO ~TakePartyItem("BOOK27") DestroyItem("BOOK27") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK27") !Global("_bRBook27","GLOBAL",1)~ THEN @113  /*History of Shadowdale IX? Seriously, how many *are* there?*/
DO ~TakePartyItem("BOOK27") DestroyItem("BOOK27") SetGlobal("_bRBook27","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK28") Global("_bRBook28","GLOBAL",1)~ THEN @114  /*Oh, good, the History of Shadowdale X... I've had several people wanting to read about Elminster.*/
DO ~TakePartyItem("BOOK28") DestroyItem("BOOK28") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK28") !Global("_bRBook28","GLOBAL",1)~ THEN @115  /*History of Shadowdale X... Well, I guess this one has Elminster at least. Might make it more popular.*/
DO ~TakePartyItem("BOOK28") DestroyItem("BOOK28") SetGlobal("_bRBook28","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK29") Global("_bRBook29","GLOBAL",1)~ THEN @116  /*Another History of Shadowdale XI... I still can't believe there's so many volumes in this set.*/
DO ~TakePartyItem("BOOK29") DestroyItem("BOOK29") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK29") !Global("_bRBook29","GLOBAL",1)~ THEN @117  /*The History of Shadowdale XI. I should have the complete set soon.*/
DO ~TakePartyItem("BOOK29") DestroyItem("BOOK29") SetGlobal("_bRBook29","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK30") Global("_bRBook30","GLOBAL",1)~ THEN @118  /*The History of Shadowdale XII... Lovely. I do like this one.*/
DO ~TakePartyItem("BOOK30") DestroyItem("BOOK30") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK30") !Global("_bRBook30","GLOBAL",1)~ THEN @119  /*History of Shadowdale XII... This one seems to be a love story; how sweet.*/
DO ~TakePartyItem("BOOK30") DestroyItem("BOOK30") SetGlobal("_bRBook30","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK31") Global("_bRBook31","GLOBAL",1)~ THEN @120  /*The History of Shadowdale, Volume Thirteen again. Is that lucky or unlucky in this case?*/
DO ~TakePartyItem("BOOK31") DestroyItem("BOOK31") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK31") !Global("_bRBook31","GLOBAL",1)~ THEN @121  /*History of Shadowdale XIII... All right, this must be the last volume.*/
DO ~TakePartyItem("BOOK31") DestroyItem("BOOK31") SetGlobal("_bRBook31","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK32") Global("_bRBook32","GLOBAL",1)~ THEN @122 /*I'll take this History of Tethyr again. Given our current relations, this has been in high demand.*/
DO ~TakePartyItem("BOOK32") DestroyItem("BOOK32") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK32") !Global("_bRBook32","GLOBAL",1)~ THEN @123  /*The History of Tethyr. This will be good to have. It's important to know your neighbors well.*/
DO ~TakePartyItem("BOOK32") DestroyItem("BOOK32") SetGlobal("_bRBook32","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK33") Global("_bRBook33","GLOBAL",1)~ THEN @124  /*The History of the Bell in the Depths.... Not as profound as it seemed, but I'll take another copy.*/
DO ~TakePartyItem("BOOK33") DestroyItem("BOOK33") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK33") !Global("_bRBook33","GLOBAL",1)~ THEN @125  /*The History of the Bell in the Depths.... That sounds mysterious.*/
DO ~TakePartyItem("BOOK33") DestroyItem("BOOK33") SetGlobal("_bRBook33","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK34") Global("_bRBook34","GLOBAL",1)~ THEN @126  /*Another History of the Chosen of Mystra... Well, the Cowled Wizards haven't come for this book yet, but I'd best have a backup copy.*/
DO ~TakePartyItem("BOOK34") DestroyItem("BOOK34") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK34") !Global("_bRBook34","GLOBAL",1)~ THEN @127  /*History of the Chosen of Mystra... Hmm, a magical history... the Cowled Wizards should love this.*/
DO ~TakePartyItem("BOOK34") DestroyItem("BOOK34") SetGlobal("_bRBook34","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK35") Global("_bRBook35","GLOBAL",1)~ THEN @128  /*Wonderful, I've been wanting another History of the Dales and the Elven Court. This writer knew all the best gossip.*/
DO ~TakePartyItem("BOOK35") DestroyItem("BOOK35") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK35") !Global("_bRBook35","GLOBAL",1)~ THEN @129  /*The History of the Dales and the Elven Court. Probably a dry read, but I shall shelve it nonetheless.*/
DO ~TakePartyItem("BOOK35") DestroyItem("BOOK35") SetGlobal("_bRBook35","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK36") Global("_bRBook36","GLOBAL",1)~ THEN @130  /*The History of the Dead Three... More a fable than a history, but I could use another copy.*/
DO ~TakePartyItem("BOOK36") DestroyItem("BOOK36") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK36") !Global("_bRBook36","GLOBAL",1)~ THEN @131  /*History of the Dead Three – Knucklebones, Skull Bowling, and the Empty Throne. This should be a good read.*/
DO ~TakePartyItem("BOOK36") DestroyItem("BOOK36") SetGlobal("_bRBook36","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK37") Global("_bRBook37","GLOBAL",1)~ THEN @132  /*The History of the Dragon Coast.... Some of the dock girls like this one. They say it's giving them ideas....*/
DO ~TakePartyItem("BOOK37") DestroyItem("BOOK37") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK37") !Global("_bRBook37","GLOBAL",1)~ THEN @133  /*The History of the Dragon Coast.... Smugglers, pirates, and assassins. Sounds appropriate; they'd blend right in around here.*/
DO ~TakePartyItem("BOOK37") DestroyItem("BOOK37") SetGlobal("_bRBook37","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK38") !Global("_bRBook38","GLOBAL",1)~ THEN @134  /*The History of the Drow I.... I've wanted to read this.*/
== MURDGIRL IF ~PartyHasItem("BOOK38") Global("_bRBook38","GLOBAL",1)~ THEN @135  /*Another History of the Drow... Reading this book gave me nightmares.*/
== VICONIJ IF ~IsValidForPartyDialog("Viconia") Global("_bVRBook","GLOBAL",0) PartyHasItem("BOOK38")~ THEN @136 /*You would be better off speaking with an actual drow instead. I am sure that volume is filled with rivvin lies.*/
== MURDGIRL IF ~IsValidForPartyDialog("Viconia") Global("_bVRBook","GLOBAL",0) PartyHasItem("BOOK38")~ THEN @137 /*Oh, would you be willing? You're rather... intimidating. I did not wish to presume.*/
== VICONIJ IF ~IsValidForPartyDialog("Viconia") Global("_bVRBook","GLOBAL",0) PartyHasItem("BOOK38")~ THEN @138 /*Then you are not a fool. Perhaps you are worthy of my knowledge. You are clearly a survivor and have your mrannd'ssinss well in hand.*/
DO ~SetGlobal("_bVRBook","GLOBAL",1)~
== MURDGIRL IF ~PartyHasItem("BOOK38") Global("_bRBook38","GLOBAL",1)~ THEN @139  /*Sometimes knowledge comes at a heavy price.*/
DO ~TakePartyItem("BOOK38") DestroyItem("BOOK38") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK38") !Global("_bRBook38","GLOBAL",1)~ THEN @140 /*I'll look forward to it.*/
DO ~TakePartyItem("BOOK38") DestroyItem("BOOK38") SetGlobal("_bRBook38","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK39") !Global("_bRBook39","GLOBAL",1)~ THEN @141  /*The History of the Drow II. Lovely.*/
== MURDGIRL IF ~PartyHasItem("BOOK39") Global("_bRBook39","GLOBAL",1)~ THEN @142  /*Another copy? Wonderful. The History of the Drow II has been oddly popular.*/
== VICONIJ IF ~IsValidForPartyDialog("Viconia") Global("_bVRBook2","GLOBAL",0) PartyHasItem("BOOK39")~ THEN @143 /*The rivvin wrote two volumes of this drivel? Why am I not surprised?*/
DO ~SetGlobal("_bVRBook2","GLOBAL",1)~
== MURDGIRL IF ~PartyHasItem("BOOK39") Global("_bRBook39","GLOBAL",1)~ THEN @144 /*At least it's keeping me in business.*/
DO ~TakePartyItem("BOOK39") DestroyItem("BOOK39") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK39") !Global("_bRBook39","GLOBAL",1)~ THEN @145 /*I will add this to my library.*/
DO ~TakePartyItem("BOOK39") DestroyItem("BOOK39") SetGlobal("_bRBook39","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK40") Global("_bRBook40","GLOBAL",1)~ THEN @146  /*Another copy of the History of the Fateful Coin? At least it's not another <CHARNAME>. I'm very grateful for your help but I'm not sure our world could handle more like you.*/
DO ~TakePartyItem("BOOK40") DestroyItem("BOOK40") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK40") !Global("_bRBook40","GLOBAL",1)~ THEN @147  /*The History of the Fateful Coin... Hmm, you must have been a luckless child, <CHARNAME>, with the way you've changed the world.*/
DO ~TakePartyItem("BOOK40") DestroyItem("BOOK40") SetGlobal("_bRBook40","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK41") Global("_bRBook41","GLOBAL",1)~ THEN @148  /*Hmm, another History of the Last March of the Giants.... I could use this one.*/
DO ~TakePartyItem("BOOK41") DestroyItem("BOOK41") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK41") !Global("_bRBook41","GLOBAL",1)~ THEN @149  /*History of the Last March of the Giants.... Interesting. I'm sure I'll learn a lot from this.*/
DO ~TakePartyItem("BOOK41") DestroyItem("BOOK41") SetGlobal("_bRBook41","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK42") Global("_bRBook42","GLOBAL",1)~ THEN @150  /*I've been recommending this one. The History of the Moonsea made me want to travel. Perhaps I will take a short jaunt with Terl one day.*/
DO~TakePartyItem("BOOK42") DestroyItem("BOOK42") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK42") !Global("_bRBook42","GLOBAL",1)~ THEN @151  /*History of the Moonsea. I've always wanted to go there.*/
DO ~TakePartyItem("BOOK42") DestroyItem("BOOK42") SetGlobal("_bRBook42","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK43") Global("_bRBook43","GLOBAL",1)~ THEN @152  /*Oh, another History of the North I. Still not about gardening, but the historians seem to like it well enough.*/
DO ~TakePartyItem("BOOK43") DestroyItem("BOOK43") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK43") !Global("_bRBook43","GLOBAL",1)~ THEN @153  /*History of the North I – The First Flowering... That sounds like a manual on gardening.*/
DO ~TakePartyItem("BOOK43") DestroyItem("BOOK43") SetGlobal("_bRBook43","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK44") Global("_bRBook44","GLOBAL",1)~ THEN @154  /*You have the History of the North II again? This is perfect. All the books on Netheril have been asked for frequently.*/
DO ~TakePartyItem("BOOK44") DestroyItem("BOOK44") SetGlobal("_bRBook44","GLOBAL",1) AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK44") !Global("_bRBook44","GLOBAL",1)~ THEN @155  /*History of the North II. Oh, this one is about Netheril. I've heard some of my clients mention that Empire before.*/
DO ~TakePartyItem("BOOK44") DestroyItem("BOOK44") SetGlobal("_bRBook44","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK45") Global("_bRBook45","GLOBAL",1)~ THEN @156  /*The History of the North III... This book was exactly as boring as you might assume. But I have an ancient scholar who keeps demanding these.*/
DO ~TakePartyItem("BOOK45") DestroyItem("BOOK45") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK45") !Global("_bRBook45","GLOBAL",1)~ THEN @157  /*The History of the North III – Recent History of the North. Hah! Someone got bored while naming these.*/
DO ~TakePartyItem("BOOK45") DestroyItem("BOOK45") SetGlobal("_bRBook45","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK46") Global("_bRBook46","GLOBAL",1)~ THEN @158  /*Another History of the North... this fourth volume was such a tragedy.*/
DO ~TakePartyItem("BOOK46") DestroyItem("BOOK46") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK46") !Global("_bRBook46","GLOBAL",1)~ THEN @159  /*History of the North IV – the Elven Exodus... Maybe this will explain what happened to the Netheril empire.*/
DO ~TakePartyItem("BOOK46") DestroyItem("BOOK46") SetGlobal("_bRBook46","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK47") Global("_bRBook47","GLOBAL",1)~ THEN @160  /*The History of the North V... I'll take this again.*/
DO ~TakePartyItem("BOOK47") DestroyItem("BOOK47") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK47") !Global("_bRBook47","GLOBAL",1)~ THEN @161  /*History of the North V – the Spread of Humankind. Seems rather dull, but what can you do?*/
DO ~TakePartyItem("BOOK47") DestroyItem("BOOK47") SetGlobal("_bRBook47","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK48") Global("_bRBook48","GLOBAL",1)~ THEN @162  /**sigh* History of the North – the Might of Men again? I was hoping for something more interesting.*/
DO ~TakePartyItem("BOOK48") DestroyItem("BOOK48") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK48") !Global("_bRBook48","GLOBAL",1)~ THEN @163  /*History of the North VI – the Might of Men... This girl knows *all* about that already.*/
DO ~TakePartyItem("BOOK48") DestroyItem("BOOK48") SetGlobal("_bRBook48","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK49") Global("_bRBook49","GLOBAL",1)~ THEN @164  /*The History of the North VII – 1368, Year of the Banner... A surprisingly good read.*/
DO ~TakePartyItem("BOOK49") DestroyItem("BOOK49") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK49") !Global("_bRBook49","GLOBAL",1)~ THEN @165  /*The History of the North VII – 1368, Year of the Banner... One book about a single year? I guess it must have been eventful.*/
DO ~TakePartyItem("BOOK49") DestroyItem("BOOK49") SetGlobal("_bRBook49","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK50") Global("_bRBook50","GLOBAL",1)~ THEN @166  /*Another History of the North – 1369... Well, the authors weren't wrong. It certainly was an interesting year.*/
DO ~TakePartyItem("BOOK50") DestroyItem("BOOK50") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK50") !Global("_bRBook50","GLOBAL",1)~ THEN @167  /*The History of the North VIII – 1369, Year of the Gauntlet... Looks like a decent read.*/
DO ~TakePartyItem("BOOK50") DestroyItem("BOOK50") SetGlobal("_bRBook50","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK51") Global("_bRBook51","GLOBAL",1)~ THEN @168  /*History of the North IX again... At least this one doesn't take up much shelf space.*/
DO ~TakePartyItem("BOOK51") DestroyItem("BOOK51") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK51") !Global("_bRBook51","GLOBAL",1)~ THEN @169  /*History of the North IX... Are you sure this is a book, <CHARNAME>? It's only one page long.*/
DO ~TakePartyItem("BOOK51") DestroyItem("BOOK51") SetGlobal("_bRBook51","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK52") Global("_bRBook52","GLOBAL",1)~ THEN @170  /*I'll take this... The History of the North X – 1370, Year of the Tankard... Not about drinking as much as you'd expect.*/
DO ~TakePartyItem("BOOK52") DestroyItem("BOOK52") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK52") !Global("_bRBook52","GLOBAL",1)~ THEN @171  /*History of the North X – 1370, Year of the Tankard... Now that's my kind of year.*/
DO ~TakePartyItem("BOOK52") DestroyItem("BOOK52") SetGlobal("_bRBook52","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK53") Global("_bRBook53","GLOBAL",1)~ THEN @172  /*Oh, lovely. I'll take this History of the Red Ravens again... They may just be mercenaries, but some of these stories tug at the heartstrings very well.*/
DO ~TakePartyItem("BOOK53") DestroyItem("BOOK53") SetGlobal("_bRBook53","GLOBAL",1) AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK53") !Global("_bRBook53","GLOBAL",1)~ THEN @173  /*The History of the Red Ravens... Mercenaries. Nothing special there.*/
DO ~TakePartyItem("BOOK53") DestroyItem("BOOK53") SetGlobal("_bRBook53","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK54") Global("_bRBook54","GLOBAL",1)~ THEN @174  /*Another History of the Sisters of Light and Darkness.... Yes, please. I had priests screaming at each other on my doorstep about this. I couldn't have asked for better word-of-mouth.*/
DO ~TakePartyItem("BOOK54") DestroyItem("BOOK54") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK54") !Global("_bRBook54","GLOBAL",1)~ THEN @175  /*I'm sure the priests will like this one: the History of the Sisters of Light and Darkness.*/
DO ~TakePartyItem("BOOK54") DestroyItem("BOOK54") SetGlobal("_bRBook54","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK55") Global("_bRBook55","GLOBAL",1)~ THEN @176  /*You found another History of the Unicorn Run... I'll take this if only to keep such knowledge out of the wrong hands.*/
DO ~TakePartyItem("BOOK55") DestroyItem("BOOK55") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK55") !Global("_bRBook55","GLOBAL",1)~ THEN @177  /*History of the Unicorn Run... I wonder where that is. The place sounds beautiful.*/
DO ~TakePartyItem("BOOK55") DestroyItem("BOOK55") SetGlobal("_bRBook55","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK56") Global("_bRBook56","GLOBAL",1)~ THEN @178  /*Hmm, another History of the Valley of the Gods. I can use that one.*/
DO ~TakePartyItem("BOOK56") DestroyItem("BOOK56") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK56") !Global("_bRBook56","GLOBAL",1)~ THEN @179  /*Who writes some of this nonsense? The History of the Valley of the Gods... Probably a book about wild goose chases if you ask me.*/
DO ~TakePartyItem("BOOK56") DestroyItem("BOOK56") SetGlobal("_bRBook56","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK57") Global("_bRBook57","GLOBAL",1)~ THEN @180  /*...I guess I could use this, though the History of the Vast wasn't all that interesting. Who knew someone could write so many words on grass?*/
DO ~TakePartyItem("BOOK57") DestroyItem("BOOK57") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK57") !Global("_bRBook57","GLOBAL",1)~ THEN @181  /*The History of the Vast... You'd probably enjoy this one, <CHARNAME>. Sounds rather epic.*/
DO ~TakePartyItem("BOOK57") DestroyItem("BOOK57") SetGlobal("_bRBook57","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK58") Global("_bRBook58","GLOBAL",1)~ THEN @182  /*Yep, this'll do. There's some folks from the Western Heartland who like to read about their home.*/
DO ~TakePartyItem("BOOK58") DestroyItem("BOOK58") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK58") !Global("_bRBook58","GLOBAL",1)~ THEN @183  /*Here's a good down-home kind of story: History of the Western Heartland. Sturdy farming types out there.*/
DO ~TakePartyItem("BOOK58") DestroyItem("BOOK58") SetGlobal("_bRBook58","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK59") Global("_bRBook59","GLOBAL",1)~ THEN @184  /*Oh, the History of the Zhentarim. I need that. My last copy has gone missing.*/
DO ~TakePartyItem("BOOK59") DestroyItem("BOOK59") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK59") !Global("_bRBook59","GLOBAL",1)~ THEN @185  /*History of the Zhentarim... I think I'll be lucky if this one stays on my shelves.*/
DO ~TakePartyItem("BOOK59") DestroyItem("BOOK59") SetGlobal("_bRBook59","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK60") Global("_bRBook60","GLOBAL",1)~ THEN @186  /*Where did you find another copy of the History of the Ulgarth? The scholars were quite impressed that I had one.*/
DO ~TakePartyItem("BOOK60") DestroyItem("BOOK60") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK60") !Global("_bRBook60","GLOBAL",1)~ THEN @187  /*The History of the Ulgarth... There's so many places that I don't know about...*/
DO ~TakePartyItem("BOOK60") DestroyItem("BOOK60") SetGlobal("_bRBook60","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK61") Global("_bRBook61","GLOBAL",1)~ THEN @188  /*Oh good, another History of Amn. Someone wrote on my original. Though I will admit, the limericks were clever.*/
DO ~TakePartyItem("BOOK61") DestroyItem("BOOK61") SetGlobal("_bRBook61","GLOBAL",1) AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK61") !Global("_bRBook61","GLOBAL",1)~ THEN @189  /*Well, any self-respecting Amnian library better have this one: The History of Amn.*/
DO ~TakePartyItem("BOOK61") DestroyItem("BOOK61") SetGlobal("_bRBook61","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK62") Global("_bRBook62","GLOBAL",1)~ THEN @190  /*The History of Waterdeep again? I guess I'll start another set.*/
DO ~TakePartyItem("BOOK62") DestroyItem("BOOK62") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK62") !Global("_bRBook62","GLOBAL",1)~ THEN @191  /*The History of Waterdeep I... This will be the perfect travel guide.*/
DO ~TakePartyItem("BOOK62") DestroyItem("BOOK62") SetGlobal("_bRBook62","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK63") Global("_bRBook63","GLOBAL",1)~ THEN @192  /*Oh, another the History of Waterdeep II. To tell the truth, I'm still not sure what a tuabemoot is.*/
DO ~TakePartyItem("BOOK63") DestroyItem("BOOK63") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK63") !Global("_bRBook63","GLOBAL",1)~ THEN @193  /*The History of Waterdeep II – Age 0, Tuabemoots and Pioneers... What the devil is a tuabemoot anyway?*/
DO ~TakePartyItem("BOOK63") DestroyItem("BOOK63") SetGlobal("_bRBook63","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK64") Global("_bRBook64","GLOBAL",1)~ THEN @194  /*All right, this is good. Another History of Waterdeep III.. Warlords have been in high demand.*/
DO ~TakePartyItem("BOOK64") DestroyItem("BOOK64") SetGlobal("_bRBook64","GLOBAL",1) AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK64") !Global("_bRBook64","GLOBAL",1)~ THEN @195  /*History of Waterdeep III – Rise of the Warlords... What else is new?*/
DO ~TakePartyItem("BOOK64") DestroyItem("BOOK64") SetGlobal("_bRBook64","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK65") Global("_bRBook65","GLOBAL",1)~ THEN @196  /*Aaah, the History of Waterdeep V... who doesn't love a good tale of Guild Wars gone wrong? Actually, that cuts a little close to home. No wonder no one ever reads this.*/
DO ~TakePartyItem("BOOK65") DestroyItem("BOOK65") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK65") !Global("_bRBook65","GLOBAL",1)~ THEN @197  /*The History of Waterdeep IV – the Bloody Reign of the Guildmasters... Who knew that shipwrights and gemcutters were so violent? Their guilds sound a lot like ours.*/
DO ~TakePartyItem("BOOK65") DestroyItem("BOOK65") SetGlobal("_bRBook65","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK66") Global("_bRBook66","GLOBAL",1)~ THEN @198  /*Hmm, I can use this. The Waterdeep volumes are actually quite enthralling.*/
DO ~TakePartyItem("BOOK66") DestroyItem("BOOK66") SetGlobal("_bRBook66","GLOBAL",1) AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK66") !Global("_bRBook66","GLOBAL",1)~ THEN @199  /*Here's a new one for my shelves: History of Waterdeep V – the Lords' Rule Begins.*/
DO ~TakePartyItem("BOOK66") DestroyItem("BOOK66") SetGlobal("_bRBook66","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK67") Global("_bRBook67","GLOBAL",1)~ THEN @200  /*Another History of Waterdeep VI – the Return of the Lords... Well, it's not like they've gone anywhere.*/
DO ~TakePartyItem("BOOK67") DestroyItem("BOOK67") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOK67") !Global("_bRBook67","GLOBAL",1)~ THEN @201  /*The History of Waterdeep VI – the Return of the Lords... Pity, they should have stayed gone.*/
DO ~TakePartyItem("BOOK67") DestroyItem("BOOK67") SetGlobal("_bRBook67","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK68") !Global("_bRBook68","GLOBAL",1)~ THEN @202  /*History of the Nether Scrolls. Oh, I can't read this... But I'm sure someone can.*/
== MURDGIRL IF ~PartyHasItem("BOOK68") Global("_bRBook68","GLOBAL",1)~ THEN @203 /*Another History of the Nether Scrolls? I'm surprised you found one.*/
== EDWINJ IF ~IsValidForPartyDialog("Edwin") PartyHasItem("BOOK68")~ THEN @204 /*That book isn't for the likes of you. Give it to me this instant.*/ 
DO ~TakePartyItem("BOOK68")~
== MURDGIRL IF ~IsValidForPartyDialog("Edwin") PartyHasItem("BOOK68")~ THEN @205 /*Well, excuse you. How rude.*/
== MURDGIRL IF ~!IsValidForPartyDialog("Edwin") PartyHasItem("BOOK68") !Global("_bRBook68","GLOBAL",1)~ THEN @206 /*I appreciate the thought, <CHARNAME>.*/
DO ~TakePartyItem("BOOK68") DestroyItem("BOOK68") SetGlobal("_bRBook68","GLOBAL",1) AddexperienceParty(1000)~
== MURDGIRL IF ~!IsValidForPartyDialog("Edwin") PartyHasItem("BOOK68") Global("_bRBook68","GLOBAL",1)~ THEN @206 /*I appreciate the thought, <CHARNAME>.*/
DO ~TakePartyItem("BOOK68") DestroyItem("BOOK68") AddexperienceParty(200)~

== MURDGIRL IF ~PartyHasItem("BOOK70") !Global("_bRBook70","GLOBAL",1)~ THEN @207  /*Yago's Book of Curses.... Umm, I think I'll put this one in the back.*/
DO ~TakePartyItem("BOOK70") DestroyItem("BOOK70") SetGlobal("_bRBook70","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK71") !Global("_bRBook71","GLOBAL",1)~ THEN @208  /*This isn't a book, <CHARNAME>. It's a creepy poem on bloody parchment.*/
DO ~TakePartyItem("BOOK71") DestroyItem("BOOK71") SetGlobal("_bRBook71","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK72") !Global("_bRBook72","GLOBAL",1)~ THEN @209  /*"Here died my son, young Furnebol,"...Did you loot this from a grave?*/
DO ~TakePartyItem("BOOK72") DestroyItem("BOOK72") SetGlobal("_bRBook72","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK73") !Global("_bRBook73","GLOBAL",1)~ THEN @210  /*These are the ramblings of a madman... The poets will love this.*/
DO ~TakePartyItem("BOOK73") DestroyItem("BOOK73") SetGlobal("_bRBook66","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK74") !Global("_bRBook74","GLOBAL",1)~ THEN @211  /*I really have to wonder where you found this one, <CHARNAME>. It's creepy.*/
DO ~TakePartyItem("BOOK74") DestroyItem("BOOK74") SetGlobal("_bRBook74","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK75") !Global("_bRBook75","GLOBAL",1)~ THEN @212  /*Is someone planning a murder or recalling one? I'm not sure I want to read this.*/
DO ~TakePartyItem("BOOK75") DestroyItem("BOOK75") SetGlobal("_bRBook75","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK76") !Global("_bRBook76","GLOBAL",1)~ THEN @213  /*Whoever wrote this needed help, <CHARNAME>. I hope you put them out of their misery.*/
DO ~TakePartyItem("BOOK76") DestroyItem("BOOK76") SetGlobal("_bRBook76","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK77") !Global("_bRBook77","GLOBAL",1)~ THEN @214  /*"Taste My Fear." ...Is it really a book when it's just one line written over and over?*/
DO ~TakePartyItem("BOOK77") DestroyItem("BOOK77") SetGlobal("_bRBook77","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK78") !Global("_bRBook78","GLOBAL",1)~ THEN @215  /*"Know My Madness." ...I really think I'd rather not.*/
DO ~TakePartyItem("BOOK78") DestroyItem("BOOK78") SetGlobal("_bRBook78","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK79") !Global("_bRBook79","GLOBAL",1)~ THEN @216  /*"Face My Demons." ...Where do you find these things?*/
DO ~TakePartyItem("BOOK79") DestroyItem("BOOK79") SetGlobal("_bRBook79","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK80") !Global("_bRBook80","GLOBAL",1)~ THEN @217  /*"Seek No Heirs." ...I'll save this for the priests.*/
DO ~TakePartyItem("BOOK80") DestroyItem("BOOK80") SetGlobal("_bRBook80","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK81") !Global("_bRBook81","GLOBAL",1)~ THEN @218  /*"Seek No Exit." ...I'm rather glad you didn't listen to this one.*/
DO ~TakePartyItem("BOOK81") DestroyItem("BOOK81") SetGlobal("_bRBook81","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK82") !Global("_bRBook82","GLOBAL",1)~ THEN @219  /*"Know No Refuge." ...How unpleasant.*/
DO ~TakePartyItem("BOOK82") DestroyItem("BOOK82") SetGlobal("_bRBook82","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK83") !Global("_bRBook83","GLOBAL",1)~ THEN @220  /*"Feel No Warmth." ...That's not hard around here. Before I met Terl at least.*/
DO ~TakePartyItem("BOOK83") DestroyItem("BOOK83") SetGlobal("_bRBook83","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK84") !Global("_bRBook84","GLOBAL",1)~ THEN @221  /*"Dance With The Dead." ...Have you been visiting necromancers? I don't want angry wizards coming after me.*/
DO ~TakePartyItem("BOOK84") DestroyItem("BOOK84") SetGlobal("_bRBook84","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK85") !Global("_bRBook85","GLOBAL",1)~ THEN @222  /*"Know My Loss." ...I hope you left an offering if you were truly robbing graves.*/
DO ~TakePartyItem("BOOK85") DestroyItem("BOOK85") SetGlobal("_bRBook85","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK86") !Global("_bRBook86","GLOBAL",1)~ THEN @223  /*"Here fell Kiel the Legionkiller." That sounds rather grisly.*/
DO ~TakePartyItem("BOOK86") DestroyItem("BOOK86") SetGlobal("_bRBook86","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK87") !Global("_bRBook87","GLOBAL",1)~ THEN @224  /*Balduran's Logbook... Are you certain, <CHARNAME>? With a treasure like this, my library will be the most popular in Amn....*/
DO ~TakePartyItem("BOOK87") DestroyItem("BOOK87") SetGlobal("_bRBook87","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK88") !Global("_bRBook88","GLOBAL",1)~ THEN @225  /*The Recipes and Ruminations of One Dradeel of Tethyr, formerly A Lovely Bun-cake Brightens Anyone's Day... This sounds charming. I may keep it for myself.*/
DO ~TakePartyItem("BOOK88") DestroyItem("BOOK88") SetGlobal("_bRBook88","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK89") !Global("_bRBook89","GLOBAL",1)~ THEN @226  /*The Book of Kaza... This volume must be worth a fortune. The pages are so old... I promise this book will have a place of pride.*/
DO ~TakePartyItem("BOOK89") DestroyItem("BOOK89") SetGlobal("_bRBook89","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK90") !Global("_bRBook90","GLOBAL",1)~ THEN @227  /*Golem-Building Book... Some wizard will steal this, mark my words. But at least I'll have it for a time.*/
DO ~TakePartyItem("BOOK90") DestroyItem("BOOK90") SetGlobal("_bRBook90","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK91") !Global("_bRBook91","GLOBAL",1)~ THEN @228  /*The Tome of Amaunator... Interesting. What girl doesn't like a little heresy?*/
DO ~TakePartyItem("BOOK91") DestroyItem("BOOK91") SetGlobal("_bRBook91","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK92") !Global("_bRBook92","GLOBAL",1)~ THEN @229  /*Lovely, a private journal. Though I do hope Merella doesn't mind.*/
DO ~TakePartyItem("BOOK92") DestroyItem("BOOK92") SetGlobal("_bRBook92","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK93") !Global("_bRBook93","GLOBAL",1)~ THEN @230  /*An orcish cookbook? Well, I suppose some folks might read it for the novelty.*/
DO ~TakePartyItem("BOOK93") DestroyItem("BOOK93") SetGlobal("_bRBook93","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK94") !Global("_bRBook94","GLOBAL",1)~ THEN @231  /*The Vampiricus Omnibus: Unabridged... We certainly need that around here.*/
DO ~TakePartyItem("BOOK94") DestroyItem("BOOK94") SetGlobal("_bRBook94","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK95") !Global("_bRBook95","GLOBAL",1)~ THEN @232  /*This book is covered in blood, <CHARNAME>. I know I said I wanted interesting volumes for my library, but..... Why don't we just bury this out back?*/
DO ~TakePartyItem("BOOK95") DestroyItem("BOOK95") SetGlobal("_bRBook95","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK96") !Global("_bRBook96","GLOBAL",1)~ THEN @233  /*Conjur Ota Servanta.... This seems dangerous. I may return it to the Temple of Oghma if it proves troublesome.*/
DO ~TakePartyItem("BOOK96") DestroyItem("BOOK96") SetGlobal("_bRBook96","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK97") !Global("_bRBook97","GLOBAL",1) !IsValidForPartyDialog("Mazzy") ~ THEN @234  /*Oh, a journal. Tell this Lellyn fellow that it's appreciated.*/
DO ~TakePartyItem("BOOK97") DestroyItem("BOOK97") SetGlobal("_bRBook97","GLOBAL",1) AddexperienceParty(1000)~
== MURDGIRL IF ~PartyHasItem("BOOK97") !Global("_bRBook97","GLOBAL",1) IsValidForPartyDialog("Mazzy") Global("_bMRBook2","GLOBAL",0) ~ THEN @234  /*Oh, a journal. Tell this Lellyn fellow that it's appreciated.*/
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") Global("_bMRBook2","GLOBAL",0) PartyHasItem("BOOK97") !Global("_bRBook97","GLOBAL",1)~ THEN @235 /*That will not be possible. He died some time ago.*/
== MURDGIRL IF ~PartyHasItem("BOOK97") Global("_bMRBook2","GLOBAL",0) IsValidForPartyDialog("Mazzy") !Global("_bRBook97","GLOBAL",1)~ THEN @236 /*Oh, I'm sorry. Did you want this journal back?*/
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") Global("_bMRBook2","GLOBAL",0) PartyHasItem("BOOK97")~ THEN @237 /*No. Place the journal on your shelves so that he may be remembered as a hero. I believe he would have preferred that.*/
== MURDGIRL IF ~PartyHasItem("BOOK97") Global("_bMRBook2","GLOBAL",0) !Global("_bRBook97","GLOBAL",1) IsValidForPartyDialog("Mazzy")~ THEN @238 /*I will. Thank you.*/
DO ~SetGlobal("_bMRBook2","GLOBAL",1) TakePartyItem("BOOK97") DestroyItem("BOOK97") SetGlobal("_bRBook97","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOK98") !Global("_bRBook98","GLOBAL",1)~ THEN @239 /*The Book of King Strohm III... This should be in a museum. But I will do my best.*/
DO ~TakePartyItem("BOOK98") DestroyItem("BOOK98") SetGlobal("_bRBook98","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("BOOKEE") Global("_bRBookEE","GLOBAL",1)~ THEN @2400 /*Oh good, another one of Elminster's Bestiaries. The children like to look at the pictures in this one.*/
DO ~TakePartyItem("BOOKEE") DestroyItem("BOOKEE") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("BOOKEE") !Global("_bRBookEE","GLOBAL",1)~ THEN @240 /*Elminster's Ecologies: Appendix IIIa... Oh, a bestiary. This will be popular with adventurers. I assume you read it carefully?*/
DO ~TakePartyItem("BOOKEE") DestroyItem("BOOKEE") SetGlobal("_bRBookEE","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("LUM1") !Global("_bRLUM1","GLOBAL",1)~ THEN @241 /*A handwritten note... you really do pick up everything, don't you?*/
DO ~TakePartyItem("LUM1") DestroyItem("LUM1") SetGlobal("_bRLUM1","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("LUM2") !Global("_bRLUM2","GLOBAL",1)~ THEN @242  /*Mad scribbling, lovely. The bards should enjoy this.*/
DO ~TakePartyItem("LUM2") DestroyItem("LUM2") SetGlobal("_bRLUM2","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("LUM3") !Global("_bRLUM3","GLOBAL",1)~ THEN @243  /*I wonder who this Lum is. This note is... quite unique.*/
DO ~TakePartyItem("LUM3") DestroyItem("LUM3") SetGlobal("_bRLUM3","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("LUM4") !Global("_bRLUM4","GLOBAL",1)~ THEN @244  /*Your writer here seems to dislike magic. Have you been pickpocketing Cowled Wizards?*/
DO ~TakePartyItem("LUM4") DestroyItem("LUM4") SetGlobal("_bRLUM4","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("LUM5") !Global("_bRLUM5","GLOBAL",1)~ THEN @245  /*L.t.Mad... Sounds about right.*/
DO ~TakePartyItem("LUM5") DestroyItem("LUM5") SetGlobal("_bRLUM5","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("LUM6") !Global("_bRLUM6","GLOBAL",1)~ THEN @246  /*"The beautiful people are short, red, and green." That's certainly an opinion.*/
DO ~TakePartyItem("LUM6") DestroyItem("LUM6") SetGlobal("_bRLUM6","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("LUM7") !Global("_bRLUM7","GLOBAL",1)~ THEN @247  /*I suppose this nonsensical babbling should be good for a laugh.*/
DO ~TakePartyItem("LUM7") DestroyItem("LUM7") SetGlobal("_bRLUM7","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("LUM8") !Global("_bRLUM8","GLOBAL",1)~ THEN @248  /*Lum the Mad... Well, that certainly explains the contents of this note.*/
DO ~TakePartyItem("LUM8") DestroyItem("LUM8") SetGlobal("_bRLUM8","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("LUM9") !Global("_bRLUM9","GLOBAL",1)~ THEN @249  /*This seems more like scrap paper. But a good library needs that too.*/
DO ~TakePartyItem("LUM9") DestroyItem("LUM9") SetGlobal("_bRLUM9","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC5P") !Global("_bRMISC5P","GLOBAL",1)~ THEN @250  /*....A ransom note, really, <CHARNAME>? I do hope you rescued this poor girl.*/
DO ~TakePartyItem("MISC5P") DestroyItem("MISC5P") SetGlobal("_bRMISC5P","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC5Y") !Global("_bRMISC5Y","GLOBAL",1)~ THEN @251  /*This seems rather personal, but I'll add it to my collection.*/
DO ~TakePartyItem("MISC5Y") DestroyItem("MISC5Y") SetGlobal("_bRMISC5Y","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC6R") !Global("_bRMISC6R","GLOBAL",1)~ THEN @252  /*A plea for aid... I hope they were rich or powerful. Otherwise that most holy order of snobby paladins probably tossed this in the dirt.*/
DO ~TakePartyItem("MISC6R") DestroyItem("MISC6R") SetGlobal("_bRMISC6R","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC6U") !Global("_bRMISC6U","GLOBAL",1)~ THEN @253  /*Is this a challenge to a duel? How exciting.*/
DO ~TakePartyItem("MISC6U") DestroyItem("MISC6U") SetGlobal("_bRMISC6U","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC78") !Global("_bRMISC78","GLOBAL",1)~ THEN @254  /*An inaugural invitation, a pity that it's dated. Of course, a woman like me would never be allowed near such a party, but a gal can dream.*/
DO ~TakePartyItem("MISC78") DestroyItem("MISC78") SetGlobal("_bRMISC78","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC7G") !Global("_bRMISC7G","GLOBAL",1)~ THEN @255  /*If you truly wish to give this up, then I accept. But I think this Jaheira meant her words for you alone.*/
DO ~TakePartyItem("MISC7G") DestroyItem("MISC6U") SetGlobal("_bRMISC7G","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC7H") Global("_bRMISC7H","GLOBAL",1)~ THEN @256  /*Oh, fantastic, you've brought me the Umar Witch Project Journal again... I can't keep this one on the shelves.*/
DO ~TakePartyItem("MISC7H") DestroyItem("MISC7H") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("MISC7H") !Global("_bRMISC7H","GLOBAL",1)~ THEN @257  /*The Umar Witch Project Journal... Oh, this gives me the shivers. Perfect.*/
DO ~TakePartyItem("MISC7H") DestroyItem("MISC7H") SetGlobal("_bRMISC7H","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC7I") !Global("_bRMISC7I","GLOBAL",1)~ THEN @258  /*The Tome of Chaos... you're certain that this book won't explode or something, right?*/
DO ~TakePartyItem("MISC7I") DestroyItem("MISC7I") SetGlobal("_bRMISC7I","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC7M") !Global("_bRMISC7M","GLOBAL",1)~ THEN @259  /*Tax records, of course. I'm sure someone will want these eventually.*/
DO ~TakePartyItem("MISC7M") DestroyItem("MISC7M") SetGlobal("_bRMISC7M","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC7O") !Global("_bRMISC7O","GLOBAL",1)~ THEN @260  /*This sounds like you've been busy, <CHARNAME>. Are you sure you want this note on record?*/
DO ~TakePartyItem("MISC7O") DestroyItem("MISC7O") SetGlobal("_bRMISC7O","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC7P") !Global("_bRMISC7P","GLOBAL",1)~ THEN @261  /*Tombelthen's Journal... a pity that it's torn.*/
DO ~TakePartyItem("MISC7P") DestroyItem("MISC7P") SetGlobal("_bRMISC7P","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC7Q") !Global("_bRMISC7Q","GLOBAL",1)~ THEN @262  /*Tombelthen's Journal... This will draw the treasure hunters.*/
DO ~TakePartyItem("MISC7Q") DestroyItem("MISC7Q") SetGlobal("_bRMISC7Q","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC7S") !Global("_bRMISC7S","GLOBAL",1)~ THEN @263  /*Somehow I have the feeling Lord Tombelthen never made it home.*/
DO ~TakePartyItem("MISC7S") DestroyItem("MISC7S") SetGlobal("_bRMISC7S","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC7W") !Global("_bRMISC7W","GLOBAL",1)~ THEN @264  /*This Lavok sounds both mad and dangerous, <CHARNAME>.You must be very powerful to bring such people down.*/
== VALYGARJ IF ~IsValidForPartyDialog("Valygar") PartyHasItem("MISC7W") !Global("_bRMISC7W","GLOBAL",1)~ THEN @265 /*Indeed, that was quite a battle. My ancestor lost himself to magic's clutches many years ago. Take this volume as a warning to those who would do the same.*/
== MURDGIRL IF ~PartyHasItem("MISC7W") !Global("_bRMISC7W","GLOBAL",1)~ THEN @266 /*Perhaps the Cowled Wizards do have a point sometimes.*/
DO ~TakePartyItem("MISC7W") DestroyItem("MISC7W") SetGlobal("_bRMISC7W","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC8A") !Global("_bRMISC8A","GLOBAL",1)~ THEN @267 /*Hah! The last arrogant commands of a dying guild. I shall put this note in pride of place.*/
DO ~TakePartyItem("MISC8A") DestroyItem("MISC8A") SetGlobal("_bRMISC8A","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC8B") !Global("_bRMISC8B","GLOBAL",1)~ THEN @268  /*Threats from the vampires... a slice of modern history. This will be valuable someday.*/
DO ~TakePartyItem("MISC8B") DestroyItem("MISC8B") SetGlobal("_bRMISC8B","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC8C") !Global("_bRMISC8C","GLOBAL",1)~ THEN @269  /*Morn Ritual... A scrap of history.*/
DO ~TakePartyItem("MISC8C") DestroyItem("MISC8C") SetGlobal("_bRMISC8C","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC8D") !Global("_bRMISC8D","GLOBAL",1)~ THEN @270  /*Noontide Ritual... How sad. I do not think you would have this were there living followers.*/
DO ~TakePartyItem("MISC8D") DestroyItem("MISC8D") SetGlobal("_bRMISC8D","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC8E") !Global("_bRMISC8E","GLOBAL",1)~ THEN @271  /*The Dusk Ritual... Should I be worried about offending some long forgotten god?*/
DO ~TakePartyItem("MISC8E") DestroyItem("MISC8E") SetGlobal("_bRMISC8E","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC8I") !Global("_bRMISC8I","GLOBAL",1)~ THEN @272  /*A note from Imnesvale... Aww, this is so sweet.*/
DO ~TakePartyItem("MISC8I") DestroyItem("MISC8I") SetGlobal("_bRMISC8I","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC9C") !Global("_bRMISC9C","GLOBAL",1)~ THEN @273  /*Lium's Journal of Malevolent Magics... that sounds fun. Though I might have to bribe a few Cowled Wizards to keep it on my shelves.*/
DO ~TakePartyItem("MISC9C") DestroyItem("MISC9C") SetGlobal("_bRMISC9C","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC9I") Global("_bRMISC9I","GLOBAL",1)~ THEN @340  /*You found ANOTHER First Journal of Jon Irenicus? What kind of person transcribes their journal twice?*/
DO ~TakePartyItem("MISC9I") DestroyItem("MISC9I") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("MISC9I") !Global("_bRMISC9I","GLOBAL",1)~ THEN @274  /*The First Journal of Jon Irenicus.... He sounds like the pompous type.*/
DO ~TakePartyItem("MISC9I") DestroyItem("MISC9I") SetGlobal("_bRMISC9I","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC9J") !Global("_bRMISC9J","GLOBAL",1)~ THEN @275  /*Second Journal of Jon Irenicus. This fellow sure liked to write about himself. He sounds like a madman too.*/
DO ~TakePartyItem("MISC9J") DestroyItem("MISC9J") SetGlobal("_bRMISC9J","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC9K") !Global("_bRMISC9K","GLOBAL",1)~ THEN @276 /*The Third Journal of Jon Irenicus... Hmm, boring... drow and stuff. But I shall add it to the shelves.*/
DO ~TakePartyItem("MISC9K") DestroyItem("MISC9K") SetGlobal("_bRMISC9K","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISCA3") !Global("_bRMISCA3","GLOBAL",1)~ THEN @277 /*A book of elemental rituals... I hope this one doesn't light the block on fire.*/
DO ~TakePartyItem("MISCA3") DestroyItem("MISCA3") SetGlobal("_bRMISCA3","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISCAK") !Global("_bRMISCAK","GLOBAL",1)~ THEN @278 /*A warden's note? Were you in prison recently?*/
DO ~TakePartyItem("MISCAK") DestroyItem("MISCAK") SetGlobal("_bRMISCAK","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISCBW") !Global("_bRMISCBW","GLOBAL",1)~ THEN @279 /*Notes from a Sahuagin Scribe... This looks rare; it should be in high demand. (I'm not even sure what a Sahuagin is.)*/
DO ~TakePartyItem("MISCBW") DestroyItem("MISCBW") SetGlobal("_bRMISCBW","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISCBX") !Global("_bRMISCBX","GLOBAL",1)~ THEN @280 /*This note is rather worrying, <CHARNAME>. You'd best keep an eye out for this Ployer fellow. I think one of the gals working the docks mentioned him.*/
== JAHEIRAJ IF ~IfValidForPartyDialog("Jaheira") PartyHasItem("MISCBX") !Global("_bRMISCBX","GLOBAL",1) Dead("Ployer")~ THEN @281 /*Do not worry about us. Baron Ployer was dealt with most effectively.*/
== MURDGIRL IF ~IfValidForPartyDialog("Jaheira") PartyHasItem("MISCBX") !Global("_bRMISCBX","GLOBAL",1) Dead("Ployer")~ THEN @282 /*That is good to hear.*/
== MURDGIRL IF ~PartyHasItem("MISCBX") !Global("_bRMISCBX","GLOBAL",1)~ THEN @283 /*He sounded quite unpleasant overall.*/
DO ~TakePartyItem("MISCBX") DestroyItem("MISCBX") SetGlobal("_bRMISCBX","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISCBZ") !Global("_bRMISCBZ","GLOBAL",1)~ THEN @284 /*Tizzak's Journal... This information is how you killed the Shadow Master, isn't it? I'm tempted to kiss this book right now.*/
DO ~TakePartyItem("MISCBZ") DestroyItem("MISCBZ") SetGlobal("_bRMISCBZ","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISCCA") !Global("_bRMISCCA","GLOBAL",1)~ THEN @285 /*Are you sure that you don't need this note from Demin? It sounds important. But this girl isn't fool enough to look a gift horse in the mouth.*/
DO ~TakePartyItem("MISCCA") DestroyItem("MISCCA") SetGlobal("_bRMISCCA","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("OHBBOOK1") !Global("_bROHBBOOK1","GLOBAL",1)~ THEN @286 /*The Journal of Geldorf Tinbasher... What a poor tortured soul....*/
DO ~TakePartyItem("OHBBOOK1") DestroyItem("OHBBOOK1") SetGlobal("_bROHBBOOK1","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("OHBBOOK2") !Global("_bROHBBOOK2","GLOBAL",1)~ THEN @287 /*The Journal of Thassk Kun... Magic, hunters and devas, how exciting!*/
DO ~TakePartyItem("OHBBOOK2") DestroyItem("OHBBOOK2") SetGlobal("_bROHBBOOK2","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("OHBBOOK3") !Global("_bROHBBOOK3","GLOBAL",1)~ THEN @288 /*Bannor's Journal... Eugh, these experiments sound awful. I shall lend this carefully.*/
DO ~TakePartyItem("OHBBOOK3") DestroyItem("OHBBOOK3") SetGlobal("_bROHBBOOK3","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("OHBBOOK4") !Global("_bROHBBOOK4","GLOBAL",1)~ THEN @289 /*The Journal of Dennaton... *scoffs* One of those entertainer types.*/
DO ~TakePartyItem("OHBBOOK4") DestroyItem("OHBBOOK4") SetGlobal("_bROHBBOOK4","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("OHBBOOK5") !Global("_bROHBBOOK5","GLOBAL",1)~ THEN @290 /*The Journal of Dennaton... What an odd volume....*/
DO ~TakePartyItem("OHBBOOK5") DestroyItem("OHBBOOK5") SetGlobal("_bROHBBOOK5","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("OHBBOOK6") !Global("_bROHBBOOK6","GLOBAL",1)~ THEN @291 /*The Journal of Dennaton... Sounds like the ambitious type, I wonder how those dreams turned out.*/
DO ~TakePartyItem("OHBBOOK6") DestroyItem("OHBBOOK6") SetGlobal("_bROHBBOOK6","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohdjour") !Global("_bRohdjour","GLOBAL",1)~ THEN @292 /*The Journal of Saemon Havarian... What? It's *blank*! You're playing a joke on me.*/
DO ~TakePartyItem("ohdjour") DestroyItem("ohdjour") SetGlobal("_bRohdjour","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbook") !Global("_bRohhbook","GLOBAL",1)~ THEN @293 /*The Tale of the Prophet Unproved... One for the fables section.*/
DO ~TakePartyItem("ohhbook") DestroyItem("ohhbook") SetGlobal("_bRohhbook","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbook2") !Global("_bRohhbook2","GLOBAL",1)~ THEN @294 /*Of Simulacrum and Sanity... Crazy? Check. Wizardish? Check. This should be very popular.*/
DO ~TakePartyItem("ohhbook2") DestroyItem("ohhbook2") SetGlobal("_bRohhbook2","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbooka") !Global("_bRohhbooka","GLOBAL",1)~ THEN @295 /*Can you read this, <CHARNAME>? Because I certainly can't. But I'm sure some scholar will appreciate the challenge.*/
DO ~TakePartyItem("ohhbooka") DestroyItem("ohhbooka") SetGlobal("_bRohhbooka","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbookb") !Global("_bRohhbookb","GLOBAL",1)~ THEN @296 /*Oh how beautiful... An illustrated manuscript.*/
DO ~TakePartyItem("ohhbookb") DestroyItem("ohhbookb") SetGlobal("_bRohhbookb","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbookc") !Global("_bRohhbookc","GLOBAL",1)~ THEN @297 /*Did you drop this book in a puddle, <CHARNAME>? You should be ashamed of yourself. But I suppose the paper might be useful.*/
DO ~TakePartyItem("ohhbookc") DestroyItem("ohhbookc") SetGlobal("_bRohhbookc","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbookd") !Global("_bRohhbookd","GLOBAL",1)~ THEN @298 /*Legible scraps and faded letters... Well, perhaps it can be restored.*/
DO ~TakePartyItem("ohhbookd") DestroyItem("ohhbookd") SetGlobal("_bRohhbookd","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbooke") !Global("_bRohhbooke","GLOBAL",1)~ THEN @299 /*Interesting. I've never heard a book crackle quite like this.*/
DO ~TakePartyItem("ohhbooke") DestroyItem("ohhbooke") SetGlobal("_bRohhbooke","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbookf") !Global("_bRohhbookf","GLOBAL",1)~ THEN @300 /*What a gorgeous history. I think I shall enjoy deciphering this one.*/
DO ~TakePartyItem("ohhbookf") DestroyItem("ohhbookf") SetGlobal("_bRohhbookf","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbookg") !Global("_bRohhbookg","GLOBAL",1)~ THEN @301 /*Hmm, some sort of genealogy. Well, someone will like that.*/
DO ~TakePartyItem("ohhbookg") DestroyItem("ohhbookg") SetGlobal("_bRohhbookg","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhbookh") !Global("_bRohhbookh","GLOBAL",1)~ THEN @302 /*A book of poetry, wonderful, the bards should pay quite well to access this.*/
DO ~TakePartyItem("ohhbookh") DestroyItem("ohhbookh") SetGlobal("_bRohhbookh","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohhjour") !Global("_bRohhjour","GLOBAL",1)~ THEN @303 /*The Journal of Umolex the Far-Eyed... ooh, egg-painting tips. I'll keep this one in mind.*/
DO ~TakePartyItem("ohhjour") DestroyItem("ohhjour") SetGlobal("_bRohhjour","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohnnote1") !Global("_bRohnnote1","GLOBAL",1)~ THEN @304 /*What a gruesome contract. But snitches get stitches. That's what they deserve.*/
DO ~TakePartyItem("ohnnote1") DestroyItem("ohnnote1") SetGlobal("_bRohnnote1","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohnnote2") !Global("_bRohnnote2","GLOBAL",1)~ THEN @305 /*Hmm, a letter from the chief of the Order of the Eight Staves. Never heard of 'em.*/
== NEERAJ IF ~IsValidForPartyDialog("Neera") PartyHasItem("ohnnote2") !Global("_bRohnnote2","GLOBAL",1)~ THEN @306 /*You really aren't missing much.*/
== MURDGIRL IF ~PartyHasItem("ohnnote2") !Global("_bRohnnote2","GLOBAL",1)~ THEN @307 /*But even boring letters might help someone someday.*/
DO ~TakePartyItem("ohnnote2") DestroyItem("ohnnote2") SetGlobal("_bRohnnote2","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohnnote3") !Global("_bRohnnote3","GLOBAL",1)~ THEN @308 /*How unpleasant. I hope you dealt with this Lanneth person.*/
DO ~TakePartyItem("ohnnote3") DestroyItem("ohnnote3") SetGlobal("_bRohnnote3","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohnnote4") !Global("_bRohnnote4","GLOBAL",1)~ THEN @309 /*The Journal of Fadell Ironeye... Sounds like an interesting fellow.*/
DO ~TakePartyItem("ohnnote4") DestroyItem("ohnnote4") SetGlobal("_bRohnnote4","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohnnote5") !Global("_bRohnnote5","GLOBAL",1)~ THEN @310 /*Hmm, the Diary of Vicross... They were kind enough to write their name on the first page.*/
DO ~TakePartyItem("ohnnote5") DestroyItem("ohnnote5") SetGlobal("_bRohnnote5","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohrbook1") !Global("_bRohrbook1","GLOBAL",1)~ THEN @311 /*Alorgoth's Journal... What a pompous windbag...*/
== RASAADJ IF ~IfValidForPartyDialog("Rasaad") PartyHasItem("ohrbook1") !Global("_bRohrbook1","GLOBAL",1)~ THEN @312 /*Your words lighten my heart, milady. I have not laughed so in some time.*/
== MURDGIRL IF ~PartyHasItem("ohrbook1") !Global("_bRohrbook1","GLOBAL",1)~ THEN @313 /*Perhaps some of the children would like to draw on this.*/
DO ~TakePartyItem("ohrbook1") DestroyItem("ohrbook1") SetGlobal("_bRohrbook1","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohrbook2") !Global("_bRohrbook2","GLOBAL",1)~ THEN @314 /*The Journal of Boldcam Deepstone... What tragic deaths are these?*/
DO ~TakePartyItem("ohrbook2") DestroyItem("ohrbook2") SetGlobal("_bRohrbook2","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohrnot01") !Global("_bRohrnot01","GLOBAL",1)~ THEN @315 /*A scrap of paper, really? Well, if it's free, I suppose.*/
DO ~TakePartyItem("ohrnot01") DestroyItem("ohrnot01") SetGlobal("_bRohrnot01","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohrnot02") !Global("_bRohrnot02","GLOBAL",1)~ THEN @316 /*This speaks of a hidden temple... that's very interesting...*/
DO ~TakePartyItem("ohrnot02") DestroyItem("ohrnot02") SetGlobal("_bRohrnot02","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohrnot03") !Global("_bRohrnot03","GLOBAL",1)~ THEN @317 /*Ooh, an old map. The adventurers should love this.*/
DO ~TakePartyItem("ohrnot03") DestroyItem("ohrnot03") SetGlobal("_bRohrnot03","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ohrpamph") !Global("_bRohrpamph","GLOBAL",1)~ THEN @318 /*"Cutthroats: A Gentleman's Guide to Hold-ups and Robberies"... I love it!*/
DO ~TakePartyItem("ohrpamph") DestroyItem("ohrpamph") SetGlobal("_bRohrpamph","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT01C") Global("CribNote","GLOBAL",1) !Global("_bRPLOT01C","GLOBAL",1)~ THEN @319 /*This tattered parchment seems very old... It may be valuable.*/
DO ~TakePartyItem("PLOT01C") DestroyItem("PLOT01C") SetGlobal("_bRPLOT01C","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT01D") Global("CribNote","GLOBAL",1) !Global("_bRPLOT01D","GLOBAL",1)~ THEN @320 /*A ritual document of some sort...*/
DO ~TakePartyItem("PLOT01D") DestroyItem("PLOT01D") SetGlobal("_bRPLOT01D","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT01E") Global("CribNote","GLOBAL",1) !Global("_bRPLOT01E","GLOBAL",1)~ THEN @321 /*What lovely calligraphy. Someone put great effort into this.*/
DO ~TakePartyItem("PLOT01E") DestroyItem("PLOT01E") SetGlobal("_bRPLOT01E","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT01I") !Global("_bRPLOT01I","GLOBAL",1)~ THEN @322 /*The History of the Imprisoned One... Perhaps the Helmites will be interested in this.*/
DO ~TakePartyItem("PLOT01I") DestroyItem("PLOT01I") SetGlobal("_bRPLOT01I","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT01M") Global("CribNote","GLOBAL",1) !Global("_bRPLOT01M","GLOBAL",1)~ THEN @323 /*The scribes will appreciate this note. It looks quite professional.*/
DO ~TakePartyItem("PLOT01M") DestroyItem("PLOT01M") SetGlobal("_bRPLOT01M","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT01N") !Global("_bRPLOT01N","GLOBAL",1) Global("CribNote","GLOBAL",1)~ THEN @324 /*Did you take some poor old man's correspondence? And a cold old man as well...*/
DO ~TakePartyItem("PLOT01N") DestroyItem("PLOT01N") SetGlobal("_bRPLOT01N","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT02F") !Global("_bRPLOT02F","GLOBAL",1)~ THEN @325 /*This journal has some poetry... how nice...*/
DO ~TakePartyItem("PLOT02F") DestroyItem("PLOT02F") SetGlobal("_bRPLOT02F","GLOBAL",1) AddexperienceParty(1000) AddJournalEntry(@1004,USER)~ /*Note on Madman's Journal*/

== MURDGIRL IF ~PartyHasItem("PLOT02G") !Global("_bRPLOT02G","GLOBAL",1)~ THEN @326 /*What do we have here.... The private journal of Sir Kalthorine ut Wistan...*/
DO ~TakePartyItem("PLOT02G") DestroyItem("PLOT02G") SetGlobal("_bRPLOT02G","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT03F") !Global("_bRPLOT03F","GLOBAL",1) Global("ScepterKeys","GLOBAL",1)~ THEN @327 /*....What is this talking about? Some kind of mage's rivalry?*/
DO ~TakePartyItem("PLOT03F") DestroyItem("PLOT03F") SetGlobal("_bRPLOT03F","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT03G") !Global("_bRPLOT03G","GLOBAL",1) Global("ScepterKeys","GLOBAL",1)~ THEN @328 /*....Burned scraps, really? This is hardly even paper.*/
DO ~TakePartyItem("PLOT03G") DestroyItem("PLOT03G") SetGlobal("_bRPLOT03G","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT03H") !Global("_bRPLOT03H","GLOBAL",1) Global("ScepterKeys","GLOBAL",1)~ THEN @329 /*Uggh, this note is wet.*/
DO ~TakePartyItem("PLOT03H") DestroyItem("PLOT03H") SetGlobal("_bRPLOT03H","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT03I") !Global("_bRPLOT03I","GLOBAL",1) Global("ScepterKeys","GLOBAL",1)~ THEN @330 /*Is this letter made of ice? I'll have wizards fighting each other to study this.*/
DO ~TakePartyItem("PLOT03I") DestroyItem("PLOT03I") SetGlobal("_bRPLOT03I","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT04E") !Global("_bRPLOT04E","GLOBAL",1) Global("StairButton","GLOBAL",1)~ THEN @331 /*Hmm, a pity you don't have the rest of this diary.*/
DO ~TakePartyItem("PLOT04E") DestroyItem("PLOT04E") SetGlobal("_bRPLOT04E","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("PLOT04J") !Global("_bRPLOT04J","GLOBAL",1) Global("StairButton","GLOBAL",1)~ THEN @332 /*What a strange journal... I hope this Carston person was grateful if you freed him.*/
DO ~TakePartyItem("PLOT04J") DestroyItem("PLOT04J") SetGlobal("_bRPLOT04J","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLADJ") !Global("_bRSCRLADJ","GLOBAL",1)~ THEN @333 /*Nobles always did like to use ten words when one would do. Lord Jierdan Firkraag sounds rather snooty to me.*/
DO ~TakePartyItem("SCRLADJ") DestroyItem("SCRLADJ") SetGlobal("_bRSCRLADJ","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLHP") !Global("_bRSCRLHP","GLOBAL",1)~ THEN @334 /*Sounds like this thief met an unfortunate end. Well-deserved most likely.*/
DO ~TakePartyItem("SCRLHP") DestroyItem("SCRLHP") SetGlobal("_bRSCRLHP","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLICK") !Global("_bRSCRLICK","GLOBAL",1)~ THEN @335 /*This script is almost painful to look at, <CHARNAME>; where did you get this?*/
DO ~TakePartyItem("SCRLICK") DestroyItem("SCRLICK") SetGlobal("_bRSCRLICK","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLMZ") !Global("_bRSCRLMZ ","GLOBAL",1)~ THEN @336 /*A Note from Mazzy Fentan... I'll add it to the catalog.*/
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") PartyHasItem("SCRLMZ") !Global("_bRSCRLMZ ","GLOBAL",1)~ THEN @337 /*I can't believe you kept that, <CHARNAME>.*/
== MURDGIRL IF ~PartyHasItem("SCRLMZ") !Global("_bRSCRLMZ ","GLOBAL",1)~ THEN @338 /*Short but to the point. I appreciate that.*/
DO ~TakePartyItem("SCRLMZ") DestroyItem("SCRLMZ") SetGlobal("_bRSCRLMZ ","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLA9") Global("_bRSCRLA9","GLOBAL",1)~ THEN @341 /*Another strange note? Several scholars have been fighting over the last one, so this should help a lot.*/
DO ~TakePartyItem("SCRLA9") DestroyItem("SCRLA9") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("SCRLA9") !Global("_bRSCRLA9","GLOBAL",1)~ THEN @342 /*What... what is this written with? That's unpleasant but some folks will like the challenge, I am sure.*/
DO ~TakePartyItem("SCRLA9") DestroyItem("SCRLA9") SetGlobal("_bRSCRLA9","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLAA") Global("_bRSCRLAA","GLOBAL",1)~ THEN @343 /*Where do you find these documents? But perhaps another copy of this nonsense will help my patrons crack the code.*/
DO ~TakePartyItem("SCRLAA") DestroyItem("SCRLAA") AddexperienceParty(200)~
== MURDGIRL IF ~PartyHasItem("SCRLAA") !Global("_bRSCRLAA","GLOBAL",1)~ THEN @344 /*Is this some kind of code? Looks like gibberish to me, but someone will find it interesting.*/
DO ~TakePartyItem("SCRLAA") DestroyItem("SCRLAA") SetGlobal("_bRSCRLAA","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLAB") !Global("_bRSCRLAB","GLOBAL",1)~ THEN @345 /*Hmm, a recipe? Well, the name is unfortunate, but these Monkey Balls do sound quite delicious actually.*/
DO ~TakePartyItem("SCRLAB") DestroyItem("SCRLAB") SetGlobal("_bRSCRLAB","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLAC") !Global("_bRSCRLAC","GLOBAL",1)~ THEN @346 /*Amnian Dragoon Soup... Oh, I've made this one. Terl is quite fond of it.*/
DO ~TakePartyItem("SCRLAC") DestroyItem("SCRLAC") SetGlobal("_bRSCRLAC","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLAD") !Global("_bRSCRLAD","GLOBAL",1)~ THEN @347 /*Someone had a sweet tooth. I imagine this recipe will be quite popular.*/
DO ~TakePartyItem("SCRLAD") DestroyItem("SCRLAD") SetGlobal("_bRSCRLAD","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLAE") !Global("_bRSCRLAE","GLOBAL",1)~ THEN @348 /*Oh, I'll take this. I can always use more recipes.*/
DO ~TakePartyItem("SCRLAE") DestroyItem("SCRLAE") SetGlobal("_bRSCRLAE","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("SCRLAF") !Global("_bRSCRLAF","GLOBAL",1)~ THEN @349 /*Ruby Racks... that's an odd name for a dessert but this recipe looks good.*/
DO ~TakePartyItem("SCRLAF") DestroyItem("SCRLAF") SetGlobal("_bRSCRLAF","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISCCC") !Global("_bRMISCCC","GLOBAL",1)~ THEN @350 /*Some kind of rune? Hopefully this isn't dangerous...*/
DO ~TakePartyItem("MISCCC") DestroyItem("MISCCC") SetGlobal("_bRMISCCC","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC6A") !Global("_bRMISC6A","GLOBAL",1)~ THEN @351 /*Oh, is this a letter to that awful murderer? How ghastly. But people do love such things.*/
DO ~TakePartyItem("MISC6A") DestroyItem("MISC6A") SetGlobal("_bRMISC6A","GLOBAL",1) AddexperienceParty(1000) AddJournalEntry(@1002,USER)~ /*Rejiek Hidesman's Letter*/

== MURDGIRL IF ~PartyHasItem("MISC7C") !Global("_bRMISC7C","GLOBAL",1)~ THEN @469 /*Interesting... This sounds like you stumbled on another dangerous situation. I'm happy to take this note if you don't need it anymore.*/
DO ~TakePartyItem("MISC7C") DestroyItem("MISC7C") SetGlobal("_bRMISC7C","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("MISC4T") !Global("_bRMISC4T","GLOBAL",1) Dead("MaeVar")~ THEN @470 /*Have you truly been carrying around secret orders from the Shadow Master just crumpled in your pack? If Aran were still alive, there's no way that I could take this... But I hope his soul is rotting in the Hells where it belongs.*/
DO ~TakePartyItem("MISC4T") DestroyItem("MISC4T") SetGlobal("_bRMISC4T","GLOBAL",1) AddexperienceParty(1000)~

//Mod Items start here
== MURDGIRL IF ~PartyHasItem("ESXL3") !Global("_bRESXL3","GLOBAL",1)~ THEN @352 /*What an odd letter... Why would anyone want to leave a city for some clearing?*/
== CERNDJ IF  ~IfValidForPartyDialog("Cernd") PartyHasItem("ESXL3") !Global("_bRESXL3","GLOBAL",1)~ THEN @353 /*There are many reasons to heed the call of nature. A city such as this stifles the very soul.*/
== MURDGIRL IF ~PartyHasItem("ESXL3") !Global("_bRESXL3","GLOBAL",1)~ THEN @354 /*Perhaps they were chasing a dream. That I could understand.*/
DO ~TakePartyItem("ESXL3") DestroyItem("ESXL3") SetGlobal("_bRESXL3","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("O#KVASN") !Global("_bRO#KVASN","GLOBAL",1)~ THEN @355 /*Have you been working for a brothel, <CHARNAME>? You should be ashamed of yourself, unless you helped those girls go free.*/
DO ~TakePartyItem("O#KVASN") DestroyItem("O#KVASN") SetGlobal("_bRO#KVASN","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("C-ALTTR1") !Global("_bRC-ALTTR1","GLOBAL",1)~ THEN @356 /*Some sort of job notice... I suppose I could post it for this Whitehand fellow, whoever he may be.*/
== IF_FILE_EXISTS C-ARANJ  IF ~IfValidForPartyDialog("C-ARAN") PartyHasItem("C-ALTTR1") !Global("_bRC-ALTTR1","GLOBAL",1)~ THEN @357 /*That be much appreciated. A mercenary can always use good word of mouth.*/
== MURDGIRL IF ~PartyHasItem("C-ALTTR1") !Global("_bRC-ALTTR1","GLOBAL",1)~ THEN @358 /*Perhaps one of my patrons will need a translation soon enough.*/
DO ~TakePartyItem("C-ALTTR1") DestroyItem("C-ALTTR1") SetGlobal("_bRC-ALTTR1","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("O#CRNOT1") !Global("_bRO#CRNOT1","GLOBAL",1)~ THEN @359 /*Are you a spy now, <CHARNAME>? I think it will be safest if this note goes to scrap.*/
DO ~TakePartyItem("O#CRNOT1") DestroyItem("O#CRNOT1") SetGlobal("_bRO#CRNOT1","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("RH#LTTR") !Global("_bRRH#LTTR","GLOBAL",1)~ THEN @360 /*Ooh, someone is in trouble. I hoped you helped this Jysstev's wife.*/
DO ~TakePartyItem("RH#LTTR") DestroyItem("RH#LTTR") SetGlobal("_bRRH#LTTR","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("D0QPPOT1") !Global("_bRD0QPPOT1","GLOBAL",1)~ THEN @361 /*A list of potions... Well, I can think of a few alchemists who might have some use for this.*/
DO ~TakePartyItem("D0QPPOT1") DestroyItem("D0QPPOT1") SetGlobal("_bRD0QPPOT1","GLOBAL",1) AddexperienceParty(1000) AddJournalEntry(@1003,USER)~

== MURDGIRL IF ~PartyHasItem("C-ALTTR8") !Global("_bRC-ALTTR8","GLOBAL",1)~ THEN @362 /*Is someone writing a novel? And a salacious one at that... I wonder if they'd consider giving me a copy.*/
== IF_FILE_EXISTS C-ARANJ  IF ~IfValidForPartyDialog("C-ARAN") PartyHasItem("C-ALTTR8") !Global("_bRC-ALTTR8","GLOBAL",1)~ THEN @363 /*We're still negotiatin' terms, milady, but I would be delighted to give you one of th' first printin'. Anythin' for a fan.*/
== MURDGIRL IF ~IfValidForPartyDialog("C-ARAN") PartyHasItem("C-ALTTR8") !Global("_bRC-ALTTR8","GLOBAL",1)~ THEN @364 /*Thank you. That would help my library so much.*/
== MURDGIRL IF ~PartyHasItem("C-ALTTR8") !Global("_bRC-ALTTR8","GLOBAL",1)~ THEN @365 /*I'd love to read it and I've heard that early drafts can be quite valuable.*/
DO ~TakePartyItem("C-ALTTR8") DestroyItem("C-ALTTR8") SetGlobal("_bRC-ALTTR8","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ESXB2") !Global("_bRESXB2","GLOBAL",1)~ THEN @366 /*How do you pronounce this? Isle-Stray.... Ill-i-Straw.... Well, no matter, discussions of other gods are always popular.*/
DO ~TakePartyItem("ESXB2") DestroyItem("ESXB2") SetGlobal("_bRESXB2","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("ESXB1") !Global("_bRESXB1","GLOBAL",1)~ THEN @367 /*A History of Eilistraee, the Dark Maiden... That sounds mysterious.*/
DO ~TakePartyItem("ESXB1") DestroyItem("ESXB1") SetGlobal("_bRESXB1","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("YRXLET") !Global("_bRYRXLET","GLOBAL",1)~ THEN @368 /*Love, tragedy, betrayal, and a plea for forgiveness... If you truly wish to part with it, I know that this letter will touch my patrons' hearts.*/
DO ~TakePartyItem("YRXLET") DestroyItem("YRXLET") SetGlobal("_bRYRXLET","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("RE_ANNEN") Global("RE_AnneSaved","GLOBAL",1) !Global("_bRRE_ANNEN","GLOBAL",1)~ THEN @369 /*One thousand gold for ransom? You truly have been spending time among the upper classes. Although it seems that nobles have need of heroes too.*/
DO ~TakePartyItem("RE_ANNEN") DestroyItem("RE_ANNEN") SetGlobal("_bRRE_ANNEN","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("O#LLNOT1") !Global("_bRO#LLNOT1","GLOBAL",1)~ THEN @370 /*What language is this? I cannot read it. But perhaps some scholar will.*/
DO ~TakePartyItem("O#LLNOT1") DestroyItem("O#LLNOT1") SetGlobal("_bRO#LLNOT1 ","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("O#BRYNND") !Global("_bRO#BRYNND","GLOBAL",1)~ THEN @466 /*What a sad diary. With both his wife and the Cowled Wizards trying to kill him, this poor fellow had no chance.*/
= @467 /*And a deed as well... Are you sure that I can have this? If everything works out, you'll be invited to our housewarming for sure!*/
DO ~TakePartyItem("O#BRYNND") DestroyItem("O#BRYNND") SetGlobal("_bRO#BRYNND","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL IF ~PartyHasItem("O#LLSPEL") !Global("_bRO#LLSPEL","GLOBAL",1)~ THEN @468 /*Hmm, this looks like a poorly written spellbook, but I'm sure some apprentice will want it anyway.*/
DO ~TakePartyItem("O#LLSPEL") DestroyItem("O#LLSPEL") SetGlobal("_bRO#LLSPEL","GLOBAL",1) AddexperienceParty(1000)~

== MURDGIRL @339 /*Thank you, <CHARNAME>. If you find anything else, you know where I am.*/
EXIT


//Start of Second Clara Quest
//Terl Talk
CHAIN IF WEIGHT #-1 ~Global("_bRoseLibrary","GLOBAL",2)~ THEN TERL _bRoseTerl2
@371 /*Clara and <CHARNAME>! I'm glad I found you. Rose needs to speak with you urgently.*/
== _BCLARAJ @372 /*What's wrong? Is she in danger?*/
DO ~SetGlobal("_bRoseLibrary","GLOBAL",4)~
== TERL @373 /*No, nothing like that. She just asked me to find you if I could.*/
= @374 /*I had to leave in a rush so I don't know all the details, but something has gone wrong with her new library. Rose has been been so excited since she opened and I don't want that to change. So please go see her when you can.*/
= @375 /*Even if you cannot help, she could use a friend right now. I have to deliver several letters before I return home and I do worry when I'm gone.*/
== _BCLARAJ @376 /*Of course. We'll visit Rose as soon as possible.*/
== TERL @377 /*Thank you, Clara. I'm sure I'll see you around.*/
DO ~AddJournalEntry(@1006,QUEST) ActionOverride("Terl",EscapeArea())~ /*Talk to Rose Bouquet     (Quest Title: Overdue Books)

Terl stopped by again. I really don't know how that man always tracks us down. Perhaps he was a bloodhound in a former life. But Terl informed Clara and I that Rose Bouquet wishes to speak to us about her library. It seems that something has gone wrong.*/
EXIT


//Second Rose Talk
CHAIN IF WEIGHT #-5 ~IfValidForPartyDialog("_bClara") Global("_bRoseLibrary","GLOBAL",4)~ THEN MURDGIRL _broseclara2
@378 /*Clara! You came by!*/
== _BCLARAJ @379 /*What's going on? Terl said you needed to talk to us again.*/
== MURDGIRL @380 /*It's about my library. Everything has been going really well since I got started. I'm only open for a few hours each day, but I've had lots of interest.*/
= @381 /*There's even been some folks talking about giving lessons, and a couple of the richer scholars have paid to take books home for study.*/
= @382 /*I haven't let anyone borrow the rarest books, of course... they have to read those where I can watch them. But I didn't think there was any harm in loaning out the others and I needed the extra funds to cut back on clients. Can't keep my library open if I'm out here all the time.*/
= @383 /*Only now one of my patrons won't return his book and I can't have that! What if they all do it? It'll ruin everything!*/
== _BCLARAJ @384 /*Don't worry, Rose. I'm sure that we can fix this.*/
= @385 /*So who's the book thief? Anything you know will help us track them down.*/
== MURDGIRL @386 /*Local fellow. Goes by Gereth. I don't know where he lives, but you should be able to find him at the Adventurer's Mart.*/
= @387 /*I'd run him down myself but girls like me aren't exactly welcome in Waukeen's Promenade.*/
== _BCLARAJ @388 /*Well, no one is going to stop <CHARNAME> from going where <PRO_HESHE> wants.*/
= @389 /*What kind of example should we make of this Gereth? Do you just want the book back or something more... permanent?*/
== MURDGIRL @390 /*Just the book is fine. If I needed an assassin, I'd just ask some local guards. But I won't have anyone thinking that they can steal from Rose Bouquet.*/
= @391 /*So, <CHARNAME>, will you help me out again? I've gotten a few interesting books from former clients and I'd be happy to give you one as a reward.*/
END
	++ @392 /*Sorry, I don't have the time.*/ EXTERN _BCLARAJ _bRoseNo
	++ @393 /*Of course. Sounds easy enough.*/ + _bRoseYes
	++ @394 /*Which book did Gereth take?*/ + _bRoseGolem
	++ @395 /*How do you carry all of these books anyway?*/ + _bRoseCarry
	
CHAIN _BCLARAJ _bRoseNo
@396 /*Oh, come on, <CHARNAME>... this would hardly be the weirdest thing we've done. But whatever, be a spoilsport. Maybe I'll just track down that guy myself.*/
DO ~SetGlobal("_bRoseLibrary","GLOBAL",10) AddJournalEntry(@1007,QUEST_DONE)~ /*I'm not a librarian

I refused to recover an overdue library book for Rose Bouquet. I have better things to do than deal with such petty problems. Don't people realize that I'm a hero now? Rose took it well, at least, and I should be able to keep dumping my extra books with her.*/
== MURDGIRL @397 /*It's all right, Clara. I know <CHARNAME> probably has other responsibilities and I'm sure I can find another way to get it back eventually.*/
= @398 /*I admit I'm disappointed, but I'll still take any other books you find. If this happens again, I'll definitely need multiple copies of everything.*/
EXIT

CHAIN MURDGIRL _bRoseYes
@399 /*Thank you, <CHARNAME>. That's very kind.*/
DO ~SetGlobal("_bRoseLibrary","GLOBAL",5) AddJournalEntry(@1008,QUEST)~ /*Fines to be Paid

I agreed to track down a missing book for Rose Bouquet. Apparently a mage scholar known as Gereth is refusing to return the book he borrowed from her library. She wants me to ensure that the mage doesn't get away with this and thinks I may be able to find him at the Adventurer's Mart in Waukeen's Promenade.*/
= @400 /*Once you've found Gereth and reclaimed my book, I'll give you your reward.*/
EXIT

CHAIN MURDGIRL _bRoseGolem
@401 /*Oh, of course. Gereth borrowed the Golem-Building Book that you gave me recently. He seemed very excited when he saw it.*/
= @402 /*So, will you help me get it back?*/
END
	++ @392 /*Sorry, I don't have the time.*/ EXTERN _BCLARAJ _bRoseNo
	++ @393 /*Of course. Sounds easy enough.*/ + _bRoseYes
	++ @395 /*How do you carry all of these books anyway?*/ + _bRoseCarry
	
CHAIN MURDGIRL _bRoseCarry
@403 /*Oh, that's easy. One of my former clients was an eccentric sorcerer, obsessed with magic items. He's dead now, got on the wrong side of the Cowled Wizards, but before he died, he gave me this enchanted bag as a gift.*/
= @404 /*It only holds books, but it holds a lot of them... I still haven't managed to fill the thing up yet. Whenever you bring me a new book, I keep it here 'til I go home.*/
= @405 /*My actual library is only one big room so far, but Terl has built me lots of shelves. Mostly so he doesn't trip over my books anymore.*/
= @406 /*So, <CHARNAME>, can you reclaim this one for me?*/
END
	++ @392 /*Sorry, I don't have the time.*/ EXTERN _BCLARAJ _bRoseNo
	++ @393 /*Of course. Sounds easy enough.*/ + _bRoseYes
	++ @394 /*Which book did Gereth take?*/ + _bRoseGolem
	
	
//Adventurer's Mart Talks
//First Ribald
EXTEND_BOTTOM RIBALD 0 /*Ribald Barterman at yer service. My Adventurer Mart is the finest shopping in all Faerûn: widest selection, lowest prices, and nary a fancy illustration. Just the goods, bare and plain.*/
	+ ~Global("_bRoseLibrary","GLOBAL",5)~ + @407 /*I'm looking for a man named Gereth and I heard he might be here.*/ + _bRibaldGereth
END

CHAIN RIBALD _bRibaldGereth
@408 /*Ah, of course. He's over by the entrance if you want to speak with him.*/
= @409 /*You know, that fellow used to be one of my worst customers, standing in the corner and demanding that I find him all sorts of rare and useless things. Could never simply buy the goods on hand.*/
= @410 /*However, he's been spending money lately. He even purchased some expensive spell components, the sort used for enchanting golems, if old Ribald is correct.*/
EXIT

//Gereth
CHAIN IF WEIGHT #-5 ~Global("_bRoseLibrary","GLOBAL",5)~ THEN GERETH _bGerethMart
@411 /*Who are you? What do you want?*/
END
	++ @412 /*You have something that belongs to Rose Bouquet.*/ + GerethFlee
	++ @413 /*I'm going to need that book back, Gereth.*/ + GerethFlee
	++ @414 /*The Golem-Building Book. Give it to me or die.*/ + GerethFlee
	++ @415 /*I'm here to explain the difference between a library and a bookshop. The key word: "borrowing."*/ + GerethFlee
	
CHAIN GERETH GerethFlee
@416 /*No! That book and all its secrets are mine! I'll never give it back! Never! Not when I'm so close!*/
= @417 /*You'll never take away my beautiful creations!*/
DO ~SetGlobal("_bRoseLibrary","GLOBAL",6) ReallyForceSpell(Myself,DRYAD_TELEPORT) Wait(1) ChangeAIScript("_bGERETH",OVERRIDE) DestroySelf() AddJournalEntry(@1009,QUEST)~
EXIT

//Second Ribald
EXTEND_BOTTOM RIBALD 0 /*Ribald Barterman at yer service. My Adventurer Mart is the finest shopping in all Faerûn: widest selection, lowest prices, and nary a fancy illustration. Just the goods, bare and plain.*/
	+ ~Global("_bRoseLibrary","GLOBAL",6)~ + @418 /*Do you know where Gereth might have gone?*/ + _bRibaldGereth2
END

CHAIN RIBALD _bRibaldGereth2
@419 /*Can't say that I do, but my door guard may know more. If you do find Gereth, tell him that he still owes me ten gold on that last shipment.*/
EXIT

//Shop Guard
EXTEND_BOTTOM SENTINEL 0 /*Move along. No loitering near the shopkeep. The goods are under my protection.*/
	+ ~Global("_bRoseLibrary","GLOBAL",6)~ + @418 /*Do you know where Gereth might have gone?*/ + _bGerethTalk
END

CHAIN SENTINEL _bGerethTalk
@420 /*That spindly wizard fellow? We were never friendly, but I did hear him muttering about sharp teeth recently.*/
= @421 /*The guards at the City Gates keep track of travelers. You could try asking them, citizen, and leave me to do my job.*/
EXIT


//City Gates Guard
EXTEND_BOTTOM AESOLD 5 /*Hail, traveler, be advised that you are at the edge of the limits of Athkatla's guard. Within the city, you abide by laws that protect you and that do not extend outside.*/
	+ ~Global("_bRoseLibrary","GLOBAL",6)~ + @422 /*Have you seen a wizard pass through here recently? Name of Gereth?*/ + _bCityGuard
	+ ~Global("_bRoseLibrary","GLOBAL",7) PartyGoldGT(499)~ + @439 /*Here's your money. Now tell me about Gereth.*/ DO ~TakePartyGold(500)~ + _bCitySuccessFinal
	+ ~Global("_bRoseLibrary","GLOBAL",8)~ + @440 /*Where did Gereth go again?*/ + _bCityGuard2
	
END

CHAIN AESOLD _bCityGuard
@423 /*I might have. What's it worth t' ya?*/
END
	+ ~!CheckStatGT(LastTalkedToBy,14,CHR)~ + @424 /*How about 50 gold?*/ + _bCityFail1
	+ ~CheckStatGT(LastTalkedToBy,14,CHR) PartyGoldGT(49)~ + @424 /*How about 50 gold?*/ DO ~TakePartyGold(50)~ + _bCitySuccess1
	+ ~!CheckStatGT(LastTalkedToBy,14,CHR)~ + @425 /*Me not smashing you in your face.*/ + _bCityFail2
	+ ~CheckStatGT(LastTalkedToBy,14,CHR)~ + @425 /*Me not smashing you in your face.*/ + _bCitySuccess2 
	+ ~!CheckStatGT(LastTalkedToBy,14,CHR)~ + @426 /*Please, sir, it's a matter of life and death!*/ + _bCityFail3
	+ ~CheckStatGT(LastTalkedToBy,14,CHR)~ + @426 /*Please, sir, it's a matter of life and death!*/ + _bCitySuccess3
	
APPEND AESOLD IF ~~ THEN _bCityFail1
	SAY @427 /*Are you trying to bribe a fine upstanding member of the Athkatla guard?*/
	IF ~~ THEN + _bCityFailFinal
	END
	
	IF ~~ THEN _bCityFail2
	SAY @428 /*Are you trying to threaten a fine upstanding member of the Athkatla guard?*/
	IF ~~ THEN + _bCityFailFinal
	END
	
	IF ~~ THEN _bCityFail3
	SAY @429 /*Are you trying to trick a fine upstanding member of the Athkatla guard?*/
	IF ~~ THEN + _bCityFailFinal
	END
	
	IF ~~ THEN _bCitySuccess1
	SAY @430 /*All right. Pleasure doing business with ya.*/
	IF ~~ THEN + _bCitySuccessFinal
	END
	
	IF ~~ THEN _bCitySuccess2
	SAY @431 /*Fine. Fine. I don't need no trouble.*/
	IF ~~ THEN + _bCitySuccessFinal
	END
	
	IF ~~ THEN _bCitySuccess3
	SAY @432 /**sigh* Well, if it means that much to ya.*/
	IF ~~ THEN + _bCitySuccessFinal
	END
	
	IF ~~ THEN _bCityGuard2
	SAY @441 /*I told you I don't know fer sure. But I'd check Small Teeth Pass.*/
	IF ~~ THEN EXIT
	END
END

CHAIN AESOLD _bCityFailFinal
@433 /*500 gold or nothin'.*/
END
	+ ~PartyGoldGT(499)~ + @434 /*Fine.*/ DO ~TakePartyGold(500)~ + _bCitySuccessFinal
	+ ~!PartyGoldGT(499)~ + @435 /*I don't have that kind of money.*/ + _bCityFailEnd
	++ @436 /*I'm not going to pay that.*/ + _bCityFailEnd
	
CHAIN AESOLD _bCitySuccessFinal
@437 /*I know the man you want. Been passing back an' forth enough to catch me notice. Don' know exactly where he goes, but I 'eard him mention Small Teeth Pass a bit ago. I'd probably search there first.*/
DO ~SetGlobal("_bRoseLibrary","GLOBAL",8) RevealAreaOnMap("AR1700") AddJournalEntry(@1010,QUEST)~
EXIT

CHAIN AESOLD _bCityFailEnd
@438 /*Then I'm not saying anythin'. Come back when you have coin.*/
DO ~SetGlobal("_bRoseLibrary","GLOBAL",7)~
EXIT


//In Small Teeth Pass - When Gereth Sees you
CHAIN IF WEIGHT #-5 ~Global("_bRoseLibrary","GLOBAL",9)~ THEN GERETH _bGerethPass
@442 /*You again? Why are you disturbing my research?*/
DO ~SetGlobal("_bRoseLibrary","GLOBAL",10)~
END
	++ @443 /*You owe Rose a book, Gereth. I'm here to collect.*/ + _bGerethPass2
	++ @444 /*No reason. Just thought I'd take a walk through this lovely mountain pass. Maybe see if anyone left an expensive book about golems lying around.*/ + _bGerethPass2
	++ @445 /*I'm here to make sure you understand the concept of a library. You *borrow* books, not keep them.*/ + _bGerethPass2
	
CHAIN GERETH _bGerethPass2
@446 /*No! That book is mine! Mine!*/
= @447 /*No one will take this power away from me! No one! In fire, my army shall be born!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bGol")~ 
EXIT

CHAIN IF WEIGHT #-1 ~Global("_bRoseLibrary","GLOBAL",10)~ THEN GERETH _bGerethPass3
@448 /*Kill them! Kill them all!*/
DO ~SetGlobal("_bRoseLibrary","GLOBAL",11) Enemy()~
EXIT

//When Gereth hits 5 HP
CHAIN IF WEIGHT #-5 ~Global("_bRoseLibrary","GLOBAL",12)~ THEN GERETH _bGerethPassFinal
@449 /*Wait! Wait! Please don't kill me! I apologize for everything.*/
= @450 /*You can take the book back. Here!*/
DO ~SetGlobal("_bRoseLibrary","GLOBAL",13) GiveItemCreate("BOOK90",Player1,0,0,0) AddJournalEntry(@1011,QUEST)~
== GERETH @452 /*Without your interference, I could have built an army and finally forced my colleagues to acknowledge me. But that's all ruined now.*/
== GERETH IF ~NumDeadLT("golmag01",2)~ THEN @451 /*I'm sure you can finish dealing with my creations without my help.*/
== GERETH @453 /**sigh* Back to the Adventurer's Mart I suppose. Give the book to Rose and tell her I won't bother her again.*/
EXIT

//Final Rose Talk (All responses just in case)
EXTEND_BOTTOM MURDGIRL 0 /*Hello there, handsome. What is it that Rose can do for you? Need a little rest and relaxation from your travels?*/
	+ ~Global("_bRoseLibrary","GLOBAL",14) PartyHasItem("BOOK90")~ + @454 /*I have the Golem book.*/ + _bBookReturned
END
	
EXTEND_BOTTOM MURDGIRL 1 /*Oh, honey, I'm not walking the right side of the street for what you want. I can point you in the right direction, though. What are you looking for?*/
	+ ~Global("_bRoseLibrary","GLOBAL",14) PartyHasItem("BOOK90")~ + @454 /*I have the Golem book.*/ + _bBookReturned
END

EXTEND_BOTTOM MURDGIRL 18  /*Back again? This has to be the weirdest question I've ever asked a customer, but do you have what you wanted me to smell?*/
	+ ~Global("_bRoseLibrary","GLOBAL",14) PartyHasItem("BOOK90")~ + @454 /*I have the Golem book.*/ + _bBookReturned
END

EXTEND_BOTTOM MURDGIRL 26 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseLibrary","GLOBAL",14) PartyHasItem("BOOK90")~ + @454 /*I have the Golem book.*/ + _bBookReturned
END

EXTEND_BOTTOM MURDGIRL 27 /*Move along, deary. I've no time for simple chitchat. Maybe we can talk when you have something important to say.*/
	+ ~Global("_bRoseLibrary","GLOBAL",14) PartyHasItem("BOOK90")~ + @454 /*I have the Golem book.*/ + _bBookReturned
END

CHAIN MURDGIRL _bBookReturned
@455 /*Oh, thank you, <CHARNAME>! I hope that fool wizard didn't cause you too much trouble. But no one will dare to miss a due date for one of my books after this.*/
DO ~TakePartyItem("BOOK90") DestroyItem("BOOK90") SetGlobal("_bRoseLibrary","GLOBAL",15) AddexperienceParty(50000)~
= @456 /*Thank you again for all your help. You deserve a reward and I won't hear otherwise.*/
= @457 /*In fact, I have several magical tomes that might interest you. One of my former regulars recently donated his entire book collection to my library. He told me it would serve his no-good children right.*/
= @458 /*So, which one of these would you like as your reward?*/
END
	++ @459 /*The Manual of Bodily Health (+1 Con)*/ DO ~GiveItemCreate("BOOK03",LastTalkedToBy,0,0,0)~ + _bBookReward
	++ @460 /*The Manual of Gainful Exercise (+1 Str)*/ DO ~GiveItemCreate("BOOK04",LastTalkedToBy,0,0,0)~ + _bBookReward
	++ @461 /*The Manual of Quickness of Action (+1 Dex)*/ DO ~GiveItemCreate("BOOK05",LastTalkedToBy,0,0,0)~ + _bBookReward
	++ @462 /*The Tome of Clear Thought (+1 Int)*/ DO ~GiveItemCreate("BOOK06",LastTalkedToBy,0,0,0)~ + _bBookReward
	++ @463 /*The Tome of Leadership and Influence (+1 Cha)*/ DO ~GiveItemCreate("BOOK07",LastTalkedToBy,0,0,0)~ + _bBookReward
	++ @464 /*The Tome of Understanding (+1 Wis)*/ DO ~GiveItemCreate("BOOK08",LastTalkedToBy,0,0,0)~ + _bBookReward
	
CHAIN MURDGIRL _bBookReward
@465 /*Here you are. Thanks again for all your help and if you find any other books, you know right where I'll be.*/
DO ~AddJournalEntry(@1012,QUEST_DONE)~
EXIT

