//Dorn-HD Romance. Starts after 1st banter, as long as no active CN romances.

//First Dorn HD Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",2)~ THEN DORNJ _bDornHD1
@1 /*Ah! This endless walking makes me restless.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",3)~
== HAERDAJ @2 /*Perhaps a song for your entertainment? This sparrow has traveled much and music makes the long miles pass more quickly beneath our feet.*/
= @3 /*Shall I sing of ancient battles and heroes fighting to their doom? You may not have the knowledge to appreciate my talent, but I promise I have tales of blood that would enrapture even you.*/
== DORNJ @4 /*I've an idea. You and I will spar. To the victor, the glory!*/
== HAERDAJ @5 /*Is that always your first answer? There are other ways to cure your boredom, ones that involve less bruising on my skin.*/
== DORNJ @6 /*Hah! Do you fear the might of the great Dorn Il-Khan?*/
== HAERDAJ @7 /*This sparrow has faced much worse than you, blackguard. I have traveled across the planes themselves, seen the face of evil as I danced across strange suns. You are arrogant to think I fear one such as you.*/
== DORNJ @8 /*Your words are empty, tiefling. A true warrior lives for battle and is always ready to back up their boasts with steel.*/
== HAERDAJ @9 /**sigh* Fine. Next time our raven calls a rest, I will spar with you.*/
== DORNJ @10 /*No weapons, no armor, no magic. A true match of prowess.*/
== HAERDAJ @11 /*As you wish. Perhaps you will learn a few tricks at this sparrow's hands.*/
== DORNJ @12 /*We shall see.*/
EXIT

//Second Talk - Sparring Before Rest
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",4)~ THEN DORNJ _bDornHD2
@13 /*Have you forgotten, tiefling? We will spar and you will lose to Dorn Il'Khan.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",5)~
== HAERDAJ @14 /*Charming. This sparrow rather hoped that your boredom had been sated. Yet if you are determined for our fists to cross, then cross they shall.*/
= @1400 /*Later, once we're rested, we will fight as you demand.*/
EXIT

//Post Fade
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",6)~ THEN DORNJ _bDornHD2.5
@15 /*Hmm. You are more skilled in the art of battle than I'd thought.*/
= @16 /*But your form is poor, and you hold back when you should strike. You still have much to learn.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",7) SetGlobal("_bHDDORNROMANCE","GLOBAL",1)~
== HAERDAJ @17 /*You have me beaten in brute force, this sparrow cannot argue. Yet that doesn't make me helpless. I am meant to flit beneath defenses, not crash through the front door.*/
= @18 /*A bard has other tricks and you leave yourself wide open. I believe this belongs to you?*/
== DORNJ @19 /*That... That is my coin pouch. When did you...?*/
= @20 /*Hah! Perhaps you are not completely useless after all.*/
== HAERDAJ @21 /*From you, my blackguard, I shall take that as a compliment.*/
== DORNJ @22 /*So you should. It takes a formidable warrior to come close to matching me.*/
= @23 /*You are an attractive man, Haer'Dalis.*/
== HAERDAJ @24 /*And you need to work on your segues. There is a rhythm to such things. But I cannot fault your vision and this sparrow will admit, you have a certain rough allure. If one likes that kind of thing.*/
== DORNJ @25 /*Next time, perhaps the sparring will be more intimate.*/
== HAERDAJ @26 /*Perhaps.*/
END
	+ ~GlobalGT("DornLovetalks","GLOBAL",5) Global("DornRomanceActive","GLOBAL",3)~ + @27 /*Seriously, Dorn? Do you hit on all your sparring partners?*/ + _bDornCNComplains
	++ @28 /*Hey, no fair. I saw Haer'Dalis first.*/ EXTERN HAERDAJ _bDornCNJealous
	++ @29 /*No. Nope. Not happening. Whatever this is, do it far away from me.*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @30 /*Hmm. This should be interesting.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @31 /*Wait... Haer'Dalis, you like men?*/ EXTERN HAERDAJ _bDornCNConfused
	+ ~Global("RomanceConflict","GLOBAL",1) Global("DecideLove","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",3)~ + @3000 /*Haer'Dalis, what are you doing? You claimed that you loved Aerie. I gave her up for you!*/ EXTERN HAERDAJ _bCNWorriedAerie
	+ ~OR(2) Global("HaerDalisRomanceActive","GLOBAL",1) Global("HaerDalisRomanceActive","GLOBAL",2)~ + @3001 /*This isn't right, Haer'Dalis. Aren't you with Aerie?*/ EXTERN HAERDAJ _bCNWorriedAerie
	++ @32 /**say nothing**/ DO ~Wait(1) RestParty()~ EXIT
	
CHAIN DORNJ _bDornCNComplains
@33 /*Are you jealous, <CHARNAME>?*/
END
	++ @34 /*As if. I just don't want to hear you repeating all those tired lines again. Have your fling away from me.*/ DO ~SetGlobal("_bDornHDLove","GLOBAL",500) SetGlobal("_bHDDORNROMANCE","GLOBAL",3)~ DO ~Wait(1) RestParty()~ EXIT
	++ @35 /*It was simply an observation. Carry on.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @36 /*And if I am?*/ + _bDornScoffs
	
CHAIN DORNJ _bDornScoffs
@37 /*You spurned Dorn Il-Khan. You do not get a second chance.*/
END
	++ @38 /*Fine then, have your fling. Just don't come crying to me when it all goes down in flames.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @39 /*Maybe, but I'm still the leader of this group. No fraternizing allowed!*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @40 /*Whatever. Do what you want.*/ + _bDornDoesWhatHeWants

CHAIN DORNJ _bDornDoesWhatHeWants
@41 /*You could not stop me if you tried.*/
DO ~RestParty()~
EXIT

CHAIN HAERDAJ _bDornCNJealous
@42 /*This sparrow finds you intriguing, my raven, but our blackguard seems the jealous type and I wish to find out just where that passion leads. If you wanted me, <CHARNAME>, you should have made your interest known.*/
END
	++ @43 /*I did! I've been flirting constantly.*/ + _bCNFlirtsBad
	++ @44 /*Fine, go be with Dorn instead.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @45 /*I suppose you're right. But when you get bored of Dorn, you know where to find me.*/ EXTERN DORNJ _bDornLaughs
	++ @46 /*Fair enough. Enjoy.*/ + _bDornHDEnjoy
	++ @39 /*Maybe, but I'm still the leader of this group. No fraternizing allowed!*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	
CHAIN HAERDAJ _bCNFlirtsBad
@47 /*Oh... That was flirting. You need more practice, <CHARNAME>. Perhaps this sparrow could give you pointers when I have the time.*/
== DORNJ @48 /*As long as our fearless leader doesn't think about touching what is mine.*/
END
	++ @49 /*Whatever. If you want to flirt, do it far away from me.*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @50 /*Don't worry, Dorn. I wouldn't dare.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @51 /*I'll probably take you up on that, Haer'Dalis. I clearly need the help.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @52 /*All right. All right. Do whatever you want.*/ + _bDornHDEnjoy
	
CHAIN HAERDAJ _bDornHDEnjoy
@53 /*Don't worry. This sparrow surely will.*/
DO ~RestParty()~
EXIT

CHAIN DORNJ _bDornLaughs
@54 /*Hah! That will never happen. You may be our leader, but do not think about touching what is mine.*/
DO ~RestParty()~
EXIT

CHAIN HAERDAJ _bDornCNConfused
@55 /*Of course. Did you truly think this sparrow would allow something as immaterial as gender to stop me from enjoying all the pleasures of the planes?*/
END
	++ @56 /*Fair enough. Enjoy.*/ + _bDornHDEnjoy
	+ ~Gender(Player1,MALE)~ + @57 /*But then why didn't you respond to all my flirting?*/ + _bCNFlirtsBad
	++ @58 /*Yeah, but Dorn? Really? Are you sure you don't want me instead?*/ +  _bDornCNJealous
	++ @39 /*Maybe, but I'm still the leader of this group. No fraternizing allowed!*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) RestParty()~ EXIT
	+ ~Global("RomanceConflict","GLOBAL",1) Global("DecideLove","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",3)~ + @3002 /*Maybe not, but you claimed that you loved Aerie. I gave her up for you!*/ + _bCNWorriedAerie
	+ ~OR(2) Global("HaerDalisRomanceActive","GLOBAL",1) Global("HaerDalisRomanceActive","GLOBAL",2)~ + @3003 /*This isn't right. Aren't you with Aerie?*/ + _bCNWorriedAerie
	
CHAIN HAERDAJ _bCNWorriedAerie
@3004 /*This bard has not forgotten she who sings so sweetly. My dove has my heart, my soul, my music and I do not wish them back. This is merely conversation. A bit of wordplay and flirtation to make the hours pass.*/
END
	++ @3005 /*No, I won't allow it. This ends now.*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @3006 /*I suppose I cannot stop you. But I don't want Aerie to get hurt.*/ + _bCNHDPromises
	++ @3007 /*Are you sure? It seems like more.*/ + _bCNHDPromises
	
CHAIN HAERDAJ _bCNHDPromises
@3008 /*There is no need to worry. This sparrow may fly far and wide but love shall bring these weary wings back home to roost again.*/
== AERIEJ IF ~IfValidForPartyDialog("Aerie")~ THEN @3009 /*It's all right, <CHARNAME>. I- I trust Haer'Dalis.*/
== DORNJ IF ~IfValidForPartyDialog("Aerie")~ THEN @3010 /*Bah. The elf is a fool and the tiefling is lying to himself if not to you.*/
== DORNJ @3011 /*Such pretty words mean nothing. We shall see who is triumphant in the end.*/
END
	++ @3005 /*No, I won't allow it. This ends now.*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @3012 /*I have a bad feeling about this but I will not interfere.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @30 /*Hmm. This should be interesting.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @32 /**say nothing**/ DO ~Wait(1) RestParty()~ EXIT


//3rd Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",9)~ THEN DORNJ _bDornHD3
@59 /*You feel it as strongly as I, do you not?*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",10) SetGlobal("OHD_haerdalis25","GLOBAL",1)~
== HAERDAJ @60 /*This sparrow feels many things. You must be more specific. A clever mind should always have a clever way with words.*/
== DORNJ @61 /*You use words as a smokescreen but I can see the hunger in your eyes.*/
= @62 /*I can wait no longer. I would have you as mine, tiefling.*/
== HAERDAJ @63 /**laughs* Your arrogance is showing, my grim vulture. You are not without your charms, but I have many offers. Why should this sparrow nest with you instead of flying free?*/
== DORNJ @64 /*I will give you pleasure as none have before.*/
== HAERDAJ @65 /*You have no idea of the pleasures I have tasted. Such sweetness and such passion; your best efforts would be no more than amateur theatrics in comparison.*/
== DORNJ @66 /*What? You would spurn Dorn Il-Khan?*/
== HAERDAJ @67 /*This sparrow is not a puppet, dancing on your strings. If you want me in your bed, you'd do better to say please.*/
== DORNJ @68 /*You want this as much as I.*/
== HAERDAJ @69 /*Do I? I am not the one down on my knees.*/
= @70 /*Try a little harder, Dark-Edge. Then I might deign to show you the pleasure that my practiced hands can bring.*/
EXIT

//4th Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",12)~ THEN DORNJ _bDornHD4
@71 /*You remind me of my father, tiefling. He was a fearsome warrior.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",13)~
== HAERDAJ @72 /*Now this is an unexpected refrain. I would be most intrigued to hear about the person who could have sired such as you. A soul to make the mountains tremble and bring tears to passersby.*/
== DORNJ @73 /*I don't want to discuss my father!*/
== HAERDAJ @74 /*My apologies, oh vulture. This sparrow only asked after your father because you broke that silence first. If you did not wish your heritage to join our conversation, perhaps you should have locked those words behind your lips.*/
== DORNJ @75 /*'Twas intended as a compliment.*/
== HAERDAJ @76 /*Aww, do not pout so, Dark-Edge. Your skills at flattery may be rough and rusty with disuse, but I can see bright bits of mithril shining through.*/
= @77 /*You simply need to practice. Train your tongue with the same fervor that you have trained your lust for battle and soon enough your true intent shall shine through every word.*/
== DORNJ @78 /*Intentions are irrelevant. It's actions that count.*/
== HAERDAJ @79 /*Perhaps you are right. This sparrow waits with bated breath to see what you shall do.*/
EXIT

//5th Talk - city or inn only
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",15)~ THEN DORNJ _bDornHD5
@80 /*"Butcher of the Sword Coast." Word of our leader's passage has reached Amn and <PRO_HISHER> reputation earns my respect.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",16)~
== HAERDAJ @81 /*Your ears are sharp, blackguard, to hear those whispers. Does your heart beat with envy to hear that title spoken? Do you wish they spoke of you?*/
== DORNJ @82 /*Hah! Do you not hear it as we walk the streets? Do you not see the looks given us by the peasantry and nobility alike?*/
= @83 /*As far as Amn is concerned, we are all butchers. Continue traveling with <CHARNAME> and your infamy may someday rival my own.*/
== HAERDAJ @84 /*Do you expect this sparrow to be pleased? Fame is a heady drug indeed, but that earned through love is sweeter than adulation bought with fear.*/
== DORNJ @85 /*So you claim, but I think you are a liar. Tell me, bard, when you enter into the fray, stare your enemy in the eye, and attack, what is it that you feel?*/
== HAERDAJ @86 /*I... I feel as though I'm dancing to the song of blood and bone. Each step, each thrust, each fatal wound is guided by the music and the pounding rhythm lets me know that I'm alive.*/
== DORNJ @87 /*A man after my own heart.*/
= @88 /*There is more to you than meets the eye.*/
== HAERDAJ @89 /*Ah, yes, well, this sparrow must have secrets. But it seems your eyes are sharper than expected. There are depths within your rage, oh Dark-Edge, and I find I am intrigued; I shall peel back those layers and see what strange treasures lie beneath.*/
== DORNJ @90 /*Careful. I'd hate to disappoint you.*/
== HAERDAJ @91 /*I do not think that possible. You are a creature of extremes, my friend, and like a moth to candlelight, this sparrow's soul yearns to feel that fire's touch. Perhaps to burn, perhaps to die, but better to chase the sun and fall then to live a long cold life with naught but dirt beneath my feet.*/
EXIT


//Aerie-Dorn Conflict
CHAIN IF WEIGHT #-1 ~Global("_bAerieDornConflict","GLOBAL",2)~ THEN DORNJ _bDornAerieFight
@92 /*You would challenge me, elf?*/
DO ~SetGlobal("_bAerieDornConflict","GLOBAL",3)~
== AERIEJ @93 /*I—I don't know what you mean.*/
== DORNJ IF ~!Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @94 /*You desire Haer'Dalis. But he will be mine.*/
== DORNJ IF ~Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @95 /*You desire Haer'Dalis. But he is mine.*/
== AERIEJ IF ~OR(2) Global("HaerdalisRomanceActive","GLOBAL",1) Global("HaerdalisRomanceActive","GLOBAL",2)~ THEN @96 /*Y-You are delusional. Haer'Dalis loves me and he would n-never leave me for a monster like you!*/
== AERIEJ IF ~!Global("HaerdalisRomanceActive","GLOBAL",1) !Global("HaerdalisRomanceActive","GLOBAL",2)~ THEN @97 /*Haer'Dalis would n-never want a monster like you!*/
== DORNJ @98 /*Hah! I may be a monster, but you are a gnat. Get in my way and I will squash you.*/
== AERIEJ @99 /*You just try!*/
== HAERDAJ @100 /*Ah, my friends, there is no need to fight over this poor sparrow's heart. I am sorry that my fickle soul has led you both astray*/
= @101 /*A master bard may sing a song to sway the minds of thousands, but for this small audience, words fail upon my tongue. They twist away beneath my grasp when I attempt to choose.*/
END
	+ ~Global("RomanceConflict","GLOBAL",1) Global("DecideLove","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",3)~ + @102 /*Choose Aerie. I didn't stand aside so that you could break her heart.*/ EXTERN HAERDAJ _bHDPicksAerie
	++ @103 /*Of course you should pick Aerie. She's smarter, kinder, and far more beautiful.*/ EXTERN HAERDAJ _bHDPicksAerie
	++ @104 /*It's obvious that you love Aerie. Listen to your heart.*/ EXTERN HAERDAJ _bHDPicksAerie
	++ @105 /*Don't lie to yourself. If you didn't want Dorn, you never would have let things get this far.*/ EXTERN HAERDAJ _bHDPicksDorn
	++ @106 /*Why is this even a question? A sniveling elf or a strapping warrior? Dorn is the obvious choice.*/ EXTERN HAERDAJ _bHDPicksDorn
	++ @107 /*I knew this would end in bloodshed. Time to watch the flames burn out.*/ EXTERN HAERDAJ _bHDSaysFight
	++ @108 /*Let them fight. That's the best way to settle this.*/ EXTERN HAERDAJ _bHDSaysFight
	
CHAIN HAERDAJ _bHDPicksAerie
@109 /*You are right, <CHARNAME>. My mourning dove is the true light of this sparrow's life and I would be a fool to lose her. No passing fancy can compare.*/
DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3)~
== DORNJ @110 /*You are no better than she. To the hells with you!*/
EXIT

CHAIN HAERDAJ _bHDPicksDorn
@111 /*You are right, <CHARNAME>. You are sweet, my mourning dove, but this sparrow craves something more substantial. Dorn, my grand vulture, you are the only one for me.*/
DO ~SetGlobal("HaerdalisRomanceActive","GLOBAL",3)~
== AERIEJ @112 /*But... but I thought...*/
== DORNJ @113 /*What you thought is of no consequence. If you value your life, you will leave him to me.*/
EXIT

CHAIN HAERDAJ _bHDSaysFight
@114 /*Perhaps you are right, <CHARNAME>, but the thought sits heavily upon this sparrow's mind. I would not see either of our companions injured for some foolish love of me.*/
DO ~SetGlobal("_bAerieDornFight","GLOBAL",1)~
== DORNJ @115 /*I know you, tiefling, do not lie. You had your chance to end this but if you wish us to battle for you, Dorn Il-Khan is ready to oblige.*/
= @116 /*Face me, elf. If you truly want him, take him from my cold dead hands.*/
== AERIEJ @117 /*No! I won't!*/
== DORNJ @118 /*Then you will die and Haer'Dalis will be mine.*/
== AERIEJ @119 /*I- I... Fine! If y-you're going to make me, then I'll f-fight you. But I won't be the one w-who dies!*/
EXIT
	
//If Dorn Survives
CHAIN IF WEIGHT #-5 ~Global("_bAerieDornFight","GLOBAL",2)~ THEN DORNJ _bDornWins
@120 /*Aah, a fine effort to make the blood flow. The elf was stronger than I thought, but she could not defeat the might of Dorn Il-Khan.*/
DO ~SetGlobal("_bAerieDornFight","GLOBAL",3)~
== DORNJ IF ~!Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis")~ THEN @121 /*You will be mine, Haer'Dalis. There is no one else to claim you now.*/
== DORNJ IF ~Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis")~ THEN @122 /*You are mine, Haer'Dalis. I will do the same to any other challengers.*/
== HAERDAJ @123 /*Such possessiveness becomes you. Though it is a pity about our poor mourning dove.*/
EXIT

//If Aerie Survives
CHAIN IF WEIGHT #-5 ~Global("_bAerieDornFight","GLOBAL",2)~ THEN AERIEJ _bAerieWins
@124 /*I didn't want to do that. Why did you m-make me do that?*/
DO ~SetGlobal("_bAerieDornFight","GLOBAL",3)~
== HAERDAJ @125 /*There are no words beyond, "I'm sorry." I never meant to cause you pain.*/
= @126 /*Let us go my mourning dove and speak no more of this.*/
EXIT

//6th Talk, Always pre or post conflict
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",18)~ THEN DORNJ _bDornHD6
@127 /*You intrigue me. I've waited a long time to find one such as you.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",19)~
== HAERDAJ @128 /*And does this sparrow measure up to your misty summer dreams? Or is my plumage pale and faded in comparison? Tell me, my grand vulture, shall you break this poor fool's heart?*/
== DORNJ @129 /*Why can't you just speak plainly? I admire you, I've made no secret of it. But you hide behind your fancy words and silly nicknames. I am Dorn Il-Khan, is that not enough?*/
== HAERDAJ @130 /*Play a part for long enough and the act becomes reality. Who is to say which is the true Haer'Dalis?*/
= @131 /*Yet if you must have plain words to guide you, then my plain words are these: you are Dorn Il-Khan and that is quite enough for me.*/
== DORNJ @132 /*So you would proceed down this path?*/
== HAERDAJ @133 /*Why wouldn't I? You are a bloodthirsty warrior, one whose path has carved a river of death across the realms and this sparrow is the bard to sing your deeds. Not only sing but revel, the darker parts of your own soul calling out to me.*/
= @134 /*You have me, Dark-Edge... you need only take what's yours.*/
== DORNJ @135 /*This is no laughing matter.*/
== HAERDAJ @136 /*Good, because I was quite serious. My words may dance around you, but I mean the sentiment. You have won me over and this sparrow would like to know how you intend to claim your prize.*/
= @137 /*The nicknames, though, my vulture, are a trait that you must live with. Their source is pure affection; I mean no disrespect, but you shall learn to treasure your true name upon my lips.*/
== DORNJ @138 /*And you shall learn to scream it out in ecstasy.*/
== HAERDAJ @139 /*Perhaps. I look forward to your efforts next time our party stops to rest. Though I should warn you that this sparrow has high standards for those who share my bed.*/
== DORNJ @140 /*Good. I enjoy a challenge.*/
EXIT
	
//Pre Sex Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",20)~ THEN DORNJ _bDornHD7
@141 /*Tiefling, it is time.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",21)~
== HAERDAJ @142 /*Indeed, my grim grand vulture. Show this bard what you can do.*/
DO ~Wait(1) RestParty()~
EXIT

//Post Sex Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",22)~ THEN HAERDAJ _bDornHD7.5
@143 /*Mmm, this sparrow has flown high indeed beneath your practiced hands.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",23) SetGlobal("_bHDDORNROMANCE","GLOBAL",2) ApplySpellRES("_bREP","Dorn") ApplySpellRES("_bREP","HaerDalis")~ //Stop from leaving from rep
== DORNJ @144 /*I said I would bring you pleasure as no one had before.*/
== HAERDAJ @145 /*So you did. But it was such sweet surrender. And I was not the only one, was I, Dorn Il-Khan?*/
== DORNJ @146 /*Hah! Of course, not. I would not choose a lover who could not match my skill. You are a fine catch, Haer'Dalis.*/
== HAERDAJ @147 /*And you are a fine hunter. Though someday I shall show you the joys of being prey.*/
== DORNJ @148 /*I don't bend, for you or anyone.*/
= @149 /*The weak break. The strong stand triumphant over all that would see them broken—or bent.*/
== HAERDAJ @150 /*You have much to learn, my vulture, about the art of compromise. There is strength in give and take, value in acquiescence. Sometimes the risk is greater but so too are the rewards.*/
= @151 /*Your own darkness calls to me like the drowning sea of stars. Your soul sings arias of violence and the thrill of battle, but this bard has learned to his chagrin that steel cannot defeat all foes.*/
= @152 /*There are times when words cut deepest, times when combat will not save you, and I would not like to lose you to the rage within your heart.*/
= @153 /*Let me teach you other dances with which to take the realms by storm.*/
== DORNJ @154 /*Perhaps you will yet.*/
= @155 /*We shall see.*/
EXIT

//Talks once romance active
//If HD is fatigued
CHAIN IF WEIGHT #-1 ~Global("_bDHDTiredTalk","GLOBAL",1)~ THEN DORNJ _bDornConcerned
@156 /*How fare you, Haer'Dalis?*/
DO ~SetGlobal("_bDHDTiredTalk","GLOBAL",2)~
== HAERDAJ @157 /*You need not worry about me, my grim vulture. This sparrow is still strong enough to keep up with your dark wings.*/
== DORNJ @158 /*Do not lie to me, tiefling. If I did not care, I wouldn't ask. I am not going to throw you over at the first sign of weakness.*/
== HAERDAJ @159 /*Your words warm this sparrow's heart. Yet I know your lust for power; can you fault my wariness?*/
== DORNJ @160 /*Perhaps not. Neither of us are the type to trust that easily. But it benefits us both to have you in fighting form.*/
= @161 /*So tell me the truth, do you need to rest?*/
== HAERDAJ @162 /*Nay. Just keep this sparrow from collapsing. Those strong arms of yours should have no trouble catching me.*/
== DORNJ @163 /*Very well. I shall be ready.*/
EXIT

//Heritage Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",25)~ THEN DORNJ _bDornHeritage
@164 /*You and I are similar in more ways than one, tiefling.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",26)~
== HAERDAJ @165 /*Indeed, we both have excellent taste in men.*/
== DORNJ @166 /*Apart from that.*/
= @167 /*We are both outcasts. Labeled and cast aside by the world, the victims of our heritage. Our upbringings were different, but at our core we are both strangers to the world around us.*/
== HAERDAJ @168 /*Perhaps we are. This sparrow's blood draws stares and hatred as much as that which flows within your veins... foul words and curses matched with violence across the many planes.*/
= @169 /*I have spent a lifetime running from my past and parentage. It has been an adventure to be sure, but not one without its dangers. You have seen the scars I bear.*/
== DORNJ @170 /*I would murder all who hurt you if I could.*/
== HAERDAJ @171 /*And I would save the bright-eyed children we once were. But the world is cruel as well as beautiful and those spirits are forgotten.*/
= @172 /*Yet it may be for the best. Without that pain, we would not have found each other and I do not regret the man I am today.*/
== DORNJ @173 /*Fate has brought us together for a reason. Our destiny is writ large in the stars. One day, all will cower before us and neither of us will ever fear again.*/
== HAERDAJ @174 /*Sometimes you have a magnificent way with words.*/
== DORNJ @175 /*Yes. I do.*/
EXIT

//Combat Talk - HD Injured
CHAIN IF WEIGHT #-1 ~Global("_bHDHurt","GLOBAL",1)~ THEN DORNJ _bDornWorried
@176 /*Put your guard up, tiefling! I do not have time to save your skin!*/
DO ~SetGlobal("_bHDHurt","GLOBAL",2)~
== HAERDAJ @177 /*A momentary lapse. Nothing more.*/
= @178 /*You are quite... distracting in battle. A force for entropy such as I have rarely seen.*/
== DORNJ @179 /*Do not attempt to distract me with flattery.*/
== HAERDAJ @180 /*It is not flattery when this sparrow speaks the truth.*/
= @181 /*But my thoughts are together now. I do not need rescuing.*/
== DORNJ @182 /*Good. I expect nothing less.*/
= @183 /*And if you find me that distracting, perhaps I should take you in hand once this battle ends. I will not have your mind unfocused during combat.*/
= @184 /*You'll like it, I assure you.*/
== HAERDAJ @185 /*Oh yes, I believe I surely will.*/
EXIT

//Combat Talk - Dorn Injured
CHAIN IF WEIGHT #-1 ~Global("_bDornHurt","GLOBAL",1)~ THEN HAERDAJ _bHDWorried
@186 /*Are you in need of aid, my vulture? You are bleeding heavily.*/
DO ~SetGlobal("_bDornHurt","GLOBAL",2)~
== DORNJ @187 /*I am fine. No one will take down Dorn Il'Khan!*/
== HAERDAJ @188 /*This sparrow was not claiming otherwise. But as much as I enjoy the feeling of your scars beneath my hands, I prefer your heart still beating in your chest.*/
= @189 /*Don't chase the thrill of combat with such passion that you forget to watch your footing. One must be alive to triumph after all.*/
== DORNJ @190 /*Perhaps you have a point.*/
== HAERDAJ @191 /*This bard is glad to hear it. So you will not argue when I say to drink these potions. I would not have you collapse before the fight is done.*/
DO ~ApplySpell("Dorn",CLERIC_HEAL)~
= @192 /*Indeed, I wish you ready when this conflict is completed. Your flame is all the hotter when there is blood upon your skin and this sparrow will want to burn after a battle such as this.*/
== DORNJ @193 /*I could not agree more.*/
EXIT

//Interjection into Helm Temple Quest
INTERJECT DORNJ 357 _bDornHelmMad /*Make peace with your worthless god, Everwatch Knight, for soon you shall meet him face to face!*/
	== HAERDAJ IF ~!CheckStatGT(Player1,14,CHR) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis")~ THEN @376 /*Ah, if I might speak plainly, Dark-Edge.... This is an ill-formed plan.*/
	= @377 /*I understand your lust for bloodshed, but Helm is a god with many followers. The enemies that we make here may chase us all our lives. Are you certain that you wish to make this choice?*/
END
	++ @378 /*Uh, yeah. Death, bloodshed, lots of stabbing... Sounds good to me.*/ + _bDornHelmMad2
	++ @379 /*That's what I was saying. We don't need this kind of trouble.*/ + 356
	
CHAIN DORNJ _bDornHelmMad2
@380 /*And you know you feel the same, tiefling, though you try to deny it. Draw your blades and join us in this fight.*/
= @381 /*It shall be a glorious slaughter and I wish you at my side.*/
DO ~ActionOverride("sctelwyn",Enemy()) SetGlobal("OHD_Telwyn_Spawn","AR0901",99) SetGlobal("TempleShout0901","GLOBAL",2)~
EXIT

//Interjection in Helmite Camp
INTERJECT_COPY_TRANS2 DORNJ 365 _bDornTerpfen /*I am Dorn Il-Khan! I seek the Everwatch dog Terpfen!*/
	== HAERDAJ IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis")~ THEN @382 /**sigh* Someday, Dark-Edge, I shall teach you the joys of subtlety.*/
END

//Post Helmite Camp Talk (will play later if you just get romance & Dorn still has a patron of some sort
CHAIN IF WEIGHT #-1 ~Global("_bHelmiteTalk","GLOBAL",2)~ THEN HAERDAJ _bHDCampTalk
@383 /*So is this your calling, my grim vulture? To be commanded from one battle to another at the whim of your dark master, never knowing whose blood will grace your hands?*/
DO ~SetGlobal("_bHelmiteTalk","GLOBAL",3)~
== DORNJ IF ~Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @384 /*And if it is? Will you deny our attraction because you do not like where my path leads?*/
== DORNJ IF ~Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @385 /*And if it is? Will you abandon what we have because you do not like the path I tread? You would not be the first.*/
== HAERDAJ @386 /*This sparrow has not said that. Do not put false words into my mouth. I merely thought it wise to discover where you stand.*/
= @387 /*Should I hate you for your killing? As a bard, I've ruined hundreds with a well-placed curse or insult and as a doomguard, hundreds more with keen-edged blades. Death is only natural. The ebb and flow of joy and suffering, the cycle of destruction and rebirth... that is why life has meaning.*/
== HAERDAJ IF ~Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @388 /*So no, I will not deny you over this. Though that does not mean I've given in. Prove yourself a worthy partner and we might speak of this again.*/
== HAERDAJ IF ~Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @389 /*So no, I will not abandon you for this. How could I when your violence is part of what I love?*/
== HAERDAJ IF ~Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @390 /*Although, given your propensity for making powerful enemies, you are lucky that this bard is quite fond of traveling.*/
== DORNJ @391 /*I am... glad to hear that. I find that I would miss your company.*/
EXIT

//Ambush Interjection
INTERJECT_COPY_TRANS2 OHDTRAGG 0 _bHDAmbushTalk /*Dorn Il'Khan! The time has come to pay the price for your perfidy!*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis")~ THEN @392 /*You must be a paladin. Only paladins and playwrights use words like perfidy, and you do not look like any bard.*/
END

//Second Ambush Interjection
INTERJECT_COPY_TRANS2 OHDHAMMS 4 _bHDAmbushTalk2 /*Other avengers of Tyr, Torm, and even Helm will surely follow, hounding you all the days of your life. The gods have very long memories.*/
	== HAERDAJ IF ~Global("_bHelmiteTalk","GLOBAL",3) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis")~ THEN @393 /*This sparrow was not expecting to be proven right about your enemies so soon, my Dark-Edge. But I hear that Tethyr can be lovely at this time of year.*/
END

//Line if Dorn Dies
INTERJECT_COPY_TRANS2 OHDTRAGG 12 _bHDAmbushFail /*The half-orc is dead. Our quarrel isn't with you, <PRO_RACE>. Walk away now and live to see another day.*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @394 /*Walk away?! This sparrow will see you burnt to ashes even if I must follow your self-righteous souls across the planes.*/
END

//Interjections into Resurrection Gorge - mutually exclusive
//OHDSUMM Talk
INTERJECT DORNJ 500 _bHDStopsDorn1 /*Take my blade to heart, <PRO_RACE>!*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bHDStopsDorn2","GLOBAL",0) Global("_bHDStopsDorn3","GLOBAL",0)~ THEN @395 /*Wait! Wait, my vulture. I know your blood runs hot at being chided, but do not let that blind you to simple strategy. If we are to seize your prize, here in this dark woodland, we would do better to have allies in the fight.*/
	== DORNJ @396 /*I do not like your tone, tiefling, or the way you shy from combat. You should revel in this chance to fight as you truly wish to do... But perhaps it is too early to throw aside the Bhaalspawn.*/
	= @397 /*<CHARNAME>! Admit that I am a valuable ally and I shall stay my blade for now.*/
END
	++ @398 /*No, Dorn. I'd rather kill you.*/ EXTERN HAERDAJ _bDornGorgeMad
	++ @399 /*Fine, fine. I just can't live without you and your awesome prowess. Is that what you wish to hear?*/ + _bDornGorgeNoFight
	++ @400 /*If you weren't valuable, I would have sent you packing days ago.*/ + _bDornGorgeNoFight
	++ @401 /*You really need to stop overreacting all the time. I have no wish to fight you.*/ + _bDornGorgeNoFight
	
CHAIN HAERDAJ _bDornGorgeMad
@402 /**sigh* I wish you hadn't said that, <CHARNAME>.*/
== DORNJ @403 /*No more delays. It is time, Bhaalspawn!*/
DO ~SetGlobal("OHD_PLOT","GLOBAL",-1) SetGlobal("KICKEDOUT","LOCALS",1) LeaveParty() SetLeavePartyDialogueFile() ChangeAIScript("",DEFAULT) Enemy()~
EXIT

CHAIN DORNJ _bDornGorgeNoFight
@404 /*I suppose that will do. But if you continue to test my patience, I will take my tithe of blood.*/
EXIT


//Tree Talk
INTERJECT DORNJ 602 _bHDStopsDorn2 /*Nor did they bid you die on one, but die you shall!*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bHDStopsDorn1","GLOBAL",0) Global("_bHDStopsDorn3","GLOBAL",0)~ THEN @395 /*Wait! Wait, my vulture. I know your blood runs hot at being chided, but do not let that blind you to simple strategy. If we are to seize your prize, here in this dark woodland, we would do better to have allies in the fight.*/
	== DORNJ @396 /*I do not like your tone, tiefling, or the way you shy from combat. You should revel in this chance to fight as you truly wish to do... But perhaps it is too early to throw aside the Bhaalspawn.*/
	= @397 /*<CHARNAME>! Admit that I am a valuable ally and I shall stay my blade for now.*/
END
	++ @398 /*No, Dorn. I'd rather kill you.*/ EXTERN HAERDAJ _bDornGorgeMad
	++ @399 /*Fine, fine. I just can't live without you and your awesome prowess. Is that what you wish to hear?*/ + _bDornGorgeNoFight
	++ @400 /*If you weren't valuable, I would have sent you packing days ago.*/ + _bDornGorgeNoFight
	++ @401 /*You really need to stop overreacting all the time. I have no wish to fight you.*/ + _bDornGorgeNoFight
	
//Neirad Talk
INTERJECT DORNJ 661 _bHDStopsDorn3 /*I'll see your guts on the ground, <CHARNAME>.*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bHDStopsDorn2","GLOBAL",0) Global("_bHDStopsDorn1","GLOBAL",0)~ THEN @395 /*Wait! Wait, my vulture. I know your blood runs hot at being chided, but do not let that blind you to simple strategy. If we are to seize your prize, here in this dark woodland, we would do better to have allies in the fight.*/
	== DORNJ @396 /*I do not like your tone, tiefling, or the way you shy from combat. You should revel in this chance to fight as you truly wish to do... But perhaps it is too early to throw aside the Bhaalspawn.*/
	= @397 /*<CHARNAME>! Admit that I am a valuable ally and I shall stay my blade for now.*/
END
	++ @398 /*No, Dorn. I'd rather kill you.*/ EXTERN HAERDAJ _bDornGorgeMad
	++ @399 /*Fine, fine. I just can't live without you and your awesome prowess. Is that what you wish to hear?*/ + _bDornGorgeNoFight
	++ @400 /*If you weren't valuable, I would have sent you packing days ago.*/ + _bDornGorgeNoFight
	++ @401 /*You really need to stop overreacting all the time. I have no wish to fight you.*/ + _bDornGorgeNoFight


//Alternate Gorge Interjections. Mutually exclusive w/ each other but not those ^. Go to same final lines.
//Other Tree Talk
INTERJECT DORNJ 618 _bHDStopsDorn4 /*I may be on a fool's quest, but your fool's tongue has sealed your doom!*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bHDStopsDorn5","GLOBAL",0)~ THEN @405 /*Stop! Stop, my vulture! <CHARNAME> has insulted you beyond all measure of politeness and this sparrow cannot blame you for your rage. But this is not the time for grudges. If we are to seize your prize, here in this twisted landscape, we would do better to have allies in the fight.*/
	== DORNJ @406 /*You should be defending me, tiefling, not this mewling coward. <CHARNAME> has insulted me for the last time!*/
	== HAERDAJ @407 /*I am TRYING, Dark-Edge, but sometimes you make it difficult. Please, my raven, will you not apologize? I do not wish our company to part.*/
END
	++ @408 /*No, I'd rather kill him.*/ EXTERN HAERDAJ _bDornGorgeMad
	++ @409 /*Fine. I'm sorry for the name-calling. Is that what you wish to hear?*/ + _bDornGorgeNoFight
	++ @410 /*You really need to stop overreacting, Dorn. Those were friendly insults, promise.*/ + _bDornGorgeNoFight
	
//Demon Talk
INTERJECT DORNJ 708 _bHDStopsDorn5 /*I may be on a fool's quest, but your fool's tongue has sealed your doom!*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bHDStopsDorn4","GLOBAL",0)~ THEN @405 /*Stop! Stop, my vulture! <CHARNAME> has insulted you beyond all measure of politeness and this sparrow cannot blame you for your rage. But this is not the time for grudges. If we are to seize your prize, here in this twisted landscape, we would do better to have allies in the fight.*/
	== DORNJ @406 /*You should be defending me, tiefling, not this mewling coward. <CHARNAME> has insulted me for the last time!*/
	== HAERDAJ @407 /*I am TRYING, Dark-Edge, but sometimes you make it difficult. Please, my raven, will you not apologize? I do not wish our company to part.*/
END
	++ @408 /*No, I'd rather kill him.*/ EXTERN HAERDAJ _bDornGorgeMad
	++ @409 /*Fine. I'm sorry for the name-calling. Is that what you wish to hear?*/ + _bDornGorgeNoFight
	++ @410 /*You really need to stop overreacting, Dorn. Those were friendly insults, promise.*/ + _bDornGorgeNoFight
	


//Dorn Talk if you pick HD to die in Dorn's ritual (should hijack game timer)
CHAIN IF WEIGHT #-5 ~Global("_bHDRitual","OH5120",0) Global("OHD_ritual","OH5120",4) Global("OHD_ritual_target","OH5120",5) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis")~ THEN DORNJ _bDornRitualTalk
@194 /*What treachery is this, <CHARNAME>?*/
DO ~SetGlobal("_bHDRitual","OH5120",1)~
= @195 /*The tiefling is mine. He is not a sacrifice.*/
END
	++ @196 /*What? I thought you cared about power more than anything.*/ + _bDornMad1
	++ @197 /*Relax. He'll only be a little dead. We'll raise him afterward.*/ + _bDornMad2
	++ @198 /*Watch your tongue, half-orc.*/ + _bDornMad3
	++ @199 /*I'm the leader here. You all follow my orders.*/ + _bDornMad4
	++ @200 /*I'm simply being truthful. Haer'Dalis is the only one that I can spare.*/ + _bDornMad5
	
APPEND DORNJ IF ~~ THEN _bDornMad1
	SAY @201 /*Such mockery does naught but stoke my fury.*/
	IF ~~ THEN + _bDornMad
	END
	
	IF ~~ THEN _bDornMad2
	SAY @202 /*Jokes? You make jokes?*/
	IF ~~ THEN + _bDornMad
	END
	
	IF ~~ THEN _bDornMad3
	SAY @203 /*Watch my tongue? I should cut yours from your vile mouth!*/
	IF ~~ THEN + _bDornMad
	END
	
	IF ~~ THEN _bDornMad4
	SAY @204 /*Prove it, if you can.*/
	IF ~~ THEN + _bDornMad
	END
	
	IF ~~ THEN _bDornMad5
	SAY @205 /*Damn accuracy and damn you!*/
	IF ~~ THEN + _bDornMad
	END
END

CHAIN DORNJ _bDornMad
@206 /*This insult cannot stand!*/
= @207 /*Here in the moment of my triumph, you wish to make me choose?*/
= @208 /*Perhaps I should sacrifice your life instead!*/
== HAERDAJ @209 /*Easy now, my Dark-Edge, do not grow so mad with anger that you lash out needlessly.*/
== DORNJ @210 /*Needless? You call this needless? Have you lost your mind completely?*/
== HAERDAJ @211 /*This sparrow is quite sane, I promise you.*/
= @212 /*But you have come so far already, sacrificed so much. You should not throw away your journey at the final step. No drama is complete without a tortured hero, a moment of indecision before the final cost is paid.*/
= @213 /*I admit my heart is flattered that you truly care so much. And well, is it not the dream of every poet to have the chance to die for love?*/
== DORNJ @214 /*You are truly mad, tiefling. We court death with every battle but I do not want a lover who goes without a fight.*/
== HAERDAJ @215 /*You think me suicidal? You are wrong, my vulture. Death is a cruel mistress and I prefer your brand of pain.*/
= @216 /*But I also know that dying is not the end of this bard's tale. You will find a way to raise me or I shall haunt you to your grave, and your hesitation in this matter means far more than words of love.*/
= @217 /*So take your gift with gratitude before I change my mind.*/
== DORNJ @218 /*How could I do otherwise? You may still be crazy, but at least you are no coward and your silver tongue astounds me even now.*/
= @219 /*Prepare yourself, Haer'Dalis. This will be excruciating.*/
EXIT
	
//Dorn Loses Power Talk (8.1)
CHAIN IF WEIGHT #-1 ~Global("_bDornHDPowerTalk","GLOBAL",2)~ THEN DORNJ _bDornLostPatron
@220 /*I have cast off my chains and am free to do as I will.*/
DO ~SetGlobal("_bDornHDPowerTalk","GLOBAL",3)~
== HAERDAJ @221 /*Indeed, you have, my grim grand vulture. This sparrow remembers well the heady feeling of stretching out unfettered wings. Where shall you fly now that you have no other master guiding you?*/
== DORNJ @222 /*I will continue to follow <CHARNAME>'s lead for now. Doing so has served me well so far.*/
== HAERDAJ @223 /*That sparks relief within my breast. Though I hope <CHARNAME> is not the only reason you wish our paths to stay entwined.*/
== DORNJ @224 /*No. I have never known another like you.*/
= @225 /*Will you share my bedroll again? I assure you... you will not regret it.*/
== HAERDAJ @226 /*This sparrow would be delighted. Did you think to hear refusal pass my lips?*/
== DORNJ @227 /*My chains were restricting, but they also brought me power. I no longer have the strength that I once did.*/
== HAERDAJ @228 /*Perhaps. But there are other things that drew me and I believe the flames between us shall burn as brightly as before.*/
= @229 /*I shall have you tonight. And tomorrow, and as many times as the limits of the physical allow. Assuming you, my Dark-Edge, will oblige? Shall we be more permanent companions and let the warmth of our passion help keep the bitter cold at bay?*/
== DORNJ @230 /*If that is what you desire.*/
= @231 /*Haer'Dalis and Dorn, I like the sound of that.*/
== HAERDAJ @232 /*It does have a certain primal rhythm on the tongue. This shall be a partnership to live among the legends and together in verse we shall be immortalized.*/
EXIT

//Dorn Gain Power Talk - Version if didn't get 8.1
CHAIN IF WEIGHT #-1 ~Global("_bDornHDPowerTalk2","GLOBAL",2) Global("_bDornHDPowerTalk","GLOBAL",0)~ THEN DORNJ _bDornHasPatron
@233 /*Power such as I have never known flows through my veins.*/
DO ~SetGlobal("_bDornHDPowerTalk2","GLOBAL",3)~
== HAERDAJ @234 /*Indeed, it does, my grim grand vulture. Though this sparrow fears that you might rue your bargain in the future, power can be an anchor that drags a great bird of prey down from an endless sky.*/
= @235 /*But for now, you are triumphant. What will you do with your new strength? Will you leave this company and strike out on your own?*/
== DORNJ @236 /*No. I will continue to follow <CHARNAME>'s lead for now. Doing so has served me well thus far.*/
== HAERDAJ @223 /*That sparks relief within my breast. Though I hope <CHARNAME> is not the only reason you wish our paths to stay entwined.*/
== DORNJ @224 /*No. I have never known another like you.*/
= @237 /*My blood boils in my veins and I would see its hunger sated. Share my bedroll again tonight. I assure you... you will not regret it.*/
== HAERDAJ @238 /*This sparrow would be delighted. I wish to taste the spice of your new strength upon your lips.*/
= @229 /*I shall have you tonight. And tomorrow, and as many times as the limits of the physical allow. Assuming you, my Dark-Edge, will oblige? Shall we be more permanent companions and let the warmth of our passion help keep the bitter cold at bay?*/
== DORNJ @230 /*If that is what you desire.*/
= @231 /*Haer'Dalis and Dorn, I like the sound of that.*/
== HAERDAJ @232 /*It does have a certain primal rhythm on the tongue. This shall be a partnership to live among the legends and together in verse we shall be immortalized.*/
EXIT

//Dorn Gain power Talk - Version if got 8.1
CHAIN IF WEIGHT #-1 ~Global("_bDornHDPowerTalk2","GLOBAL",2) Global("_bDornHDPowerTalk","GLOBAL",3)~ THEN DORNJ _bDornHasGod
@233 /*Power such as I have never known flows through my veins.*/
DO ~SetGlobal("_bDornHDPowerTalk2","GLOBAL",3)~
== HAERDAJ @234 /*Indeed, it does, my grim grand vulture. Though this sparrow fears that you may rue your bargain in the future... power can be an anchor that drags a great bird of prey down from an endless sky.*/
= @235 /*But for now, you are triumphant. What will you do with your new strength? Will you leave this company and strike out on your own?*/
== DORNJ @239 /*No. As I said before, traveling with <CHARNAME> has served me well. I would be a fool to leave right now.*/
== HAERDAJ @240 /*And Dorn Il'Khan is not a fool, as this sparrow has discovered. I am glad to know that your new strength has not changed your direction. Has it changed the passion in your heart?*/
== DORNJ @241 /*Never. I may serve a new master, but that does not mean I will give up what I have claimed.*/
= @242 /*You are mine and even if our paths are forced to diverge in the future, Dorn Il'Khan will find you once again.*/
== HAERDAJ @243 /*This bard is delighted to hear it. I wish to taste the spice of your new power on your lips. Indeed, I look forward to doing so when our company rests again.*/
== DORNJ @244 /*Why wait? Come here, tiefling, and I will show you a brief glimpse.*/
EXIT

//Asylum Interjection
INTERJECT_COPY_TRANS2 HAERDAJ 104 _bDornFlatter /*I must not make light of this, but likely she has seen my kind quite often.*/
	== DORNJ IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @411 /*She should be glad to see your kind, tiefling. There are far worse visions to be had.*/
	== HAERDAJ @412 /*Your flattery improves, vulture. Though from what this sparrow knows of that which lives between the planes, you are simply stating fact.*/
END

//Saemon Ship 
INTERJECT_COPY_TRANS2 HAERDAJ 108 _bDornSaemon /*We've no patron's threat this time to keep us safe.*/
	== DORNJ IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @413 /*Do not worry, tiefling. This cockroach cares too much about his survival to cross the might of Dorn Il'Khan.*/
END

//Sahuagin Talk
INTERJECT_COPY_TRANS2 HAERDAJ 109 _bDornProtect /*And I will warn you now that this sparrow has no intention of being collared again, by you or anyone.*/
	== DORNJ IF ~Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @414 /*Touch him and die! The attempt would cost your life!*/
END

//Post Sahuagin Talk
INTERJECT_COPY_TRANS2 HAERDAJ 110 _bDornEntropy /*I found the story of entropy working its slow decay upon an entire people to have much more poetry. With any luck, these creatures will stumble into a downward spiral again soon.*/
	== DORNJ IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @415 /*If you truly wish it, tiefling, my blade is ever hungry. We could help these fish along.*/
END

//Adalon Cave
INTERJECT_COPY_TRANS2 HAERDAJ 127 _bDornAdalon /*To stave off your wrath, they have provoked it beyond imagining. These are impressive risks they are willing to take.*/
	== DORNJ IF ~Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @416 /*You sound almost admiring, tiefling. Do you prefer such lies and treachery over an honest bloody fight?*/
	== HAERDAJ @417 /*Do not worry, my grand vulture. This sparrow can appreciate a bold move in the game of life without lusting for the player. There is no need for jealousy.*/
	== DORNJ @418 /*I am not jealous! I merely think our enemies are cowards for resorting to this subterfuge. They should have smashed the dragon's eggs and faced her wrath head on!*/
	== HAERDAJ @419 /*Your straightforward courage is one of the things I love about you. But I imagine that the hatchlings' mother would rather disagree.*/
END

//Githyanki Betrayal
INTERJECT_COPY_TRANS2 HAERDAJ 126 _bDornGithyanki /*And here would come the change in plans, am I right? Wondrously chaotic plan if it is. I expected no less.*/
	== DORNJ IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @420 /*If you expected treachery, you should have warned me, tiefling! I would have taken care of this. Unless you do not trust me after all?*/
	== HAERDAJ @421 /*Do not feel bad, my vulture. I know you would have freed us. But this sparrow saw no reason not to let this dance play out.*/
END

//Jarlaxle Ust Natha Quest
INTERJECT_COPY_TRANS2 HAERDAJ 136 _bDornGems /*Eh? What is this? Did yon blackbird not say earlier that the souls of his comrades were trapped in these baubles?*/
	== DORNJ IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @422 /*Clearly yon blackbird lied. Perhaps I should rip out his traitorous tongue as a lover's gift for you.*/
END

//Suldanessellar Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornC7Talk","GLOBAL",2)~ THEN DORNJ _bDornSuldanessellar
@245 /*The mage's plan was effective, it cannot be denied. Irenicus wields fear and panic like a seasoned warrior does sword and shield.*/
DO ~SetGlobal("_bDornC7Talk","GLOBAL",3)~
== HAERDAJ @246 /*And now we go to face him. Sometimes this sparrow wonders how my wings have led me here.*/
= @247 /*I do not wish to fall in battle. I wish to live with you, my vulture. I want to show you all the realms this bard has traveled, walk together through the thousand doors of Sigil and the planes of dreams and blood.*/
= @248 /*Yet we go now to a fight I am not certain can be won.*/
== DORNJ @249 /*Irenicus is not one to trifle with, but neither are we.*/
= @250 /*This is a beautiful sight. Had we more time, I would take you where we stand... in the midst of this chaos.*/
= @251 /*Kiss me.*/
== HAERDAJ @252 /*With pleasure. If this is to be our last, you shall not doubt this sparrow's passion.*/
== DORNJ @253 /*I do not.*/
= @254 /*Now, let us make this Irenicus suffer as his victims have suffered.*/
= @255 /*He will pay for his transgressions!*/
EXIT

//Anomen-HD Banter Interjection
INTERJECT_COPY_TRANS2 BANOMEN 70 _bAnomenMean /*So you can stop pushing your weight around and leave the fighting to those of us who can handle the front line.*/
	== DORNJ IF ~Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @423 /*Moderate your tone, human, before I plant my fist into your jaw. The tiefling slices through his enemies with a skill you cannot match.*/
	== BHAERDA IF ~Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @424 /*I appreciate your words, my Dark-Edge, but they are unnecessary. A brash young knight like this holds no threat to wings like mine.*/
END

//Interjection into the Dorn/Anomen Fight
INTERJECT BDORN 15 _bDornAnomen /*A holy warrior who walks cheek by jowl with a Bhaalspawn and a blackguard? What else could I call you?*/
	== BHAERDA IF ~Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis")~ THEN @425 /*This certainly is the oddest of ill-suited companies. But instead of focusing on our differences, my grim vulture, perhaps we should attempt to find commonalities. Life has taught this sparrow to appreciate a healer on my side.*/
END
	++ @426 /*Nah, let them argue a little longer. I could use the entertainment.*/ + _bDornAnomen1
	++ @427 /*Haer'Dalis is right. I won't have you fighting under my command.*/ + _bDornAnomen2

CHAIN BDORN _bDornAnomen1
@428 /*Hear that, *human*? Our fearless leader isn't coming to defend you.*/
== BANOMEN @429 /*I do not need <CHARNAME>'s assistance to deal with a worm like you.*/
END BDORN 16 

CHAIN BDORN _bDornAnomen2
@430 /*As you wish, though only because my tiefling asks the same. I will bite my tongue as long as this *holy warrior* does not insult me again.*/
== BANOMEN @431 /*If you do not talk to me, then we shall get along just fine.*/
EXIT

//Leaving edits
INTERJECT BDORN 22 _bDornAnomen3 /*Anyone fool enough to ally <PRO_HIMHER>self with this weakling isn't worthy of my company. When you rid yourself of this useless baggage, seek me out, <CHARNAME>.*/ 
	== BDORN IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis") !Global("PLAYHOUSE","GLOBAL",1)~ THEN @432 /*You as well, tiefling. You know where I will be.*/
DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0510",1395,294,S)~ 
EXIT

INTERJECT BDORN 22 _bDornAnomen4 /*Anyone fool enough to ally <PRO_HIMHER>self with this weakling isn't worthy of my company. When you rid yourself of this useless baggage, seek me out, <CHARNAME>.*/ 
	== BDORN IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis") Global("PLAYHOUSE","GLOBAL",1)~ THEN @432 /*You as well, tiefling. You know where I will be.*/
DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0523",1395,294,S)~ 
EXIT

INTERJECT BDORN 22 _bDornAnomen5 /*Anyone fool enough to ally <PRO_HIMHER>self with this weakling isn't worthy of my company. When you rid yourself of this useless baggage, seek me out, <CHARNAME>.*/ 
	== BDORN IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) !IfValidForPartyDialog("HaerDalis") !Global("PLAYHOUSE","GLOBAL",1)~ THEN @433 /*You will find me at the Five Flagons. My tiefling will be missing Dorn Il'Khan.*/
DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0510",1395,294,S)~ 
EXIT

INTERJECT BDORN 22 _bDornAnomen6 /*Anyone fool enough to ally <PRO_HIMHER>self with this weakling isn't worthy of my company. When you rid yourself of this useless baggage, seek me out, <CHARNAME>.*/ 
	== BDORN IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) !IfValidForPartyDialog("HaerDalis") Global("PLAYHOUSE","GLOBAL",1)~ THEN @433 /*You will find me at the Five Flagons. My tiefling will be missing Dorn Il'Khan.*/
DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0523",1395,294,S)~ 
EXIT

//Dermin Interjection
INTERJECT_COPY_TRANS2 HAERDAJ 129 _bDornDermin /*Not to be critical, but Irenicus does not appear to be in the business of learning what he does not wish to know.*/
	== DORNJ IF ~OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("Dorn")~ THEN @434 /*Indeed, these elves were fools. Their queen sought to teach humility through mercy instead of violence and thus they sealed their doom.*/
END


//Dorn P File Edits

//When Dorn leaves forever due to being angry
INTERJECT_COPY_TRANS2 DORNP 4 _bDornTantrum /*We're finished, <CHARNAME>.*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @256 /*Such harsh words, my Dark-Edge, and ones that slice this sparrow's heart. Do you truly wish to forget the way that we might soar together? Will this dance between us end on broken strings?*/
	== DORNP IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @257 /*Don't be foolish. You belong with Dorn Il'Khan. <CHARNAME> alone has earned my ire and when you have finished with this spineless weakling, I expect you to seek me out.*/
END

INTERJECT_COPY_TRANS2 DORNP 2 _bDornTantrum2 /*Your charity and heroism—your vanity—makes you weak. I'll not let you drag me down with you. We're done.*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @256 /*Such harsh words, my Dark-Edge, and ones that slice this sparrow's heart. Do you truly wish to forget the way that we might soar together? Will this dance between us end on broken strings?*/
	== DORNP IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @257 /*Don't be foolish. You belong with Dorn Il'Khan. <CHARNAME> alone has earned my ire and when you have finished with this spineless weakling, I expect you to seek me out.*/
END

//Regular leaving script changes
EXTEND_BOTTOM DORNP 8 /*You're a fool, <PRO_RACE>. I thought I might help you rise above your limitations. I see now I was wrong.*/
IF ~!InParty("HaerDalis") OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN + _bDornPlayhouse1
END

EXTEND_BOTTOM DORNP 8 /*You're a fool, <PRO_RACE>. I thought I might help you rise above your limitations. I see now I was wrong.*/
IF ~InParty("HaerDalis") OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN + _bDornPlayhouse2
END 

CHAIN DORNP _bDornPlayhouse1
@258 /*When you realize that you need me, find me at the Five Flagons Inn. My tiefling will be missing Dorn Il'Khan.*/
END
	++ @260 /*You're so dramatic. Just wait here for five minutes, will you?*/ + _bDornP1
	++ @261 /*Go where you want.*/ + _bDornP2
	+ ~OR(46) AreaCheck("AR0410") // Sphere: Navigator's Room
			AreaCheck("AR0411") // Sphere Entrance
			AreaCheck("AR0412") //Sphere Ice & Fire
			AreaCheck("AR0413") //Sphere Engine Room
			AreaCheck("AR0414") //Sphere Demon Plane
			AreaCheck("AR1512") //Bodhi's Hunt Level 1
			AreaCheck("AR1513") //Bodhi's Hunt Level 2
			AreaCheck("AR1514") //Bodhi's Hunt Level 3
			AreaCheck("AR1515") //Spellhold Irenicus Quarters
			AreaCheck("AR1516") //Spellhold Soultheft Lvl
			AreaCheck("AR1501") //Cave (Spellhold Test)
			AreaCheck("AR1502") //Spellhold Fire Room
			AreaCheck("AR1503") //Spellhold Spore Room
			AreaCheck("AR1504") //Spellhold Crushing Trap
			AreaCheck("AR1505") //Spellhold Level Room
			AreaCheck("AR1506") //Spellhold Troll Cave
			AreaCheck("AR1507") //Spellhold Kobolds
			AreaCheck("AR1508") //Spellhold Final Judgment
			AreaCheck("AR1509") //Spellhold Myconids
			AreaCheck("AR1510") //Spellhold Sahuagin
			AreaCheck("AR1511") //Spellhold Elven Table
			AreaCheck("AR2100") //Underdark
			AreaCheck("AR2101") //Beholder Cave
			AreaCheck("AR2102") //Adalon's Cave
			AreaCheck("AR2200") //Ust Natha
			AreaCheck("AR2201") //Ust Natha Temple
			AreaCheck("AR2202") //Ust Natha Inn
			AreaCheck("AR2203") //Ust Natha Inn 2nd Floor
			AreaCheck("AR2204") //Ust Natha House
			AreaCheck("AR2205") //Ust Natha House
			AreaCheck("AR2206") //Qilue's House
			AreaCheck("AR2207") //Deirex's Tower
			AreaCheck("AR2208") //Jarlaxle's House
			AreaCheck("AR2209") //Jae'llat's House
			AreaCheck("AR2210") //Deirex's Cave
			AreaCheck("AR2300") //Sahuagin City
			AreaCheck("AR2400") //Mind Flayers Underdark
			AreaCheck("AR2401") //Underdark Cave
			AreaCheck("AR2402") //Kuo Toa Underdark
			AreaCheck("AR2900") //The Abyss
			AreaCheck("AR2901") //Abyss Fear
			AreaCheck("AR2902") //Abyss Pride
			AreaCheck("AR2903") //Abyss Greed
			AreaCheck("AR2904") //Abyss Selfish
			AreaCheck("AR2905") //Abyss Sarevok
			AreaCheck("AR2906") //Maybe Jon Battle~ + @262 /*How exactly do you plan to reach Athkatla anyway?*/  + _bDornP3

CHAIN DORNP _bDornPlayhouse2 
@259 /*I will be at the Five Flagons. Join me there, tiefling, when you realize that <CHARNAME> is a weakling who does not deserve your talents. I do not expect that to take long.*/
END
	++ @260 /*You're so dramatic. Just wait here for five minutes, will you?*/ + _bDornP1
	++ @261 /*Go where you want.*/ + _bDornP2
	+ ~OR(46) AreaCheck("AR0410") // Sphere: Navigator's Room
			AreaCheck("AR0411") // Sphere Entrance
			AreaCheck("AR0412") //Sphere Ice & Fire
			AreaCheck("AR0413") //Sphere Engine Room
			AreaCheck("AR0414") //Sphere Demon Plane
			AreaCheck("AR1512") //Bodhi's Hunt Level 1
			AreaCheck("AR1513") //Bodhi's Hunt Level 2
			AreaCheck("AR1514") //Bodhi's Hunt Level 3
			AreaCheck("AR1515") //Spellhold Irenicus Quarters
			AreaCheck("AR1516") //Spellhold Soultheft Lvl
			AreaCheck("AR1501") //Cave (Spellhold Test)
			AreaCheck("AR1502") //Spellhold Fire Room
			AreaCheck("AR1503") //Spellhold Spore Room
			AreaCheck("AR1504") //Spellhold Crushing Trap
			AreaCheck("AR1505") //Spellhold Level Room
			AreaCheck("AR1506") //Spellhold Troll Cave
			AreaCheck("AR1507") //Spellhold Kobolds
			AreaCheck("AR1508") //Spellhold Final Judgment
			AreaCheck("AR1509") //Spellhold Myconids
			AreaCheck("AR1510") //Spellhold Sahuagin
			AreaCheck("AR1511") //Spellhold Elven Table
			AreaCheck("AR2100") //Underdark
			AreaCheck("AR2101") //Beholder Cave
			AreaCheck("AR2102") //Adalon's Cave
			AreaCheck("AR2200") //Ust Natha
			AreaCheck("AR2201") //Ust Natha Temple
			AreaCheck("AR2202") //Ust Natha Inn
			AreaCheck("AR2203") //Ust Natha Inn 2nd Floor
			AreaCheck("AR2204") //Ust Natha House
			AreaCheck("AR2205") //Ust Natha House
			AreaCheck("AR2206") //Qilue's House
			AreaCheck("AR2207") //Deirex's Tower
			AreaCheck("AR2208") //Jarlaxle's House
			AreaCheck("AR2209") //Jae'llat's House
			AreaCheck("AR2210") //Deirex's Cave
			AreaCheck("AR2300") //Sahuagin City
			AreaCheck("AR2400") //Mind Flayers Underdark
			AreaCheck("AR2401") //Underdark Cave
			AreaCheck("AR2402") //Kuo Toa Underdark
			AreaCheck("AR2900") //The Abyss
			AreaCheck("AR2901") //Abyss Fear
			AreaCheck("AR2902") //Abyss Pride
			AreaCheck("AR2903") //Abyss Greed
			AreaCheck("AR2904") //Abyss Selfish
			AreaCheck("AR2905") //Abyss Sarevok
			AreaCheck("AR2906") //Maybe Jon Battle~ + @262 /*How exactly do you plan to reach Athkatla anyway?*/  + _bDornP3
			
CHAIN DORNP _bDornP1
@263 /*You test my patience, <CHARNAME>. But I'll do as you ask this time.*/
DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT)~
EXIT

APPEND DORNP IF ~~ THEN _bDornP2
	SAY @264 /*As if you could stop me.*/
	IF ~!Global("PLAYHOUSE","GLOBAL",1)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0510",1395,294,S)~ EXIT
	IF ~Global("PLAYHOUSE","GLOBAL",1)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0523",1395,294,S)~ EXIT
	END
END

CHAIN DORNP _bDornP3
@265 /*I'm Dorn Il'Khan. I'll find a way.*/
END
	++ @260 /*You're so dramatic. Just wait here for five minutes, will you?*/ + _bDornP1
	++ @261 /*Go where you want.*/ + _bDornP2

//If Dorn is refusing to talk because of rep
INTERJECT DORNP 6 _bDornGives /*If you think I've any interest in associating with a group of weak-willed, pandering fools, you are mistaken. Get out of my sight.*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bDornGives","GLOBAL",0)~ THEN @266 /*Even me, my Dark-Edge? Such words would cut this sparrow to the bone.*/
	== DORNP @267 /*Bah! You are not such a weakling that my insults could damage you. My words were meant for <CHARNAME>, of course. Are you still determined to travel with this mewling simpleton?*/
	== HAERDAJ @268 /*What can I say? This bard loves the adventure, the magic, and the moments of grand discovery. But I would prefer to share them. Will you not give <CHARNAME> at least the chance to speak?*/
	== DORNP @269 /**sigh* Someday your silver tongue will be the death of me. Fine then.*/
	= @270 /*What do you want, <PRO_RACE>?*/
COPY_TRANS DORNP 7 

EXTEND_BOTTOM DORNP 6 /*If you think I've any interest in associating with a group of weak-willed, pandering fools, you are mistaken. Get out of my sight.*/
IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bDornGives","GLOBAL",1)~ THEN EXTERN HAERDAJ _bDornGives2
END 

CHAIN HAERDAJ _bDornGives2
@271 /*You never change, my blackguard, and I very much appreciate your grim ferocity. But will you not listen to <CHARNAME>? You know this sparrow will reward you handsomely.*/
== DORNP @272 /*...*/
= @270 /*What do you want, <PRO_RACE>?*/
COPY_TRANS DORNP 7


//Dorn refusing to join if rep too high
EXTEND_BOTTOM DORNP 10 /*I bet you would. But I'll not preen and prance for the applause of strangers. Begone, <CHARNAME>. Come back when you're ready for the hard, dirty work of conquest.*/
IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN EXTERN HAERDAJ _bDornGives3
END

CHAIN HAERDAJ _bDornGives3
@273 /*Ah, but it is not <CHARNAME> alone who misses your presence, my grim vulture. Will you not fly with this sparrow one more time?*/
= @274 /*Our raven seeks out blood enough to sate even your lust for battle and I would be pleased to sate your lust for other things as well. You need not do the preening and I shall prance for you alone.*/
== DORNP @275 /*You make a convincing argument... <CHARNAME>, I will travel with you once again.*/
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

//Dorn joins HD (if he ever actually attacks)
CHAIN IF WEIGHT #-2 ~Global("_bDornJoinsHD","GLOBAL",1)~ THEN DORNJ _bDornHDFightCN
@276 /*Yes, I have waited for this moment! Draw your weapon, <CHARNAME> and face the might of Dorn Il'Khan!*/
DO ~SetGlobal("_bDornJoinsHD","GLOBAL",2) ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",2) ChangeAIScript("useitem",GENERAL) Enemy()~
EXIT

//HD joins Dorn
CHAIN IF WEIGHT #-2 ~Global("_bHDJoinsDorn","GLOBAL",1)~ THEN HAERDAJ _bHDDornFightCN
@277 /*Ah, has that moment come, my vulture, when your rage overwhelms you and either you or <CHARNAME> must be the one to burn?*/
= @278 /*This sparrow hoped to steer those flames to other passions, but I will not let you burn alone.*/
DO ~SetGlobal("_bHDJoinsDorn","GLOBAL",2) ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",2) ChangeAIScript("useitem",GENERAL) Enemy()~
EXIT



//Start of TOB Talk Versions
//First Dorn HD Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",2)~ THEN DORN25J _bDornHD1
@1 /*Ah! This endless walking makes me restless.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",3)~
== HAERD25J @2 /*Perhaps a song for your entertainment? This sparrow has traveled much and music makes the long miles pass more quickly beneath our feet.*/
= @3 /*Shall I sing of ancient battles and heroes fighting to their doom? You may not have the knowledge to appreciate my talent, but I promise I have tales of blood that would enrapture even you.*/
== DORN25J @4 /*I've an idea. You and I will spar. To the victor, the glory!*/
== HAERD25J @5 /*Is that always your first answer? There are other ways to cure your boredom, ones that involve less bruising on my skin.*/
== DORN25J @6 /*Hah! Do you fear the might of the great Dorn Il-Khan?*/
== HAERD25J @7 /*This sparrow has faced much worse than you, blackguard. I have traveled across the planes themselves, seen the face of evil as I danced across strange suns. You are arrogant to think I fear one such as you.*/
== DORN25J @8 /*Your words are empty, tiefling. A true warrior lives for battle and is always ready to back up their boasts with steel.*/
== HAERD25J @9 /**sigh* Fine. Next time our raven calls a rest, I will spar with you.*/
== DORN25J @10 /*No weapons, no armor, no magic. A true match of prowess.*/
== HAERD25J @11 /*As you wish. Perhaps you will learn a few tricks at this sparrow's hands.*/
== DORN25J @12 /*We shall see.*/
EXIT

//Second Talk - Sparring before rest
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",4)~ THEN DORN25J _bDornHD2
@13 /*Have you forgotten, tiefling? We will spar and you will lose to Dorn Il'Khan.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",5)~
== HAERD25J @14 /*Charming. This sparrow rather hoped that your boredom had been sated. Yet if you are determined for our fists to cross, then cross they shall.*/
= @1400 /*Later, once we're rested, we will fight as you demand.*/
EXIT

//After spar
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",6)~ THEN DORN25J _bDornHD2.5
@15 /*Hmm. You are more skilled in the art of battle than I'd thought.*/
= @16 /*But your form is poor, and you hold back when you should strike. You still have much to learn.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",7) SetGlobal("_bHDDORNROMANCE","GLOBAL",1)~
== HAERD25J @17 /*You have me beaten in brute force, this sparrow cannot argue. Yet that doesn't make me helpless. I am meant to flit beneath defenses, not crash through the front door.*/
= @18 /*A bard has other tricks and you leave yourself wide open. I believe this belongs to you?*/
== DORN25J @19 /*That... That is my coin pouch. When did you...?*/
= @20 /*Hah! Perhaps you are not completely useless after all.*/
== HAERD25J @21 /*From you, my blackguard, I shall take that as a compliment.*/
== DORN25J @22 /*So you should. It takes a formidable warrior to come close to matching me.*/
= @23 /*You are an attractive man, Haer'Dalis.*/
== HAERD25J @24 /*And you need to work on your segues. There is a rhythm to such things. But I cannot fault your vision and this sparrow will admit, you have a certain rough allure. If one likes that kind of thing.*/
== DORN25J @25 /*Next time, perhaps the sparring will be more intimate.*/
== HAERD25J @26 /*Perhaps.*/
END
	+ ~Global("DornRomanceActive","GLOBAL",3)~ + @27 /*Seriously, Dorn? Do you hit on all your sparring partners?*/ + _bDornCNComplains
	++ @28 /*Hey, no fair. I saw Haer'Dalis first.*/ EXTERN HAERD25J _bDornCNJealous
	++ @29 /*No. Nope. Not happening. Whatever this is, do it far away from me.*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @30 /*Hmm. This should be interesting.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @31 /*Wait... Haer'Dalis, you like men?*/ EXTERN HAERD25J _bDornCNConfused
	+ ~Global("RomanceConflict","GLOBAL",1) Global("DecideLove","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",3)~ + @3000 /*Haer'Dalis, what are you doing? You claimed that you loved Aerie. I gave her up for you!*/ EXTERN HAERD25J _bCNWorriedAerie
	+ ~OR(2) Global("HaerDalisRomanceActive","GLOBAL",1) Global("HaerDalisRomanceActive","GLOBAL",2)~ + @3001 /*This isn't right, Haer'Dalis. Aren't you with Aerie?*/ EXTERN HAERD25J _bCNWorriedAerie
	++ @32 /**say nothing**/ DO ~Wait(1) RestParty()~ EXIT
	
CHAIN DORN25J _bDornCNComplains
@33 /*Are you jealous, <CHARNAME>?*/
END
	++ @34 /*As if. I just don't want to hear you repeating all those tired lines again. Have your fling away from me.*/ DO ~SetGlobal("_bDornHDLove","GLOBAL",500) SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @35 /*It was simply an observation. Carry on.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @36 /*And if I am?*/ + _bDornScoffs
	
CHAIN DORN25J _bDornScoffs
@37 /*You spurned Dorn Il-Khan. You do not get a second chance.*/
END
	++ @38 /*Fine then, have your fling. Just don't come crying to me when it all goes down in flames.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @39 /*Maybe, but I'm still the leader of this group. No fraternizing allowed!*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @40 /*Whatever. Do what you want.*/ + _bDornDoesWhatHeWants

CHAIN DORN25J _bDornDoesWhatHeWants
@41 /*You could not stop me if you tried.*/
DO ~Wait(1) RestParty()~ 
 EXIT

CHAIN HAERD25J _bDornCNJealous
@42 /*This sparrow finds you intriguing, my raven, but our blackguard seems the jealous type and I wish to find out just where that passion leads. If you wanted me, <CHARNAME>, you should have made your interest known.*/
END
	++ @43 /*I did! I've been flirting constantly.*/ + _bCNFlirtsBad
	++ @44 /*Fine, go be with Dorn instead.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @45 /*I suppose you're right. But when you get bored of Dorn, you know where to find me.*/ EXTERN DORN25J _bDornLaughs
	++ @46 /*Fair enough. Enjoy.*/ + _bDornHDEnjoy
	++ @39 /*Maybe, but I'm still the leader of this group. No fraternizing allowed!*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	
CHAIN HAERD25J _bCNFlirtsBad
@47 /*Oh... That was flirting. You need more practice, <CHARNAME>. Perhaps this sparrow could give you pointers when I have the time.*/
== DORN25J @48 /*As long as our fearless leader doesn't think about touching what is mine.*/
END
	++ @49 /*Whatever. If you want to flirt, do it far away from me.*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @50 /*Don't worry, Dorn. I wouldn't dare.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @51 /*I'll probably take you up on that, Haer'Dalis. I clearly need the help.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @52 /*All right. All right. Do whatever you want.*/ + _bDornHDEnjoy
	
CHAIN HAERD25J _bDornHDEnjoy
@53 /*Don't worry. This sparrow surely will.*/
 DO ~Wait(1) RestParty()~ 
 EXIT

CHAIN DORN25J _bDornLaughs
@54 /*Hah! That will never happen. You may be our leader, but do not think about touching what is mine.*/
 DO ~Wait(1) RestParty()~ 
 EXIT

CHAIN HAERD25J _bDornCNConfused
@55 /*Of course. Did you truly think this sparrow would allow something as immaterial as gender to stop me from enjoying all the pleasures of the planes?*/
END
	++ @56 /*Fair enough. Enjoy.*/ + _bDornHDEnjoy
	+ ~Gender(Player1,MALE)~ + @57 /*But then why didn't you respond to all my flirting?*/ + _bCNFlirtsBad
	++ @58 /*Yeah, but Dorn? Really? Are you sure you don't want me instead?*/ +  _bDornCNJealous
	++ @39 /*Maybe, but I'm still the leader of this group. No fraternizing allowed!*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	+ ~Global("RomanceConflict","GLOBAL",1) Global("DecideLove","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",3)~ + @3002 /*Maybe not, but you claimed that you loved Aerie. I gave her up for you!*/ + _bCNWorriedAerie
	+ ~OR(2) Global("HaerDalisRomanceActive","GLOBAL",1) Global("HaerDalisRomanceActive","GLOBAL",2)~ + @3003 /*This isn't right. Aren't you with Aerie?*/ + _bCNWorriedAerie
	
CHAIN HAERD25J _bCNWorriedAerie
@3004 /*This bard has not forgotten she who sings so sweetly. My dove has my heart, my soul, my music and I do not wish them back. This is merely conversation. A bit of wordplay and flirtation to make the hours pass.*/
END
	++ @3005 /*No, I won't allow it. This ends now.*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @3006 /*I suppose I cannot stop you. But I don't want Aerie to get hurt.*/ + _bCNHDPromises
	++ @3007 /*Are you sure? It seems like more.*/ + _bCNHDPromises
	
CHAIN HAERD25J _bCNHDPromises
@3008 /*There is no need to worry. This sparrow may fly far and wide but love shall bring these weary wings back home to roost again.*/
== AERIE25J IF ~IfValidForPartyDialog("Aerie")~ THEN @3009 /*It's all right, <CHARNAME>. I- I trust Haer'Dalis.*/
== DORN25J IF ~IfValidForPartyDialog("Aerie")~ THEN @3010 /*Bah. The elf is a fool and the tiefling is lying to himself if not to you.*/
== DORN25J @3011 /*Such pretty words mean nothing. We shall see who is triumphant in the end.*/
END
	++ @3005 /*No, I won't allow it. This ends now.*/ DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3) Wait(1) RestParty()~ EXIT
	++ @3012 /*I have a bad feeling about this but I will not interfere.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @30 /*Hmm. This should be interesting.*/ DO ~Wait(1) RestParty()~ EXIT
	++ @32 /**say nothing**/ DO ~Wait(1) RestParty()~ EXIT


//3rd Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",9)~ THEN DORN25J _bDornHD3
@59 /*You feel it as strongly as I, do you not?*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",10)~
== HAERD25J @60 /*This sparrow feels many things. You must be more specific. A clever mind should always have a clever way with words.*/
== DORN25J @61 /*You use words as a smokescreen but I can see the hunger in your eyes.*/
= @62 /*I can wait no longer. I would have you as mine, tiefling.*/
== HAERD25J @63 /**laughs* Your arrogance is showing, my grim vulture. You are not without your charms, but I have many offers. Why should this sparrow nest with you instead of flying free?*/
== DORN25J @64 /*I will give you pleasure as none have before.*/
== HAERD25J @65 /*You have no idea of the pleasures I have tasted. Such sweetness and such passion; your best efforts would be no more than amateur theatrics in comparison.*/
== DORN25J @66 /*What? You would spurn Dorn Il-Khan?*/
== HAERD25J @67 /*This sparrow is not a puppet, dancing on your strings. If you want me in your bed, you'd do better to say please.*/
== DORN25J @68 /*You want this as much as I.*/
== HAERD25J @69 /*Do I? I am not the one down on my knees.*/
= @70 /*Try a little harder, Dark-Edge. Then I might deign to show you the pleasure that my practiced hands can bring.*/
EXIT

//4th Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",12)~ THEN DORN25J _bDornHD4
@71 /*You remind me of my father, tiefling. He was a fearsome warrior.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",13)~
== HAERD25J @72 /*Now this is an unexpected refrain. I would be most intrigued to hear about the person who could have sired such as you. A soul to make the mountains tremble and bring tears to passersby.*/
== DORN25J @73 /*I don't want to discuss my father!*/
== HAERD25J @74 /*My apologies, oh vulture. This sparrow only asked after your father because you broke that silence first. If you did not wish your heritage to join our conversation, perhaps you should have locked those words behind your lips.*/
== DORN25J @75 /*'Twas intended as a compliment.*/
== HAERD25J @76 /*Aww, do not pout so, Dark-Edge. Your skills at flattery may be rough and rusty with disuse, but I can see bright bits of mithril shining through.*/
= @77 /*You simply need to practice. Train your tongue with the same fervor that you have trained your lust for battle and soon enough your true intent shall shine through every word.*/
== DORN25J @78 /*Intentions are irrelevant. It's actions that count.*/
== HAERD25J @79 /*Perhaps you are right. This sparrow waits with bated breath to see what you shall do.*/
EXIT

//5th Talk - city or inn only
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",15)~ THEN DORN25J _bDornHD5
@279 /*"Butcher of the Sword Coast." Word of our leader's passage has reached Tethyr and <PRO_HISHER> reputation earns my respect.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",16)~
== HAERD25J @81 /*Your ears are sharp, blackguard, to hear those whispers. Does your heart beat with envy to hear that title spoken? Do you wish they spoke of you?*/
== DORN25J @82 /*Hah! Do you not hear it as we walk the streets? Do you not see the looks given us by the peasantry and nobility alike?*/
= @280 /*As far as Tethyr is concerned, we are all butchers. Continue traveling with <CHARNAME> and your infamy may someday rival my own.*/
== HAERD25J @84 /*Do you expect this sparrow to be pleased? Fame is a heady drug indeed, but that earned through love is sweeter than adulation bought with fear.*/
== DORN25J @85 /*So you claim, but I think you are a liar. Tell me, bard, when you enter into the fray, stare your enemy in the eye, and attack, what is it that you feel?*/
== HAERD25J @86 /*I... I feel as though I'm dancing to the song of blood and bone. Each step, each thrust, each fatal wound is guided by the music and the pounding rhythm lets me know that I'm alive.*/
== DORN25J @87 /*A man after my own heart.*/
= @88 /*There is more to you than meets the eye.*/
== HAERD25J @89 /*Ah, yes, well, this sparrow must have secrets. But it seems your eyes are sharper than expected. There are depths within your rage, oh Dark-Edge, and I find I am intrigued; I shall peel back those layers and see what strange treasures lie beneath.*/
== DORN25J @90 /*Careful. I'd hate to disappoint you.*/
== HAERD25J @91 /*I do not think that possible. You are a creature of extremes, my friend, and like a moth to candlelight, this sparrow's soul yearns to feel that fire's touch. Perhaps to burn, perhaps to die, but better to chase the sun and fall then to live a long cold life with naught but dirt beneath my feet.*/
EXIT


//Aerie-Dorn Conflict
CHAIN IF WEIGHT #-1 ~Global("_bAerieDornConflict","GLOBAL",2)~ THEN DORN25J _bDornAerieFight
@92 /*You would challenge me, elf?*/
DO ~SetGlobal("_bAerieDornConflict","GLOBAL",3)~
== AERIE25J @93 /*I—I don't know what you mean.*/
== DORN25J IF ~!Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @94 /*You desire Haer'Dalis. But he will be mine.*/
== DORN25J IF ~Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @95 /*You desire Haer'Dalis. But he is mine.*/
== AERIE25J IF ~OR(2) Global("HaerdalisRomanceActive","GLOBAL",1) Global("HaerdalisRomanceActive","GLOBAL",2)~ THEN @96 /*Y-You are delusional. Haer'Dalis loves me and he would n-never leave me for a monster like you!*/
== AERIE25J IF ~!Global("HaerdalisRomanceActive","GLOBAL",1) !Global("HaerdalisRomanceActive","GLOBAL",2)~ THEN @97 /*Haer'Dalis would n-never want a monster like you!*/
== DORN25J @98 /*Hah! I may be a monster, but you are a gnat. Get in my way and I will squash you.*/
== AERIE25J @99 /*You just try!*/
== HAERD25J @100 /*Ah, my friends, there is no need to fight over this poor sparrow's heart. I am sorry that my fickle soul has led you both astray*/
= @101 /*A master bard may sing a song to sway the minds of thousands, but for this small audience, words fail upon my tongue. They twist away beneath my grasp when I attempt to choose.*/
END
	+ ~Global("RomanceConflict","GLOBAL",1) Global("DecideLove","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",3)~ + @102 /*Choose Aerie. I didn't stand aside so that you could break her heart.*/ EXTERN HAERD25J _bHDPicksAerie
	++ @103 /*Of course you should pick Aerie. She's smarter, kinder, and far more beautiful.*/ EXTERN HAERD25J _bHDPicksAerie
	++ @104 /*It's obvious that you love Aerie. Listen to your heart.*/ EXTERN HAERD25J _bHDPicksAerie
	++ @105 /*Don't lie to yourself. If you didn't want Dorn, you never would have let things get this far.*/ EXTERN HAERD25J _bHDPicksDorn
	++ @106 /*Why is this even a question? A sniveling elf or a strapping warrior? Dorn is the obvious choice.*/ EXTERN HAERD25J _bHDPicksDorn
	++ @107 /*I knew this would end in bloodshed. Time to watch the flames burn out.*/ EXTERN HAERD25J _bHDSaysFight
	++ @108 /*Let them fight. That's the best way to settle this.*/ EXTERN HAERD25J _bHDSaysFight
	
CHAIN HAERD25J _bHDPicksAerie
@109 /*You are right, <CHARNAME>. My mourning dove is the true light of this sparrow's life and I would be a fool to lose her. No passing fancy can compare.*/
DO ~SetGlobal("_bHDDORNROMANCE","GLOBAL",3)~
== DORN25J @110 /*You are no better than she. To the hells with you!*/
EXIT

CHAIN HAERD25J _bHDPicksDorn
@111 /*You are right, <CHARNAME>. You are sweet, my mourning dove, but this sparrow craves something more substantial. Dorn, my grand vulture, you are the only one for me.*/
DO ~SetGlobal("HaerdalisRomanceActive","GLOBAL",3)~
== AERIE25J @112 /*But... but I thought...*/
== DORN25J @113 /*What you thought is of no consequence. If you value your life, you will leave him to me.*/
EXIT

CHAIN HAERD25J _bHDSaysFight
@114 /*Perhaps you are right, <CHARNAME>, but the thought sits heavily upon this sparrow's mind. I would not see either of our companions injured for some foolish love of me.*/
DO ~SetGlobal("_bAerieDornFight","GLOBAL",1)~
== DORN25J @115 /*I know you, tiefling, do not lie. You had your chance to end this but if you wish us to battle for you, Dorn Il-Khan is ready to oblige.*/
= @116 /*Face me, elf. If you truly want him, take him from my cold dead hands.*/
== AERIE25J @117 /*No! I won't!*/
== DORN25J @118 /*Then you will die and Haer'Dalis will be mine.*/
== AERIE25J @119 /*I- I... Fine! If y-you're going to make me, then I'll f-fight you. But I won't be the one w-who dies!*/
EXIT
	
//If Dorn Survives
CHAIN IF WEIGHT #-5 ~Global("_bAerieDornFight","GLOBAL",2)~ THEN DORN25J _bDornWins
@120 /*Aah, a fine effort to make the blood flow. The elf was stronger than I thought, but she could not defeat the might of Dorn Il-Khan.*/
DO ~SetGlobal("_bAerieDornFight","GLOBAL",3)~
== DORN25J IF ~!Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis")~ THEN @121 /*You will be mine, Haer'Dalis. There is no one else to claim you now.*/
== DORN25J IF ~Global("_bHDDORNROMANCE","GLOBAL",2) IfValidForPartyDialog("HaerDalis")~ THEN @122 /*You are mine, Haer'Dalis. I will do the same to any other challengers.*/
== HAERD25J @123 /*Such possessiveness becomes you. Though it is a pity about our poor mourning dove.*/
EXIT

//If Aerie Survives
CHAIN IF WEIGHT #-5 ~Global("_bAerieDornFight","GLOBAL",2)~ THEN AERIE25J _bAerieWins
@124 /*I didn't want to do that. Why did you m-make me do that?*/
DO ~SetGlobal("_bAerieDornFight","GLOBAL",3) JoinParty()~
== HAERD25J @125 /*There are no words beyond, "I'm sorry." I never meant to cause you pain.*/
= @126 /*Let us go my mourning dove and speak no more of this.*/
EXIT


//6th Talk, Always pre or post conflict
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",18)~ THEN DORN25J _bDornHD6
@127 /*You intrigue me. I've waited a long time to find one such as you.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",19)~
== HAERD25J @128 /*And does this sparrow measure up to your misty summer dreams? Or is my plumage pale and faded in comparison? Tell me, my grand vulture, shall you break this poor fool's heart?*/
== DORN25J @129 /*Why can't you just speak plainly? I admire you, I've made no secret of it. But you hide behind your fancy words and silly nicknames. I am Dorn Il-Khan, is that not enough?*/
== HAERD25J @130 /*Play a part for long enough and the act becomes reality. Who is to say which is the true Haer'Dalis?*/
= @131 /*Yet if you must have plain words to guide you, then my plain words are these: you are Dorn Il-Khan and that is quite enough for me.*/
== DORN25J @132 /*So you would proceed down this path?*/
== HAERD25J @133 /*Why wouldn't I? You are a bloodthirsty warrior, one whose path has carved a river of death across the realms and this sparrow is the bard to sing your deeds. Not only sing but revel, the darker parts of your own soul calling out to me.*/
= @134 /*You have me, Dark-Edge... you need only take what's yours.*/
== DORN25J @135 /*This is no laughing matter.*/
== HAERD25J @136 /*Good, because I was quite serious. My words may dance around you, but I mean the sentiment. You have won me over and this sparrow would like to know how you intend to claim your prize.*/
= @137 /*The nicknames, though, my vulture, are a trait that you must live with. Their source is pure affection; I mean no disrespect, but you shall learn to treasure your true name upon my lips.*/
== DORN25J @138 /*And you shall learn to scream it out in ecstasy.*/
== HAERD25J @139 /*Perhaps. I look forward to your efforts next time our party stops to rest. Though I should warn you that this sparrow has high standards for those who share my bed.*/
== DORN25J @140 /*Good. I enjoy a challenge.*/
EXIT
	
//Pre Sex Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",20)~ THEN DORN25J _bDornHD7
@141 /*Tiefling, it is time.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",21)~
== HAERD25J @142 /*Indeed, my grim grand vulture. Show this bard what you can do.*/
DO ~Wait(1) RestParty()~
EXIT

//Post Sex Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",22)~ THEN HAERD25J _bDornHD7.5
@143 /*Mmm, this sparrow has flown high indeed beneath your practiced hands.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",23) SetGlobal("_bHDDORNROMANCE","GLOBAL",2) ApplySpellRES("_bREP","Dorn") ApplySpellRES("_bREP","HaerDalis")~ //Stop from leaving from rep
== DORN25J @144 /*I said I would bring you pleasure as no one had before.*/
== HAERD25J @145 /*So you did. But it was such sweet surrender. And I was not the only one, was I, Dorn Il-Khan?*/
== DORN25J @146 /*Hah! Of course, not. I would not choose a lover who could not match my skill. You are a fine catch, Haer'Dalis.*/
== HAERD25J @147 /*And you are a fine hunter. Though someday I shall show you the joys of being prey.*/
== DORN25J @148 /*I don't bend, for you or anyone.*/
= @149 /*The weak break. The strong stand triumphant over all that would see them broken—or bent.*/
== HAERD25J @150 /*You have much to learn, my vulture, about the art of compromise. There is strength in give and take, value in acquiescence. Sometimes the risk is greater but so too are the rewards.*/
= @151 /*Your own darkness calls to me like the drowning sea of stars. Your soul sings arias of violence and the thrill of battle, but this bard has learned to his chagrin that steel cannot defeat all foes.*/
= @152 /*There are times when words cut deepest, times when combat will not save you, and I would not like to lose you to the rage within your heart.*/
= @153 /*Let me teach you other dances with which to take the realms by storm.*/
== DORN25J @154 /*Perhaps you will yet.*/
= @155 /*We shall see.*/
EXIT

//Talks once romance active 
//If HD is fatigued
CHAIN IF WEIGHT #-1 ~Global("_bDHDTiredTalk","GLOBAL",1)~ THEN DORN25J _bDornConcerned
@156 /*How fare you, Haer'Dalis?*/
DO ~SetGlobal("_bDHDTiredTalk","GLOBAL",2)~
== HAERD25J @157 /*You need not worry about me, my grim vulture. This sparrow is still strong enough to keep up with your dark wings.*/
== DORN25J @158 /*Do not lie to me, tiefling. If I did not care, I wouldn't ask. I am not going to throw you over at the first sign of weakness.*/
== HAERD25J @159 /*Your words warm this sparrow's heart. Yet I know your lust for power; can you fault my wariness?*/
== DORN25J @160 /*Perhaps not. Neither of us are the type to trust that easily. But it benefits us both to have you in fighting form.*/
= @161 /*So tell me the truth, do you need to rest?*/
== HAERD25J @162 /*Nay. Just keep this sparrow from collapsing. Those strong arms of yours should have no trouble catching me.*/
== DORN25J @163 /*Very well. I shall be ready.*/
EXIT

//Heritage Talk
CHAIN IF WEIGHT #-1 ~Global("_bDornHDLove","GLOBAL",25)~ THEN DORN25J _bDornHeritage
@164 /*You and I are similar in more ways than one, tiefling.*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",26)~
== HAERD25J @165 /*Indeed, we both have excellent taste in men.*/
== DORN25J @166 /*Apart from that.*/
= @167 /*We are both outcasts. Labeled and cast aside by the world, the victims of our heritage. Our upbringings were different, but at our core we are both strangers to the world around us.*/
== HAERD25J @168 /*Perhaps we are. This sparrow's blood draws stares and hatred as much as that which flows within your veins... foul words and curses matched with violence across the many planes.*/
= @169 /*I have spent a lifetime running from my past and parentage. It has been an adventure to be sure, but not one without its dangers. You have seen the scars I bear.*/
== DORN25J @170 /*I would murder all who hurt you if I could.*/
== HAERD25J @171 /*And I would save the bright-eyed children we once were. But the world is cruel as well as beautiful and those spirits are forgotten.*/
= @172 /*Yet it may be for the best. Without that pain, we would not have found each other and I do not regret the man I am today.*/
== DORN25J @173 /*Fate has brought us together for a reason. Our destiny is writ large in the stars. One day, all will cower before us and neither of us will ever fear again.*/
== HAERD25J @174 /*Sometimes you have a magnificent way with words.*/
== DORN25J @175 /*Yes. I do.*/
EXIT

//Combat Talk - HD Injured
CHAIN IF WEIGHT #-1 ~Global("_bHDHurt","GLOBAL",1)~ THEN DORN25J _bDornWorried
@176 /*Put your guard up, tiefling! I do not have time to save your skin!*/
DO ~SetGlobal("_bHDHurt","GLOBAL",2)~
== HAERD25J @177 /*A momentary lapse. Nothing more.*/
= @178 /*You are quite... distracting in battle. A force for entropy such as I have rarely seen.*/
== DORN25J @179 /*Do not attempt to distract me with flattery.*/
== HAERD25J @180 /*It is not flattery when this sparrow speaks the truth.*/
= @181 /*But my thoughts are together now. I do not need rescuing.*/
== DORN25J @182 /*Good. I expect nothing less.*/
= @183 /*And if you find me that distracting, perhaps I should take you in hand once this battle ends. I will not have your mind unfocused during combat.*/
= @184 /*You'll like it, I assure you.*/
== HAERD25J @185 /*Oh yes, I believe I surely will.*/
EXIT

//Combat Talk - Dorn Injured
CHAIN IF WEIGHT #-1 ~Global("_bDornHurt","GLOBAL",1)~ THEN HAERD25J _bHDWorried
@186 /*Are you in need of aid, my vulture? You are bleeding heavily.*/
DO ~SetGlobal("_bDornHurt","GLOBAL",2)~
== DORN25J @187 /*I am fine. No one will take down Dorn Il'Khan!*/
== HAERD25J @188 /*This sparrow was not claiming otherwise. But as much as I enjoy the feeling of your scars beneath my hands, I prefer your heart still beating in your chest.*/
= @189 /*Don't chase the thrill of combat with such passion that you forget to watch your footing. One must be alive to triumph after all.*/
== DORN25J @190 /*Perhaps you have a point.*/
== HAERD25J @191 /*This bard is glad to hear it. So you will not argue when I say to drink these potions. I would not have you collapse before the fight is done.*/
DO ~ApplySpell("Dorn",CLERIC_HEAL)~
= @192 /*Indeed, I wish you ready when this conflict is completed. Your flame is all the hotter when there is blood upon your skin and this sparrow will want to burn after a battle such as this.*/
== DORN25J @193 /*I could not agree more.*/
EXIT	


//Dorn P File Edits

//When Dorn leaves forever due to being angry
INTERJECT_COPY_TRANS2 DORN25P 4 _bDornTantrum /*We're finished, <CHARNAME>.*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @256 /*Such harsh words, my Dark-Edge, and ones that slice this sparrow's heart. Do you truly wish to forget the way that we might soar together? Will this dance between us end on broken strings?*/
	== DORN25P IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @257 /*Don't be foolish. You belong with Dorn Il'Khan. <CHARNAME> alone has earned my ire and when you have finished with this spineless weakling, I expect you to seek me out.*/
END

INTERJECT_COPY_TRANS2 DORN25P 2 _bDornTantrum2 /*Your charity and heroism—your vanity—makes you weak. I'll not let you drag me down with you. We're done.*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @256 /*Such harsh words, my Dark-Edge, and ones that slice this sparrow's heart. Do you truly wish to forget the way that we might soar together? Will this dance between us end on broken strings?*/
	== DORN25P IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",1)~ THEN @257 /*Don't be foolish. You belong with Dorn Il'Khan. <CHARNAME> alone has earned my ire and when you have finished with this spineless weakling, I expect you to seek me out.*/
END


//If Dorn is refusing to talk because of rep
INTERJECT DORN25P 6 _bDornGives /*If you think I've any interest in associating with a group of weak-willed, pandering fools, you are mistaken. Get out of my sight.*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bDornGives","GLOBAL",0)~ THEN @266 /*Even me, my Dark-Edge? Such words would cut this sparrow to the bone.*/
	== DORN25P @267 /*Bah! You are not such a weakling that my insults could damage you. My words were meant for <CHARNAME>, of course. Are you still determined to travel with this mewling simpleton?*/
	== HAERD25J @268 /*What can I say? This bard loves the adventure, the magic, and the moments of grand discovery. But I would prefer to share them. Will you not give <CHARNAME> at least the chance to speak?*/
	== DORN25P @269 /**sigh* Someday your silver tongue will be the death of me. Fine then.*/
	= @281 /*Well, <CHARNAME>? Have you come to your senses yet?*/
COPY_TRANS DORN25P 7 


EXTEND_BOTTOM DORN25P 6 /*If you think I've any interest in associating with a group of weak-willed, pandering fools, you are mistaken. Get out of my sight.*/
IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bDornGives","GLOBAL",1)~ THEN EXTERN HAERD25J _bDornGives2
END 

CHAIN HAERD25J _bDornGives2
@271 /*You never change, my blackguard, and I very much appreciate your grim ferocity. But will you not listen to <CHARNAME>? You know this sparrow will reward you handsomely.*/
== DORN25P @272 /*...*/
	= @281 /*Well, <CHARNAME>? Have you come to your senses yet?*/
COPY_TRANS DORN25P 7


//Dorn joins HD (if he ever actually attacks)
CHAIN IF WEIGHT #-2 ~Global("_bDornJoinsHD","GLOBAL",1)~ THEN DORN25J _bDornHDFightCN
@282 /*Yes, I have waited for this moment! Draw your weapon, <CHARNAME>... You face the might of Haer'Dalis and Dorn Il'Khan!*/
DO ~SetGlobal("_bDornJoinsHD","GLOBAL",2) ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",2) ChangeAIScript("useitem",GENERAL) Enemy()~
EXIT

//HD joins Dorn
CHAIN IF WEIGHT #-2 ~Global("_bHDJoinsDorn","GLOBAL",1)~ THEN HAERD25J _bHDDornFightCN
@283 /*Ah, has that moment come, my vulture, when your rage overwhelms you and either you or <CHARNAME> must be the one to burn?*/
= @284 /*This sparrow hoped to steer that rage to other passions, but I will not let you fight alone.*/
DO ~SetGlobal("_bHDJoinsDorn","GLOBAL",2) ChangeAIScript("",DEFAULT) LeaveParty() SetGlobal("KickedOut","LOCALS",2) ChangeAIScript("useitem",GENERAL) Enemy()~
EXIT



//TOB Only Talks
//First Talk
CHAIN IF WEIGHT #-2 ~Global("_bDornHDLove","GLOBAL",28)~ THEN DORN25J _bDornPartnerTalk
@285 /*We are partners, are we not?*/
DO ~SetGlobal("_bDornHDLove","GLOBAL",29)~
== HAERD25J @286 /*That is a weak and flimsy word for all we are together. Lovers would be better, unless you still doubt this sparrow's heart.*/
== DORN25J @287 /*No. You have never given me a cause to doubt your passions. And more importantly, you have not betrayed my trust.*/
== HAERD25J @288 /*The feeling is mutual, my grand vulture. We are both guarded in our way, quick to fight or quick to laugh, deflections just the same. But I know you won't betray me. This may end in fire, in sorrow or disaster, but you would never so dishonor me as to stab me in the back.*/
= @289 /*If our hearts should ever change, this sparrow is certain you will tell me to my face. For you, my dear blackguard, know no other way. Lovers we are and lovers we shall be until that day.*/
== DORN25J @290 /*I would be more than your lover, Haer'Dalis. I would be your sworn companion, the one who shares your hardships and your glory across the realms.*/
= @291 /*Will you grant me this boon?*/
== HAERD25J @292 /*You ask for something that you already possess. This bard would have no other, Dorn. This bard NEEDS no other as long as I am yours.*/
== DORN25J @293 /*And Dorn Il'Khan protects what is mine. We WILL make our mark upon the realms. I promise you that.*/
EXIT

//Saradush Talk
CHAIN IF WEIGHT #-2 ~Global("_bDornHDSaradush","GLOBAL",1)~ THEN DORN25J _bDornFutureTalk
@294 /*Invincible Yaga-Shura dead, a city burning, and our party well on our way to victory. This is no contest; it is a slaughter. Our enemies fall before us.*/
DO ~SetGlobal("_bDornHDSaradush","GLOBAL",2)~
= @295 /*This is a glorious <DAYNIGHTALL>.*/
== HAERD25J @296 /*The people of Saradush might argue that turn of phrase, my vulture.*/
== DORN25J @297 /*Those people were weak and their lives are of no consequence. You should not worry about their failings. Think instead upon our triumphs and how far we have come.*/
= @298 /*We who were once fugitives are now major players in this game of divine might. This is our destiny, HaerDalis. I have never been more sure of it.*/
== HAERD25J @299 /*<CHARNAME> commands the stage while we are merely chorus. This Bhaalspawn war is unlikely to be our path to fame and fortune, and yet your words have merit nonetheless.*/
= @300 /*Any Doomguard worth the name must revel in this struggle. For such a song of entropy has never rung across the planes. The melody is written now, our path set to crescendo, and I dance to that rhythm gladly with my grim vulture at my side.*/
== DORN25J @301 /*The others are not awake yet... let us TRULY celebrate this great victory.*/
== HAERD25J @302 /*Sometimes you have the best ideas.*/
== DORN25J @303 /*I'm just getting started.*/
EXIT

//Post fade continuation
CHAIN IF WEIGHT #-2 ~Global("_bDornHDSaradush","GLOBAL",4)~ THEN DORN25J _bDornFutureTalk2
@304 /*Now that you have screamed your pleasure, we may speak of other things.*/
DO ~SetGlobal("_bDornHDSaradush","GLOBAL",5)~
== HAERD25J @305 /*You must give this bard a moment to recover. Though I admit I'm curious.*/
= @306 /*You are not one much for talking, Dark-Edge. What could you wish to speak of that we have not touched before?*/
== DORN25J @307 /*What the future holds—for us.*/
= @308 /*Once the Bhaalspawn are defeated, <CHARNAME> will have no need for us. We will be free to do whatever we desire.*/
== HAERD25J @309 /*And what do you wish for, my grand vulture?*/
== DORN25J @310 /*I've not decided yet.*/
= @311 /*But I know that I want you at my side.*/
== HAERD25J @312 /*Then perhaps this sparrow may offer a suggestion. For I want you as well, my lover... you who are entropy given form. I want you more than breath or life itself*/
= @313 /*So when <CHARNAME>'s sonata has finally reached its ending, let me show you all the wonders I have seen across the planes. Join me in my travels until death is baying at our heels and the stars themselves go out.*/
== DORN25J @314 /*Yes.... Swear this will be so.*/
== HAERD25J @315 /*You and me together, Dorn, together until the end. I swear upon the Weave, the very source of magic, and this sparrow always keeps his promises.*/
== DORN25J @316 /*See that you do.*/
EXIT

//Final Talk before end fight
CHAIN IF WEIGHT #-2 ~Global("_bDornHDFinal","GLOBAL",2)~ THEN DORN25J _bDornFinalTalk
@317 /*The time is almost upon us. We will face Amelyssan and triumph and then we shall be free to travel through the realms.*/
DO ~SetGlobal("_bDornHDFinal","GLOBAL",3)~
= @318 /*How do you feel?*/
== HAERD25J @319 /*This sparrow feels many things, my Dark-Edge: a little breathless, a little hungry, and a little terrified. You cannot soothe the fear, not when this may be our ending. But perhaps a quick meal would not go amiss.*/
== DORN25J @320 /*Your levity is misplaced. As is your fear. I will not allow you to be hurt as long as I still breathe.*/
= @321 /*We will triumph. Believe that and remember what you have promised me.*/
== HAERD25J @322 /*How can this bard forget? Traveling the realms together has become my greatest dream.*/
= @323 /*I have so much to show you, my grand vulture: ancient forests built of music and the hills of dappled light, the fighting pits of champions and the winding streets of Sigil, the nexus of a thousand worlds lying at our fingertips.*/
== DORN25J @324 /*Then let us seal our vow.*/
= @325 /*Haer'Dalis, son of Sigil, will you bleed for love of me?*/
== HAERD25J @326 /*Yes, I will.*/
== DORN25J @327 /*There. Now say the words.*/
== HAERD25J @328 /*Dorn of clan Il-Khan. Scourge of the Sword Coast. Will you bleed for love of me?*/
== DORN25J @329 /*I will.*/
= @330 /*Now clasp my hand in yours.*/
= @331 /*Hear me, Amelyssan! Haer'Dalis and I are bonded, blood brothers, companions, and lovers!*/
= @332 /*Do you feel the ground shake beneath you? You should, for <CHARNAME> is ready and WE ARE COMING FOR YOU!*/
== HAERD25J @333 /*And I thought that I was the dramatic one. Perhaps this sparrow's silver tongue has finally rubbed off on you.*/
== DORN25J @334 /*Save such thoughts for the celebration once our enemy is dead. But she should quake before us.*/
= @335 /*Amelyssan does not know what she is facing. So come, my love. The future is ours for the taking.*/
EXIT

//Gorion Wraith Scene
//Gorion Wraith Scene - Regular Version
CHAIN IF WEIGHT #-94 ~IfValidForPartyDialog("Dorn") IfValidForPartyDialog("HaerDalis") Global("WraithPunish","GLOBAL",2) Global("_bHDDORNROMANCE","GLOBAL",2) Global("_bDornHDWraith","GLOBAL",0) OR(2) !Global("ImoenRomanceActive","GLOBAL",2) !InParty("Imoen2")~ THEN HGWRA01 _bHDWraithScene1
@336 /*I tried to turn you toward the light. I tried but I failed. You have left a trail of pain and bloodshed in your wake.*/
DO ~SetGlobal("_bDornHDWraith","GLOBAL",1) SetGlobal("OHD_wraith","GLOBAL",1)~
== DORN25J @337 /*Enough of this nonsense. You should be praising the Bhaalspawn's strength, not mourning those too stupid to get out of <PRO_HISHER> way. Move, ghost, before we destroy you too.*/
== HGWRA01 @338 /*You dare to threaten me, Dorn Il'Khan? You are no better than <CHARNAME>, your hands stained beyond all chance of being cleansed.*/
== DORN25J @339 /*Yes, I have slain many foes but I am proud of my skill in battle. I do not regret the lives my blade has claimed.*/
== HGWRA01 @340 /*We shall see, blackguard. We shall see.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("OHDWRA01")~
EXIT

//Gorion Wraith Scene - Imoen Version
CHAIN IF WEIGHT #-94 ~IfValidForPartyDialog("Dorn") IfValidForPartyDialog("HaerDalis") Global("WraithPunish","GLOBAL",2) Global("_bDornHDWraith","GLOBAL",0) Global("_bHDDORNROMANCE","GLOBAL",2) Global("ImoenRomanceActive","GLOBAL",2) InParty("Imoen2")~ THEN HGWRA01 _bHDWraithScene1
@336 /*I tried to turn you toward the light. I tried but I failed. You have left a trail of pain and bloodshed in your wake.*/
DO ~SetGlobal("_bDornHDWraith","GLOBAL",1) SetGlobal("OHD_wraith","GLOBAL",1)~
== DORN25J @337 /*Enough of this nonsense. You should be praising the Bhaalspawn's strength, not mourning those too stupid to get out of <PRO_HISHER> way. Move, ghost, before we destroy you too.*/
== HGWRA01 @338 /*You dare to threaten me, Dorn Il'Khan? You are no better than <CHARNAME>, your hands stained beyond all chance of being cleansed.*/
== DORN25J @339 /*Yes, I have slain many foes but I am proud of my skill in battle. I do not regret the lives my blade has claimed.*/
== HGWRA01 @340 /*We shall see, blackguard. We shall see.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("OHDWRA01")~
EXIT

//Interjection into Dorn wraith scene
INTERJECT OHDKRYLL 5 /*You had a choice. And you chose to kill the only person who has ever loved you.*/ _bDornWraithInterject
	== DORN25J IF ~Global("_bDornHDWraith","GLOBAL",1)~ THEN @341 /*No! I- I did not-*/
	== HAERD25J @342 /*This sparrow feels the need to interject. I have heard your story, spirit, and you have no cause for anger. It was you who broke Dorn's trust, you who threw away your lover for fear and treachery.*/
	DO ~SetGlobal("_bDornHDWraith","GLOBAL",2)~
	= @343 /*You are the one who had a choice and you chose not to warn him. Whatever followed after, you brought upon yourself.*/
	= @344 /*Indeed, I think you know that, shadow. Your tongue is sharp, but I believe your guilt is sharper. You know the treasure you gave up, the passion you betrayed.*/
	= @345 /*But Dorn is loved, despite your words, despite the past. Dorn is mine and you have no power here.*/
	== HGWRA01 @346 /*You defend the blackguard? Haer'Dalis, the liar and the cheat.... Haer'Dalis, the Doomguard, he who wears a mask of humor to hide the bleeding underneath.*/
	== HAERD25J @347 /*And will you raise my dead as well, ghost? Will you summon every soul that this sparrow has once wronged?*/
	= @348 /*You may find a legion prepared to do your bidding, but those shades will not control me. I know my greatest failures well and no wraith of past regrets will take my song from me.*/
	== HGWRA01 @349 /*You are a liar through and through. But you lie to your own self most of all.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bHDW")~
EXIT

BEGIN _bWrHD

CHAIN IF WEIGHT #-93 ~Global("_bDornHDWraith","GLOBAL",2)~ THEN _bWrHD _bHaerDalisMirrorTalk
@350 /*Greetings, shadow.*/
DO ~SetGlobal("_bDornHDWraith","GLOBAL",3) SetGlobal("OHD_wraith","GLOBAL",2)~
== HAERD25J @351 /*You think to fool my eyes with this? You are an illusion, nothing more.*/
== _bWrHD @352 /*Am I? How can you be certain when you do not feel real?*/
= @353 /*Perhaps I am the true Haer'Dalis and you are naught but my reflection, mirroring a brighter light than you could ever know.*/
== HAERD25J @354 /*Nay, this sparrow is solid flesh. I am bone and breath and body, slice me and I bleed.*/
== _bWrHD @355 /*Does a puppet know that it has strings? Does a shadow know its caster?*/
= @356 /*You are an actor, Haer'Dalis, who has forgotten what lies beneath the role you're playing. You have carved away your essence to become whatever the world wished you to be.*/
= @357 /*Did you ever wonder where those pieces went once they had been discarded? I AM you, Haer'Dalis. I am the you that you cast away, the you that you've forgotten. I am you behind the mask.*/
== HAERD25J @358 /*No! My soul is mine! You are an apparition, nothing more.*/
== _bWrHD @359 /*Why? Because you love this half-orc? Because you have friends and companions who believe the lies you tell?*/
= @360 /*You have not let them see you. You are terrified to let them in because you know that you are hollow. You are an empty husk... a pretty egg shell with no yolk inside.*/
== HAERD25J @361 /*Enough! I- I know who I am and this sparrow will not listen to your lies. I-*/
= @362 /*Only I am Haer'Dalis.... Only I....*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bHDW2")~
EXIT

//Post Wraith Talk
CHAIN IF WEIGHT #-5 ~Global("_bDornHDWraith","GLOBAL",4)~ THEN DORN25J _bDornHDPostWraith
@363 /*You defended me.*/
== HAERD25J @364 /*Of course. How could this sparrow have acted otherwise?*/
DO ~SetGlobal("_bDornHDWraith","GLOBAL",5)~
== DORN25J @365 /*You could have turned away once you saw my weakness. I am Dorn Il'Khan! I should not have faltered!*/
= @366 /*I should have struck down that apparition as soon as it appeared. Then you would not have needed to draw the spirit's ire on yourself.*/
== HAERD25J @367 /*I admit that was disquieting. Yet the wraith's words were naught but shadowed doubts and fears from our own minds. Such mists will burn away in the sun's light and leave no scar behind.*/
= @368 /*I do not regret the battle, my grand vulture. This sparrow will not abandon you for showing your emotions. Such heart is not a weakness. That burning passion is what helps to prove I am alive.*/
== DORN25J @369 /*Good. I do not wish to lose you.*/
= @370 /*Still, I shall endeavor to do better in the future. I have the greater skill in combat so it is my duty to protect you. I would be a poor lover otherwise.*/
== HAERD25J @371 /*We can protect each other. I am yours and you are mine, no matter what those shadows claimed.*/
= @372 /*Although, speaking of Kryll, how does this bard measure up against your former lover? Seeing her spirit did pique my curiosity.*/
== DORN25J @373 /*Don't worry, there is no contest. You're twice the man she ever was.*/
== HAERD25J @374 /*Hah! This sparrow certainly hopes so, Dark-Edge. And perhaps that is what I deserve for asking foolish questions. The past is dead and buried after all.*/
== DORN25J @375 /*Indeed. As will be our enemies.*/
EXIT

//Post Dorn Quest Talk (on rest anywhere)
CHAIN IF WEIGHT #-1 ~Global("_bDornHDTOBQuest","GLOBAL",2)~ THEN HAERD25J _bDornQuestSong
@435 /*...And so the blackguard assaulted heaven with a Bhaalspawn at his side,
          He faced the host of Tyr himself with gladness in his eyes.
          For Dorn Il-Khan fears no one and none could stop his mission's tide,
          To strike his name from the Scroll of Retribution and be freed from his fell crimes."*/
= @436 /*Nay, "Retribution" ruins the whole rhythm. Perhaps the "scroll of wrath" instead...*/
DO ~SetGlobal("_bDornHDTOBQuest","GLOBAL",3)~
== DORN25J @437 /*What are you doing, tiefling?*/
== HAERD25J @438 /*Is it not obvious, my Dark-Edge? This sparrow is writing your grand saga. I will not allow another bard to claim the story first.*/
== DORN25J @439 /*I realize that. But why must you practice *now*?*/
== HAERD25J @440 /*One does not choose the moment that inspiration strikes. Music is a fickle mistress and I must answer when she calls.*/
== DORN25J @441 /*What you must do is sleep. <CHARNAME> has many foes and I will not have you exhausted when combat finds us once again.*/
== HAERD25J @442 /*Yes, yes, this sparrow will find solace in dreaming soon enough. As soon as this verse is finished...*/
== DORN25J @443 /*No, Haer'Dalis. Sleep.*/
== HAERD25J @444 /*But... the music...*/
== DORN25J @445 /*Will still be there when you wake. Your talents will not leave you overnight.*/
= @446 /*Come *here*, tiefling. Cease your frantic muttering so that we both may rest.*/
== HAERD25J @447 /*Well... it has been a long journey... and your arms are comfortable.... *yawn**/
= @448 /*...*snore*...*/
== DORN25J @449 /**chuckle* Sleep well, Haer'Dalis.*/
DO ~RestParty()~
EXIT

//TOB Interjections
//Demon Tahazzar
INTERJECT_COPY_TRANS4 GORTAN1 5 _bDornDemon /*Nay, thou hast the stench of order and good on thee. Best to kill thee now and be done with it.*/
	== DORNJ IF ~IfValidForPartyDialog("Dorn") GlobalLT("Chapter","GLOBAL",8)~ THEN @450 /*You think me good, demon? That is the last error of judgment you will ever make.*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2) GlobalLT("Chapter","GLOBAL",8)~ THEN @451 /*Indeed, my Dark-Edge here takes pride in being evil. Yet this sparrow knows that blackened heart still beats with sweetness underneath.*/
	== DORN25J IF ~IfValidForPartyDialog("Dorn") GlobalGT("Chapter","GLOBAL",7)~ THEN @450 /*You think me good, demon? That is the last error of judgment you will ever make.*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2) GlobalGT("Chapter","GLOBAL",7)~ THEN @451 /*Indeed, my Dark-Edge here takes pride in being evil. Yet this sparrow knows that blackened heart still beats with sweetness underneath.*/
END

//Aesgareth Talks
INTERJECT_COPY_TRANS2 HAERDAJ 155 _bDornAesgareth /*And you remind me of a remarkably pleasant fellow named Aesgareth, so unlike the usual child of a fiend. But my fellows would not know of you, of course. Perhaps an introduction is in order?*/
	== DORNJ IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2) GlobalLT("Chapter","GLOBAL",8)~ THEN @452 /*You seem very friendly with this creature, tiefling. Do I need to kill him to keep your eyes where they belong?*/
	== GORCAMB IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @453 /*Hah! Such jealousy! I assure you, there is naught to fear from me. Though I am amused to know this actor has finally been captured. He did not seem the sort to settle down.*/
	== HAERDAJ @454 /*Yes, well, this is hardly the time to be discussing this sparrow's romances.*/
END

INTERJECT_COPY_TRANS2 HAERD25J 11 _bDornAesgareth /*And you remind me of a remarkably pleasant fellow named Aesgareth, so unlike the usual child of a fiend. But my fellows would not know of you, of course. Perhaps an introduction is in order?*/
	== DORN25J IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2) GlobalGT("Chapter","GLOBAL",7)~ THEN @452 /*You seem very friendly with this creature, tiefling. Do I need to kill him to keep your eyes where they belong?*/
	== GORCAMB IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @453 /*Hah! Such jealousy! I assure you, there is naught to fear from me. Though I am amused to know this actor has finally been captured. He did not seem the sort to settle down.*/
	== HAERD25J IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2) GlobalGT("Chapter","GLOBAL",7)~ THEN @454 /*Yes, well, this is hardly the time to be discussing this sparrow's romances.*/
END

//Helm Scroll Ghost
INTERJECT_COPY_TRANS4 GORAPP1 8 _bDornGhost /*Thou dost owe him nothing, it is true, and battling the Prince is a deadly task.*/
	== DORNJ IF ~IfValidForPartyDialog("Dorn") GlobalLT("Chapter","GLOBAL",8)~ THEN @455 /*I care not for Helm's priests, but to defeat Demogorgan himself would prove our prowess beyond all doubt.*/
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("Dorn") GlobalLT("Chapter","GLOBAL",8)~ THEN @456 /*You are correct, my grim vulture; that would be a story for the ages and one this bard would be pleased to sing should we survive.*/
	== DORN25J IF ~IfValidForPartyDialog("Dorn") GlobalGT("Chapter","GLOBAL",7)~ THEN @455 /*I care not for Helm's priests, but to defeat Demogorgan himself would prove our prowess beyond all doubt.*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("Dorn") GlobalGT("Chapter","GLOBAL",7)~ THEN @456 /*You are correct, my grim vulture; that would be a story for the ages and one this bard would be pleased to sing should we survive.*/
END

//Volo Interjections
EXTEND_BOTTOM DORN25J 56 /*Mind yourself, taleteller, or you'll find yourself in darkness's embrace. You can't even begin to imagine the realms that I deal with on a daily basis.*/
IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN EXTERN HAERD25J _bDornVolo
END

CHAIN HAERD25J _bDornVolo 
@457 /*Hah, my Dark Edge, have I not taught you the power words can wield? Best not to threaten he who can destroy your reputation...*/
= @458 /*Hmm, perhaps this sparrow should speak with my fellow songster. I will not have your story be one-sided on his tongue.*/
EXTERN SARVOLO 9

EXTEND_BOTTOM HAERD25J 15 /*Perhaps I will yet have the chance to relate them to you one day, yes?*/
IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN EXTERN DORN25J _bHDVolo 
END

CHAIN DORN25J _bHDVolo 
@459 /*You deserve better than this hack to sing your praises, but at least his words were flattering. And if he refuses your assistance in the future, I would be more than happy to feed him to my blade.*/
EXTERN SARVOLO 9

//Gromnir Interjection
EXTEND_BOTTOM DORN25J 125 /*Without hesitation. Family has little value for me, and Gromnir has always been a poor brawler. Even now he holds his weapon foolishly, with a carelessly weak grip. Cutting him down will be a simple matter.*/
IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN EXTERN HAERD25J _bDornGromnir 
END

CHAIN HAERD25J _bDornGromnir 
@460 /*And one barely worth our time. I cannot fault your lack of sentiment, my vulture. Your practiced eyes see this Gromnir clearly; his type is common among my kind. Those who rely too much on heritage and leave all skill behind.*/
END COPY_TRANS DORN25J 125 

//Shrew Interjection
INTERJECT_COPY_TRANS2 HAERD25J 3 _bDornShrew /*Truly, captivity has not tamed this shrew! Perhaps there is an idea for a play in this...*/
	== DORN25J IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @461 /*You see such ideas everywhere, tiefling, and it is I who am forced to listen to your drafts.*/
	== HAERD25J IF ~IfValidForPartyDialog("Dorn") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @462 /*Aah, but this sparrow is most appreciative of your sacrifice, my vulture. Your efforts at critiquing will be rewarded with all the passion they deserve.*/
END

//Dorn Planetar Quest
INTERJECT_COPY_TRANS2 OHDPLANJ 8 _bDornHunted /*Your name has been inscribed in the Scroll of Retribution. Now you will pay for your crimes!*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("Dorn") OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @463 /*And now the gods themselves are hunting you, my Dark-Edge? You do make life interesting. Perhaps this sparrow should cry with fury at the threat you've brought upon us, but the thrill of death brings inspiration and I do so love to sing.*/
END

//Dorn Quest Heaven
INTERJECT_COPY_TRANS2 DORN25J 82 _bDornSigil /*On the other hand, one of those sigils would come in handy...*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @464 /*If you wait but a moment, my grim vulture, this sparrow's nimble fingers will provide. For it seems that even planetars have pockets to be picked.*/
END

//Dorn Quest Scribe Fight
INTERJECT DORN25J 162 _bDornScribe /*Get ready to eat your own fingers, scribe.*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @465 /*May we pretend you never said that, my grim vulture? Let us pretend you never said that.*/
	= @466 /*This sparrow knows that you are fearless at the thought of fighting heaven, but perhaps we might still find another way? Tyr's scribe seems hard of hearing so at least we needn't find the words to explain your threat away.*/
	== DORN25J IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @467 /*Perhaps. But you had best act quickly, tiefling. I will not wait for long.*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @468 /*A moment shall be plenty. If I cannot turn our leader's tongue from tarnished steel into true silver, this sparrow's skill at sleight of hand may have its chance to seize the day.*/
EXIT

//Hexxat Quest
INTERJECT_COPY_TRANS2 DORN25J 221 _BDornImpatient /*Just say the word, <CHARNAME>...*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @469 /*Patience, Dark-Edge. This is clearly the final act of yon vampire's tragedy. We should do our dove the favor of pretending that we care.*/
END

//Hexxat Quest End
INTERJECT_COPY_TRANS2 DORN25J 223 _bDornDontCare /*There's nothing here to mourn. She got what she desired, and that's the end of it.*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis")~ THEN @470 /*Indeed, my grim vulture. Our ebon dove discovered the true strength of entropy.*/
END

//Gods Discussion
INTERJECT_COPY_TRANS2 DORN25J 118 _bDornGods /*I'll tell them myself, as they kneel before me.*/
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") OR(2) Global("_bHDDORNROMANCE","GLOBAL",1) Global("_bHDDORNROMANCE","GLOBAL",2)~ THEN @471 /*I doubt the gods shall see the humor of our actions, but this sparrow anticipates that moment's arrival nonetheless. When shall a bard perform his art for a more venerable audience?*/
END
