//Mazzy-Harlots Quest

//Quest Begins only if Aran is alive,  and the romance is not active (removed conditions for Renal being alive and the thieves not being your enemy).
APPEND DHARLOT1 IF WEIGHT #-5 ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyHelpsWhores","GLOBAL",0) !Dead("Aran") Global("_bMazzyRomance","GLOBAL",0)~
THEN _bmazzyharlot0
	SAY @1 /*Excuse me, my <LADYLORD>, would you or a friend like a moment of my time? Young or old, man or woman, short or tall, you are all welcome if you have the coin.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyHelpsWhores","GLOBAL",1)~ EXTERN MAZZYJ _bmazzyharlot1
	END
END

//Re-write DHARLOT1 scripts to be more like in-game dialogue.

APPEND MAZZYJ IF ~~ THEN _bmazzyharlot1
	SAY @2 /*My lady? My name is Mazzy Fentan. I would like to purchase some of your time if I may.*/
	++ @3 /*Wait... Mazzy?*/ GOTO _bmazzyharlot2
	++ @4 /*I did not see this coming.*/ GOTO _bmazzyharlot2
	++ @5 /**snort* Where is your vaunted honor now?*/ GOTO _bmazzyharlot2
	++ @6 /*Not with my gold, you won't. You'll have to use your own.*/ GOTO _bmazzyharlot2
	END
END
	
CHAIN MAZZYJ _bmazzyharlot2
	@7 /*Please, my lady, ignore <PRO_HIMHER>. I would like to ask you some questions. How many questions may I ask you for a gold?*/
	== DHARLOT1 @8 /*Are you sure you don't want more than that, darlin'? Ye're a pretty little thing, so I'd do ye for half price. I'd do you for free, but a girl has t' eat.*/
	== MAZZYJ @9 /*You are very kind, but I am only interested in your words.*/
	== DHARLOT1 @10 /*Hah, I've heard that before, though ye're th' first who's meant it. Very well then, give me a gold and ye may ask all th' questions that you want, aye?*/
	= @11 /*At least until I get a proper customer. Then you can either join in or push off.*/
	== MAZZYJ @12 /*Thank you. I shall be quick. I have been wondering about diseases among the girls working in this area. Are they a problem?*/
	== DHARLOT1 @13 /*That's yer question? What a waste of gold. Of course poxes are a problem. We're working sailors, thugs, thieves, an' the occasional guard so most of the girls are suffering. I'm clean for now since my last customer was a traveling priest. He fixed me up before we did our business, but odds are th' next man will give another pox to me and if not him, then th' one after.*/
	== MAZZYJ @14 /*Can you not go to the local temple?*/
	== DHARLOT1 @15 /*With what coin? Clerics aren't free, and none of us are making much. Why waste gold curing a pox when the next customer will probably give it right back to us?*/
	== MAZZYJ @16 /*Is business that poor?*/
	== DHARLOT1 @17 /*It's the bloody Thieves! They always took a cut, but now they want almost everything.*/
	= @18 /*I'd move, but they assign us to our posts, and the last girl who tried t' leave was found impaled on a spear th' next morning... No one has tried since.*/
	== MAZZYJ @19 /*I will kill them.*/
	== DHARLOT1 @20 /*You will kill who? A cut of everything I make goes all the way to the Shadowmaster.*/
	== MAZZYJ @21 /*Then he will die too; they all will die. I have been planning this for some time. I will dismantle their organization, thief by thief, killing until there is no one left to die.*/
	== IF_FILE_EXISTS _BCLARAJ IF ~InMyArea("_bClara") InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID)~ THEN @210 /**nervous laugh* I'm just gonna hide in the shadows over here.*/
	== DHARLOT1 IF ~!Dead("Bodhi")~ 
	THEN @22 /*Even if you killed every Shadow Thief in Athkatla, it won't make a difference. There's a new guild in th' city an' they would just take over.*/
	== DHARLOT1 IF ~Dead("Bodhi")~ 
	THEN @23 /*Even if you killed every Shadow Thief in Athkatla, a new guild like th' Night Knives would just move into th' city.*/
	== MAZZYJ @24 /*Not if I kill all of them as well! When the last villain is dead, you will be free.*/
	== DHARLOT1 @25 /*Ye... ye're serious.*/
	= @26 /*My <LADYLORD> <CHARNAME>, where did ye find this one? Is she touched in the head or is she really that good?*/
END
	++ @27 /*Both. But you can't do it yet, Mazzy. I still need the Thieves for now.*/ GOTO _bmazzyharlot3
	++ @28 /*Crazy. I have no intention of ever taking on such a powerful group.*/ GOTO _bmazzyharlot4
	++ @29 /*Crazy awesome. Just like me.*/ GOTO _bmazzyharlot5
	
APPEND MAZZYJ IF ~~ THEN _bmazzyharlot3
	SAY @30 /*Perhaps but that does not mean we cannot help this woman and those like her. If she has no money, we shall find another way.*/
	IF ~~ THEN GOTO _bmazzyharlot6
	END


	IF ~~ THEN _bmazzyharlot4
	SAY @31 /*It saddens me to hear that. If I am unable change your mind then I will deal with the Thieves myself. But for now, we must help this poor girl.*/
	IF ~~ THEN GOTO _bmazzyharlot6
	END


	IF ~~ THEN _bmazzyharlot5
	SAY @32 /*I suppose you mean that as a compliment? I shall take it as such and act accordingly.*/
	IF ~~ THEN GOTO _bmazzyharlot6
	END
END
	
CHAIN MAZZYJ _bmazzyharlot6
	@33 /*We should visit the local cleric first. I am sure he can be persuaded to cure diseases for the needy at no cost.*/
	== DHARLOT1 @34 /*At th' temple of Oghma? I don't know any girls who've served one of th' monks there. They're mostly busy with their books... good luck getting 'em to help a few poxy whores.*/
	= @35 /*But hey, if you manage th' impossible, come back and let me know.*/
	DO ~AddJournalEntry(@1008,QUEST)~ /*To Aid the Needy: A God's Assistance
	
My companion Mazzy Fentan wishes to visit the temple of Oghma, hoping to convince its priests to help the whores who work the docks. Sometimes I feel more like an errand boy than a hero, but I suppose this is a worthy cause.*/
EXIT


//Addition to Oghma dialogue once quest received
EXTEND_TOP DOGHMA 0 #3
	+ ~Global("_bMazzyHelpsWhores","GLOBAL",1) Global("_bOghmaAsked","GLOBAL",0)~ + @36 /*Are you able to cure diseases? I know some people who need your attention.*/ GOTO _bOghma1
	+ ~Global("_bMazzyHelpsWhores","GLOBAL",1) Global("_bOghmaAsked","GLOBAL",1) ~ + @37 /*Have you reconsidered helping the dock whores?*/ GOTO _bOghma2
	END
	
CHAIN DOGHMA _bOghma1
@38 /*Yes, though it is not listed as one of our regular services. Do you know what the affliction is? Can you bring the patients here?*/
== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ 
THEN @39 /*It's for the working girls of the docks. Some of them have the pox, but they cannot afford to pay.*/
END
	+ ~!IfValidForPartyDialog("Mazzy")~ + @40 /*It's for the whores working the docks. Some are suffering from pox, but they can't afford to pay.*/ DO ~SetGlobal("_bOghmaAsked","GLOBAL",1)~ GOTO _bOghma2
	+ ~IfValidForPartyDialog("Mazzy")~ + @41 /*Will you help them?*/ DO ~SetGlobal("_bOghmaAsked","GLOBAL",1)~ GOTO _bOghma2
	++ @42 /*Nevermind. I do not wish to discuss this now.*/ EXIT
	
APPEND DOGHMA IF ~~ THEN _bOghma2
	SAY @43 /*I am sorry but if they cannot afford to pay then we cannot assist them.*/
	+ ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ + @44 /*There must be a way to change your mind.*/ EXTERN NALIAJ _bOghma3
	+ ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ + @44 /*There must be a way to change your mind.*/ EXTERN KELDORJ _bOghma5
	+ ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") CheckStatGT(Player1,14,INT)~ + @45 /*What if you taught them to read? They will study and in exchange, you will cure their diseases. That is what Oghma desires, isn't it? Spreading knowledge?*/ GOTO _bOghmaAgrees
	+ ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") CheckStatGT(Player1,14,CHR)~ + @46 GOTO _bOghmaAgrees /*Can you not do this to enhance the glory and greatness of Oghma? Help people and they will be more willing to study your teachings.*/
	+ ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") PartyGoldGT(999)~ + @47 /*What about a donation to Oghma? I could donate 1,000 gold to the temple to cover your expenses while you cure the sick and needy. Maybe some of them would even become interested in Oghma's teachings.*/ DO ~TakePartyGold(1000) DestroyGold(1000)~ GOTO _bOghmaAgrees
	+ ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") !PartyGoldGT(999)~ + @48 /*What about a donation to Oghma? I could donate to cover your expenses while you cure the sick and needy. Maybe some of them would even become interested in Oghma's teachings.*/ GOTO _bOghma6
	+ ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia")~ + @49 /*I guess there's nothing we can do.*/ EXIT
	END
	
	IF ~~ THEN _bOghma6
	SAY @50 /*You make a logical argument. Return when you have 1,000 gold.*/ 
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN _bOghmaAgrees
	SAY @51 /*Very well. We accept your offer. We will put out a sign, but please help us spread the word as well. We will cure poxes and other diseases for free if the afflicted spend some time here gaining knowledge.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyHelpsWhores","GLOBAL",2) AddJournalEntry(@1009,QUEST)~ EXIT /*To Aid the Needy: A Priest's Good Will

After some persuasion, the priests of Oghma have agreed to cure the dock whores of their afflictions. We should let them know the good news.*/
	END
END
	
CHAIN NALIAJ _bOghma3
@52 /*Aren't you a priest? Aren't you supposed to help the needy?*/
== DOGHMA @53 /*You are thinking of some other god, my lady. The servants of Oghma are dedicated to spreading knowledge.*/
== NALIAJ @54 /*So teach them to read!*/
== DOGHMA @55 /*Excuse me?*/
== NALIAJ @56 /*The girls and others suffering from poxes; offer to cure anyone for free if they spend some amount of time learning how to read. */
	END
	++ @57 /*Uh... Nalia? Why would anyone need to learn how to read?*/ GOTO _bOghma4
	++ @58 /*Good idea, Nalia. Most people who live here cannot even write their names.*/ EXTERN DOGHMA _bOghmaAgrees
	
APPEND NALIAJ IF ~~ THEN _bOghma4
	SAY @59 /*To avoid being cheated in business! To send letters to friends and family! To read stories or learn about the world!*/ 
	IF ~~ THEN EXTERN DOGHMA _bOghmaAgrees
	END
END	
	
APPEND KELDORJ IF ~~ THEN _bOghma5
	SAY @60 /*Helping the needy isn't just a service, it is a way to spread the word! Think about it! How better to draw people into Oghma's service than by offering free cures and miracles? People will come from all over the city to this temple, and then you can teach them!*/
	IF ~~ THEN EXTERN DOGHMA _bOghmaAgrees
	END
END	

//Tell harlots the good news (Unique IF THEN works for the GOTO)
APPEND DHARLOT1 IF WEIGHT #-5 ~Global("_bMazzyHelpsWhores","GLOBAL",2)~ 
THEN _bmazzyharlot7
	SAY @61 /*You say th' temple will cure us for free? Oh thank ye kindly. I'll tell th' other girls as soon as I'm done here, an' I will tell all me customers as well.*/
	IF ~InMyArea("Mazzy") InParty ("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN GOTO _bmazzyharlot8
	IF ~ OR(3) !InMyArea("Mazzy") !InParty ("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN GOTO _bmazzyharlot9
	END

	IF ~~ THEN _bmazzyharlot9
	SAY @62 /*Umm... can ye come back in a day, just t' make sure that the temple priests are actually doing what they said they would? Promises are just words, darlin'. They don't actually mean anything.*/
	IF ~~ THEN DO ~SetGlobal("_bMazzyHelpsWhores","GLOBAL",3) AddJournalEntry(@1010,QUEST)~ EXIT /*To Aid the Needy: One Last Request

We have told the whores about the new arrangement. They were happy but seemed doubtful that the priests would keep their word. We should check back with both parties in a day.*/
	END
END

CHAIN DHARLOT1 _bmazzyharlot8
@62 /*Umm... can ye come back in a day, just t' make sure that the temple priests are actually doing what they said they would? Promises are just words, darlin'. They don't actually mean anything.*/
	== MAZZYJ @63 /*A person's word is their vow; their unbreakable bond. I'm sure that the priests will keep theirs.*/
	= @64 /*But of course I will come back and make certain. I realize that not everyone's word can be trusted.*/
	DO ~SetGlobal("_bMazzyHelpsWhores","GLOBAL",3) AddJournalEntry(@1010,QUEST)~ /*To Aid the Needy: One Last Request

We have told the whores about the new arrangement. They were happy but seemed doubtful that the priests would keep their word. We should check back with both parties in a day.*/
EXIT

//Checking Back in
APPEND DHARLOT1 IF WEIGHT #-5 ~Global("_bMazzyHelpsWhores","GLOBAL",5) !Global("_bWhoresWrapUp","GLOBAL",1)~ 
THEN _bmazzyharlot10
	SAY @65 /*Oh it's you! They did it... they really did it! I went t' the temple an' a priest cured everything. I feel great. He even prettied up me face a little and removed some of th' scars.*/
	= @66 /*And a monk is teaching me t' read! I can come back every day! I haven't read since I was a little girl. My father taught me me letters, ye know. He used t' be a merchant.*/
	++ @67 /*I'm glad everything is all right. I'll be off.*/ GOTO _bmazzyharlot11
	++ @68 /*What happened to your father?*/ GOTO _bmazzyharlot12
	END
	
	IF ~~ THEN _bmazzyharlot11
	SAY @69 /*It is! It is. I'll be sure t' tell everyone how ye helped us.*/
	IF ~~ THEN DO ~SetGlobal("_bWhoresWrapUp","GLOBAL",1) AddJournalEntry(@1011,QUEST_DONE) AddexperienceParty(6000) ReputationInc(1)~ EXIT /*To Aid the Needy: A Job Complete

The temple of Oghma has been curing the dock whores of their diseases as promised and the girls are quite grateful for both the healing and the lessons. Perhaps Mazzy had a point after all.*/
	END
END
	
CHAIN DHARLOT1 _bmazzyharlot12 
@70 /*The Shadow Thieves got 'im. Took everything, including ma and me. They made us work and I lost touch wit' me ma soon after. I think she's dead.*/
= @71 /*I'll be dead soon, too. I'm almost twenty now an' I'd just had me ninth birthday when they took me, so I've been doing this for most of me life.*/
DO ~SetGlobal("_bWhoresWrapUp","GLOBAL",1)~
= @72 /*When they assign some younger girls here, they'll move me t' th' bridge district and that's a dangerous place. Th' thieves don't bother to protect those girls so ye just work till someone kills ye. That's where me ma disappeared.*/
= @73 /*But hey, maybe with the priests keeping me young and pretty, I'll be able to stay at the docks a little longer. One girl said they firmed up her bosom when she asked, so I'll try that when I go back tomorrow. Just think, we'll all be as pretty as young maidens soon!*/
= @74 /*Back when I was a young maiden, th' thieves started me with nobles. They were never allowed to do much since I was just a little girl. They would kiss me an' hold me, feeding me delicious food and giving me all kinds of gifts an' pretty clothes. But once I became a woman, there was an auction for me an' everything changed. A pretty girl does nobles 'til she's flowered and deflowered, everyone knows that.*/
== NALIAJ IF ~InMyArea("Nalia") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
THEN @75 /*That's horrible. I can't imagine anyone in my family acting so dishonorably.*/
== ANOMENJ IF ~InMyArea("Anomen") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN @76 /*You might have met my father. He was always wasting his money bidding on virgins when he wasn't throwing it away on drink.*/
== DHARLOT1 @77 /*The winning noble took me an' I had merchants after that. They weren't bad... treated me well an' some of them were as rich as nobles. Once I got older, I started working th' guards. I was moved here few years ago when a guard cut up me face. The Thieves killed him an' his family for it, but that didn't help me none.*/
= @78 /*Sorry, loves, I'm babbling. We're not supposed to babble to customers and I've never told that story t' anyone before. Thanks for listening, I guess. I really should get back to work though. I have to make enough coin to pay th' Thieves an' still have some left for food afterwards.*/
== MAZZYJ IF ~InMyArea("Mazzy") InParty ("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN @79 /*Stay alive for as long as you can. Once we kill the Thieves, you will be free.*/
== DHARLOT1 IF ~InMyArea("Mazzy") InParty ("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN @80 /*That's a nice dream. I wish ye luck an' everything. Ye're sweet and I'd hate for 'em t' kill ye.*/
== DHARLOT1 @81 /*Thank ye again for everything.*/               //Needed to repeat DHARLOT1 because her previous line is conditional and the do was attached
DO ~AddJournalEntry(@1011,QUEST_DONE)  AddexperienceParty(6000) ReputationInc(1)~ /*To Aid the Needy: A Job Complete

The temple of Oghma has been curing the dock whores of their diseases as promised and the girls are quite grateful for both the healing and the lessons. Perhaps Mazzy had a point after all.*/
EXIT

//Checking back in - Oghma (seems to work)
EXTEND_TOP DOGHMA 0 #3
	+ ~Global("_bMazzyHelpsWhores","GLOBAL",5) !Global("_bOghmaWrapUp","GLOBAL",1)~ + @82 /*Hey, this place looks cleaner and you even combed your hair!*/ GOTO _bOghmafinal
	+ ~Global("_bMazzyHelpsWhores","GLOBAL",5) !Global("_bOghmaWrapUp","GLOBAL",1)~ + @83 /*How is everything here? Is that a new cloak?*/ GOTO _bOghmafinal
	END
	
APPEND DOGHMA IF ~~ THEN _bOghmafinal
	SAY @84 /*One must look presentable when one has so many visitors. We have all sorts of people coming by for cures and some have come back for reading lessons even when they aren't sick, including a number of the street girls!*/
	= @85 /*This temple has never been so busy and we owe it all to you! I will tell everyone how you helped the people here.*/
	IF ~~ THEN DO ~SetGlobal("_bOghmaWrapUp","GLOBAL",1) AddJournalEntry(@1012,QUEST_DONE) ReputationInc(1)~ EXIT /*To Aid the Needy: Oghma Transformed

The temple of Oghma has gained new life after agreeing to help the harlots at the docks. I've never seen the place so busy or so clean. It seems that the whores aren't the only ones this arrangement benefits.*/
	END
END


//Secondary Harlot Quest
CHAIN IF WEIGHT #-5 ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyHelpsWhores","GLOBAL",5) Dead("Aran")~ THEN DHARLOT1 _bmazzyharlotB
@86 /*Mazzy! This be yer fault, ain't it?*/
== MAZZYJ @87 /*I am sorry, but I do not understand.*/
== DHARLOT1 @88 /*Ye actually did it, aye? Ye destroyed th' Shadow Thieves an' now any protection that we girls had is gone.*/
= @89 /*I've had customers take money back or refuse t' pay; one even hit me! Things are worse than ever!*/
== MAZZYJ @90 /*But you are free, as I promised. Why do you not simply leave?*/
== DHARLOT1 @91 /*And do what? I've been working th' streets most of me life. Am I just supposed t' find some nice farmer an' settle down? Have a dozen children an' spend me life washing clothes?*/
== MAZZYJ @92 /*I promised to free you, and I kept my promise. That you found freedom to be difficult is not my fault!*/
= @93 /*... I'm sorry, that was rude of me. Maybe I can help you with your problems? What is it that you want from your life?*/
== DHARLOT1 @94 /*I don't know!*/
= @95 /*Oh fine... I want t' do th' only job I know how to do, but I want t' keep all me earnings an' I don't want t' ever be hit or hurt or taken advantage of.*/
= @96 /*Or better yet, I want t' be rich. Rich enough that I don't have t' sleep with every flea-ridden beggar who comes asking.*/
= @97 /*And while I'm dreaming, I want a mansion... an' a flying horse.*/
== MAZZYJ @98 /*But... I do not know how to solve those problems. I solve problems by finding villians and killing them... or sometimes by speaking too.*/
== DHARLOT1 @99 /*Well, I already know how t' talk, an' I don't have anyone for ye t' kill, so I guess ye ain't much use t' me, are ye?*/
== MAZZYJ @100 /*Perhaps you could hire protection?*/
== DHARLOT1 @101 /*Maybe, but I don't want t' pay... Oh, I could pay 'em in trade! The guards come more into th' docks now... I bet I could get one or two of 'em to make an example of some of me worst customers... scare th' rest of 'em into good behavoir.*/
= @102 /*But of course some of th' worst customers are guards...*/
== MAZZYJ @103 /*This is a quest I can accomplish! I will go into the barracks and speak with the guard captain.*/
== DHARLOT1 @104 /*Careful, he's a bad piece o' work and ye're not exactly th' intimidating type.*/
DO ~AddJournalEntry(@1013,QUEST) SetGlobal("_bMazzyHelpsWhores","GLOBAL",6)~ /*Unintended Consequences

The harlots at the docks are furious that we destroyed the Shadow Thieves and left them without protection. Mazzy has agreed to speak with the local guard captain to work out a better deal.*/
== DHARLOT1 @105 /*What be I sayin'? You wiped out th' Shadow Thieves... he SHOULD be afraid.*/
EXIT


//Talk with Guards
EXTEND_BOTTOM DOCSOL02 1 /*Yeah! Get outta here before we arrest you! This is the barracks, not some tourist stop!*/
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyHelpsWhores","GLOBAL",6)~ EXTERN MAZZYJ _bMazzyGuardTalk
END

EXTEND_BOTTOM DOCSOL02 3 /*We told you to get lost! Beat it, <PRO_MANWOMAN>!*/
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyHelpsWhores","GLOBAL",6)~ EXTERN MAZZYJ _bMazzyGuardTalk
END

EXTEND_BOTTOM DOCSOL02 5 /*You'll pay for it then, you little dirt monkey! Get lost or suffer the consequences!*/
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyHelpsWhores","GLOBAL",6)~ EXTERN MAZZYJ _bMazzyGuardTalk
END

EXTEND_BOTTOM DOCSOL03 9 /*It's not worth it. We gots a sweet deal here, why make trouble? Come on... we can go down to the port for a "patrol," eh? Heh heh...*/
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyHelpsWhores","GLOBAL",6)~ EXTERN MAZZYJ _bMazzyGuardTalk
END

EXTEND_BOTTOM DOCSOL03 10 /*Get lost, <GIRLBOY>. You're not welcome here in the barracks. Likely to get bloody arrested, you are.*/
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyHelpsWhores","GLOBAL",6)~ EXTERN MAZZYJ _bMazzyGuardTalk
END

CHAIN MAZZYJ _bMazzyGuardTalk
@106 /*Excuse me, are you the captain of the guards here in the docks? I have a proposition for you.*/
DO ~SetGlobal("_bMazzyHelpsWhores","GLOBAL",7)~
== DOCSOL02 @107 /*Get lost, the captain don't need to be bothered by the likes of you.*/
= @108 /*Now get out or I'll teach you a lesson.*/
== DOCSOL03 @109 /*Wait, let 'em speak. Listenin' might be good money.*/
== MAZZYJ @110 /*Thank you. I am Mazzy Fentan, a knight from Trademeet, and this is <CHARNAME>, from Candlekeep to the north.*/
== DOCSOL03 @111 /*You see, this is why you always ask 'em for introductions first. You know who this is, right?*/
= @112 /*They killed the Shadow Thieves, marched right through the entrance and left the place knee-deep in blood. Dried up a good source of revenue too.*/
== DOCSOL02 @113 /*This was them? I'm gonna beat you guys good!*/
== DOCSOL03 @114 /*No, you simpleton, they walked up to the Shadow Master an' killed 'im dead, see? And you're not as tough as the Shadow Master, right?*/
= @115 /*Forgive my friend, <CHARNAME>, Mazzy, what can I do for you?*/
== MAZZYJ @116 /*With the Shadow Thieves dead, the girls working the streets need protection.*/
== DOCSOL03 @117 /*Yeah? What's that to us?*/
== MAZZYJ @118 /*If you provide that protection then the girls will reward you... either in coin or with their efforts as you would prefer.*/
== DOCSOL03 @119 /*I can already take them an' their coin whenever I want. I don't care.*/
== MAZZYJ @120 /*Very well. If you will not agree to my simple, polite request then I will fight you with my bare hands and the whole city will hear about how you lost a brawl with a tiny halfling woman.*/
== DOCSOL02 @121 /*Do it, Captain! You can take her!*/
== MAZZYJ @122 /*Or... you could be a hero. The girls here in the docks need your protection and they would be eager to please you in return. Wouldn't you rather be their hero? The heroic captain... boss of the Docks District?*/
== DOCSOL03 @123 /*You know, you're making sense. I agrees. We befriend the girls, we protect 'em, we roughs up anyone givin' 'em trouble.*/
== DOCSOL02 @124 /*But Captain...*/
== DOCSOL03 @125 /*No, this still works, see? We'll take all the gold from the bad customers an' the girls'll love us.*/
= @126 /*An' with the Shadow Thieves gone, the docks is full of opportunity. This place needs a new boss, an' the girls can help pass us information an' stuff.*/
= @127 /*But Mazzy and <CHARNAME>, this means you leave us alone, right? We can't protect the girls if we's got you breathin' down our necks!*/
== MAZZYJ @128 /*I agree. You keep your end of the bargain and I will ignore your minor acts of criminality.*/
EXIT

//Secondary Harlot Quest - Last Talk
CHAIN IF WEIGHT #-5 ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("_bMazzyHelpsWhores","GLOBAL",7)~ THEN DHARLOT1 _bmazzyharlotC
@129 /*Well, Mazzy, what's th' good word? I judge from yer happy face that ye were successful, aye?*/
== MAZZYJ @130 /*The captain of the guard has agreed to act as your protector. He'll want compensation, of course, but I think eager showings of affection would suffice.*/
= @131 /*He may have come around to the idea that there is some benefit to being a hero.*/
== DHARLOT1 @132 /*Oh darlin' that's wonderful! I'll go tell th' other girls right away.*/
= @133 /*Do check in on 'em from time t' time, will ye? Keep an eye on 'em?*/
== MAZZYJ @134 /*My adventuring takes me far and wide, but I will do what I can.*/
= @135 /*Wait... on them? What about you?*/
== DHARLOT1 @136 /*Oh, I'm leavin'. I plan t' never set foot in th' docks again.*/
= @137 /*You were right, darlin', I'm free. I can read... I can write... I can even sound educated when I want to. There's a whole world open to me.*/
= @138 /*For ten years, I dreamed of escaping every single day, an' then when the time came to walk away, I was too afraid to leave. Funny how that works.*/
DO ~AddexperienceParty(50000) AddJournalEntry(@1014,QUEST_DONE) SetGlobal("_bMazzyHelpsWhores","GLOBAL",8)~ /*A Bargain Struck

We spoke with the captain of the guard about protecting the local working girls. With some persuasion on Mazzy's part, he agreed to do so and we have passed on the good news.*/
= @139 /*Goodbye, Mazzy. Thanks for everything.*/
DO ~EscapeArea()~
EXIT


//Final Guard Lines
EXTEND_BOTTOM DOCSOL02 1 /*Yeah! Get outta here before we arrest you! This is the barracks, not some tourist stop!*/
	+ ~GlobalGT("_bMazzyHelpsWhores","GLOBAL",6)~ + @144 /*Excuse me?*/ EXTERN DOCSOL03 _bMazzyGuardTalk2
END

EXTEND_BOTTOM DOCSOL02 3 /*We told you to get lost! Beat it, <PRO_MANWOMAN>!*/
	+ ~GlobalGT("_bMazzyHelpsWhores","GLOBAL",6)~ + @144 /*Excuse me?*/ EXTERN DOCSOL03 _bMazzyGuardTalk2
END

EXTEND_BOTTOM DOCSOL02 5 /*You'll pay for it then, you little dirt monkey! Get lost or suffer the consequences!*/
	+ ~GlobalGT("_bMazzyHelpsWhores","GLOBAL",6)~ + @144 /*Excuse me?*/ EXTERN DOCSOL03 _bMazzyGuardTalk2
END

CHAIN DOCSOL03 _bMazzyGuardTalk2
@140 /*Don't you recognize 'em, fool! That's <CHARNAME>!*/
= @141 /*He didn' mean nothin' by it, <CHARNAME>. Everything's good 'ere, the girls're happy, money's flowin', you'll just be on your way, right?*/
EXIT

EXTEND_BOTTOM DOCSOL03 9 /*It's not worth it. We gots a sweet deal here, why make trouble? Come on... we can go down to the port for a "patrol," eh? Heh heh...*/
	+ ~GlobalGT("_bMazzyHelpsWhores","GLOBAL",6)~ + @144 /*Excuse me?*/ GOTO _bMazzyGuardTalk3
END

EXTEND_BOTTOM DOCSOL03 10 /*Get lost, <GIRLBOY>. You're not welcome here in the barracks. Likely to get bloody arrested, you are.*/
	+ ~GlobalGT("_bMazzyHelpsWhores","GLOBAL",6)~ + @144 /*Excuse me?*/ GOTO _bMazzyGuardTalk3
END

CHAIN DOCSOL03 _bMazzyGuardTalk3
@142 /*Oh, <CHARNAME>, I didn' recognize you there.*/
= @143 /*I didn' mean nothin' by it. Everything's good 'ere, the girls're happy, money's flowin', you'll just be on your way, right?*/
EXIT


