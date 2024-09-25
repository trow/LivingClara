BEGIN b_bclara

//1st Valygar banter - higher on the list since limited areas
CHAIN IF ~InParty("Valygar") InMyArea("Valygar") IfValidForPartyDialog("Valygar") IfValidForPartyDialog("_bClara") AreaType(FOREST) Global("_BBCLARAVALYG","GLOBAL",0)~ THEN B_BCLARA _bClaraValygar1
@344 /*Valygar, how do you move so quietly?*/
DO ~SetGlobal("_BBCLARAVALYG","GLOBAL",1)~
== BVALYGA @345 /*That is a strange question coming from you. I am not the thief between us.*/
== B_BCLARA @346 /*Well, yeah, I'm great at hiding in a city. There are people and alleyways and crates to duck behind. But how do you manage to keep to the shadows here? It's all bugs and open space and branches that snap beneath your feet.*/
== BVALYGA @347 /*Aah, I understand. You fight against the forest, Clara, and that is why you cannot walk as softly as you do upon the city streets.*/
= @348 /*You must adapt yourself to nature; you cannot expect the woods to change for you. Mages expect such things, twisting the trees with their foul magics, but even then the land endures and once the mage is vanquished, things return to as they were.*/
== B_BCLARA @349 /*I've never thought about it that way. Can you show me? I want to move the way you do.*/
== BVALYGA @350 /*Of course. I would be pleased to show another how to honor the forest properly.*/
EXIT

//Edwin Banter, while a woman. Higher on list so more likely to play in those 12 days.
CHAIN IF ~InParty("Edwin") IfValidForPartyDialog("Edwin") Gender("Edwin",FEMALE) InMyArea("Edwin") IfValidForPartyDialog("_bClara") Global("_BBCLARAEDWINA","GLOBAL",0)~ THEN B_BCLARA _bClaraEdwina1
@391 /*Edwin, I have a present for you.*/
== BEDWIN @392 /*Do not bother. I am sure your "gift" will only be a disappointment. A dull creature like you has nothing to offer one such as myself. (Except perhaps your body. Damn this cursed form.)*/
DO ~SetGlobal("_BBCLARAEDWINA","GLOBAL",1) ChangeStat("_bClara",SAVEVSSPELL,-1,ADD)~
== B_BCLARA @393 /*Really? Not even a way to fix your little gender issue? I have a friend who dabbles in certain rare items and when I told them about your mishap, they offered me this belt. The Girdle of Femininity/Masculinity I think they called it... And when I put it on...*/
= @394 /*Ta-da! Clarence at your service.*/
== BEDWIN @395 /*What? You found it? Give me that belt this instant!*/
== B_BCLARA @396 /*I don't know. Maybe I should keep it. This girdle could be all kinds of fun and you've been awfully rude...*/
== BEDWIN @397 /*You think to extort me? Me? Edwin Odesseiron? Your simple simian brain cannot even begin to comprehend the agony that I could cast upon you.*/
== B_BCLARA @398 /*You could, but you won't. <CHARNAME> wouldn't like it and you won't risk losing <PRO_HISHER> protection. I know your type and for all your pride, self-preservation will always be your number one priority.*/
== BEDWIN @399 /*(Perhaps she is not as stupid as I'd thought.) Then what is your price? I assume that you want something.*/
== B_BCLARA @400 /*Nothing much. Just ask me nicely. A "please" would be preferred.*/
== BEDWIN @401 /*(And so the peasant twists the knife a little deeper. Such sadism would be admirable if aimed at another target. But I must obtain that belt.) Fine. As you command.*/
= @402 /*I am SORRY for my outburst. May I PLEASE have that girdle now?*/
== B_BCLARA @403 /*Hah! I could hear your teeth grinding all the way over here. But I guess that's good enough. Here. Take it.*/
DO ~GiveItemCreate("_BBELTC","Edwin",0,0,0)~
== BEDWIN @404 /*Yes! It is mine! I shall be returned to my true glory...*/
= @405 /*(Why isn't it working?) WHY ISN'T IT WORKING? What trickery is this?*/
== B_BCLARA @406 /*Well... I may have paid a hedge witch to enchant the item so only I could use it, but surely such a great and powerful wizard as yourself can break the spell?*/
== BEDWIN @407 /*You... YOU! YOU UNWASHED TREACHEROUS IMBECILIC CRETINOUS...*/
== B_BCLARA @408 /*Worth. Every. Penny.*/
EXIT

//1st Jan Banter
CHAIN IF ~InParty("Jan") InMyArea("Jan") IfValidForPartyDialog("Jan") IfValidForPartyDialog("_bClara") Global("_bBClaraJan","GLOBAL",0)~ THEN B_BCLARA _bClaraJan1
@1 /*Jan, could you help me?*/
DO ~SetGlobal("_bBClaraJan","GLOBAL",1)~
== BJAN @2 /*Of course, my dear. What seems to be the problem?*/
== B_BCLARA @3 /*Well, you are so amazing with your magic and your skills... and I am supposed to be acting as a thief, disarming traps, opening locks, and the like, and...*/
== BJAN @4 /*And? It is not good to stop a sentence halfway through, dearie, you never know what will happen.*/
= @5 /*Why, my third-cousin's uncle Dimble once used to stop sentences like that every day. Eventually all the half-sentences built up and exploded out his ears.*/
== B_BCLARA @6 /*I will try to avoid that. But I noticed you have all this special clothing and gadgets to help you and I was wondering...*/
== BJAN @7 /*There you go again; if you keep doing this, I will make you continue our conversation from farther away.*/
== B_BCLARA @8 /*I want all your stuff! Can I have it? Please?*/
== BJAN @9 /*That is no small task, Clara dear. You see, each of my items was made specifically for me, by me, to be used by me. If you want items for you, to be used by you, then that will take some work.*/
= @10 /*Mountains must be climbed, tombs must be explored, and the lost fragments of ancient civilizations must be combined into fabrics imbued with magic from seven astral planes.*/
== B_BCLARA @11 /*Um... wow? So what do I need to do?*/
== BJAN @12 /*Well for starters, Clara, while you are very nimble, your nimbleness is not nearly as nimbly as it should be.*/
== B_BCLARA @13 /*Must be more nimble! I can do that.*/
= @14 /*How can I do that?*/
== BJAN @15 /*I will help you. Nimbleness does not just happen overnight. You cannot expect to simply finish a conversation about nimbleness and have it. Nimbleness must be practiced.*/
= @16 /*Step one: someone must throw a knife, dart, or axe at you, while you try to dodge to the side and catch it.*/
= @17 /*Do not fear, girlie; this is why we have clerics.*/
EXIT

//1st Nalia banter - she talks first
CHAIN IF WEIGHT #1 ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("Nalia") IfValidForPartyDialog("_bClara") Global("_BBCLARANALIA","GLOBAL",0)~ THEN BNALIA _bClaraNalia1
@276 /*So... Clara. You're a noble? It's just... you don't act like most of the other nobles that I know. And well... there's lots of Silvershields and I'm sure some of them had daughters, but...*/
DO ~SetGlobal("_BBCLARANALIA","GLOBAL",1)~
== B_BCLARA @277 /*You doubt MY lineage? I am Lady Caroline Aurora Lucia Rosena Silvershield and my blood is as blue as any that flows within your veins. You're the one who sneaks out of your castle to hang out with the poor.*/
= @278 /*Maybe I should be asking you about YOUR heritage?*/
== BNALIA @279 /*I'm sorry. You're right. I shouldn't judge. I sounded like my aunty there; she's always going on and on about what's proper for a lady of my station. I get so sick of it.*/
== B_BCLARA @280 /*I completely understand. I thought my father was going to pass out when I told him that I wished to be an actress. The thought of his beloved daughter working side by side with commoners was just unthinkable.*/
== BNALIA IF ~!Dead("Torgal")~ THEN @281 /*My Aunty Delcia would agree. But I know my father cares. He always listens to our people when they come to him with problems and I want to do the same. I want to help the lesser classes, not simply sneer at them.*/
== BNALIA IF ~Dead("Torgal")~ THEN @2810 /*My Aunty Delcia would agree. But I know my father cared. He always listened to our people when they came to him with problems and I want to do the same. I want to help the lesser classes, not simply sneer at them.*/
== B_BCLARA @282 /*And I'm sure the “common folk” appreciate your charity.*/
= @283 /*Now, you have to tell me all about your night-time ventures. We can share tips for sneaking and gossip about the cutest stable boys.*/
EXIT

//1st Wilson Banter
CHAIN IF ~InMyArea("WILSON") IfValidForPartyDialog("WILSON") IfValidForPartyDialog("_bClara") Global("_bBClaraWilson","GLOBAL",0)~ THEN B_BCLARA _bClaraWilson1
@745 /*Okay, bear, what do I need to do to ride you?*/
== BWILSON @746 /*Rff?*/
== B_BCLARA @747 /*Because <CHARNAME> completely and steadfastly refuses to buy us any horses, that's why!*/
== BWILSON @748 /*Snuffle. Growl. Roar.*/
DO ~SetGlobal("_bBClaraWilson","GLOBAL",1)~
== B_BCLARA @749 /*Well of course *you* can't ride a horse, but the rest of us could! I should be riding one horse with a second one carrying my bags and a third one as a spare.*/
== BWILSON @750 /*Growl, rff?*/
== B_BCLARA @751 /*Yes, the horses could carry your bags too. No one should have to carry anything.*/
== BWILSON @752 /*Snuffle, roar?*/
== B_BCLARA @753 /*Yes, the horses would be carrying stuff.*/
== BWILSON @754 /*Growl. Snort!*/
== B_BCLARA @755 /*Okay, fine, horses count as *someone* I suppose. All the horses would carry bags, except for the ones we're riding.*/
== BWILSON @756 /*Snuffle, growl. Whine?*/
== B_BCLARA @757 /*Yes, you could eat your horse since you couldn't ride it.*/
= @758 /*But this is all hypothetical since <CHARNAME> refuses to allow any of us to ride horses!*/
== BWILSON @759 /*Snuffle, snuffle... rff?*/
== B_BCLARA @760 /**sigh* Yes, maybe <CHARNAME> would allow you to eat a horse even if the rest of us can't ride them. You'll have to ask <PRO_HIMHER> about that.*/
EXIT

//1st Jaheira banter - she talks first
CHAIN IF ~IfValidForPartyDialog("Jaheira") IfValidForPartyDialog("_bClara") InMyArea("_bClara") Global("B_BClaraJaheira","GLOBAL",0)~ THEN BJAHEIR _bClaraJaheiraBanter1
@651 /*Clara, why are you here? What are you after?*/
DO ~SetGlobal("B_BClaraJaheira","GLOBAL",1)~
== B_BCLARA @652 /*Seriously? Well, I want to stay alive.*/
== BJAHEIR @653 /*Then you have chosen your companions poorly. We live in constant danger.*/
== B_BCLARA @654 /*I didn't choose you, you brought me back to life after Hexxat killed me.*/
= @655 /*Death is everywhere, but I'd never seen someone like me come back before. Only people who are rich enough to pay a cleric get to come back. Well, them and powerful heroes like you.*/
== BJAHEIR @656 /*Not all of us.*/
== B_BCLARA @657 /*Yeah, I heard about your husband. So why are you here?*/
== BJAHEIR @658 /*Khalid and I were friends of <CHARNAME>'s foster father, Gorion.*/
= @659 /*When Gorion died, we decided that we would look after <CHARNAME> and Imoen for as long as they would have us.*/
= @660 /*I do not have many friends left... this life is dangerous.*/
= @661 /*You should leave and return to your noble family. Except that you can't because they are only a figment of your imagination.*/
== B_BCLARA @662 /*I...*/
== BJAHEIR @663 /*Do not worry, child. I understand. I once had no one as well.*/
== B_BCLARA @664 /*Thanks, Jaheira.*/
EXIT

//1st HaerDalis Banter - he talks first
CHAIN IF WEIGHT #3 ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("_bClara") Global("_BBCLARAHD","GLOBAL",0)~ THEN BHAERDA _bClaraHaerDalis1
@257 /*I find it most impressive, my dear margay, how you slip from one role into another – from fair lady to assassin and all creatures in-between. If not for Hexxat's interference, you would have been a marvel on the stage.*/
DO ~SetGlobal("_BBCLARAHD","GLOBAL",1)~
== B_BCLARA @258 /*Thank you for the compliment, but I'm afraid you're wrong about that. Why do you think I was working for the Shadow Thieves?*/
= @259 /*Before I got possessed and all, I'd been turned away by every theater in Athkatla, several more than once.*/
== BHAERDA @260 /*Then they were blind to talent. Or perhaps their blindness was intentional; in all my travels through the planes, I have seen few things as vicious as an actor trying to hold onto that last spark of dying fame.*/
= @261 /*Indeed, a troupe can be as poisonous as any nest of vipers, fangs out and dripping death with every word. Many actors would do anything to keep their rivals off the stage and you must learn to dance the dance for your own voice to be heard.*/
= @262 /*If you wish, this sparrow would be pleased to give you pointers. You only need one theater to say welcome before your star can shine upon a stage as it was clearly meant to do.*/
== B_BCLARA @263 /*I appreciate the offer. But I no longer want to be an actress. I have my sights set higher now.*/
== BHAERDA @264 /*Ahh, that is a pity. I shall content myself with watching the many masks you show the world.*/
EXIT

//1st Mazzy Banter
CHAIN IF ~InParty("Mazzy") InMyArea("Mazzy") IfValidForPartyDialog("Mazzy") IfValidForPartyDialog("_bClara") Global("_BBCLARAMAZ","GLOBAL",0)~ THEN B_BCLARA _bClaraMazzy1
@18 /*Mazzy, could you help me with something?*/
DO ~SetGlobal("_BBCLARAMAZ","GLOBAL",1)~
== BMAZZY @19 /*Of course, Clara, what is it?*/
== B_BCLARA @20 /*We're always fighting things and it's dangerous and I don't want to die!*/
== BMAZZY @21 /*A valid fear. I recommend that you stay back out of the fray and shoot our enemies with arrows.*/
== B_BCLARA @22 /*But when I do that, I always worry about hitting the wrong person.*/
== BMAZZY @23 /*You need practice. I will teach you in our spare time.*/
= @24 /*For a start, you tend to keep your shoulders overly tense...*/
EXIT

//1st Aerie Banter
CHAIN IF ~InParty("Aerie") InMyArea("Aerie") IfValidForPartyDialog("Aerie") IfValidForPartyDialog("_bClara") Global("_BBCLARAAERIE","GLOBAL",0)~ THEN B_BCLARA _bClaraAerie1
@409 /*Hey, Aerie. Who's this Chiktikka Fastpaws that you're always mentioning? Are they some kind of avariel god?*/
DO ~SetGlobal("_BBCLARAAERIE","GLOBAL",1)~
== BAERIE @410 /*Oh, w- well, not exactly. I suppose it's a little silly. But after Quayle rescued me, I was j- just so thankful and I s- started to offer prayers to Baervan Wildwanderer. He's a gnomish god of forests and woodland animals.*/
== B_BCLARA @411 /*You can do that? I always figured that I had to stick with human deities. If I'd known I could worship anyone, I would have spread my prayers around. It never hurts to have a few more gods and goddesses on my side.*/
= @412 /*But wait, you still haven't answered my question. What does this gnomish fellow have to do with anything?*/
== BAERIE @413 /*I- I was g- getting there. Baervan Wildwanderer always travels with his companion, a sentient r- raccoon n- named Chiktikka Fastpaws.*/
== B_BCLARA @414 /*Seriously? You're a powerful mage and cleric with dozens of spells at your fingertips, and the patron that you call upon is some talking animal?*/
= @415 /*No offense, Aerie, but you're actually kinda weird.*/
EXIT

//1st Rasaad Banter
CHAIN IF ~InParty("RASAAD") InMyArea("RASAAD") IfValidForPartyDialog("RASAAD") IfValidForPartyDialog("_bClara") Global("_BBCLARARAS","GLOBAL",0)~ THEN B_BCLARA _bClaraRasaad1
@416 /*You know, Rasaad, you're really very flexible.*/
DO ~SetGlobal("_BBCLARARAS","GLOBAL",1)~
== BRASAAD @417 /*Clara? How long have you been standing there?*/
== B_BCLARA @418 /*Not too long. But don't stop on my account. I'm quite enjoying the view. Do you always practice without your tunic?*/
== BRASAAD @419 /*I- generally, yes. We do not often get the chance to bathe while traveling and so I prefer to keep my clothing as clean as possible.*/
== B_BCLARA @420 /*Mmm, yes, that is quite sensible. All that sweaty skin... Tell, me, are all Sun Soul Monks so... supple? Or do you have special skills?*/
== BRASAAD @421 /*I suppose I may be more limber than most. I have been judicious in my training and I make sure to stretch whenever possible. If you like, I could show you a few simple exercises to increase your flexibility.*/
== B_BCLARA @422 /*Actually, I think I would enjoy that.*/
= @423 /*Dazzle me with excellence.... and leave the tunic off.*/
EXIT

//1st Minsc Banter
CHAIN IF ~InParty("Minsc") InMyArea("Minsc") IfValidForPartyDialog("Minsc") IfValidForPartyDialog("_bClara") Global("_BBCLARAMINSC","GLOBAL",0)~ THEN B_BCLARA _bClaraMinsc1
@424 /*So, Minsc, this pet hamster of yours – is he very valuable?*/
DO ~SetGlobal("_BBCLARAMINSC","GLOBAL",1)~
== BMINSC @425 /*Boo is not a pet. Boo is my friend! Anyone who tries to take my friend will face Minsc! Butts will be kicked! Heads will be smashed!*/
== B_BCLARA @426 /*Oookkaayyy then. Forget I said anything.*/
== BMINSC @427 /*No. Minsc doesn't forget. Boo says forgetting is bad when talking to friends. So I protect you, you protect Boo, and Boo protects everyone – the power of friendship compels us!*/
= @428 /*We are together and we are mighty. We are mightier together!*/
== B_BCLARA @429 /*And that's good, right?*/
== BMINSC @430 /*Of course! It is the goodest!*/
= @431 /**squeak. squeak.* Yes. Boo agrees. And Boo is the smart one.*/
== B_BCLARA @432 /*Yes, I think he is.*/
EXIT

//1st Keldorn Banter
CHAIN IF ~InParty("Keldorn") InMyArea("Keldorn") IfValidForPartyDialog("Keldorn") IfValidForPartyDialog("_bClara") Global("_BBCLARAKELD","GLOBAL",0)~ THEN B_BCLARA _bClaraKeldorn1
@323 /*Sir Keldorn, you remind me greatly of my father. He was tall and strong and loved by most who knew him, always ready to speak up for what was right.*/
DO ~SetGlobal("_BBCLARAKELD","GLOBAL",1)~
== BKELDOR @324 /*I am flattered at the comparison. Where is your father now?*/
== B_BCLARA @325 /*Dead. He was slain most cruelly by men with evil in their hearts. My father and my mother and most of my near kin.*/
== BKELDOR @326 /*That is tragic news indeed. I hope our similarities do not cause you pain.*/
== B_BCLARA @327 /*No, Sir Keldorn, do not worry. My father died defending me, that is the reason I still live, and so your presence is a comfort which reminds me I was loved. I feel safe around you, safe enough to think on better days.*/
== BKELDOR @328 /*You do me a great honor, my lady. While I cannot replace your father and indeed, I would not dare to try, I swear I will protect you. No young lady of your bearing should be alone out in the world.*/
EXIT

//1st Viconia Banter
CHAIN IF ~InParty("Viconia") InMyArea("Viconia") IfValidForPartyDialog("Viconia") IfValidForPartyDialog("_bClara") Global("_BBCLARAVIC","GLOBAL",0)~ THEN B_BCLARA _bClaraViconia1
@25 /*Viconia, you're so beautiful...*/
DO ~SetGlobal("_BBCLARAVIC","GLOBAL",1)~
== BVICONI @26 /*That is the first true thing you've said in days.*/
== B_BCLARA @27 /*I... I don't understand.*/
== BVICONI @28 /*You are a lie. Your words are lies. Your movements are lies. Even your voice is a lie.*/
= @29 /*When you speak, there is no center, no point that I can reference. Everything about you is an illusion.*/
= @30 /*Why? I do not see a purpose to it.*/
== B_BCLARA @31 /*Well, I always loved acting... pretending to be something other than I was. I wanted to be a great theater actor and travel the world from stage to stage.*/
== BVICONI @32 /*So your entire life is a lie created to suit you?*/
== B_BCLARA @33 /*All life is a stage, Viconia. We are all actors.*/
== BVICONI @34 /*Very well. Back to your reason for bothering me... you were complimenting me, so you must want something. What is it?*/
== B_BCLARA @35 /*Poison. Teach me to make poison. You're a drow and everyone knows that the drow have the best poisons.*/
== BVICONI @36 /*Everyone also knows that I kidnap children from their beds and sacrifice them to my dark gods.*/
= @37 /*Most of the things that "everyone knows" are wrong. The rest are merely unreliable.*/
== B_BCLARA @38 /*So will you teach me to make poison or not?*/
== BVICONI @39 /*Have you ever seen me make poison? How do you know I even can?*/
== B_BCLARA @40 /*Yes or no?*/
== BVICONI @41 /*Yes, but you will owe me... something.*/
== B_BCLARA @42 /*Fine, fine. Whatever you want. What do we do?*/
== BVICONI @43 /*I will give you a list of ingredients. You can gather them as we travel. When you have them all, we will find a suitable place to create your poison.*/
EXIT

//1st Dorn Banter
CHAIN IF ~InParty("DORN") InMyArea("DORN") IfValidForPartyDialog("DORN") IfValidForPartyDialog("_bClara") Global("_BBCLARADORN","GLOBAL",0)~ THEN B_BCLARA _bClaraDorn1
@44 /*Dorn, is this what you all do? Seek out death over and over again?*/
DO ~SetGlobal("_BBCLARADORN","GLOBAL",1)~
== BDORN @45 /*Usually. There's also a lot of walking. We're often sent by one person to find another person who sends us to a third person. It is astoundingly boring.*/
== B_BCLARA @46 /*I'm not scared of the boring stuff. But the rest... You'll protect me though, right? You're so strong and fierce. I could use someone like you.*/
== BDORN @47 /*Look, girl. Protecting isn't really what I do. Just stay out of my way and I probably won't kill you by accident.*/
== B_BCLARA @48 /*Please? I bet you would be an amazing protector if you only had someone you cared for.*/
= @49 /*I could be that someone. I really don't want to die.*/
== BDORN @50 /*Stop talking. I don't ever want to hear you do that routine again.*/
= @51 /*"I'm a helpless woman so I must find a strong warrior to protect me." No!*/
= @52 /*Don't be useless and weak. My mother was and that's why she had me.*/
= @53 /*Is that what you want? Some miserable half-breed monster baby? Go away.*/
== B_BCLARA @54 /*Fine! But since my mom didn't bed an orc, I'm a skinny, fragile human and I need your help. To... to become stronger.*/
== BDORN @55 /*That's more like it. How can I help?*/
== B_BCLARA @56 /*Poison! You coat your weapons in poison. Teach me how.*/
== BDORN @57 /*All right. I'm almost out myself so we'll gather the ingredients for more and then I'll show you what to do.*/
EXIT

//1st Korgan Banter - not a dungeon
CHAIN IF ~InParty("Korgan") InMyArea("Korgan") IfValidForPartyDialog("Korgan") IfValidForPartyDialog("_bClara") !AreaType(DUNGEON) Global("_BBCLARAKOR","GLOBAL",0)~ THEN B_BCLARA _bClaraKorgan1
@58 /*Korgan, can you please help me with something?*/
DO ~SetGlobal("_BBCLARAKOR","GLOBAL",1)~
== BKORGAN @59 /*Now lass, I don' think helpin' be exactly what I do.*/
= @60 /*Now if ye had said, "Korgan, kin ye help me kill something?" then maybe we'd be havin' a conversation.*/
= @61 /*I kin nae be helpin' every skinny, overly-tall, weak-limbed princess who needs me help. I would nae be havin' any time fer meself.*/
== B_BCLARA @62 /*I am not a princess!*/
== BKORGAN @63 /*Well, ye sure be talkin' like one.*/
= @64 /*"Korgan, can you please help me with something?"*/
= @65 /*A girl like ye needs three servants jus' t' wipe yer arse.*/
== B_BCLARA @66 /*Let's try this again.*/
= @67 /*Korgan, help me or I will find you some night after you've collapsed in a drunken stupor and I will slit your throat from ear to ear and laugh as you bleed dry.*/
== BKORGAN @68 /*Better! What kin I do fer ya?*/
== B_BCLARA @69 /*I need to be tough like you. I keep worrying that I'm going to die out here.*/
== BKORGAN @70 /*Of course yer gonna die. Dyin' is what ye people do.*/
= @71 /*Yer a weak, short-lifed, long-limb. I kill a dozen of yer kind per day.*/
= @72 /*Ye kin nae be tough like me. I'm a dwarf. Ye're not a dwarf. Dwarves kill, not-dwarves die.*/
== B_BCLARA @73 /*Okay... but what makes dwarves so tough? Perhaps I could copy you and benefit.*/
== BKORGAN @74 /*Dwarves dig! Ye wan' t' be tough as a dwarf, girl, ye must dig!*/
== B_BCLARA @75 /*Dig what? A mine?*/
== BKORGAN @76 /*Graves!*/
= @77 /*You stick wit' me ev'ry time that lazy bum <CHARNAME> be restin' and we'll go off wanderin'. I'll axe me some long limbs an' ye can dig holes t' put them in th' ground.*/
== B_BCLARA @78 /*Like... robbers who attack us?*/
== BKORGAN @79 /*Anyone in our way! Or rich looking men. Or bow-legged ones. Or someone too tall. Or who looks at me funny.*/
= @80 /*I axe 'em. You put 'em in the ground. Or ye knife 'em an' put 'em in the ground while I rest. I kin nae be doin' all th' killing all the time.*/
== B_BCLARA @81 /*And... and this will make me tougher?*/
== BKORGAN @82 /*Well, it sure kin nae be makin' ye any weaker. *har har har**/
= @83 /*Ye wait an' see. Ye knife a hundred long-limbs, dig a hundred graves, and carry aroun' all their gold, an' ye'll be strong as a dwarf in no time.*/
EXIT

//1st Yoshimo Banter
CHAIN IF WEIGHT #2 ~InMyArea("_bClara") InParty("Yoshimo") IfValidForPartyDialog("Yoshimo") InParty("_bClara") IfValidForPartyDialog("_bClara") Global("_BBCLARAYOSH","GLOBAL",0)~ THEN BYOSHIM _bClaraYosh1
@219 /*You know, Clara, with a bit more training, you could be as fine a geisha-assassin as any that I have seen back home. Beautiful, graceful, and deadly all at once.*/
== B_BCLARA @220 /*What is a geisha? Is it like a courtesan.*/
== BYOSHIM @221 /*Aah, well. If you have never seen their beauty, words cannot do it justice. Many people think of them as courtesans, but that is only half the truth. True geisha are silk and flowers on the surface, but sharp steel understand.*/
== B_BCLARA @222 /*I like the sound of that. Can you teach me?*/
== BYOSHIM @223 /**laughs* Well, I cannot help with silk and I have no hand for flowers. But if you are serious, I could perhaps hone your skill with weapons just a bit. The blades of my people would suit your fighting style fairly well.*/
== B_BCLARA @224 /*That would be wonderful. Yes! Teach me!*/
== BYOSHIM @225 /*As you wish. We may begin next time we stop. I will expect such focus through every lesson so do not disappoint.*/
DO ~ApplySpellRES("_bSTRAP","_bClara") SetGlobal("_BBCLARAYOSH","GLOBAL",1)~
EXIT

//1st Edwin Banter - he talks first, male no CN romance
CHAIN IF WEIGHT #2 ~InParty("_bClara") IfValidForPartyDialog("Edwin") Gender("Edwin",MALE) InMyArea("_bClara") IfValidForPartyDialog("_bClara") Global("_BBCLARAEDWIN","GLOBAL",0) !Global("EdwinRomanceActive","GLOBAL",1) !Global("EdwinRomanceActive","GLOBAL",2)~ THEN BEDWIN _bClaraEdwin1
@265 /*Clara! You are pretty enough. You will warm my bed tonight.*/
DO ~SetGlobal("_BBCLARAEDWIN","GLOBAL",1)~
== B_BCLARA @266 /*No. Why would I do that?*/
== BEDWIN @267 /*(She refuses me? This is not possible!)*/
= @268 /*I am Edwin Odesseiron, do you not understand? The very fabric of the universe bends beneath my whims! I can summon genies and creatures of pure fire to destroy my enemies!*/
== B_BCLARA @269 /*That's nice. You may be a great wizard, but are you a rich merchant who lives in luxury? Or perhaps a noble lord who would raise my circumstances? You're not even a skilled mercenary who could save me in a fight.*/
= @270 /*What would I get out of this but disappointment? You are far too arrogant to be that great in bed.*/
== B_BCLARA IF ~Global("_bAnomenClaraRomance","GLOBAL",1)~ THEN @271 /*Besides, I've got something good going on with Anomen. If I play this right, I should get a title for my troubles and I think he's much cuter than you are anyway.*/
== B_BCLARA IF ~OR(2) Global("_bClaraAndCor","GLOBAL",1) Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN @272 /*Besides, in case you haven't noticed, I'm already married. Why would I risk my position for one so-so night with you?*/
== BEDWIN @273 /*But... But... I am Edwin Odesseiron!*/
== B_BCLARA @274 /*And Edwin Odesseiron will be sleeping by himself. I'm sure your ego will keep you plenty warm throughout the night.*/
== BEDWIN @275 /*(This insult cannot be borne. I must find a way to have her.)*/
EXIT

//1st Cernd Banter - must have started quest
CHAIN IF ~InParty("Cernd") InMyArea("Cernd") IfValidForPartyDialog("Cernd") IfValidForPartyDialog("_bClara") Global("_BBCLARACERND","GLOBAL",0) GlobalGT("CerndPlot","GLOBAL",0)~ THEN B_BCLARA _bClaraCernd1
@533 /*So you left your wife for love of nature? Are you just into trees that much?*/
DO ~SetGlobal("_BBCLARACERND","GLOBAL",1)~
== BCERND @534 /*It wasn't like that. I had a calling and she said she understood.*/
== B_BCLARA @535 /*Uh-huh, I'm sure she did. She probably got tired of you sneaking out to go “commune” with nature. Isn't that what you druids do?*/
== BCERND @536 /*Of course not! We speak with nature so that we may guard the balance. That is all.*/
== B_BCLARA @537 /*Really? You mean the rustle of spring leaves doesn't make you tingle? You don't find yourself lusting after the rough touch of bark?*/
== BCERND @538 /*Enough! I will not listen to your insults any longer.*/
== B_BCLARA @539 /*Hah. This druid has a temper.*/
EXIT

//1st Anomen Banter - Clara married Cor
CHAIN IF ~InParty("Anomen") InMyArea("Anomen") IfValidForPartyDialog("Anomen") IfValidForPartyDialog("_bClara") Global("_bLadyDelryn","GLOBAL",1) Global("_BBCLARACORBURN","GLOBAL",0)~ THEN B_BCLARA _bClaraAnomenBurn
@558 /*Come here, Anomen. Hold my pack for me.*/
DO ~SetGlobal("_BBCLARACORBURN","GLOBAL",1) ChangeStat("_bClara",CHR,1,ADD)~
== BANOMEN @559 /*I am not your beast of burden, Clara.*/
== B_BCLARA @560 /*That's Lady Mother to you. Is it not your duty to obey your parents in all things?*/
== BANOMEN @561 /*You are not my mother!*/
== BANOMEN IF ~Dead("COR")~ THEN @562 /*You are nothing but a black widow who lured my father to his death!*/
== BANOMEN IF ~!Dead("COR")~ THEN @563 /*You are nothing but a gold digger who lured my father to her bed!*/
== BANOMEN @564 /*It is bad enough that I must travel with you; I will not bow to your every whim. I may have lost my family name, but I still have my pride.*/
== B_BCLARA @565 /*Oh that's right, you are no longer a Delryn.*/
= @566 /*Forgive me, Anomen, you are correct. I am not your Lady Mother, and you are not my husband's son.*/
= @567 /*You are no one at all.*/
EXIT

//1st Imoen Banter - she talks first
CHAIN IF WEIGHT #-1 ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("Imoen2") IfValidForPartyDialog("_bClara") Global("_BBCLARAIMOEN","GLOBAL",0)~ THEN BIMOEN2 _bClaraImoen1
@568 /*So you're a thief and a conman, huh?*/
DO ~SetGlobal("_BBCLARAIMOEN","GLOBAL",1) ApplySpellRES("_bPICKP","_bClara")~
== B_BCLARA @569 /*I am NOT a conman.*/
== BIMOEN2 @570 /*Conwoman, sorry.*/
== B_BCLARA @571 /*I prefer to think of myself as an actress...*/
== BIMOEN2 @572 /*Don't we all? I don't know anything about conning, but before studying magic, I became a pretty good thief.*/
== B_BCLARA @573 /*Really? Could you offer some pointers?*/
== BIMOEN2 @574 /*Sure, if you tell me a story.*/
== B_BCLARA @575 /*Does it need to be true? That limits my options.*/
== BIMOEN2 @576 /*Who knows if any stories are true? Just make it fun though.*/
== B_BCLARA @577 /*Very well.*/
== BIMOEN2 @578 /*And so Clara began telling Imoen an amazing story...*/
== B_BCLARA @579 /*Are you narrating the story of me telling you a story?*/
== BIMOEN2 @580 /*Yes, but don't let that distract you.*/
== B_BCLARA @581 /*All right. I'll do my best to blow your mind.*/
EXIT

//1st Neera Banter - Neera talks first
CHAIN IF ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("NEERA") IfValidForPartyDialog("_bClara") Global("_BBCLARANEERA","GLOBAL",0)~ THEN BNEERA _bClaraNeera1
@688 /*I like how you can just vanish whenever you want. Most people have to use potions.*/
DO ~SetGlobal("_BBCLARANEERA","GLOBAL",1)~
== B_BCLARA @689 /*Or spells. We could avoid conflict entirely if the rest of you could just stay hidden too.*/
== BNEERA @690 /*I know of a spell for that! It's called Invisibility, 10-foot Radius!*/
== BNEERA @692 /*I can't seem to find a scroll though.*/
== B_BCLARA @693 /*I'll keep my eyes out.*/
= @694 /*You all spend so many hours resting that I have plenty of time for outside activities.*/
EXIT



//2nd Valygar Banter - still only forest so higher on list
CHAIN IF ~InParty("Valygar") InMyArea("Valygar") IfValidForPartyDialog("Valygar") IfValidForPartyDialog("_bClara") AreaType(FOREST) Global("_BBCLARAVALYG","GLOBAL",1)~ THEN B_BCLARA _bClaraValygar2
@351 /**whisper* Almost there. Just a little more.*/
== BVALYGA @352 /*I can hear you, Clara.*/
== B_BCLARA @353 /*Darn it! I almost had you that time.*/
== BVALYGA @354 /*Indeed, you did. You are learning quickly. The land does not mark your passage as it did before. Are you sure that you do not wish to be a ranger? You could almost pass for one already to the untrained eye.*/
== B_BCLARA @355 /*I don't think so. I like the city far too much for that. I would get too lonely out here by myself.*/
== BVALYGA @356 /*I suppose I can understand that. Though some of us are meant to be alone. It is safer that way when you destroy all that you touch.*/
== B_BCLARA @357 /*You shouldn't talk like that, you know. I don't think you're really cursed. Just because the rest of your family made some bad decisions doesn't mean that you're an awful guy.*/
= @358 /*If you were, you wouldn't be spending so much time teaching me about nature. I may not be as good as you, but I don't feel so clumsy out in the wild anymore.*/
DO ~ApplySpellRES("_BHIDE","_bClara") ApplySpellRES("_BMOVE","_bClara") SetGlobal("_BBCLARAVALYG","GLOBAL",2)~
== BVALYGA @359 /*I am glad to hear that. My presence brings danger to <CHARNAME> and your entire company, and sometimes I am certain I should leave. But at least I have been of use while I am here.*/
EXIT

//2nd Jan Banter
CHAIN IF ~InParty("Jan") InMyArea("Jan") IfValidForPartyDialog("Jan") IfValidForPartyDialog("_bClara") Global("_bBClaraJan","GLOBAL",1)~ THEN B_BCLARA _bClaraJan2
@84 /*Jan, Jan, I can do it! Look!*/
= @85 /*Shoot one of your bolts at me! Shoot it!*/
= @86 /*See, I just step to the side and catch. Do it again!*/
= @87 /*Step to the side and catch! I've been doing this with everyone. I got hit half a dozen times in the beginning, but now it's second nature!*/
DO ~ChangeStat("_bClara",DEX,1,ADD) SetGlobal("_bBClaraJan","GLOBAL",2)~
== BJAN @88 /*Excellent, now you are ready!*/
== B_BCLARA @89 /*I am! I am ready! What am I ready for?*/
== BJAN @90 /*To wear a pair of Jansen-Brand Micro-Macro Spectroscopes; I retrofitted this pair just for you. Did you know that they're the Official Spectroscopes of the Purple Brotherhood?*/
DO ~GiveItemCreate("_BSCOPE","_bClara",0,0,0)~
== B_BCLARA @91 /*You did?! Oh, Jan, they're wonderful!*/
= @92 /*What do they do?*/
== BJAN @93 /*Well, for starters they make traps look like they're surrounded by a giant red outline.*/
= @94 /*I will show you more as we go.*/
EXIT

//Second Korgan Banter
CHAIN IF ~InParty("Korgan") InMyArea("Korgan") IfValidForPartyDialog("Korgan") IfValidForPartyDialog("_bClara") !AreaType(DUNGEON) Global("_BBCLARAKOR","GLOBAL",1)~ THEN B_BCLARA _bClaraKorgan2
@145 /*It's working, Korgan, I do feel stronger.*/
DO ~ChangeStat("_bClara",STR,1,ADD) SetGlobal("_BBCLARAKOR","GLOBAL",2)~
== BKORGAN @146 /*Hah, yer as weak as ever. That last fool almost choked ye to death wit' his bare hands.*/
== B_BCLARA @147 /*He was twice my size and he did not. His guts were falling out. He would have collapsed before I died.*/
== BKORGAN @148 /*Well, no way t' know now, girly, since I had t' dull a good axe by choppin' through his helmet.*/
= @149 /*Waste of a good helmet too.*/
= @150 /*What ye need, lass, is a brawl. Not this knifin' drunk farmers and sailors we been doin'. Ye need to get yer knuckles bloody and give as good as ye take.*/
== B_BCLARA @151 /*So I'm supposed to just go into a bar and pick a fight? I am Caroline Aurora Lucia Rosena Silvershield of Beregost! I have a reputation to uphold.*/
== BKORGAN @152 /*So ye need t' be in a bar where no one knows ye...*/
= @153 /*Ye need a dwarf bar! With strong dwarven ale, an' strong dwarven women! One of them will be happy t' fight wit' ye.*/
== B_BCLARA @154 /*Now you're just making things up. There are no dwarf bars around here.*/
== BKORGAN @155 /*There are dwarf bars everywhere. We will stop by th' next one we're near. Get ye some drink! And a woman!*/
EXIT

//2nd Aerie Banter
CHAIN IF ~InParty("Aerie") InMyArea("Aerie") IfValidForPartyDialog("Aerie") IfValidForPartyDialog("_bClara") Global("_BBCLARAAERIE","GLOBAL",1)~ THEN B_BCLARA _bClaraAerie2
@507 /*Hey, Aerie, this Chitikka Fastpaws is like super fast, right?*/
DO ~SetGlobal("_BBCLARAAERIE","GLOBAL",2)~
== BAERIE @508 /*I- I mean, I guess so. That's why I always call on h-him when I'm trying to move quickly.*/
== B_BCLARA @509 /*Right. So if I pray to Chiktikka Fastpaws really, really hard, he'll have to make me faster. That's how it works.*/
== BAERIE @510 /*I d-don't think that's exactly....*/
== B_BCLARA @511 /*Yes, it is. Prayers for blessings. That's the deal. Why would anyone bother to worship a god otherwise?*/
== BAERIE @512 /*Well, s-some of us j-just want to say thank you. And I f-find it comforting to know that s-someone is listening.*/
== B_BCLARA @513 /*Uh-huh, whatever. Let's do this.*/
= @514 /*Chiktikka Fastpaws, hear my prayers. Chiktikka Fastpaws, give me your boon. Chiktikka Fastpaws give me the speed of a raccoon.*/
= @515 /*....I feel something.... I feel his power.... Did that mouse just curse at me? Damn it! I said speed, not speech. I don't want to talk to animals!*/
== BAERIE @516 /**giggles* You got your blessing, Clara. Y- you should be grateful.*/
EXIT

//2nd Viconia Banter (triggered in Clara's script file)
CHAIN IF WEIGHT #-5 ~InParty("Viconia") Detect("Viconia") IfValidForPartyDialog("Viconia") InParty("_bClara") IfValidForPartyDialog("_bClara") Global("_BBCLARAVIC","GLOBAL",3)~ THEN B_BCLARA _bClaraViconia2
@98 /*Okay, so I mix the blue with the green.*/
== BVICONI @99 /*Good. Now... carefully pour that into the pitcher.*/
== B_BCLARA @100 /*Poured. Now what? And why are you farther away?*/
== BVICONI @101 /*Now you are done. This is one of the first potions I learned to make. The resulting solution is extremely poisonous and teaches respect and care for the process.*/
= @102 /*You were a little careless and the drop that splashed on the skin of your neck will kill you.*/
== B_BCLARA @103 /*What? How do I stop it? Help me! Please!*/
== BVICONI @104 /*More help? You are a demanding child. Very well, tell me a secret, and tell me the truth.*/
== B_BCLARA @105 /*A secret? What are you talking about?*/
== BVICONI @106 /*A secret is something that no one else knows. Hurry now; you do not have much time.*/
== B_BCLARA @107 /*My father was sewn into a deer skin and hunted down with dogs.*/
== BVICONI @108 /*Many people must know that.*/
== B_BCLARA @109 /*Everyone who knows it is dead. I killed most of them.*/
== BVICONI @110 /*How?*/
== B_BCLARA @111 /*I served them poisoned food and wine.*/
= @112 /*You have your secret. Don't let me die.*/
== BVICONI @113 /*Did you watch them die?*/
== B_BCLARA @114 /*Yes.*/
== BVICONI @115 /*Did anyone else die too?*/
== B_BCLARA @116 /*The entire feast. Sixty-seven people, four cats, and seven dogs.*/
= @117 /*Now please save me...*/
== BVICONI @118 /*You counted the dead?*/
== B_BCLARA @119 /*Before I fled, yes.*/
= @120 /*It hurts so much... I am going to die, aren't I?*/
== BVICONI @121 /*Yes, but don't worry. I keep my promises.*/
DO ~SetGlobal("_BBCLARAVIC","GLOBAL",4) Kill("_bClara")~
= @122 /*<CHARNAME>, it seems our little cut-purse has expired. We should raise her.*/
EXIT

//On Raise
CHAIN IF WEIGHT #-5 ~InParty("Viconia") Detect("Viconia") IfValidForPartyDialog("Viconia") InParty("_bClara") IfValidForPartyDialog("_bClara") 
	Global("_BBCLARAVIC","GLOBAL",4)~ THEN B_BCLARA _bClaraViconia3
@123 /*You let me die!*/
DO ~SetGlobal("_BBCLARAVIC","GLOBAL",5)~
== BVICONI @124 /*Cease your mewling. You are alive, aren't you? Did you learn anything?*/
== B_BCLARA @125 /*Yes, but it hurt!*/
= @126 /*Still... I know how to make poison now. Delayed death poison that kills with a drop on the skin. Oh thank you, Viconia. Thank you.*/
== BVICONI @127 /*Do not thank me yet. It is nearly as dangerous to the user as the target; do not rely on me to raise you endlessly.*/
== B_BCLARA @128 /*I will be careful! I will! Who should I kill first?*/
== BVICONI @129 /*This world is full of useless rivvin. I am sure you will find someone who deserves to die.*/
EXIT

//Second Jaheira Banter
CHAIN IF ~IfValidForPartyDialog("Jaheira") IfValidForPartyDialog("_bClara") InMyArea("_bClara") Global("B_BClaraJaheira","GLOBAL",1)~ THEN BJAHEIR _bClaraJaheiraBanter2
@665 /*So you want to live. You want security. And clearly you want gold.*/
DO ~ChangeStat("_bClara",WIS,1,ADD) SetGlobal("B_BClaraJaheira","GLOBAL",2)~
== B_BCLARA @666 /*Gold buys safety. It buys freedom.*/
== BJAHEIR @667 /*I am not arguing with you; I am merely trying to assess you.*/
== B_BCLARA @668 /*And...?*/
== BJAHEIR @669 /*You are no danger to us. You would sacrifice us to save your own skin, but you are too terrified and awed by <CHARNAME> to betray us. I believe you are on the whole a benefit.*/
== B_BCLARA @670 /*Awww, thanks! I think you're a benefit too.*/
== BJAHEIR @671 /*You have no moral compass of any kind, but neither are you full of bitterness and hate.*/
= @672 /*Whoever wronged you, you have already taken your revenge.*/
= @673 /*Was it worth it? Would you do it again?*/
== B_BCLARA @674 /*Yes. Absolutely.*/
== BJAHEIR @675 /*And there your fierceness shows through. You fit this group nicely.*/
== B_BCLARA @676 /*What drives you, Jaheira?*/
== BJAHEIR @677 /*Duty to nature and to the balance.*/
= @678 /*Love, for those with whom I choose to share my life.*/
= @679 /*And revenge. Always revenge.*/
EXIT

//Second Dorn Banter
CHAIN IF ~InParty("DORN") InMyArea("DORN") IfValidForPartyDialog("DORN") IfValidForPartyDialog("_bClara") Global("_BBCLARADORN","GLOBAL",1)~ THEN B_BCLARA _bClaraDorn2
@130 /*Okay, we have the poison. Now what? How do we coat our weapons without dying?*/
== BDORN @131 /*Very carefully. This poison is extremely sticky and has to enter your opponent's bloodstream so place it on the part of your weapon that is going to break the skin.*/
= @132 /*You should keep a bottle of antidote close at hand in case you accidentally cut yourself. If you drink it quickly enough, you will survive.*/
== B_BCLARA @133 /*That's simple enough. Thanks!*/
DO ~SetGlobal("_BBCLARADORN","GLOBAL",2)~
= @134 /*...*/
= @135 /*Umm, can I ask you a question? You're attracted to me, right?*/
== BDORN @136 /*Very much so.*/
== B_BCLARA @137 /*So why didn't you play along earlier? You could've had me... repeatedly even... but you turned me down flat.*/
== BDORN @138 /*Any whore in Amn will bed me for enough coin. Do you know what it is like to bed someone who doesn't really want you? Who is actually disgusted by you?*/
= @139 /*Of course you don't. A pretty young girl like you? Every man you've lain with has craved you with their every breath. You are the very object of desire.*/
== B_BCLARA @140 /*Oh. Well... I would've pretended really well. You wouldn't have been disappointed.*/
== BDORN @141 /*Hmpf. I am tired of lies and deception. At least this way, we both know where we stand.*/
== B_BCLARA @142 /*You know what, Dorn? Under your evil-murderer-routine, you're actually a pretty sweet guy.*/
== BDORN @143 /*Hah. I have slaughtered hundreds. Peasants. Women. Children. I'd strike you down in a heart-beat if it was to my advantage.*/
== B_BCLARA @144 /*Yeah... but I think you'd feel bad about it.*/
EXIT

//2nd Nalia Banter (SOA version)
CHAIN IF ~InParty("Nalia") InMyArea("Nalia") IfValidForPartyDialog("Nalia") IfValidForPartyDialog("_bClara") Global("_BBCLARANALIA","GLOBAL",1)~ THEN B_BCLARA _bClaraNalia2
@284 /*….so I turned to my father and – still wearing both the bed spread and my mother's best tiara – gave him a perfect curtsy, the one that I'd been practicing for weeks. He was so confused that I got off with just a scolding and the page boy managed to slip out entirely unseen.*/
== BNALIA @285 /**laughs* You had all the best adventures. I wish we'd met when I was younger. The only children my parents let me play with were the Roenalls and they're just terrible.*/
== B_BCLARA @286 /*I wasn't exactly supposed to be playing with the help. But we were the only nobles around for miles and I was bored out of my mind. Sometimes we would travel from our estate into Beregost, but it isn't exactly a bustling metropolis, not like Baldur's Gate.*/
= @287 /*Why do you think I wanted to be an actress? A theater troupe travels around the world and meets interesting people; noblewomen are just supposed to look nice and talk about themselves.*/
DO ~SetGlobal("_BBCLARANALIA","GLOBAL",2) ChangeStat("_bClara",DEX,1,ADD) ChangeStat("Nalia",DEX,1,ADD)~
== BNALIA @288 /*I know what you mean. Our castle is so far away from everything and when I could attend a ball, I wasn't very popular. I didn't wear the newest fashions and I've never cared for primping the way most nobles do. I usually spent the evening talking to the waitstaff on the sidelines or listening to the players by myself.*/
= @289 /**sigh* I do miss the music. That and dancing are the only things I truly miss about the life we've left behind.*/
== B_BCLARA @290 /*So why don't we go dancing?*/
== BNALIA @291 /*Can we do that? There are no balls this time of year.*/
== B_BCLARA @292 /*Not a ball, silly. I've spent a lot of time among the common folk since leaving Beregost and I know some places in Athkatla where we could dance the whole night through. They even play a proper waltz every now and then.*/
= @293 /*Next time <CHARNAME> actually takes a break, let's go on an adventure of our own. We deserve a night of fun after all this dungeon crawling.*/
== BNALIA @294 /*All right, I'm in. Let's do this.*/
= @295 /*As long as you practice with me; I haven't danced in ages and I don't want to embarrass myself when we arrive.*/
== B_BCLARA @296 /*Of course, what are friends for? We'll practice all the latest steps and then we'll go out on the town.*/
EXIT

//2nd Yoshimo Banter
CHAIN IF ~InMyArea("Yoshimo") IfValidForPartyDialog("Yoshimo") InParty("Yoshimo") IfValidForPartyDialog("_bClara") Global("_BBCLARAYOSH","GLOBAL",1)~ THEN B_BCLARA _bClaraYosh2
@226 /*Hyaa! Hyaa!*/
= @227 /*How was that?*/
DO ~ApplySpellRES("_BKATA","_bClara") SetGlobal("_BBCLARAYOSH","GLOBAL",2)~
== BYOSHIM @228 /*Much smoother, though a little loud. We shall make a proper warrior of you yet.*/
= @229 /*But you are still forgetting the footwork now and then. A true geisha should be able to kill three samurai without displacing a single hair and then return to speaking about philosophy.*/
== B_BCLARA @230 /*Your homeland sounds amazing. I'd like to visit it someday.*/
== BYOSHIM @231 /*And I would like to show you, though this Yoshimo doubts our future will allow it. Perhaps if we are lucky.*/
= @232 /*For the moment, I would be happy to teach you a few words of the language. My people will appreciate your efforts and knowing several phrases would make the locals look on you more kindly should you get the chance someday.*/
== B_BCLARA @233 /*I would like that.... Hey, Yoshimo?*/
== BYOSHIM @234 /*Yes, my friend?*/
== B_BCLARA @235 /*Why are you being so nice to me? I mean, plenty of men are glad to do me favors, but they usually expect some kind of payment in return. You haven't even tried to get a grope in and I've given you plenty of opportunities.*/
== BYOSHIM @236 /*You are an attractive girl, Clara, this is true and if we'd met under other circumstances, I might have offered to buy you a drink and see where the night could lead.*/
= @237 /*But we are traveling companions and that is a different matter. Your strength is my strength and while you have faced hardship already, you are still quite young. As the older, wiser adventurer, it is Yoshimo's responsibility to ensure that you do not make my same mistakes.*/
= @238 /*It is far too easy to make deals with the wrong person or start a fight you cannot win.*/
== B_BCLARA @239 /*I know that. I did get killed by Hexxat after all. But it seems like everyone wants to kill us and I don't want to die again.*/
== BYOSHIM @240 /*Exactly, my friend. None of us wish to die and that is why I have taken you beneath my wing. If you are skilled with this katana, then you may stab my enemies before they can stab me and that would be best for all of us, I think.*/
= @241 /*Now, let's get back to practicing. You still have drills to run.*/
== B_BCLARA @242 /*I- okay, Yoshimo. Thanks.*/
EXIT

//2nd Edwin Talk - male, no romance
CHAIN IF WEIGHT #2 ~InParty("Edwin") IfValidForPartyDialog("Edwin") Gender("Edwin",MALE) InMyArea("Edwin") IfValidForPartyDialog("_bClara") Global("_BBCLARAEDWIN","GLOBAL",1) !Global("EdwinRomanceActive","GLOBAL",1) !Global("EdwinRomanceActive","GLOBAL",2)~ THEN B_BCLARA _bClaraEdwin2
@375 /*Edwin, you can stop staring; I am still not interested.*/
== BEDWIN @376 /*That is only because you do not understand my true magnificence. (How this is true, I cannot fathom since she has seen my might in battle.)*/
= @377 /*If you will only cease your prattling and listen, you will fall at my feet in awe.*/
== B_BCLARA @378 /*Oh, really? Are you suddenly the richest noble in Athkatla?*/
== BEDWIN @379 /*No, of course not! You and your obsession with wealth. So plebeian.*/
== B_BCLARA @380 /*Your pretty sparkles won't feed me when I'm starving. You need good solid coin for that.*/
== BEDWIN @381 /*That is.. (uggh) not the point. And they are more than sparkles.*/
= @382 /*Take this. I will show you.*/
== B_BCLARA @383 /*It's an earring, Edwin. I have seen these before.*/
== BEDWIN @384 /*Not like this. I have watched you closely in these fights our oh-so-fearless leader keeps on starting. You prefer to hide in the shadows and stab your foes from behind. (A decent strategy if one is not the great Edwin Odesseiron.)*/
= @385 /*This earring will assist you in your efforts, protect you as you've demanded that I do. You need only touch it and a spell will wrap you in illusions to escape your enemies.*/
== B_BCLARA @386 /*Really? That is useful.*/
== BEDWIN @387 /*You see now? Edwin Odesseiron is far superior to any other suitor you could have. What is a noble or a merchant compared to my sheer brilliance? Next time we are allowed to rest, you will join me in my bed.*/
== B_BCLARA @388 /*No. I won't.*/
= @389 /*But thank you for the earring. At least I won't have to put up with your staring anymore.*/
DO ~ApplySpell("_bClara",WIZARD_SHADOW_DOOR) SetGlobal("_BBCLARAEDWIN","GLOBAL",2)~
== BEDWIN @390 /*Blast! She got away! (That did not go as I expected. I shall have to try again.)*/
EXIT

//2nd Mazzy Banter
CHAIN IF ~InParty("Mazzy") InMyArea("Mazzy") IfValidForPartyDialog("Mazzy") IfValidForPartyDialog("_bClara") !AreaCheck("AR4500") Global("_BBCLARAMAZ","GLOBAL",1)~ THEN B_BCLARA _bClaraMazzy2
@95 /*Mazzy, I think I am getting the hang of it. Watch me hit that mouse!*/
= @96 /*There! Mouse for lunch!*/
DO ~ApplySpellRES("_BSBOW","_bClara") SetGlobal("_BBCLARAMAZ","GLOBAL",2)~
== BMAZZY @97 /*Meat brought down by your own hand is always the most virtuous. And yes, you are progressing rapidly.*/
EXIT

//2nd Neera Banter - she talks first
CHAIN IF ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("NEERA") IfValidForPartyDialog("_bClara") Global("_BBCLARANEERA","GLOBAL",1)~ THEN BNEERA _bClaraNeera2
@695 /*So, Clara, where *do* you keep going whenever we rest? Do you have another party you adventure with in your spare time or something?*/
== B_BCLARA @696 /*Oh just a special project of mine. I have a lot of other interests, you know...*/
== BNEERA @698 /*Nope, I don't know. That's why I'm asking.*/
== B_BCLARA @699 /*Okay, so I found this mage, a lecherous old goat with no friends. Classic wizard.*/
= @700 /*Umm... present company excepted.*/
= @701 /*Anyway, I pretended to be the servant of a merchant who sells spell components. The wizard wanted all kinds of crazy stuff, like the fur of an albino black wolf.*/
== BNEERA @702 /*Umm, how do you tell that apart from white wolf fur?*/
== B_BCLARA @703 /*You can't! That's the beauty of it. He also wanted other weird things like dryad lips, the left kidney of a man killed by his brother, and then a bunch of really sexual stuff that I don't want to repeat.*/
== BNEERA @704 /*I don't blame you... wizards can be really creepy.*/
= @705 /*I think my body's a spell component. It's one of the reasons the Red Wizards keep hunting me.*/
== B_BCLARA @706 /*Long story short, I pilfered as much of his stuff as I could.*/
== BNEERA @708 /*How'd you escape?*/
== B_BCLARA @709 /*Out the front door! He expects me to return soon with a shipment of rare components from my master and my "services" thrown in as a bonus.*/
== BNEERA @710 /*Ewwww...*/
== B_BCLARA @711 /*Yeah... try not to think about that. The important thing is all the cool things I got, including these Invisibility 10-foot radius scrolls. Here you go.*/
DO ~GiveItemCreate("SCRL1J","NEERA",3,0,0)~
== BNEERA @712 /*Thanks! If there's anything I can do for you in return...*/
== B_BCLARA @713 /*Yes! Read with me. My reading isn't as accomplished as I would like, but you're a mage... so I thought...*/
== BNEERA @714 /*Of course! I have just the book; we'll read it together!*/
DO ~SetGlobal("_BBCLARANEERA","GLOBAL",2) ChangeStat("_bClara",INT,1,ADD) ChangeStat("_bClara",LORE,10,ADD) ChangeStat("NEERA",LORE,10,ADD)~
= @715 /*"Magical Items and Their Identifying Properties, Volume I: Aardvark Scale Mail through Gauntlets of Goblin-Slaying.”*/
EXIT

//2nd Minsc Banter
CHAIN IF ~InParty("Minsc") InMyArea("Minsc") IfValidForPartyDialog("Minsc") IfValidForPartyDialog("_bClara") Global("_BBCLARAMINSC","GLOBAL",1)~ THEN B_BCLARA _bClaraMinsc2
@433 /**squeak. squeak. squeak.* Come on, Boo. You want some hard-tack? Or maybe a cracker?*/
DO ~SetGlobal("_BBCLARAMINSC","GLOBAL",2)~
== BMINSC @434 /*What are you doing, Clara?*/
== B_BCLARA @435 /*Uhhh, nothing? Nothing at all. I wasn't trying to steal your hamster. Please don't murder me.*/
== BMINSC @436 /*Of course there is no stealing. Friends cannot steal each other. Boo says he likes the salty ones. You should bring those next.*/
== B_BCLARA @437 /*Can you really understand him? I've been trying for days but all I hear is squeaking. I thought that maybe I just needed to get closer and listen carefully.*/
== BMINSC @438 /*You want to listen to Boo? No one listens to Boo. Most people just laugh behind our backs. It used to make Minsc sad, but it's just jealousness. Everyone wants a miniature giant hamster of their own.*/
== B_BCLARA @439 /*Well, that's not me. I'm serious. Teach me how to talk to Boo.*/
== BMINSC @440 /*Yes, teachering! First, you must sit. Then you must listen. Open your ears.*/
= @441 /*Now, squeak Boo. Squeak so she can hear.*/
== B_BCLARA @442 /*I don't... It just sounds the same. Okay, Clara, concentrate...*/
= @443 /*I- I think I'm getting it. Is that...?*/
= @444 /**squeak* Yes, I understood that. I can hear everything.........*/
== BMINSC @445 /*You think like Minsc now. You talk to Boo and listen too.*/
== B_BCLARA @446 /*...Ohhh, my brain hurts.*/
== BMINSC @447 /*Yes. You should not think like Minsc too often. Your mind is not so strong.*/
EXIT

//2nd Cernd Banter
CHAIN IF ~InParty("Cernd") InMyArea("Cernd") IfValidForPartyDialog("Cernd") IfValidForPartyDialog("_bClara") AreaType(OUTDOOR) Global("_BBCLARACERND","GLOBAL",1)~ THEN B_BCLARA _bClaraCernd2
@540 /*Cernd, what kind of tree is that?*/
DO ~SetGlobal("_BBCLARACERND","GLOBAL",2)~
== BCERND @541 /*Oh, it's a-*/
== B_BCLARA @542 /*Cernd, is that a sparrow over there?*/
== BCERND @543 /*No, that's-*/
== B_BCLARA @544 /*Cernd, will you turn into a werewolf?*/
== BCERND @545 /*That isn't-*/
== B_BCLARA @546 /*Cernd, can I-*/
== BCERND @547 /*No! For the love of nature, no! That is an elm, the bird is a pigeon, and if you don't stop pestering me, you will see my werewolf form up close and personal!*/
== B_BCLARA @548 /*Oohh, scary. Is the big bad wolf having a rough day? I thought druids were supposed to be calm no matter what.*/
== BCERND @549 /*That is the goal. But you could try the patience of a saint. Tell me, what will it take for you to be SILENT?*/
== B_BCLARA @550 /*Hmm, I like money. More gold is always good.*/
== BCERND @551 /*I am a druid, Clara. I live off the bounty of nature, not some secret stash of coin.*/
== B_BCLARA @552 /**shrug* Power then. Whatever your grand philosophy, money and power are what makes the world go round.*/
== BCERND @553 /*The earth shudders at the thought of giving you more power. But I suppose I could assist you with finding traps and such. That seems a fairly harmless trade for the chance to walk in peace.*/
= @554 /*Do we have a deal?*/
== B_BCLARA @555 /*Done and done. Lay your magic on me.*/
== BCERND @556 /*All right. You had best stay still for this.*/
= @557 /*I have an ill feeling about this bargain. As though the flutter of a moth has caused a hurricane.*/
EXIT

//2nd Keldorn Banter
CHAIN IF ~InParty("Keldorn") InMyArea("Keldorn") IfValidForPartyDialog("Keldorn") IfValidForPartyDialog("_bClara") Global("_BBCLARAKELD","GLOBAL",1)~ THEN B_BCLARA _bClaraKeldorn2
@368 /*You are a great seeker of truth, Sir Keldorn. Do all paladins share your ability to see the true nature of their foes?*/
DO ~SetGlobal("_BBCLARAKELD","GLOBAL",2)~
== BKELDOR @369 /*Most do. A paladin is granted such gifts by their god to help them fight injustice in all forms. True evil often wears a fairer countenance and seeing past the surface is vital in hunting such creatures down.*/
= @370 /*Of course, as with all things, it is not infallible. It takes skill and practice for a paladin to see the truth completely and there are ways for evil to turn our sight aside.*/
== B_BCLARA @371 /*Really? But then, how can we trust anyone? That's terrible!*/
== BKELDOR @372 /*There is no need to worry about such things, I promise you. The ability to block my gifts is rare. There are a few magic items that were built for such a purpose and I have heard rumors that some monks use mental disciplines to hide their true intent, though I have not encountered them myself.*/
= @373 /*In my experience, the most dangerous evils are those who truly believe what they are saying because the lies upon their lips will read as honesty. However, even then their actions will speak out and show the truth eventually.*/
== B_BCLARA @374 /*That is a relief. I am so glad to know that I can trust you to protect us against evils of all kinds. (Do not laugh. You believe that. You believe it honestly.)*/
EXIT

//2nd HaerDalis Banter
CHAIN IF ~InParty("HaerDalis") InMyArea("HaerDalis") IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("_bClara") Global("_BBCLARAHD","GLOBAL",1)~ THEN B_BCLARA _bClaraHaerDalis2
@329 /*Haer'Dalis, can I ask you a question?*/
DO ~SetGlobal("_BBCLARAHD","GLOBAL",2)~
== BHAERDA @330 /*Of course. What words of wisdom do you seek from this sparrow's lips? Just ask and he will speak them to the wind.*/
== B_BCLARA @331 /*How do actors manage all those quick changes during a performance? Are they just really stealthy or is there some trick to it?*/
== BHAERDA @332 /*Not the question I expected, my silent feline. I thought your heart no longer yearned to walk the stage?*/
== B_BCLARA @333 /*That doesn't mean I'm not still curious. The first time I saw a play, I thought that it was magic when the plain old crone became a princess right before my eyes. But when I asked my father, he said that the performer was simply wearing a second costume underneath and she removed the first too fast for us to see.*/
= @334 /*Was he right? Even as a child, I wanted to be an actress and my parents always indulged me when I put on a play. But while I learned to hide behind the scenery and move with silent footsteps, I never could quite figure out the knack of those quick-changes. My outfits were always stubbornly attached.*/
== BHAERDA @335 /*This sparrow will let you in on a secret. I can cross blades with the best of them, but the fastest hands in all the planes still stumbled on those clasps.*/
= @336 /*So while some relied on stealth and others on distraction, I used a touch of magic to bring my characters alive.*/
== B_BCLARA @337 /*Really? Isn't that a little wasteful?*/
== BHAERDA @338 /*Nay, what better place to spend my power than in making this sparrow's audience gasp and startle with delight. I create a door...*/
= @339 /*I step within...*/
= @340 /*...and I am gone from sight until I reappear across the stage transformed.*/
== B_BCLARA @341 /*That was fantastic!*/
= @342 /*Can you teach me how to do that? Or would I have to be a wizard?*/
== BHAERDA @343 /*Most would tell you yes, such spells are only gifted to those who feel the magic singing in their veins. But this bard knows better. I have picked up many tricks across the planes and for this, a willing student may learn the song's refrains.*/
EXIT

//2nd Wilson Banter - he talks first
CHAIN IF ~InMyArea("_bClara") IfValidForPartyDialog("WILSON") IfValidForPartyDialog("_bClara") Global("_bBClaraWilson","GLOBAL",1)~ THEN BWILSON _bClaraWilson2
@761 /*Sniff sniff.*/
DO ~SetGlobal("_bBClaraWilson","GLOBAL",2)~
== B_BCLARA @762 /*Thanks, Wilson, though I still want to ride you.*/
DO ~ChangeStat("_bClara",CON,1,ADD)~
== BWILSON @763 /*Growl!*/
== B_BCLARA @764 /*Yes, I know that would be unfair.*/
== BWILSON @765 /*Roar!*/
== B_BCLARA @766 /*Yes, I realize that you're not a horse!*/
= @767 /*But we'd be so great together! You mauling people... me shooting others...*/
== BWILSON @768 /*Moan. Whine...*/
== B_BCLARA @769 /*Really? But you're so good at it.*/
= @770 /*I guess it's a good thing you don't like hurting people.*/
== BWILSON @771 /*Snuffle... Roar!*/
== B_BCLARA @772 /*Well of course you would. Everyone likes killing people if they're allowed to eat them.*/
== BWILSON @773 /*Growl. Growl... Sniff.*/
== B_BCLARA @774 /*It's not just you. <CHARNAME> doesn't let me eat the people I kill either.*/
= @775 /*They'd probably taste awful though. We're better off eating deer.*/
EXIT

//2nd Imoen Banter - she talks first
CHAIN IF WEIGHT #1 ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("Imoen2") IfValidForPartyDialog("_bClara") Global("_BBCLARAIMOEN","GLOBAL",1)~ THEN BIMOEN2 _bClaraImoen2
@582 /*Do you have time for a story?*/
== B_BCLARA @583 /*Once upon a time there was a little girl. Her father was rich and her mother was beautiful and she had everything she could want in the world.*/
== BIMOEN2 @584 /*I like it already.*/
== B_BCLARA @585 /*However, an evil baron who lived nearby was jealous of her father and had him murdered. Heartbroken and impoverished, the girl and her mother suffered on whatever meager scraps they could find.*/
== BIMOEN2 @586 /*But it all turns out okay, right?*/
== B_BCLARA @587 /*Starving and homeless, the mother took sick and died and the girl went on alone.*/
== BIMOEN2 @588 /*And now it gets better?*/
== B_BCLARA @589 /*Having nowhere else to turn, the girl took a job in the estate of the evil baron who had killed her father.*/
= @590 /*She cleaned his floors and washed his pots. She was beaten regularly by his meaner servants and was sometimes taken advantage of by the household guards.*/
== BIMOEN2 @591 /*It's not getting better...*/
== B_BCLARA @592 /*But she never lost the hope that some day her life would improve.*/
= @593 /*Skilled, charming, and hard-working, she gradually gained more and more responsibilities and became a trusted and respected servant.*/
= @594 /*And she lived happily ever after.*/
== BIMOEN2 @595 /*What? That's a horrible story! She just served the evil baron forever?*/
== B_BCLARA @596 /*Nothing lasts forever, but that is the end of this story. Now tell me more about traps.*/
DO ~ChangeStat("_bClara",TRAPS,20,ADD) SetGlobal("_BBCLARAIMOEN","GLOBAL",2)~
== BIMOEN2 @597 /*Oh... fine. But after that I want another one.*/
EXIT

//2nd Rasaad Banter - he talks first
CHAIN IF WEIGHT #1 ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("RASAAD") IfValidForPartyDialog("_bClara") Global("_BBCLARARAS","GLOBAL",1)~ THEN BRASAAD _bClaraRasaad2
@626 /*Clara, my face is up here.*/
== B_BCLARA @627 /*Whoops, sorry. I got distracted.*/
== BRASAAD @628 /*That seems to happen a lot. I'm not sure you're truly suited for the Sun Soul path.*/
== B_BCLARA @629 /*I don't know what you mean. I've really enjoyed your high kicks and your backbends and ooh, the splits. Those are definitely my favorite.*/
== BRASAAD @630 /*Enough. If you will not treat these disciplines with the respect that they deserve, then it is time to end your training. It has clearly been a waste.*/
== B_BCLARA @631 /*Aww, don't say that. I'm definitely more flexible than I was before.*/
DO ~SetGlobal("_BBCLARARAS","GLOBAL",2) ChangeStat("_bClara",DEX,1,ADD) ChangeStat("RASAAD",DEX,1,ADD)~
= @632 /*But I suppose it's true I'm not a huge fan of physical exertion. Can I still watch sometimes?*/
== BRASAAD @633 /**sigh* Fine. As long as you keep your comments to yourself.*/
EXIT



//3rd Nalia Banter - triggers
CHAIN IF WEIGHT #-10 ~InParty("Nalia") InMyArea("Nalia") IfValidForPartyDialog("Nalia") IfValidForPartyDialog("_bClara") Global("_BBCLARANALIA","GLOBAL",4)~ THEN B_BCLARA _bClaraNalia3
@297 /*Are you ready, Nalia?*/
DO ~UndoExplore() SetGlobal("_BBCLARANALIA","GLOBAL",5) ChangeStat("_bClara",CON,1,ADD) ChangeStat("Nalia",CON,1,ADD)~
== BNALIA @298 /*Yes, I'm ready. How do I look? I tried to make my dress less fancy so I won't stand out too much.*/
== B_BCLARA @299 /*You look beautiful. That's perfect. Those boys won't know what hit them when we walk through the door. We'll have admirers fighting for the chance to touch our hands.*/
== BNALIA @300 /*You just mean for dancing, right?*/
== BNALIA IF ~Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN @301 /*I wouldn't want <CHARNAME> to get the wrong idea.*/
== B_BCLARA @302 /*Don't worry. We are headed to a semi-respectable establishment and if anyone tries to push things, well, that's what a dagger is for. Stick with me and you'll be fine.*/
= @303 /*We'll have some drinks, dance to a few songs, and return before our fearless leader even knows that we were gone.*/
= @304 /*...And here we are: Felix's Flamboyant Festhall, let your eyes just drink it in.*/
== BNALIA @305 /*...Oh wow, look at the lights and the music... There's so many people. (Are they supposed to dance that close together?)*/
== B_BCLARA @306 /*Here, drink this. The purple ones will keep you dancing all night long.*/
= @307 /*Now, come on, I love this song. Hey, fellas, you wanna dance with us?*/
== CRODRU01 IF ~AreaCheck("AR0021") InMyArea("_bClara")~ THEN @308 /*We would be delighted. Hello missy, would you care to take my hand?*/
== SBCUST01 IF ~AreaCheck("AR0313") InMyArea("_bClara")~ THEN @308 
== MTOWN6 IF ~AreaCheck("AR0406") InMyArea("_bClara")~ THEN @308 
== FFCUST04 IF ~OR(2) AreaCheck("AR0509") AreaCheck("AR0522") InMyArea("_bClara")~ THEN @308 
== DELTOW01 IF ~AreaCheck("AR0513") InMyArea("_bClara")~ THEN @308 
== WCUST03 IF ~AreaCheck("AR0704") InMyArea("_bClara")~ THEN @308
== DELTOW03 IF ~AreaCheck("AR0709") InMyArea("_bClara")~ THEN @308 
== BNALIA @309 /*Of course, thank you. Though I don't think I know this one.*/
== CRODRU01 IF ~AreaCheck("AR0021") InMyArea("_bClara")~ THEN @310 /*Don't worry. I'll take good care of you.*/
== SBCUST01 IF ~AreaCheck("AR0313") InMyArea("_bClara")~ THEN @310
== MTOWN6 IF ~AreaCheck("AR0406") InMyArea("_bClara")~ THEN @310
== FFCUST04 IF ~OR(2) AreaCheck("AR0509") AreaCheck("AR0522") InMyArea("_bClara")~ THEN @310
== DELTOW01 IF ~AreaCheck("AR0513") InMyArea("_bClara")~ THEN @310
== WCUST03 IF ~AreaCheck("AR0704") InMyArea("_bClara")~ THEN @310
== DELTOW03 IF ~AreaCheck("AR0709") InMyArea("_bClara")~ THEN @310
== CROWEN01 IF ~AreaCheck("AR0021") InMyArea("_bClara")~ THEN @311 /*"Oh when I was a younger lass,
                  Or so my mother told me,
                  That if I tried to kiss a boy
                 My lips would grow all moldy..."*/
== SBWENCH IF ~AreaCheck("AR0313") InMyArea("_bClara")~ THEN @311
== WENCH1 IF ~AreaCheck("AR0406") InMyArea("_bClara")~ THEN @311
== FFCUST06 IF ~OR(2) AreaCheck("AR0509") AreaCheck("AR0522") InMyArea("_bClara")~ THEN @311
== BWENCH IF ~AreaCheck("AR0513") InMyArea("_bClara")~ THEN @311
== WWENCH IF ~AreaCheck("AR0704") InMyArea("_bClara")~ THEN @311
== SEVBAR01 IF ~AreaCheck("AR0709") InMyArea("_bClara")~ THEN @311
== BNALIA @312 /*Oh, that was fun. I never danced like that back home.*/
== B_BCLARA @313 /*Glad to hear it... Did you lose your partner?*/
== BNALIA @314 /*No. He said I wore him out with that last number. But I think I just confused him when I tried to lead.*/
== B_BCLARA @315 /*Hah! Well, there's plenty more to choose from. Try that sailor over there; he's got good legs – for dancing, of course.*/
= @316 /*And here, a green one, just for luck....*/
DO ~ActionOverride("Nalia",ApplySpellRES("_bintox","Nalia")~
== CROWEN01 IF ~AreaCheck("AR0021") InMyArea("_bClara")~ THEN @317 /*"In Athkatla fair city
                  Where the girls are so pretty
                  That's where I first met
                  My own one true love...."*/
== SBWENCH IF ~AreaCheck("AR0313") InMyArea("_bClara")~ THEN @317
== WENCH1  IF ~AreaCheck("AR0406") InMyArea("_bClara")~ THEN @317
== FFCUST06 IF ~OR(2) AreaCheck("AR0509") AreaCheck("AR0522") InMyArea("_bClara")~ THEN @317
== BWENCH IF ~AreaCheck("AR0513") InMyArea("_bClara")~ THEN @317
== WWENCH IF ~AreaCheck("AR0704") InMyArea("_bClara")~ THEN @317
== SEVBAR01 IF ~AreaCheck("AR0709") InMyArea("_bClara")~ THEN @317
== BNALIA @318 /*...We have to stop. I'm exhausted. Is the room spinning or is it me?*/
== B_BCLARA @319 /*Just you, I'm afraid. You're probably going to hate me in the morning. You weren't supposed to drink quite that many potions.*/
= @320 /*So tell me now, was it worth it?*/
== BNALIA @321 /*It was. Thank you. You're the best friend I've ever had.*/
== B_BCLARA @322 /*I like you too, Nalia. Even if you are a bit naive at times. Come on, back to the inn, and try to walk straight if you can.*/
DO ~Explore() RestParty()~
EXIT

//3rd Dorn Banter - he should start dialogue
CHAIN IF WEIGHT #-10 ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("DORN") IfValidForPartyDialog("_bClara") Global("_BBCLARADORN","GLOBAL",3) AreaType(FOREST)~ THEN BDORN _bClaraDorn3
@169 /*Most people would let me bathe in peace.*/
DO ~UndoExplore() SetGlobal("_BBCLARADORN","GLOBAL",4) ChangeStat("_bClara",WIS,1,ADD)~
== B_BCLARA @170 /*How did you know I was here?*/
== BDORN @171 /*I had a feeling. Worst that could've happened is no one would've answered. It was a no-lose question.*/
= @172 /*What are you doing? I assumed you were here to kill me, but if you were, we wouldn't be having this conversation.*/
== B_BCLARA @173 /*I'm watching you bathe. I like watching strong naked men, though most aren't so suspicious about it.*/
== BDORN @174 /*That is either because they are attractive or because they are fools. I am neither. Leave me be.*/
== B_BCLARA @175 /*You always sell yourself short, Dorn. You are both more attractive and more foolish than you believe.*/
== BDORN @176 /*Hah. My hair... my teeth... my smell... I do not need your lies. Go away.*/
== B_BCLARA @177 /*So you're not human. So what? If I lived with elves, I'd be hideous, but I spend my time in Athkatla among poxy whores and frog-like peasant-women so I look pretty good in comparison.*/
= @178 /*You should go live with orcs; I bet all the orc women would drool over you.*/
== BDORN @179 /*I have. They did. My days were filled with fighting and I had a woman or two every night.*/
= @180 /*Orcish women are hideous though and they're not much for conversation. Also, having to fight every orc man I met to prove myself grew annoying fast.*/
== B_BCLARA @181 /*So you came to live with humans where you'd be more accepted? Hah. That's just sad.*/
= @182 /*Look, you're hairy, but lots of guys are hairy. Those teeth probably make kissing difficult, but kissing is overrated. And most fighting guys don't exactly smell like roses; at least you bathe more often than the rest.*/
= @183 /*I really should be getting back though. I said I was scouting the area and I've been gone a while.*/
= @184 /*Besides, I have a reputation to uphold.... can't be seen gazing at naked men all day.*/
== BDORN @185 /**smiles* Go then. I am just about done here anyways.*/
== B_BCLARA @186 /*I'm already gone.*/
= @187 /*You won't see me, but I'll be watching you.*/
DO ~Explore() RestParty()~
EXIT

//3rd Yoshimo Banter
CHAIN IF WEIGHT #-1 ~InMyArea("_bClara") InParty("Yoshimo") IfValidForPartyDialog("Yoshimo") InParty("_bClara") IfValidForPartyDialog("_bClara") Global("_BBCLARAYOSH","GLOBAL",2)~ THEN BYOSHIM _bClaraYosh3
@243 /*I can feel your eyes on me, lass. Are there words you wish to say?*/
== B_BCLARA @244 /*You saw me?*/
DO ~ApplySpellRES("_BBKSTB","_bClara") SetGlobal("_BBCLARAYOSH","GLOBAL",3)~
== BYOSHIM @245 /*No, you are quite skilled at hiding in the dark. But you have not learned to mask the weight of your attention. That is something all hunters need to learn, no matter what their prey.*/
= @246 /*So tell me, why are you watching me? If you wish a story or conversation, you need only ask.*/
== B_BCLARA @247 /*I know. I have enjoyed your stories and I really do want to visit your homeland in the future; maybe once our quest is done.*/
= @248 /*But you're right, I'm not a hunter. I'm a liar and I'm a very good one. That's why I can tell that you're also lying too.*/
= @249 /*Who are you really? What are you doing here?*/
== BYOSHIM @250 /*You are perceptive, young one. But I have not lied to you. I am Yoshimo and the stories I have told you are the truth, barring perhaps some slight exaggeration for effect.*/
= @251 /*Beyond that, all souls must have their secrets. There are in things in my past that I do not speak about and I am sure you understand. Is that not right, Lady Silvershield?*/
= @252 /*Can you trust at least that I do not wish to hurt you or <CHARNAME>? I promise, this is the truth as well.*/
== B_BCLARA @253 /*I believe you do not wish to. However, I have not wanted many things that happened anyway. Some by my own hands.*/
= @254 /*I will not say anything to <CHARNAME>, not yet, but I will be watching your movements carefully.*/
== BYOSHIM @255 /*That is probably for the best. We may count it as extra training.*/
= @256 /*Your sword will be more deadly if you are able to take your foes by surprise.*/
EXIT

//3rd Jaheira SoA Banter (SoA only)
CHAIN IF ~IfValidForPartyDialog("Jaheira") IfValidForPartyDialog("_bClara") InMyArea("Jaheira") Global("B_BClaraJaheiraSoA","GLOBAL",0)~ THEN B_BCLARA _bClaraJaheiraBanterSoA3
@680 /*Jaheira, when you avenged Gorion's death and killed Sarevok, did he know your part in his death? Did he know why he died?*/
DO ~SetGlobal("B_BClaraJaheiraSoA","GLOBAL",1) ChangeStat("_bClara",CHR,1,ADD)~
== BJAHEIR @681 /*He knew that Gorion was connected to <CHARNAME>, Khalid, Imoen, and myself, but I doubt he cared.*/
= @682 /*I smashed his head into pulp, ground his bones to dust, and scattered them on the wind. I swore that no one would ever raise him.*/
= @683 /*I will do the same to Irenicus when we kill him.*/
= @684 /*Clara, if I am not there when Irenicus falls, would you do that for me?*/
== B_BCLARA @685 /*Of course! I'd be honored.*/
EXIT

//3rd Korgan Banter - triggers
CHAIN IF WEIGHT #-10 ~InParty("Korgan") InMyArea("Korgan") IfValidForPartyDialog("Korgan") IfValidForPartyDialog("_bClara") Global("_BBCLARAKOR","GLOBAL",4)~ THEN B_BCLARA _bClaraKorgan3
@188 /*Ooh, I feel awful. Everything hurts. What happened yesterday?*/
DO ~ChangeStat("_bClara",CON,1,ADD) ChangeStat("_bClara",STR,1,ADD) SetGlobal("_BBCLARAKOR","GLOBAL",5)~
== BKORGAN @189 /*Ye kin nae be rememberin' anything? Hah, I should've known dwarf ale would be too much fer ye.*/
== B_BCLARA @190 /*I can drink with the best of them, just give me a minute to remember. You blind-folded me and we went to a bar. I was the only one there who wasn't a dwarf. They all hated me.*/
== BKORGAN @191 /*'course they did. Long-limbs aren't welcome in a dwarf bar. Dwarf bars are fer dwarves!*/
== B_BCLARA @192 /*You brought me the strongest drink I've ever tasted and told me to go pick a fight with a woman at a nearby table who looked particularly unhappy with my presence.*/
= @193 /*She looked like she could wrestle a bear.*/
== BKORGAN @194 /*And has! She once beat a grizzly into submission with nothing but a giant sausage.*/
= @195 /*'twas made into a song: "Bears Ain't no Match fer Glelda's Big Sausage." A fine ballad.*/
== B_BCLARA @196 /*I refused so you gave me another mug of that awful brown liquid and then another. And after that it all becomes a little blurry...*/
== BKORGAN @197 /*That was ale! Real ale, not th' weak piss ye long-limbs drink. After yer third one, ye got enough courage t' go speak to Glelda. I didn' hear what ye said, but she felled ye with one punch t' th' gut.*/
== B_BCLARA @198 /*Okay... I remember that. I puked all over her shoes. Then tried to give her my best shot.*/
= @199 /*It was like punching a block of granite. I think I broke my hand.*/
= @200 /*And then all I remember is thinking, "My ribs are shattering. I'm dying."*/
== BKORGAN @201 /*Ye were dyin'! She broke nearly ev'ry bone in yer body, busted yer organs. Ye were spitting up blood an' tryin' t' fight back like th' weak little girl ye are.*/
= @202 /*Th' crowd was cheering Glelda on wit' each hit. I was takin' bets fast as I could, since no one else was willin' t' bet ye'd live.*/
= @203 /*But ye showed them all. Yer knife, right t' th' belly! Glelda never saw it comin'! Not sportin'-like but effective.*/
= @204 /*Ye was still a mess, could hardly move or even breathe, an' Glelda was bleedin' out on th' floor wit' green foam comin' out her mouth. Ye'd poisoned her somethin' fierce.*/
= @205 /*Fortunately fer ye two, there were three clerics present, enough t' keep ye both alive.*/
= @2050 /*Glelda they healed easily enough, but ye they were worried about. None of 'em had ever healed a long-limb before. They were worried about healin' ye crooked.*/
= @206 /*I said they should nae be worryin'. Ye wanted t' be a dwarf! So they healed ye up dwarf-like. Bones thicker! Muscles bigger!*/
== B_BCLARA @207 /*Does my face look okay? The rest of me looks... is my bosom fuller?*/
== BKORGAN @208 /*Ye were awfully flat-chested. Now ye got milk-bags a dwarf could be proud of!*/
= @209 /*But nae be worryin', yer face is as pretty as ever. Yer bones were knitted, yer scars were gone, an' then there was th' orgy.*/
== B_BCLARA @210 /*Orgy? I remember ribs shattering and passing out and that's all.*/
== BKORGAN @211 /*Well, ye did nae be wantin' to pay the clerics, nor the barkeep, so once ye healed up, ye just paid everyone with yer skills instead. The crowd loved it.*/
= @212 /*One rich fool offered you 300 gold t' be next, but ye demanded five.*/
= @213 /*Ye took him an' ten more before th' night was through at th' same price. Two of th' women too.*/
== B_BCLARA @214 /*So you're saying I was healed tougher for free and I made 6,500 gold pieces? Why did I ever waste my time with human men? 6,500 gold in one night is better than even the richest noble courtesans.*/
== BKORGAN @215 /*7,000 actually. I bought myself a turn as well. Here's th' bag; I been carryin' it fer ye.*/
= @216 /*Barkeep said ye be welcome t' come back anytime.*/
== B_BCLARA @217 /*Please don't tell anyone.*/
== BKORGAN @218 /*An' reveal the secret of dwarf bars? Never.*/
EXIT

//3rd Jan Banter
CHAIN IF WEIGHT #-3 ~InParty("Jan") InMyArea("Jan") IfValidForPartyDialog("Jan") IfValidForPartyDialog("_bClara") Global("_bBClaraJan","GLOBAL",2)~ THEN B_BCLARA _bClaraJan3
@156 /*These goggles are amazing, Jan! I can see traps! I can see through walls! I can see through curtains, windows, and clothes!*/
= @157 /*Sometimes that last one lets me see more than I'd like, but it's worth it!*/
= @158 /*You are the greatest inventor ever! Let me have something else.*/
== BJAN @159 /*Inventions do not grow on trees, lassie. Well except for that one time, my fifth cousin Bimpnottin created an invention tree. Now that was an amazing feat. Pity what happened to her though.*/
== B_BCLARA @160 /*What happened?*/
== BJAN @161 /*She invented an invention to see through time. Saw the creation of the world. Went mad. It happens every third generation or so.*/
== B_BCLARA @162 /*And the tree?*/
== BJAN @163 /*Chopped down for firewood; it was a cold winter. Now what can I do for you?*/
== B_BCLARA @164 /*More awesome stuff!*/
== BJAN @165 /*Hah, I like your spirit. Perhaps that is why I have already made you a pair of Jansen-Brand Techno-Thieving Gadgetizer Gloves—(TM).*/
DO ~GiveItemCreate("_BGlove","_bClara",0,0,0) SetGlobal("_bBClaraJan","GLOBAL",3)~
== B_BCLARA @166 /*Ooooh... shiny!*/
== BJAN @167 /*Not just shiny, but useful. Why, with these gloves you could steal the clothes right off a man's back.*/
== B_BCLARA @168 /*Well, it's usually easier to let men take their clothes off voluntarily, but thanks! I'm sure I'll find these useful.*/
EXIT

//3rd Wilson Banter - he talks first
CHAIN IF WEIGHT #1 ~InMyArea("_bClara") IfValidForPartyDialog("WILSON") IfValidForPartyDialog("_bClara") Global("_bBClaraWilson","GLOBAL",2)~ THEN BWILSON _bClaraWilson3
@776 /*Roar!*/
DO ~SetGlobal("_bBClaraWilson","GLOBAL",3)~
== B_BCLARA @777 /*Oh come on! There must be something I can give you.*/
= @778 /*I'm so tired of walking...*/
DO ~ChangeStat("_bClara",CON,1,ADD)~
== BWILSON @779 /*Sniff, sniff... snuffle...*/
== B_BCLARA @780 /*How could you possibly have everything you want? That seems like a failure of imagination.*/
== BWILSON @781 /*Snuffle: growl, roar, roar... sniff... Roar!*/
== B_BCLARA @782 /*Wow, that is a pretty good list... but I have all of those things too and I still want more.*/
== BWILSON @783 /*Sniff... whine?*/
== B_BCLARA @784 /*Of course it will make me happy! Having more always makes me happy!*/
= @785 /*Okay, fine, it hasn't made me happy yet, but that's just because I don't have enough!*/
== BWILSON @786 /*Growl?*/
== B_BCLARA @787 /*Yes, my logic is perfectly sound!*/
== BWILSON @788 /*Roar!*/
== B_BCLARA @789 /*Oh what do you know? You're just a bear!*/
EXIT

//3rd Aerie Banter
CHAIN IF ~InParty("Aerie") InMyArea("Aerie") IfValidForPartyDialog("Aerie") IfValidForPartyDialog("_bClara") Global("_BBCLARAAERIE","GLOBAL",2)~ THEN B_BCLARA _bClaraAerie3
@517 /*Well, Chiktikka Fastpaws was a bust. Damn raccoon has a sense of humor.*/
DO ~SetGlobal("_BBCLARAAERIE","GLOBAL",3)~
= @518 /*Hey, Aerie, who was that other god you mentioned earlier?*/
== BAERIE @519 /*D-Do you mean Baervan Wildwanderer?*/
== B_BCLARA @520 /*Yeah, him. Tell me about him.*/
== BAERIE @521 /*Well, l-like I said, he's a gnomish g-god of nature and forests. He's the reason that f-forest gnomes can speak with s-small animals.*/
= @522 /**giggle* That's probably why Chiktikka Fastpaws o-offered you that gift. Are the b-birds still stopping you f-from sleeping well at night?*/
== B_BCLARA @523 /*Yes! I swear they're doing this on purpose. All they talk about is food! Maybe if I pray to Baervan, I can make the things shut up.*/
== BAERIE @524 /*I- I told you, that's n-not how it works. You can't just p-pray when you want things.*/
== B_BCLARA @525 /*Ssshh, I'm communing with your god....*/
= @526 /*Hear me, oh Baervan Wildwanderer. Show me the truth of nature. Show me how to silence all those annoying little pests out in the night.*/
== BAERIE @527 /*YES, MY CHILD. YOUR BOON SHALL BE GRANTED!*/
== B_BCLARA @528 /*Really? Can you like, give me truesight too?*/
== BAERIE @529 /*OF COURSE, I WILL BE GLAD TO ASSIST MY MOST DEVOTED FOLLOWER....*/
= @530 /*Oh, I- I can't. I- I can't do it anymore. *snorts* Hahahahahahahahahahahaha!*/
== B_BCLARA @531 /*What?! Aerie! That wasn't very nice.*/
== BAERIE @532 /*Sorry. I c-couldn't resist. But I- I'll make it up to you. Here. It's not a b-boon from Baervan Wildwanderer, but you can h-have this boon from me.*/
EXIT

//3rd Neera Banter
CHAIN IF ~InParty("NEERA") InMyArea("NEERA") IfValidForPartyDialog("NEERA") IfValidForPartyDialog("_bClara") Global("_BBCLARANEERA","GLOBAL",2)~ THEN B_BCLARA _bClaraNeera3
@716 /*Well, that was an illuminating read. Thanks, Neera!*/
DO ~SetGlobal("_BBCLARANEERA","GLOBAL",3) ChangeStat("_bClara",INT,1,ADD) ChangeStat("_bClara",LORE,10,ADD) ChangeStat("NEERA",LORE,10,ADD)~
= @717 /*It's a pity the book ended at "G". I was hoping to find out what this helm was...*/
DO ~GiveItemCreate("HELM02","_bClara",0,0,0)~
== BNEERA @718 /*I guess you just need this one! I got it for you, special.*/
== B_BCLARA @719 /*'Magical Items and Their Identifying Properties Volume II: Gauntlets of God-Stalking through Purple Brotherhood Accessories.'*/
= @720 /*Yaay! You'll have to help me though.*/
== BNEERA @721 /*Of course! We can read it together too.*/
EXIT

//3rd Minsc Banter
CHAIN IF ~InParty("Minsc") InMyArea("Minsc") IfValidForPartyDialog("Minsc") IfValidForPartyDialog("_bClara") Global("_BBCLARAMINSC","GLOBAL",2)~ THEN B_BCLARA _bClaraMinsc3
@448 /**squeak, squeak, squeak!**/
DO ~SetGlobal("_BBCLARAMINSC","GLOBAL",3)~
== BMINSC @449 /*Exactly! Boo says your pronunciation is improving.*/
= @450 /*You have mastered hamster-talking: one of the three skills of Heroing!*/
== B_BCLARA @451 /*Umm, I may regret asking this, but what are the other two?*/
== BMINSC @452 /*Other two what?*/
== B_BCLARA @453 /*Other two skills of Heroing. You said that one was hamster-talking...*/
== BMINSC @454 /*Ahh, the second is not-being-seen-while-moving-ing. You already have that one.*/
= @455 /*And the third is berserkering!*/
== B_BCLARA @456 /*You mean that thing where you go crazy in battle and we all have to stay far away so you don't accidentally kill us?*/
= @457 /*Can you teach me?*/
== BMINSC @458 /*Yes, though Boo says the craziness is perhaps optional.*/
= @459 /*The first lesson is we are going to run around screaming and hit the ground with our swords.*/
= @460 /*Watch me first...*/
EXIT

//3rd Valygar Banter
CHAIN IF ~InParty("Valygar") InMyArea("Valygar") IfValidForPartyDialog("Valygar") IfValidForPartyDialog("_bClara") Global("_BBCLARAVALYG","GLOBAL",2)~ THEN B_BCLARA _bClaraValygar3
@360 /*Hey, Valygar, you spent a lot of time on the run from the Cowled Wizards. How did you stop their spells from finding you?*/
= @361 /*I thought a really powerful wizard could see everything for miles and everyone knows that the Cowled Wizards are the strongest guys around.*/
DO ~SetGlobal("_BBCLARAVALYG","GLOBAL",3)~
== BVALYGA @362 /*Their magic may be powerful, but it is not omnipotent. Such spells are unnatural things and the land fights against them with everything it has.*/
= @363 /*There are ways to hide from a wizard's magic. Certain herbs will cloud their vision if you drink them and certain stones can turn their spells aside.*/
= @364 /*I am sure that a truly gifted sorcerer could overcome these barriers, but the Cowled Wizards are complacent in their rule. They could never imagine that something so common as a herb might fight against their power.*/
= @365 /*Tolgerias likely assumed that I had found some greater magic and that is why he hired <CHARNAME> to track down my hiding place. Magic-users are rarely willing to get their own hands dirty when someone else can do the work instead.*/
== B_BCLARA @366 /*That's amazing. There are really herbs that can hide you from a spell?*/
== BVALYGA @367 /*Of course. I will show you as we travel. It is never a bad idea to have such things on hand.*/
EXIT

//3rd HaerDalis Banter
CHAIN IF ~InParty("HaerDalis") InMyArea("HaerDalis") IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("_bClara") Global("_BBCLARAHD","GLOBAL",2)~ THEN B_BCLARA _bClaraHaerDalis3
@471 /*Haer'Dalis, why do you fight with swords? I thought most bards just played music or cast spells on their enemies.*/
== BHAERDA @472 /*Aahh, but there is music in the ring of steel. There are songs in the clash of swords and axes, songs that transcend all languages and planes.*/
= @473 /*Have you not heard the harmonies of combat? The discordant notes that rise above and the low bass rhythms of the dying.*/
= @474 /*I have written odes to a single drop of blood and the lives my blades have stolen; I have danced across a hundred battlefields.*/
= @475 /*And, in truth, when our foes prepare for singing, this sparrow gains the edge of surprise with a weapon in my hands.*/
== B_BCLARA @476 /*Are you sure that we've been fighting the same battles? I mostly just hear screaming and I don't think I could ever use two swords the way you do.*/
= @477 /*How do you not stab yourself by accident?*/
DO ~SetGlobal("_BBCLARAHD","GLOBAL",3) ApplySpellRES("_BSSP","_bClara")~
== BHAERDA @478 /*It is a dance, my margay, one with rules and patterns despite the way your partners change. You need only learn the steps and the song will show you, the give and take of a waltz that ends with blood.*/
= @479 /*I will teach you, if you wish. Perhaps one sword to start, but we shall sing the steel together. A true bard performs the better for a discerning audience.*/
EXIT

//3rd Imoen Banter
CHAIN IF WEIGHT #3 ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("Imoen2") IfValidForPartyDialog("_bClara") Global("_BBCLARAIMOEN","GLOBAL",2)~ THEN BIMOEN2 _bClaraImoen3
@598 /*You up for another story, Clara?*/
== B_BCLARA @599 /*Yes. Once upon a time there was a young lady who was a respected servant in the household of an evil baron.*/
= @600 /*Unbeknownst to the baron, she was actually the daughter of a man he had killed many years earlier and every day she secretly plotted revenge.*/
== BIMOEN2 @601 /*You said that story had ended!*/
== B_BCLARA @602 /*Every day while doing her work, the young woman sought and learned skills that might help her in the future.*/
= @603 /*One day, she heard about a witch in the forest who knew the secrets of potions and tonics.*/
= @604 /*The witch was not hard to find but she refused to make poison for the girl until the girl promised her something in return.*/
== BIMOEN2 @605 /*This never ends well.*/
== B_BCLARA @606 /*The witch wanted her life and her soul. The young lady said she would not part with those, but perhaps she could offer the lives and souls of others.*/
= @607 /*The witch found this acceptable and after a couple hours of tediously squabbling over the details, an agreement was forged.*/
= @608 /*The girl left with a tasteless odorless poison, slow-acting but powerful enough that a single drop in a pot of soup would fell a legion of warriors.*/
= @609 /*During the evil baron's next feast, she put the poison into every single dish and drink she could. The baron and his entire castle perished, and once again she found herself alone.*/
= @610 /*And she lived happily ever after.*/
== BIMOEN2 @611 /*Wow, your stories are morbid.*/
== B_BCLARA @612 /*You are the one who keeps asking for them. I, on the other hand, want to know about locks and how to open them.*/
DO ~ChangeStat("_bClara",LOCKPICKING,20,ADD) SetGlobal("_BBCLARAIMOEN","GLOBAL",3)~
EXIT


//4th Minsc Banter
CHAIN IF ~InParty("Minsc") InMyArea("Minsc") IfValidForPartyDialog("Minsc") IfValidForPartyDialog("_bClara") Global("_BBCLARAMINSC","GLOBAL",3)~ THEN B_BCLARA _bClaraMinsc4
@461 /*RAAAAAARGH!*/
DO ~SetGlobal("_BBCLARAMINSC","GLOBAL",4)~
== BMINSC @462 /*Yes! See how that fly hustled away from you, cowering as it flapped its wings?*/
= @463 /*You have become truly fearsome! Boo says even he has goosebumps.*/
== B_BCLARA @464 /*That is so refreshing! I see how one could lose themselves in that. I've spent all my battles until now trying so carefully not to die.*/
== BMINSC @465 /*That is a foolish thing to try. Boo has something to say about that.*/
= @466 /**squeak squeak squeak**/
== B_BCLARA @467 /*"We should smile because death is smiling?" Isn't that kind of morbid?*/
== BMINSC @468 /*Hmm that is one way to say it. I understood it as, "Death smiles at us all, the only thing we can do is smile back."*/
== B_BCLARA @469 /*Still morbid... but I think I understand. We're all going to die, so we might as well enjoy ourselves, right?*/
== BMINSC @470 /*You understand exactly! Minsc is proud of you. We will make a hamster of you yet.*/
EXIT

//4th Neera Banter - Neera talks first
CHAIN IF ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("NEERA") IfValidForPartyDialog("_bClara") Global("_BBCLARANEERA","GLOBAL",3)~ THEN BNEERA _bClaraNeera4
@722 /*Oh Clara, I got it!*/
== B_BCLARA @723 /*'Magical Items and their Identifying Properties Volume III: Purple Brotherhood Armbands through Zyztrax's Left Hand.'*/
= @724 /*Aww, this must be the last one. We'll have to read it slowly.*/
= @725 /*Oh, I got you something too! Here!*/
DO ~GiveItemCreate("MISC1B","NEERA",0,0,0) SetGlobal("_BBCLARANEERA","GLOBAL",4) SetGlobal("_bNeeraHasGrimoire","GLOBAL",1) ChangeStat("_bClara",INT,1,ADD) ChangeStat("_bClara",LORE,10,ADD) ChangeStat("NEERA",LORE,10,ADD) ChangeStat("NEERA",INT,1,ADD)~
== BNEERA @726 /*Is that the Butter Knife of Balduran? That's from the first book!*/
= @727 /*As I remember, it's completely useless...*/
== B_BCLARA @728 /*Well... not USELESS... it CAN spread butter...*/
= @729 /*Hah, your face is so priceless right now. Here's your real gift.*/
== BNEERA @730 /*'The Grimoire of Absolute Annihilation, translated from Gnomish and including all the original diagrams.'*/
= @731 /*Oh, Clara, you shouldn't have!*/
= @732 /*Ummm... there isn't a crazy lich or some mage of ultimate power who's going to come looking for this, is there?*/
== B_BCLARA @733 /*Nah, the wizard who previously owned it can't use it anymore. He's all...*/
== BNEERA @734 /*Actually, don't tell me.*/
= @735 /*I'm so excited! I've always wanted a copy of this book but I knew I'd never be able to afford it.*/
= @736 /*Thank you so much!*/
== B_BCLARA @737 /*You're welcome! I tried reading it, but couldn't make any sense of the words.*/
== BNEERA @738 /*Well, you can help me figure it out. Let's start now!*/
= @739 /*'Grimoire of Absolute Annihilation, Introduction by the translator...'*/
= @740 /*...boring... let's skip that.*/
= @741 /*"Introduction by the author..." Let's skip that too.*/
= @742 /*"Warnings and disclaimers..." Nah, who needs those?*/
= @743 /*Here we go! "Chapter 1: On the proper preparations for harnessing world-ending magical energy."*/
= @744 /*This is going to be fun!*/
EXIT

//4th Imoen Banter
CHAIN IF WEIGHT #1 ~InParty("Imoen2") InMyArea("_bClara") IfValidForPartyDialog("Imoen2") IfValidForPartyDialog("_bClara") Global("_BBCLARAIMOEN","GLOBAL",3)~ THEN BIMOEN2 _bClaraImoen4
@613 /*Once again, Clara. Story me.*/
== B_BCLARA @614 /**sigh* Once upon a time, there was a young woman in a castle of the dead. She had poisoned the inhabitants during a feast and they perished that night in their own beds.*/
= @615 /*The next morning, she went from room to room taking what she needed, and when there was nothing more to be gained from remaining there, she left.*/
= @616 /*The woman cut her hair short and dressed as a young man. She spent some time practicing her skills until she became a passable hunter and when she needed more food, she returned to the castle for the provisions that she had hidden in a cellar.*/
= @617 /*The castle was closed and locked, except for a secret entrance, and any merchants who came to trade left disappointed.*/
= @618 /*The locals soon considered the place haunted and all but the young woman avoided it.*/
= @619 /*She was alive, her enemies were dead, and now that she had achieved her life's goal, she had not the slightest idea what to do next.*/
= @620 /*But every day she did what was necessary to survive and in surviving, she found purpose. And she lived happily ever after.*/
== BIMOEN2 @621 /*You keep saying that, but she doesn't sound very happy.*/
== B_BCLARA @622 /*She has to be happy, it's the end of the story. When your story is over, you live happily ever after.*/
== BIMOEN2 @623 /*I don't think life works like that.*/
== B_BCLARA @624 /*Do you know what would make me happy? Figuring out how to make a trap. Something horribly devastating that can trigger when we're far, far away.*/
DO ~SetGlobal("_BBCLARAIMOEN","GLOBAL",4)~
== BIMOEN2 @625 /*Oh, I have some ideas for that! Sort of a thiefy-magicy combination. You can help!*/
EXIT

//4th Dorn Banter - he talks first
CHAIN IF WEIGHT #1 ~InParty("_bClara") InMyArea("_bClara") IfValidForPartyDialog("DORN") IfValidForPartyDialog("_bClara") Global("_BBCLARADORN","GLOBAL",4)~ THEN BDORN _bClaraDorn4
@634 /*Kryll...*/
== B_BCLARA @635 /*Aww, Dorn, if you keep mumbling another woman's name, I'll think that you don't love me.*/
DO ~ChangeStat("_bClara",SAVEVSDEATH,-1,ADD) SetGlobal("_BBCLARADORN","GLOBAL",5)~
== BDORN @636 /*I did not see you standing there. It seems you have still not learned to mind your own business.*/
== B_BCLARA @637 /*You were lost in thought and said, "Kryll". You say her name when you sleep as well.*/
= @638 /*So who's Kryll?*/
== BDORN @639 /*An answer for an answer. How do you know I say her name in my sleep?*/
== B_BCLARA @640 /*There's a foolish question. Clearly I've been watching you secretly.*/
= @641 /*My turn now, who's Kryll?*/
== BDORN @642 /*We traveled together for a time. She was a necromancer... and my lover... until she betrayed me and fled.*/
= @643 /*With <CHARNAME>'s help, I tracked her down and put her in the grave. Even now her soul writhes in the abyss.*/
= @644 /*None of my relationships end well.*/
== B_BCLARA IF ~Global("DornRomanceActive","GLOBAL",1)~ THEN @645 /*You seem to be pretty friendly with <CHARNAME>. How do you expect that to end?*/
== B_BCLARA IF ~Global("_bHDDornRomance","GLOBAL",1)~ THEN @6450 /*You seem pretty friendly with Haer'Dalis. How do you expect that to end?*/
== BDORN IF ~Global("DornRomanceActive","GLOBAL",1)~ THEN @646 /*With my death or <CHARNAME>'s, same as always.*/
== BDORN IF ~Global("_bHDDornRomance","GLOBAL",1)~ THEN @6460 /*With my death or the tiefling's, same as always.*/
== B_BCLARA IF ~Global("DornRomanceActive","GLOBAL",2)~ THEN @647 /*But you and <CHARNAME> are together and that seems to be going very well.*/
== B_BCLARA IF ~Global("_bHDDornRomance","GLOBAL",2)~ THEN @6470 /*But you and Haer'Dalis are together and that seems to be going very well... Especially in bed.*/
== BDORN IF ~Global("DornRomanceActive","GLOBAL",2)~ THEN @648 /*Things often go well for a time. That does not mean it will end any other way.*/
== BDORN IF ~Global("_bHDDornRomance","GLOBAL",2)~ THEN @6480 /*Things often go well for a time. That does not mean our relationship will not end in bloodshed... even if I might wish otherwise.*/
== B_BCLARA @649 /*You know, Dorn, for a murderous psychopath, you sure are broody and depressing.*/
== BDORN @650 /*And for a two-gold cheat and liar, you are astoundingly nosy. Now let me be.*/
EXIT
