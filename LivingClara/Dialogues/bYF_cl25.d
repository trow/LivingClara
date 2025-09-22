BEGIN BYF_Cl25

//1st Valygar banter - higher on the list since limited areas
CHAIN IF ~InParty("Valygar") InMyArea("Valygar") IfValidForPartyDialog("Valygar") IfValidForPartyDialog("YF_Clara") AreaType(OUTDOOR) !AreaCheck("AR5000") !AreaCheck("AR5500") Global("YF_BCLARAVALYG","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraValygar1
@344 /*Valygar, how do you move so quietly?*/
DO ~SetGlobal("YF_BCLARAVALYG","GLOBAL",1)~
== BVALYG25 @345 /*That is a strange question coming from you. I am not the thief between us.*/
== BYF_Cl25 @346 /*Well, yeah, I'm great at hiding in a city. There are people and alleyways and crates to duck behind. But how do you manage to keep to the shadows here? It's all bugs and open space and branches that snap beneath your feet.*/
== BVALYG25 @347 /*Aah, I understand. You fight against the wilds, Clara, and that is why you cannot walk as softly as you do upon the city streets.*/
= @348 /*You must adapt yourself to nature; you cannot expect the earth to change for you. Mages expect such things, twisting trees and plants with their foul magics, but even then the land endures and once the mage is vanquished, things return to as they were.*/
== BYF_Cl25 @349 /*I've never thought about it that way. Can you show me? I want to move the way you do.*/
== BVALYG25 @350 /*Of course. I would be pleased to show another how to honor the wilderness properly.*/
EXIT

//1st Jan Banter
CHAIN IF ~InParty("Jan") InMyArea("Jan") IfValidForPartyDialog("Jan") IfValidForPartyDialog("YF_Clara") Global("YF_BClaraJan","GLOBAL",0)~ THEN BYF_Cl25 YF_clarjan1
@1 /*Jan, could you help me?*/
DO ~SetGlobal("YF_BClaraJan","GLOBAL",1)~
== BJAN25 @2 /*Of course, my dear. What seems to be the problem?*/
== BYF_Cl25 @3 /*Well, you are so amazing with your magic and your skills... and I am supposed to be acting as a thief, disarming traps, opening locks, and the like, and...*/
== BJAN25 @4 /*And? It is not good to stop a sentence halfway through, dearie, you never know what will happen.*/
= @5 /*Why, my third-cousin's uncle Dimble once used to stop sentences like that every day. Eventually all the half-sentences built up and exploded out his ears.*/
== BYF_Cl25 @6 /*I will try to avoid that. But I noticed you have all this special clothing and gadgets to help you and I was wondering...*/
== BJAN25 @7 /*There you go again; if you keep doing this, I will make you continue our conversation from farther away.*/
== BYF_Cl25 @8 /*I want all your stuff! Can I have it? Please?*/
== BJAN25 @9 /*That is no small task, Clara dear. You see, each of my items was made specifically for me, by me, to be used by me. If you want items for you, to be used by you, then that will take some work.*/
= @10 /*Mountains must be climbed, tombs must be explored, and the lost fragments of ancient civilizations must be combined into fabrics imbued with magic from seven astral planes.*/
== BYF_Cl25 @11 /*Um... wow? So what do I need to do?*/
== BJAN25 @12 /*Well for starters, Clara, while you are very nimble, your nimbleness is not nearly as nimbly as it should be.*/
== BYF_Cl25 @13 /*Must be more nimble! I can do that.*/
= @14 /*How can I do that?*/
== BJAN25 @15 /*I will help you. Nimbleness does not just happen overnight. You cannot expect to simply finish a conversation about nimbleness and have it. Nimbleness must be practiced.*/
= @16 /*Step one: someone must throw a knife, dart, or axe at you, while you try to dodge to the side and catch it.*/
= @17 /*Do not fear, girlie; this is why we have clerics.*/
EXIT

//1st Nalia banter - she talks first
CHAIN IF WEIGHT #1 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("Nalia") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARANALIA","GLOBAL",0)~ THEN BNALIA25 YF_ClaraNalia1
@276 /*So... Clara. You're a noble? It's just... you don't act like most of the other nobles that I know. And well... there's lots of Silvershields and I'm sure some of them had daughters, but...*/
DO ~SetGlobal("YF_BCLARANALIA","GLOBAL",1)~
== BYF_Cl25 @277 /*You doubt MY lineage? I am Lady Caroline Aurora Lucia Rosena Silvershield and my blood is as blue as any that flows within your veins. You're the one who sneaks out of your castle to hang out with the poor.*/
= @278 /*Maybe I should be asking you about YOUR heritage?*/
== BNALIA25 @279 /*I'm sorry. You're right. I shouldn't judge. I sounded like my aunty there; she's always going on and on about what's proper for a lady of my station. I get so sick of it.*/
== BYF_Cl25 @280 /*I completely understand. I thought my father was going to pass out when I told him that I wished to be an actress. The thought of his beloved daughter working side by side with commoners was just unthinkable.*/
== BNALIA25 @281 /*My Aunty Delcia would agree. But I know my father cared. He always listened to our people when they came to him with problems and I want to do the same. I want to help the lesser classes, not simply sneer at them.*/
== BYF_Cl25 @282 /*And I'm sure the “common folk” appreciate your charity.*/
= @283 /*Now, you have to tell me all about your night-time ventures. We can share tips for sneaking and gossip about the cutest stable boys.*/
EXIT

//1st Jaheira banter
CHAIN IF ~IfValidForPartyDialog("Jaheira") IfValidForPartyDialog("YF_Clara") InMyArea("YF_Clara") Global("BYF_clarjaheira","GLOBAL",0)~ THEN BJAHEI25 YF_clarjaheiraBanter1
@651 /*Clara, why are you here? What are you after?*/
DO ~SetGlobal("BYF_clarjaheira","GLOBAL",1)~
== BYF_Cl25 @652 /*Seriously? Well, I want to stay alive.*/
== BJAHEI25 @653 /*Then you have chosen your companions poorly. We live in constant danger.*/
== BYF_Cl25 @654 /*I didn't choose you, you brought me back to life after Hexxat killed me.*/
= @655 /*Death is everywhere, but I'd never seen someone like me come back before. Only people who are rich enough to pay a cleric get to come back. Well, them and powerful heroes like you.*/
== BJAHEI25 @656 /*Not all of us.*/
== BYF_Cl25 @657 /*Yeah, I heard about your husband. So why are you here?*/
== BJAHEI25 @658 /*Khalid and I were friends of <CHARNAME>'s foster father, Gorion.*/
= @659 /*When Gorion died, we decided that we would look after <CHARNAME> and Imoen for as long as they would have us.*/
= @660 /*I do not have many friends left... this life is dangerous.*/
= @661 /*You should leave and return to your noble family. Except that you can't because they are only a figment of your imagination.*/
== BYF_Cl25 @662 /*I...*/
== BJAHEI25 @663 /*Do not worry, child. I understand. I once had no one as well.*/
== BYF_Cl25 @664 /*Thanks, Jaheira.*/
EXIT

//1st Minsc Banter
CHAIN IF ~InParty("Minsc") InMyArea("Minsc") IfValidForPartyDialog("Minsc") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAMINSC","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraMinsc1
@424 /*So, Minsc, this pet hamster of yours – is he very valuable?*/
DO ~SetGlobal("YF_BCLARAMINSC","GLOBAL",1)~
== BMINSC25 @425 /*Boo is not a pet. Boo is my friend! Anyone who tries to take my friend will face Minsc! Butts will be kicked! Heads will be smashed!*/
== BYF_Cl25 @426 /*Oookkaayyy then. Forget I said anything.*/
== BMINSC25 @427 /*No. Minsc doesn't forget. Boo says forgetting is bad when talking to friends. So I protect you, you protect Boo, and Boo protects everyone – the power of friendship compels us!*/
= @428 /*We are together and we are mighty. We are mightier together!*/
== BYF_Cl25 @429 /*And that's good, right?*/
== BMINSC25 @430 /*Of course! It is the goodest!*/
= @431 /**squeak. squeak.* Yes. Boo agrees. And Boo is the smart one.*/
== BYF_Cl25 @432 /*Yes, I think he is.*/
EXIT

//1st Mazzy Banter
CHAIN IF ~InParty("Mazzy") InMyArea("Mazzy") IfValidForPartyDialog("Mazzy") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAMAZ","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraMazzy1
@18 /*Mazzy, could you help me with something?*/
DO ~SetGlobal("YF_BCLARAMAZ","GLOBAL",1)~
== BMAZZY25 @19 /*Of course, Clara, what is it?*/
== BYF_Cl25 @20 /*We're always fighting things and it's dangerous and I don't want to die!*/
== BMAZZY25 @21 /*A valid fear. I recommend that you stay back out of the fray and shoot our enemies with arrows.*/
== BYF_Cl25 @22 /*But when I do that, I always worry about hitting the wrong person.*/
== BMAZZY25 @23 /*You need practice. I will teach you in our spare time.*/
= @24 /*For a start, you tend to keep your shoulders overly tense...*/
EXIT

//1st Sarevok Banter
CHAIN IF ~InParty("Sarevok") InMyArea("Sarevok") IfValidForPartyDialog("Sarevok") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARASAREV","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraSarevok1
@226 /*So... Sarevok. I hear you framed <CHARNAME> for your adopted father's murder and then tried to take over Baldur's Gate.*/
DO ~SetGlobal("YF_BCLARASAREV","GLOBAL",1)~
== BSAREV25 @227 /*And I was slain for my trouble. If you intend to lecture me on right and wrong, save your breath. I do not need another mewling coward to say I was a fool.*/
== BYF_Cl25 @228 /*Are you kidding? I admire your ambition. You almost had the entire Sword Coast begging at your feet.*/
= @229 /*Sure it didn't end too well, but I got killed by a vampire. I can't really talk. At least you touched the stars before you fell. You would have been a legend if <CHARNAME> hadn't ruined everything.*/
== BSAREV25 @230 /*Well, that is a refreshing change. Most of my <PRO_BROTHERSISTER>'s companions still reach for their weapons whenever I walk by.*/
== BYF_Cl25 @231 /*That would be stupid of me. If I wanted to kill you, I'd wait until you were distracted and then stab you from behind.*/
== BSAREV25 @232 /*Hah! I think I like you, Clara. It's always nice to meet someone who doesn't hide their feelings behind social niceties.*/
= @233 /*Perhaps traveling with <CHARNAME> will not be so painful after all.*/
EXIT

//1st Aerie Banter
CHAIN IF ~InParty("Aerie") InMyArea("Aerie") IfValidForPartyDialog("Aerie") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAAERIE","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraAerie1
@409 /*Hey, Aerie. Who's this Chiktikka Fastpaws that you're always mentioning? Are they some kind of avariel god?*/
DO ~SetGlobal("YF_BCLARAAERIE","GLOBAL",1)~
== BAERIE25 @410 /*Oh, w- well, not exactly. I suppose it's a little silly. But after Quayle rescued me, I was j- just so thankful and I s- started to offer prayers to Baervan Wildwanderer. He's a gnomish god of forests and woodland animals.*/
== BYF_Cl25 @411 /*You can do that? I always figured that I had to stick with human deities. If I'd known I could worship anyone, I would have spread my prayers around. It never hurts to have a few more gods and goddesses on my side.*/
= @412 /*But wait, you still haven't answered my question. What does this gnomish fellow have to do with anything?*/
== BAERIE25 @413 /*I- I was g- getting there. Baervan Wildwanderer always travels with his companion, a sentient r- raccoon n- named Chiktikka Fastpaws.*/
== BYF_Cl25 @414 /*Seriously? You're a powerful mage and cleric with dozens of spells at your fingertips, and the patron that you call upon is some talking animal?*/
= @415 /*No offense, Aerie, but you're actually kinda weird.*/
EXIT

//1st Rasaad Banter
CHAIN IF ~InParty("RASAAD") InMyArea("RASAAD") IfValidForPartyDialog("RASAAD") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARARAS","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraRasaad1
@416 /*You know, Rasaad, you're really very flexible.*/
DO ~SetGlobal("YF_BCLARARAS","GLOBAL",1)~
== BRASAA25 @417 /*Clara? How long have you been standing there?*/
== BYF_Cl25 @418 /*Not too long. But don't stop on my account. I'm quite enjoying the view. Do you always practice without your tunic?*/
== BRASAA25 @419 /*I- generally, yes. We do not often get the chance to bathe while traveling and so I prefer to keep my clothing as clean as possible.*/
== BYF_Cl25 @420 /*Mmm, yes, that is quite sensible. All that sweaty skin... Tell, me, are all Sun Soul Monks so... supple? Or do you have special skills?*/
== BRASAA25 @421 /*I suppose I may be more limber than most. I have been judicious in my training and I make sure to stretch whenever possible. If you like, I could show you a few simple exercises to increase your flexibility.*/
== BYF_Cl25 @422 /*Actually, I think I would enjoy that.*/
= @423 /*Dazzle me with excellence.... and leave the tunic off.*/
EXIT

//Edwin Belt Banter
CHAIN IF WEIGHT #2 ~InParty("Edwin") IfValidForPartyDialog("Edwin") InMyArea("Edwin") Gender("Edwin",MALE) IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAEDWINBELT","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraEdwinBelt1
@234 /*Hey Edwin, come look at this. I found something that I think you'll want to see.*/
== BEDWIN25 @235 /*Yes, of course, because Edwin Odesseiron has nothing better to do than discuss what you dullards find intriguing. Is it a pretty rock? Or perhaps a shiny weapon? Simple minds are so easily distracted.*/
== BYF_Cl25 @236 /*And yet you still came when I called. Did you finally grow bored with your own lofty company and decide to slum it with the rest of us?*/
== BEDWIN25 @237 /*Of course not. What scintillating conversation could you hope to offer me? The only intelligent mind within this party is my own. But I find that you imbeciles are slightly less irritating when I indulge your chattering.*/
== BYF_Cl25 @238 /*Sure, Edwin. Keep telling yourself that. I think you like having us around. Who would you insult and sneer at otherwise?*/
== BEDWIN25 @239 /*(The woman rambles nonsense. But her delusions are amusing, I suppose.) Shall I pander to you longer? Tell you that your pitiful little theory is correct? No. Enough of this. What did you wish to show me?*/
== BYF_Cl25 @240 /*Oh, that. One of our enemies was carrying this girdle and I thought that you might want it. Then you can just change back if another magic mishap turns you into a girl. Or whenever you want; I wouldn't judge.*/
== BEDWIN25 @241 /*You expect me to believe that? You are a selfish peon and you do not give gifts for free.*/
== BEDWIN25 IF ~Global("YF_BCLARAEDWINA","GLOBAL",1)~ THEN @242 /*Did you pay to have this girdle spelled against me too? Will it secretly turn me into a halfling or some grotesque mountain troll?*/
== BYF_Cl25 @243 /*No tricks. Not this time. You can have it free of charge and I even had it enchanted so it only works for you. Friends help friends with their problems after all. Maybe just remember this if I need a spell someday.*/
== BEDWIN25 @244 /*(And there's the cost that I expected. Does she think that I will dance like a puppet on her strings?) We are not friends, Clara. We are not even colleagues. You are too far beneath my notice.*/
= @245 /*I tolerate your presence because our foolish leader seems to think that you are useful and it behooves me to have living bodies to stand before my enemies.*/
== BYF_Cl25 @246 /*Does that mean you don't want it? I'm sure I could find a buyer for this girdle easily.*/
== BEDWIN25 @247 /*.....*/
= @248 /*Damn you, woman. Give it here.*/
DO ~GiveItemCreate("YF_BELTE","Edwin",0,0,0) SetGlobal("YF_BCLARAEDWINBELT","GLOBAL",1) ChangeStat("YF_Clara",SAVEVSSPELL,-1,ADD)~
EXIT

//1st Keldorn Banter
CHAIN IF ~InParty("Keldorn") InMyArea("Keldorn") IfValidForPartyDialog("Keldorn") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAKELD","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraKeldorn1
@323 /*Sir Keldorn, you remind me greatly of my father. He was tall and strong and loved by most who knew him, always ready to speak up for what was right.*/
DO ~SetGlobal("YF_BCLARAKELD","GLOBAL",1)~
== BKELDO25 @324 /*I am flattered at the comparison. Where is your father now?*/
== BYF_Cl25 @325 /*Dead. He was slain most cruelly by men with evil in their hearts. My father and my mother and most of my near kin.*/
== BKELDO25 @326 /*That is tragic news indeed. I hope our similarities do not cause you pain.*/
== BYF_Cl25 @327 /*No, Sir Keldorn, do not worry. My father died defending me, that is the reason I still live, and so your presence is a comfort which reminds me I was loved. I feel safe around you, safe enough to think on better days.*/
== BKELDO25 @328 /*You do me a great honor, my lady. While I cannot replace your father and indeed, I would not dare to try, I swear I will protect you. No young lady of your bearing should be alone out in the world.*/
EXIT

//1st Viconia Banter
CHAIN IF ~InParty("Viconia") InMyArea("Viconia") IfValidForPartyDialog("Viconia") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAVIC","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraViconia1
@25 /*Viconia, you're so beautiful...*/
DO ~SetGlobal("YF_BCLARAVIC","GLOBAL",1)~
== BVICON25 @26 /*That is the first true thing you've said in days.*/
== BYF_Cl25 @27 /*I... I don't understand.*/
== BVICON25 @28 /*You are a lie. Your words are lies. Your movements are lies. Even your voice is a lie.*/
= @29 /*When you speak, there is no center, no point that I can reference. Everything about you is an illusion.*/
= @30 /*Why? I do not see a purpose to it.*/
== BYF_Cl25 @31 /*Well, I always loved acting... pretending to be something other than I was. I wanted to be a great theater actor and travel the world from stage to stage.*/
== BVICON25 @32 /*So your entire life is a lie created to suit you?*/
== BYF_Cl25 @33 /*All life is a stage, Viconia. We are all actors.*/
== BVICON25 @34 /*Very well. Back to your reason for bothering me... you were complimenting me, so you must want something. What is it?*/
== BYF_Cl25 @35 /*Poison. Teach me to make poison. You're a drow and everyone knows that the drow have the best poisons.*/
== BVICON25 @36 /*Everyone also knows that I kidnap children from their beds and sacrifice them to my dark gods.*/
= @37 /*Most of the things that "everyone knows" are wrong. The rest are merely unreliable.*/
== BYF_Cl25 @38 /*So will you teach me to make poison or not?*/
== BVICON25 @39 /*Have you ever seen me make poison? How do you know I even can?*/
== BYF_Cl25 @40 /*Yes or no?*/
== BVICON25 @41 /*Yes, but you will owe me... something.*/
== BYF_Cl25 @42 /*Fine, fine. Whatever you want. What do we do?*/
== BVICON25 @43 /*I will give you a list of ingredients. You can gather them as we travel. When you have them all, we will find a suitable place to create your poison.*/
EXIT

//1st HaerDalis Banter - he talks first
CHAIN IF WEIGHT #3 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAHD","GLOBAL",0)~ THEN BHAERD25 YF_ClaraHaerDalis1
@257 /*I find it most impressive, my dear margay, how you slip from one role into another – from fair lady to assassin and all creatures in-between. If not for Hexxat's interference, you would have been a marvel on the stage.*/
DO ~SetGlobal("YF_BCLARAHD","GLOBAL",1)~
== BYF_Cl25 @258 /*Thank you for the compliment, but I'm afraid you're wrong about that. Why do you think I was working for the Shadow Thieves?*/
= @259 /*Before I got possessed and all, I'd been turned away by every theater in Athkatla, several more than once.*/
== BHAERD25 @260 /*Then they were blind to talent. Or perhaps their blindness was intentional; in all my travels through the planes, I have seen few things as vicious as an actor trying to hold onto that last spark of dying fame.*/
= @261 /*Indeed, a troupe can be as poisonous as any nest of vipers, fangs out and dripping death with every word. Many actors would do anything to keep their rivals off the stage and you must learn to dance the dance for your own voice to be heard.*/
= @262 /*If you wish, this sparrow would be pleased to give you pointers. You only need one theater to say welcome before your star can shine upon a stage as it was clearly meant to do.*/
== BYF_Cl25 @263 /*I appreciate the offer. But I no longer want to be an actress. I have my sights set higher now.*/
== BHAERD25 @264 /*Ahh, that is a pity. I shall content myself with watching the many masks you show the world.*/
EXIT

//1st Dorn Banter
CHAIN IF ~InParty("DORN") InMyArea("DORN") IfValidForPartyDialog("DORN") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARADORN","GLOBAL",0)~ THEN BYF_Cl25 YF_clardorn1
@44 /*Dorn, is this what you all do? Seek out death over and over again?*/
DO ~SetGlobal("YF_BCLARADORN","GLOBAL",1)~
== BDORN25 @45 /*Usually. There's also a lot of walking. We're often sent by one person to find another person who sends us to a third person. It is astoundingly boring.*/
== BYF_Cl25 @46 /*I'm not scared of the boring stuff. But the rest... You'll protect me though, right? You're so strong and fierce. I could use someone like you.*/
== BDORN25 @47 /*Look, girl. Protecting isn't really what I do. Just stay out of my way and I probably won't kill you by accident.*/
== BYF_Cl25 @48 /*Please? I bet you would be an amazing protector if you only had someone you cared for.*/
= @49 /*I could be that someone. I really don't want to die.*/
== BDORN25 @50 /*Stop talking. I don't ever want to hear you do that routine again.*/
= @51 /*"I'm a helpless woman so I must find a strong warrior to protect me." No!*/
= @52 /*Don't be useless and weak. My mother was and that's why she had me.*/
= @53 /*Is that what you want? Some miserable half-breed monster baby? Go away.*/
== BYF_Cl25 @54 /*Fine! But since my mom didn't bed an orc, I'm a skinny, fragile human and I need your help. To... to become stronger.*/
== BDORN25 @55 /*That's more like it. How can I help?*/
== BYF_Cl25 @56 /*Poison! You coat your weapons in poison. Teach me how.*/
== BDORN25 @57 /*All right. I'm almost out myself so we'll gather the ingredients for more and then I'll show you what to do.*/
EXIT

//1st Edwin Banter - he talks first, male no CN romance
CHAIN IF WEIGHT #2 ~InParty("YF_Clara") IfValidForPartyDialog("Edwin") Gender("Edwin",MALE) InMyArea("YF_Clara") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAEDWIN","GLOBAL",0) !Global("EdwinRomanceActive","GLOBAL",1) !Global("EdwinRomanceActive","GLOBAL",2)~ THEN BEDWIN25 YF_ClaraEdwin1
@265 /*Clara! You are pretty enough. You will warm my bed tonight.*/
DO ~SetGlobal("YF_BCLARAEDWIN","GLOBAL",1)~
== BYF_Cl25 @266 /*No. Why would I do that?*/
== BEDWIN25 @267 /*(She refuses me? This is not possible!)*/
= @268 /*I am Edwin Odesseiron, do you not understand? The very fabric of the universe bends beneath my whims! I can summon genies and creatures of pure fire to destroy my enemies!*/
== BYF_Cl25 @269 /*That's nice. You may be a great wizard, but are you a rich merchant who lives in luxury?  Or perhaps a noble lord who would raise my circumstances? You're not even a skilled mercenary who could save me in a fight.*/
= @270 /*What would I get out of this but disappointment? You are far too arrogant to be that great in bed.*/
== BYF_Cl25 IF ~Global("YF_AnomenClaraRomance","GLOBAL",1)~ THEN @271 /*Besides, I've got something good going on with Anomen. If I play this right, I should get a title for my troubles and I think he's much cuter than you are anyway.*/
== BYF_Cl25 IF ~OR(2) Global("YF_ClaraAndCor","GLOBAL",1) Global("YF_AnomenClaraRomance","GLOBAL",2)~ THEN @272 /*Besides, in case you haven't noticed, I'm already married. Why would I risk my position for one so-so night with you?*/
== BEDWIN25 @273 /*But... But... I am Edwin Odesseiron!*/
== BYF_Cl25 @274 /*And Edwin Odesseiron will be sleeping by himself. I'm sure your ego will keep you plenty warm throughout the night.*/
== BEDWIN25 @275 /*(This insult cannot be borne. I must find a way to have her.)*/
EXIT

//1st Korgan Banter - not a dungeon
CHAIN IF ~InParty("Korgan") InMyArea("Korgan") IfValidForPartyDialog("Korgan") IfValidForPartyDialog("YF_Clara") !AreaType(DUNGEON) Global("YF_BCLARAKOR","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraKorgan1
@58 /*Korgan, can you please help me with something?*/
DO ~SetGlobal("YF_BCLARAKOR","GLOBAL",1)~
== BKORGA25 @59 /*Now lass, I don' think helpin' be exactly what I do.*/
= @60 /*Now if ye had said, "Korgan, kin ye help me kill something?" then maybe we'd be havin' a conversation.*/
= @61 /*I kin nae be helpin' every skinny, overly-tall, weak-limbed princess who needs me help. I would nae be havin' any time fer meself.*/
== BYF_Cl25 @62 /*I am not a princess!*/
== BKORGA25 @63 /*Well, ye sure be talkin' like one.*/
= @64 /*"Korgan, can you please help me with something?"*/
= @65 /*A girl like ye needs three servants jus' t' wipe yer arse.*/
== BYF_Cl25 @66 /*Let's try this again.*/
= @67 /*Korgan, help me or I will find you some night after you've collapsed in a drunken stupor and I will slit your throat from ear to ear and laugh as you bleed dry.*/
== BKORGA25 @68 /*Better! What kin I do fer ya?*/
== BYF_Cl25 @69 /*I need to be tough like you. I keep worrying that I'm going to die out here.*/
== BKORGA25 @70 /*Of course yer gonna die. Dyin' is what ye people do.*/
= @71 /*Yer a weak, short-lifed, long-limb. I kill a dozen of yer kind per day.*/
= @72 /*Ye kin nae be tough like me. I'm a dwarf. Ye're not a dwarf. Dwarves kill, not-dwarves die.*/
== BYF_Cl25 @73 /*Okay... but what makes dwarves so tough? Perhaps I could copy you and benefit.*/
== BKORGA25 @74 /*Dwarves dig! Ye wan' t' be tough as a dwarf, girl, ye must dig!*/
== BYF_Cl25 @75 /*Dig what? A mine?*/
== BKORGA25 @76 /*Graves!*/
= @77 /*You stick wit' me ev'ry time that lazy bum <CHARNAME> be restin' and we'll go off wanderin'. I'll axe me some long limbs an' ye can dig holes t' put them in th' ground.*/
== BYF_Cl25 @78 /*Like... robbers who attack us?*/
== BKORGA25 @79 /*Anyone in our way! Or rich looking men. Or bow-legged ones. Or someone too tall. Or who looks at me funny.*/
= @80 /*I axe 'em. You put 'em in the ground. Or ye knife 'em an' put 'em in the ground while I rest. I kin nae be doin' all th' killing all the time.*/
== BYF_Cl25 @81 /*And... and this will make me tougher?*/
== BKORGA25 @82 /*Well, it sure kin nae be makin' ye any weaker. *har har har**/
= @83 /*Ye wait an' see. Ye knife a hundred long-limbs, dig a hundred graves, and carry aroun' all their gold, an' ye'll be strong as a dwarf in no time.*/
EXIT

//1st Anomen Banter, if married. He talks first.
CHAIN IF WEIGHT #2 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("Anomen") IfValidForPartyDialog("YF_Clara") Global("YF_LordAndLadyDelryn","GLOBAL",5) Global("YF_BCLARAANOMTOB","GLOBAL",0)~ THEN BANOME25 YF_ClaraAnomenHus1
@391 /*My love, may I speak with you privately?*/
DO ~SetGlobal("YF_BCLARAANOMTOB","GLOBAL",1) ChangeStat("YF_Clara",WIS,1,ADD) ChangeStat("Anomen",WIS,1,ADD)~
== BYF_Cl25 @392 /*Of course. What troubles you? You know I am always here to listen to whatever worries cloud your mind.*/
== BANOME25 @393 /*I know and I am grateful, but... I have been thinking about the future, about what I will do when this latest fight is done.*/
== BYF_Cl25 @394 /*I think you mean WE, my darling. What WE will do when <CHARNAME> has set us free at last...*/
= @395 /*You are my husband, after all, and I spoke my vows sincerely. If we can face the depths of hell together, then we can face whatever strife the future brings.*/
== BANOME25 @396 /*Sometimes I still cannot believe that we are wed. I do not deserve your love, but I am grateful to have it.*/
= @398 /*If traveling with <CHARNAME> has shown me anything, it's that mortals are small and insignificant in the battles of the gods. Our lives are short and our dreams our fragile, and the man I used to be would have met this knowledge with despair.*/
= @399 /*However, you have taught me that a different path need not always be the wrong one. A life need not be grand to have a purpose and the smallest kindness can mean the most when someone needs a guiding hand.*/
= @400 /*When this is done I wish to return to our home in Athkatla. For years I dreamed of fighting evil as a knight of the Order and yet, in truth, I believe I can do far more to help my city as a lord.*/
= @397 /*I never cared much for my father's business, but I seem to have some aptitude for it, and there is much work to do. One cannot change the world without money and power.*/
= @3970 /*While we have prowess in combat already, we will need gold and political influence as well. I am afraid much of our work will be dreadfully dull, but I will not be able to succeed without your help.*/
== BYF_Cl25 @401 /*Sometimes, my love, you are a very foolish man. Of course I will assist you in this endeavor. We are husband and wife. Your name is my name and I could ask no more than that.*/
= @402 /*I will be your perfect lady. I will wine and dine your business partners and help you plan your strategies. We shall take on the nobles of Athkatla as we have faced all enemies: together, and when we are triumphant, we shall build the world you seek. A better world for everyone.*/
== BANOME25 @403 /*You- You are a miracle, my lady, and I thank the gods every time that I hold you in my arms. I will be the most admired man in Amn with you standing at my side.*/
== BYF_Cl25 @404 /*And I shall be the most admired woman. Every lady in the city will burn with jealousy.*/
= @405 /*Do not worry, my lord husband. No matter what, I will support you. I will do whatever it takes to ensure that we succeed.*/
== BANOME25 @406 /*Thank you, my love. Perhaps one day I shall feel worthy of the gift you've given me.*/
EXIT

//1st Cernd Banter
CHAIN IF ~InParty("Cernd") InMyArea("Cernd") IfValidForPartyDialog("Cernd") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARACERND","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraCernd1
@533 /*So you left your wife for love of nature? Are you just into trees that much?*/
DO ~SetGlobal("YF_BCLARACERND","GLOBAL",1)~
== BCERND25 @534 /*It wasn't like that. I had a calling and she said she understood.*/
== BYF_Cl25 @535 /*Uh-huh, I'm sure she did. She probably got tired of you sneaking out to go “commune” with nature. Isn't that what you druids do?*/
== BCERND25 @536 /*Of course not! We speak with nature so that we may guard the balance. That is all.*/
== BYF_Cl25 @537 /*Really? You mean the rustle of spring leaves doesn't make you tingle? You don't find yourself lusting after the rough touch of bark?*/
== BCERND25 @538 /*Enough! I will not listen to your insults any longer.*/
== BYF_Cl25 @539 /*Hah. This druid has a temper.*/
EXIT

//1st Anomen Banter - Clara married Cor
CHAIN IF ~InParty("Anomen") InMyArea("Anomen") IfValidForPartyDialog("Anomen") IfValidForPartyDialog("YF_Clara") Global("YF_LadyDelryn","GLOBAL",1) Global("YF_BCLARACORBURN","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraAnomenBurn
@558 /*Come here, Anomen. Hold my pack for me.*/
DO ~SetGlobal("YF_BCLARACORBURN","GLOBAL",1) ChangeStat("YF_Clara",CHR,1,ADD)~
== BANOME25 @559 /*I am not your beast of burden, Clara.*/
== BYF_Cl25 @560 /*That's Lady Mother to you. Is it not your duty to obey your parents in all things?*/
== BANOME25 @561 /*You are not my mother!*/
== BANOME25 IF ~Dead("COR")~ THEN @562 /*You are nothing but a black widow who lured my father to his death!*/
== BANOME25 IF ~!Dead("COR")~ THEN @563 /*You are nothing but a gold digger who lured my father to her bed!*/
== BANOME25 @564 /*It is bad enough that I must travel with you; I will not bow to your every whim. I may have lost my family name, but I still have my pride.*/
== BYF_Cl25 @565 /*Oh that's right, you are no longer a Delryn.*/
= @566 /*Forgive me, Anomen, you are correct. I am not your Lady Mother, and you are not my husband's son.*/
= @567 /*You are no one at all.*/
EXIT

//1st Imoen Banter - she talks first
CHAIN IF WEIGHT #-1 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("Imoen2") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAIMOEN","GLOBAL",0)~ THEN BIMOEN25 YF_ClaraImoen1
@568 /*So you're a thief and a conman, huh?*/
DO ~SetGlobal("YF_BCLARAIMOEN","GLOBAL",1) ApplySpellRES("YF_PICKP","YF_Clara")~
== BYF_Cl25 @569 /*I am NOT a conman.*/
== BIMOEN25 @570 /*Conwoman, sorry.*/
== BYF_Cl25 @571 /*I prefer to think of myself as an actress...*/
== BIMOEN25 @572 /*Don't we all? I don't know anything about conning, but before studying magic, I became a pretty good thief.*/
== BYF_Cl25 @573 /*Really? Could you offer some pointers?*/
== BIMOEN25 @574 /*Sure, if you tell me a story.*/
== BYF_Cl25 @575 /*Does it need to be true? That limits my options.*/
== BIMOEN25 @576 /*Who knows if any stories are true? Just make it fun though.*/
== BYF_Cl25 @577 /*Very well.*/
== BIMOEN25 @578 /*And so Clara began telling Imoen an amazing story...*/
== BYF_Cl25 @579 /*Are you narrating the story of me telling you a story?*/
== BIMOEN25 @580 /*Yes, but don't let that distract you.*/
== BYF_Cl25 @581 /*All right. I'll do my best to blow your mind.*/
EXIT

//1st Neera Banter - Neera talks first
CHAIN IF ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("NEERA") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARANEERA","GLOBAL",0)~ THEN BNEERA25 YF_ClaraNeera1
@688 /*I like how you can just vanish whenever you want. Most people have to use potions.*/
DO ~SetGlobal("YF_BCLARANEERA","GLOBAL",1)~
== BYF_Cl25 @689 /*Or spells. We could avoid conflict entirely if the rest of you could just stay hidden too.*/
== BNEERA25 @690 /*I know of a spell for that! It's called Invisibility, 10-foot Radius!*/
== BNEERA25 @692 /*I can't seem to find a scroll though.*/
== BYF_Cl25 @693 /*I'll keep my eyes out.*/
= @694 /*You all spend so many hours resting that I have plenty of time for outside activities.*/
EXIT

//1st Wilson Banter
CHAIN IF ~InMyArea("WILSON") IfValidForPartyDialog("WILSON") IfValidForPartyDialog("YF_Clara") Global("YF_BClaraWilson","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraWilson1
@745 /*Okay, bear, what do I need to do to ride you?*/
== BWILSO25 @746 /*Rff?*/
== BYF_Cl25 @747 /*Because <CHARNAME> completely and steadfastly refuses to buy us any horses, that's why!*/
== BWILSO25 @748 /*Snuffle. Growl. Roar.*/
DO ~SetGlobal("YF_BClaraWilson","GLOBAL",1)~
== BYF_Cl25 @749 /*Well of course *you* can't ride a horse, but the rest of us could! I should be riding one horse with a second one carrying my bags and a third one as a spare.*/
== BWILSO25 @750 /*Growl, rff?*/
== BYF_Cl25 @751 /*Yes, the horses could carry your bags too. No one should have to carry anything.*/
== BWILSO25 @752 /*Snuffle, roar?*/
== BYF_Cl25 @753 /*Yes, the horses would be carrying stuff.*/
== BWILSO25 @754 /*Growl. Snort!*/
== BYF_Cl25 @755 /*Okay, fine, horses count as *someone* I suppose. All the horses would carry bags, except for the ones we're riding.*/
== BWILSO25 @756 /*Snuffle, growl. Whine?*/
== BYF_Cl25 @757 /*Yes, you could eat your horse since you couldn't ride it.*/
= @758 /*But this is all hypothetical since <CHARNAME> refuses to allow any of us to ride horses!*/
== BWILSO25 @759 /*Snuffle, snuffle... rff?*/
== BYF_Cl25 @760 /**sigh* Yes, maybe <CHARNAME> would allow you to eat a horse even if the rest of us can't ride them. You'll have to ask <PRO_HIMHER> about that.*/
EXIT


//2nd Valygar Banter - still only outdoors so higher on list
CHAIN IF ~InParty("Valygar") InMyArea("Valygar") IfValidForPartyDialog("Valygar") IfValidForPartyDialog("YF_Clara") AreaType(OUTDOOR) Global("YF_BCLARAVALYG","GLOBAL",1)~ THEN BYF_Cl25 YF_ClaraValygar2
@351 /**whisper* Almost there. Just a little more.*/
== BVALYG25 @352 /*I can hear you, Clara.*/
== BYF_Cl25 @353 /*Darn it! I almost had you that time.*/
== BVALYG25 @354 /*Indeed, you did. You are learning quickly. The land does not mark your passage as it did before. Are you sure that you do not wish to be a ranger? You could almost pass for one already to the untrained eye.*/
== BYF_Cl25 @355 /*I don't think so. I like the city far too much for that. I would get too lonely how here by myself.*/
== BVALYG25 @356 /*I suppose I can understand that. Though some of us are meant to be alone. It is safer that way when you destroy all that you touch.*/
== BYF_Cl25 @357 /*You shouldn't talk like that, you know. I don't think you're really cursed. Just because the rest of your family made some bad decisions doesn't mean that you're an awful guy.*/
= @358 /*If you were, you wouldn't be spending so much time teaching me about nature. I may not be as good as you, but I don't feel so clumsy out in the wild anymore.*/
DO ~ApplySpellRES("YF_HIDE","YF_Clara") ApplySpellRES("YF_MOVE","YF_Clara") SetGlobal("YF_BCLARAVALYG","GLOBAL",2)~
== BVALYG25 @359 /*I am glad to hear that. My presence brings danger to <CHARNAME> and your entire company, and sometimes I am certain I should leave. But at least I have been of use while I am here.*/
EXIT

//2nd Minsc Banter
CHAIN IF ~InParty("Minsc") InMyArea("Minsc") IfValidForPartyDialog("Minsc") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAMINSC","GLOBAL",1)~ THEN BYF_Cl25 YF_ClaraMinsc2
@433 /**squeak. squeak. squeak.* Come on, Boo. You want some hard-tack? Or maybe a cracker?*/
DO ~SetGlobal("YF_BCLARAMINSC","GLOBAL",2)~
== BMINSC25 @434 /*What are you doing, Clara?*/
== BYF_Cl25 @435 /*Uhhh, nothing? Nothing at all. I wasn't trying to steal your hamster. Please don't murder me.*/
== BMINSC25 @436 /*Of course there is no stealing. Friends cannot steal each other. Boo says he likes the salty ones. You should bring those next.*/
== BYF_Cl25 @437 /*Can you really understand him? I've been trying for days but all I hear is squeaking. I thought that maybe I just needed to get closer and listen carefully.*/
== BMINSC25 @438 /*You want to listen to Boo? No one listens to Boo. Most people just laugh behind our backs. It used to make Minsc sad, but it's just jealousness. Everyone wants a miniature giant hamster of their own.*/
== BYF_Cl25 @439 /*Well, that's not me. I'm serious. Teach me how to talk to Boo.*/
== BMINSC25 @440 /*Yes, teachering! First, you must sit. Then you must listen. Open your ears.*/
= @441 /*Now, squeak Boo. Squeak so she can hear.*/
== BYF_Cl25 @442 /*I don't... It just sounds the same. Okay, Clara, concentrate...*/
= @443 /*I- I think I'm getting it. Is that...?*/
= @444 /**squeak* Yes, I understood that. I can hear everything.........*/
== BMINSC25 @445 /*You think like Minsc now. You talk to Boo and listen too.*/
== BYF_Cl25 @446 /*...Ohhh, my brain hurts.*/
== BMINSC25 @447 /*Yes. You should not think like Minsc too often. Your mind is not so strong.*/
EXIT

//2nd Mazzy Banter
CHAIN IF ~InParty("Mazzy") InMyArea("Mazzy") IfValidForPartyDialog("Mazzy") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAMAZ","GLOBAL",1)~ THEN BYF_Cl25 YF_ClaraMazzy2
@95 /*Mazzy, I think I am getting the hang of it. Watch me hit that mouse!*/
= @96 /*There! Mouse for lunch!*/
DO ~ApplySpellRES("YF_SBOW","YF_Clara") SetGlobal("YF_BCLARAMAZ","GLOBAL",2)~
== BMAZZY25 @97 /*Meat brought down by your own hand is always the most virtuous. And yes, you are progressing rapidly.*/
EXIT

//2nd HaerDalis Banter
CHAIN IF ~InParty("HaerDalis") InMyArea("HaerDalis") IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAHD","GLOBAL",1)~ THEN BYF_Cl25 YF_ClaraHaerDalis2
@329 /*Haer'Dalis, can I ask you a question?*/
DO ~SetGlobal("YF_BCLARAHD","GLOBAL",2)~
== BHAERD25 @330 /*Of course. What words of wisdom do you seek from this sparrow's lips? Just ask and he will speak them to the wind.*/
== BYF_Cl25 @331 /*How do actors manage all those quick changes during a performance? Are they just really stealthy or is there some trick to it?*/
== BHAERD25 @332 /*Not the question I expected, my silent feline. I thought your heart no longer yearned to walk the stage?*/
== BYF_Cl25 @333 /*That doesn't mean I'm not still curious. The first time I saw a play, I thought that it was magic when the plain old crone became a princess right before my eyes. But when I asked my father, he said that the performer was simply wearing a second costume underneath and she removed the first too fast for us to see.*/
= @334 /*Was he right? Even as a child, I wanted to be an actress and my parents always indulged me when I put on a play. But while I learned to hide behind the scenery and move with silent footsteps, I never could quite figure out the knack of those quick-changes. My outfits were always stubbornly attached.*/
== BHAERD25 @335 /*This sparrow will let you in on a secret. I can cross blades with the best of them, but the fastest hands in all the planes still stumbled on those clasps.*/
= @336 /*So while some relied on stealth and others on distraction, I used a touch of magic to bring my characters alive.*/
== BYF_Cl25 @337 /*Really? Isn't that a little wasteful?*/
== BHAERD25 @338 /*Nay, what better place to spend my power than in making this sparrow's audience gasp and startle with delight. I create a door...*/
= @339 /*I step within...*/
= @340 /*...and I am gone from sight until I reappear across the stage transformed.*/
== BYF_Cl25 @341 /*That was fantastic!*/
= @342 /*Can you teach me how to do that? Or would I have to be a wizard?*/
== BHAERD25 @343 /*Most would tell you yes, such spells are only gifted to those who feel the magic singing in their veins. But this bard knows better. I have picked up many tricks across the planes and for this, a willing student may learn the song's refrains.*/
EXIT

//2nd Keldorn Banter
CHAIN IF ~InParty("Keldorn") InMyArea("Keldorn") IfValidForPartyDialog("Keldorn") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAKELD","GLOBAL",1)~ THEN BYF_Cl25 YF_ClaraKeldorn2
@368 /*You are a great seeker of truth, Sir Keldorn. Do all paladins share your ability to see the true nature of their foes?*/
DO ~SetGlobal("YF_BCLARAKELD","GLOBAL",2)~
== BKELDO25 @369 /*Most do. A paladin is granted such gifts by their god to help them fight injustice in all forms. True evil often wears a fairer countenance and seeing past the surface is vital in hunting such creatures down.*/
= @370 /*Of course, as with all things, it is not infallible. It takes skill and practice for a paladin to see the truth completely and there are ways for evil to turn our sight aside.*/
== BYF_Cl25 @371 /*Really? But then, how can we trust anyone? That's terrible!*/
== BKELDO25 @372 /*There is no need to worry about such things, I promise you. The ability to block my gifts is rare. There are a few magic items that were built for such a purpose and I have heard rumors that some monks use mental disciplines to hide their true intent, though I have not encountered them myself.*/
= @373 /*In my experience, the most dangerous evils are those who truly believe what they are saying because the lies upon their lips will read as honesty. However, even then their actions will speak out and show the truth eventually.*/
== BYF_Cl25 @374 /*That is a relief. I am so glad to know that I can trust you to protect us against evils of all kinds. (Do not laugh. You believe that. You believe it honestly.)*/
EXIT

//2nd Sarevok Banter - he talks first
CHAIN IF WEIGHT #1 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("Sarevok") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARASAREV","GLOBAL",1)~ THEN BSAREV25 YF_ClaraSarevok2
@480 /*Clara, I admire your pragmatism. A true warrior uses anything at hand to defeat their enemies.*/
== BYF_Cl25 @481 /**laughs* Thanks, I guess. You might be the first person who's ever called me a warrior.*/
== BSAREV25 @482 /*Then the rest were fools. They saw the pretty mask and looked no deeper, but I know the truth. I have seen the viper underneath.*/
== BYF_Cl25 @483 /*Flatterer. Should I be worried that you've been watching me?*/
== BSAREV25 @484 /*No. You do not interest me that way. I have lost my taste for scheming. Give me an open battle and the rush of blood within my veins.*/
= @485 /*However, I have not lost my skills and there are some you might make use of.*/
== BYF_Cl25 @486 /*So you're just going to share your hard-earned wisdom? Have you been overtaken by some strange burst of charity?*/
DO ~SetGlobal("YF_BCLARASAREV","GLOBAL",2) ApplySpellRES("YF_LONG","YF_Clara")~
== BSAREV25 @487 /*Of course not. Do not be ridiculous. But we are comrades for the moment. I will only benefit by making you more deadly.*/
= @488 /*You possess some skill with a blade, but you are a clumsy fool compared to your true potential.*/
= @489 /*I will show you.*/
EXIT

//2nd Neera Banter - she talks first
CHAIN IF ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("NEERA") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARANEERA","GLOBAL",1)~ THEN BNEERA25 YF_ClaraNeera2
@695 /*So, Clara, where *do* you keep going whenever we rest? Do you have another party you adventure with in your spare time or something?*/
== BYF_Cl25 @696 /*Oh just a special project of mine. I have a lot of other interests, you know...*/
== BNEERA25 @698 /*Nope, I don't know. That's why I'm asking.*/
== BYF_Cl25 @699 /*Okay, so I found this mage, a lecherous old goat with no friends. Classic wizard.*/
= @700 /*Umm... present company excepted.*/
= @701 /*Anyway, I pretended to be the servant of a merchant who sells spell components. The wizard wanted all kinds of crazy stuff, like the fur of an albino black wolf.*/
== BNEERA25 @702 /*Umm, how do you tell that apart from white wolf fur?*/
== BYF_Cl25 @703 /*You can't! That's the beauty of it. He also wanted other weird things like dryad lips, the left kidney of a man killed by his brother, and then a bunch of really sexual stuff that I don't want to repeat.*/
== BNEERA25 @704 /*I don't blame you... wizards can be really creepy.*/
= @705 /*I think my body's a spell component. It's one of the reasons the Red Wizards keep hunting me.*/
== BYF_Cl25 @706 /*Long story short, I pilfered as much of his stuff as I could.*/
== BNEERA25 @708 /*How'd you escape?*/
== BYF_Cl25 @709 /*Out the front door! He expects me to return soon with a shipment of rare components from my master and my "services" thrown in as a bonus.*/
== BNEERA25 @710 /*Ewwww...*/
== BYF_Cl25 @711 /*Yeah... try not to think about that. The important thing is all the cool things I got, including these Invisibility 10-foot radius scrolls. Here you go.*/
DO ~GiveItemCreate("SCRL1J","NEERA",3,0,0)~
== BNEERA25 @712 /*Thanks! If there's anything I can do for you in return...*/
== BYF_Cl25 @713 /*Yes! Read with me. My reading isn't as accomplished as I would like, but you're a mage... so I thought...*/
== BNEERA25 @714 /*Of course! I have just the book; we'll read it together!*/
DO ~SetGlobal("YF_BCLARANEERA","GLOBAL",2) ChangeStat("YF_Clara",INT,1,ADD) ChangeStat("YF_Clara",LORE,10,ADD) ChangeStat("NEERA",LORE,10,ADD)~
= @715 /*"Magical Items and Their Identifying Properties, Volume I: Aardvark Scale Mail through Gauntlets of Goblin-Slaying.”*/
EXIT

//2nd Jan Banter
CHAIN IF ~InParty("Jan") InMyArea("Jan") IfValidForPartyDialog("Jan") IfValidForPartyDialog("YF_Clara") Global("YF_BClaraJan","GLOBAL",1)~ THEN BYF_Cl25 YF_clarjan2
@84 /*Jan, Jan, I can do it! Look!*/
= @85 /*Shoot one of your bolts at me! Shoot it!*/
= @86 /*See, I just step to the side and catch. Do it again!*/
= @87 /*Step to the side and catch! I've been doing this with everyone. I got hit half a dozen times in the beginning, but now it's second nature!*/
DO ~ChangeStat("YF_Clara",DEX,1,ADD) SetGlobal("YF_BClaraJan","GLOBAL",2)~
== BJAN25 @88 /*Excellent, now you are ready!*/
== BYF_Cl25 @89 /*I am! I am ready! What am I ready for?*/
== BJAN25 @90 /*To wear a pair of Jansen-Brand Micro-Macro Spectroscopes; I retrofitted this pair just for you. Did you know that they're the Official Spectroscopes of the Purple Brotherhood?*/
DO ~ActionOverride("YF_Clara",CreateItem("YF_SCOPE",0,0,0))~
== BYF_Cl25 @91 /*You did?! Oh, Jan, they're wonderful!*/
= @92 /*What do they do?*/
== BJAN25 @93 /*Well, for starters they make traps look like they're surrounded by a giant red outline.*/
= @94 /*I will show you more as we go.*/
EXIT

//2nd Cernd Banter
CHAIN IF ~InParty("Cernd") InMyArea("Cernd") IfValidForPartyDialog("Cernd") IfValidForPartyDialog("YF_Clara") AreaType(OUTDOOR) Global("YF_BCLARACERND","GLOBAL",1)~ THEN BYF_Cl25 YF_ClaraCernd2
@540 /*Cernd, what kind of tree is that?*/
DO ~SetGlobal("YF_BCLARACERND","GLOBAL",2)~
== BCERND25 @541 /*Oh, it's a-*/
== BYF_Cl25 @542 /*Cernd, is that a sparrow over there?*/
== BCERND25 @543 /*No, that's-*/
== BYF_Cl25 @544 /*Cernd, will you turn into a werewolf?*/
== BCERND25 @545 /*That isn't-*/
== BYF_Cl25 @546 /*Cernd, can I-*/
== BCERND25 @547 /*No! For the love of nature, no! That is an elm, the bird is a pigeon, and if you don't stop pestering me, you will see my werewolf form up close and personal!*/
== BYF_Cl25 @548 /*Oohh, scary. Is the big bad wolf having a rough day? I thought druids were supposed to be calm no matter what.*/
== BCERND25 @549 /*That is the goal. But you could try the patience of a saint. Tell me, what will it take for you to be SILENT?*/
== BYF_Cl25 @550 /*Hmm, I like money. More gold is always good.*/
== BCERND25 @551 /*I am a druid, Clara. I live off the bounty of nature, not some secret stash of coin.*/
== BYF_Cl25 @552 /**shrug* Power then. Whatever your grand philosophy, money and power are what makes the world go round.*/
== BCERND25 @553 /*The earth shudders at the thought of giving you more power. But I suppose I could assist you with finding traps and such. That seems a fairly harmless trade for the chance to walk in peace.*/
= @554 /*Do we have a deal?*/
== BYF_Cl25 @555 /*Done and done. Lay your magic on me.*/
== BCERND25 @556 /*All right. You had best stay still for this.*/
= @557 /*I have an ill feeling about this bargain. As though the flutter of a moth has caused a hurricane.*/
EXIT

//2nd Aerie Banter
CHAIN IF ~InParty("Aerie") InMyArea("Aerie") IfValidForPartyDialog("Aerie") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAAERIE","GLOBAL",1)~ THEN BYF_Cl25 YF_ClaraAerie2
@507 /*Hey, Aerie, this Chitikka Fastpaws is like super fast, right?*/
DO ~SetGlobal("YF_BCLARAAERIE","GLOBAL",2)~
== BAERIE25 @508 /*I- I mean, I guess so. That's why I always call on h-him when I'm trying to move quickly.*/
== BYF_Cl25 @509 /*Right. So if I pray to Chiktikka Fastpaws really, really hard, he'll have to make me faster. That's how it works.*/
== BAERIE25 @510 /*I d-don't think that's exactly....*/
== BYF_Cl25 @511 /*Yes, it is. Prayers for blessings. That's the deal. Why would anyone bother to worship a god otherwise?*/
== BAERIE25 @512 /*Well, s-some of us j-just want to say thank you. And I f-find it comforting to know that s-someone is listening.*/
== BYF_Cl25 @513 /*Uh-huh, whatever. Let's do this.*/
= @514 /*Chiktikka Fastpaws, hear my prayers. Chiktikka Fastpaws, give me your boon. Chiktikka Fastpaws give me the speed of a raccoon.*/
= @515 /*....I feel something.... I feel his power.... Did that mouse just curse at me? Damn it! I said speed, not speech. I don't want to talk to animals!*/
== BAERIE25 @516 /**giggles* You got your blessing, Clara. Y- you should be grateful.*/
EXIT

//Second Korgan Banter
CHAIN IF ~InParty("Korgan") InMyArea("Korgan") IfValidForPartyDialog("Korgan") IfValidForPartyDialog("YF_Clara") !AreaType(DUNGEON) Global("YF_BCLARAKOR","GLOBAL",1)~ THEN BYF_Cl25 YF_ClaraKorgan2
@145 /*It's working, Korgan, I do feel stronger.*/
DO ~ChangeStat("YF_Clara",STR,1,ADD) SetGlobal("YF_BCLARAKOR","GLOBAL",2)~
== BKORGA25 @146 /*Hah, yer as weak as ever. That last fool almost choked ye to death wit' his bare hands.*/
== BYF_Cl25 @147 /*He was twice my size and he did not. His guts were falling out. He would have collapsed before I died.*/
== BKORGA25 @148 /*Well, no way t' know now, girly, since I had t' dull a good axe by choppin' through his helmet.*/
= @149 /*Waste of a good helmet too.*/
= @150 /*What ye need, lass, is a brawl. Not this knifin' drunk farmers and sailors we been doin'. Ye need to get yer knuckles bloody and give as good as ye take.*/
== BYF_Cl25 @151 /*So I'm supposed to just go into a bar and pick a fight? I am Caroline Aurora Lucia Rosena Silvershield of Beregost! I have a reputation to uphold.*/
== BKORGA25 @152 /*So ye need t' be in a bar where no one knows ye...*/
= @153 /*Ye need a dwarf bar! With strong dwarven ale, an' strong dwarven women! One of them will be happy t' fight wit' ye.*/
== BYF_Cl25 @154 /*Now you're just making things up. There are no dwarf bars around here.*/
== BKORGA25 @155 /*There are dwarf bars everywhere. We will stop by th' next one we're near. Get ye some drink! And a woman!*/
EXIT

//2nd Viconia Banter (triggered in Clara's script file)
CHAIN IF WEIGHT #-5 ~InParty("Viconia") Detect("Viconia") IfValidForPartyDialog("Viconia") InParty("YF_Clara") IfValidForPartyDialog("YF_Clara") 
	Global("YF_BCLARAVIC","GLOBAL",3)~ THEN BYF_Cl25 YF_ClaraViconia2
@98 /*Okay, so I mix the blue with the green.*/
== BVICON25 @99 /*Good. Now... carefully pour that into the pitcher.*/
== BYF_Cl25 @100 /*Poured. Now what? And why are you farther away?*/
== BVICON25 @101 /*Now you are done. This is one of the first potions I learned to make. The resulting solution is extremely poisonous and teaches respect and care for the process.*/
= @102 /*You were a little careless and the drop that splashed on the skin of your neck will kill you.*/
== BYF_Cl25 @103 /*What? How do I stop it? Help me! Please!*/
== BVICON25 @104 /*More help? You are a demanding child. Very well, tell me a secret, and tell me the truth.*/
== BYF_Cl25 @105 /*A secret? What are you talking about?*/
== BVICON25 @106 /*A secret is something that no one else knows. Hurry now; you do not have much time.*/
== BYF_Cl25 @107 /*My father was sewn into a deer skin and hunted down with dogs.*/
== BVICON25 @108 /*Many people must know that.*/
== BYF_Cl25 @109 /*Everyone who knows it is dead. I killed most of them.*/
== BVICON25 @110 /*How?*/
== BYF_Cl25 @111 /*I served them poisoned food and wine.*/
= @112 /*You have your secret. Don't let me die.*/
== BVICON25 @113 /*Did you watch them die?*/
== BYF_Cl25 @114 /*Yes.*/
== BVICON25 @115 /*Did anyone else die too?*/
== BYF_Cl25 @116 /*The entire feast. Sixty-seven people, four cats, and seven dogs.*/
= @117 /*Now please save me...*/
== BVICON25 @118 /*You counted the dead?*/
== BYF_Cl25 @119 /*Before I fled, yes.*/
= @120 /*It hurts so much... I am going to die, aren't I?*/
== BVICON25 @121 /*Yes, but don't worry. I keep my promises.*/
DO ~SetGlobal("YF_BCLARAVIC","GLOBAL",4) Kill("YF_Clara")~
= @122 /*<CHARNAME>, it seems our little cut-purse has expired. We should raise her.*/
EXIT

//On Raise
CHAIN IF WEIGHT #-5 ~InParty("Viconia") Detect("Viconia") IfValidForPartyDialog("Viconia") InParty("YF_Clara") IfValidForPartyDialog("YF_Clara") 
	Global("YF_BCLARAVIC","GLOBAL",4)~ THEN BYF_Cl25 YF_ClaraViconia3
@123 /*You let me die!*/
DO ~SetGlobal("YF_BCLARAVIC","GLOBAL",5) ChangeStat("YF_Clara",WIS,1,ADD)~
== BVICON25 @124 /*Cease your mewling. You are alive, aren't you? Did you learn anything?*/
== BYF_Cl25 @125 /*Yes, but it hurt!*/
= @126 /*Still... I know how to make poison now. Delayed death poison that kills with a drop on the skin. Oh thank you, Viconia. Thank you.*/
== BVICON25 @127 /*Do not thank me yet. It is nearly as dangerous to the user as the target; do not rely on me to raise you endlessly.*/
== BYF_Cl25 @128 /*I will be careful! I will! Who should I kill first?*/
== BVICON25 @129 /*This world is full of useless rivvin. I am sure you will find someone who deserves to die.*/
EXIT

//Second Jaheira Banter
CHAIN IF ~IfValidForPartyDialog("Jaheira") IfValidForPartyDialog("YF_Clara") InMyArea("YF_Clara") Global("BYF_clarjaheira","GLOBAL",1)~ THEN BJAHEI25 YF_clarjaheiraBanter2
@665 /*So you want to live. You want security. And clearly you want gold.*/
DO ~ChangeStat("YF_Clara",WIS,1,ADD) SetGlobal("BYF_clarjaheira","GLOBAL",2)~
== BYF_Cl25 @666 /*Gold buys safety. It buys freedom.*/
== BJAHEI25 @667 /*I am not arguing with you; I am merely trying to assess you.*/
== BYF_Cl25 @668 /*And...?*/
== BJAHEI25 @669 /*You are no danger to us. You would sacrifice us to save your own skin, but you are too terrified and awed by <CHARNAME> to betray us. I believe you are on the whole a benefit.*/
== BYF_Cl25 @670 /*Awww, thanks! I think you're a benefit too.*/
== BJAHEI25 @671 /*You have no moral compass of any kind, but neither are you full of bitterness and hate.*/
= @672 /*Whoever wronged you, you have already taken your revenge.*/
= @673 /*Was it worth it? Would you do it again?*/
== BYF_Cl25 @674 /*Yes. Absolutely.*/
== BJAHEI25 @675 /*And there your fierceness shows through. You fit this group nicely.*/
== BYF_Cl25 @676 /*What drives you, Jaheira?*/
== BJAHEI25 @677 /*Duty to nature and to the balance.*/
= @678 /*Love, for those with whom I choose to share my life.*/
= @679 /*And revenge. Always revenge.*/
EXIT

//2nd Anomen Banter, if married. He talks first.
CHAIN IF ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("Anomen") IfValidForPartyDialog("YF_Clara") Global("YF_LordAndLadyDelryn","GLOBAL",5) Global("YF_BCLARAANOMTOB","GLOBAL",1)~ THEN BANOME25 YF_ClaraAnomenHus2
@490 /*I find myself worrying about our future once again. A seat on the Council of Six is a must if I am to make any difference whatsoever.*/
== BYF_Cl25 @491 /*Of course, my love, it is practically yours.*/
DO ~SetGlobal("YF_BCLARAANOMTOB","GLOBAL",2) ChangeStat("YF_Clara",WIS,1,ADD) ChangeStat("Anomen",WIS,1,ADD)~
== BANOME25 @492 /*No, that seat is only as secure as our fortunes, and trade is always risky.*/
= @493 /*I remember when my father lost three ships in the same month; it was what ruined him.*/
= @494 /*They were insured, of course, but Saerk used his influence to prevent full repayment. That was the act that broke my father.*/
= @495 /*He had always loved his drink, but I never saw him without a bottle after that, and the more he drank, the more money he lost. He blamed Saerk for everything, even when the fault was clearly his own.*/
= @496 /*I was amazed at how quickly he rallied his fortunes after Saerk's death... I did not think he had it in him.*/
= @497 /*I suppose we are lucky he did. With the last few ships sent off, we have at least half a year before we must return home.*/
== BYF_Cl25 @498 /*You worry too much. Every ship that returns would pay for the complete loss of three of the others. If even one of the ships on the southern route survives, it could buy us a new fleet.*/
= @499 /*Given the recent rebellion across the border, the salt alone should sell for five times what we expected...*/
= @500 /*What? Why are you looking at me that way?*/
== BANOME25 @501 /*You are a marvel. You know the ships and their cargoes?*/
== BYF_Cl25 @502 /*I know each ship, its cargo, its destination, the prices at each port of call for every trade good carried, and the moral weaknesses of all of our captains.*/
= @503 /*I could hardly expect to help you run a trading empire and not know the details. You cared so much about every book, ledger, and manifest, so I read them over when you were dealing with other matters.*/
= @504 /*I didn't understand half of the information at first, but some of our servants and workers were happy to teach me when I asked them nicely.*/
== BYF_Cl25 @505 /*Anyway, you were saying that you were worried about our fortunes...*/
== BANOME25 @506 /*No, my love. Not anymore. I think we will be fine.*/
EXIT

//Second Dorn Banter
CHAIN IF ~InParty("DORN") InMyArea("DORN") IfValidForPartyDialog("DORN") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARADORN","GLOBAL",1)~ THEN BYF_Cl25 YF_clardorn2
@130 /*Okay, we have the poison. Now what? How do we coat our weapons without dying?*/
== BDORN25 @131 /*Very carefully. This poison is extremely sticky and has to enter your opponent's bloodstream so place it on the part of your weapon that is going to break the skin.*/
= @132 /*You should keep a bottle of antidote close at hand in case you accidentally cut yourself. If you drink it quickly enough, you will survive.*/
== BYF_Cl25 @133 /*That's simple enough. Thanks!*/
DO ~SetGlobal("YF_BCLARADORN","GLOBAL",2)~
= @134 /*...*/
= @135 /*Umm, can I ask you a question? You're attracted to me, right?*/
== BDORN25 @136 /*Very much so.*/
== BYF_Cl25 @137 /*So why didn't you play along earlier? You could've had me... repeatedly even... but you turned me down flat.*/
== BDORN25 @138 /*Any whore in Amn will bed me for enough coin. Do you know what it is like to bed someone who doesn't really want you? Who is actually disgusted by you?*/
= @139 /*Of course you don't. A pretty young girl like you? Every man you've lain with has craved you with their every breath. You are the very object of desire.*/
== BYF_Cl25 @140 /*Oh. Well... I would've pretended really well. You wouldn't have been disappointed.*/
== BDORN25 @141 /*Hmpf. I am tired of lies and deception. At least this way, we both know where we stand.*/
== BYF_Cl25 @142 /*You know what, Dorn? Under your evil-murderer-routine, you're actually a pretty sweet guy.*/
== BDORN25 @143 /*Hah. I have slaughtered hundreds. Peasants. Women. Children. I'd strike you down in a heart-beat if it was to my advantage.*/
== BYF_Cl25 @144 /*Yeah... but I think you'd feel bad about it.*/
EXIT

//2nd Nalia Banter (TOB version)
CHAIN IF ~InParty("Nalia") InMyArea("Nalia") IfValidForPartyDialog("Nalia") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARANALIA","GLOBAL",1)~ THEN BYF_Cl25 YF_ClaraNalia2
@284 /*….so I turned to my father and – still wearing both the bed spread and my mother's best tiara – gave him a perfect curtsy, the one that I'd been practicing for weeks. He was so confused that I got off with just a scolding and the page boy managed to slip out entirely unseen.*/
== BNALIA25 @285 /**laughs* You had all the best adventures. I wish we'd met when I was younger. Maybe then I wouldn't have been so lonely growing up.*/
== BYF_Cl25 @286 /*I wasn't exactly supposed to be playing with the help. But we were the only nobles around for miles and I was bored out of my mind. Sometimes we would travel from our estate into Beregost, but it isn't exactly a bustling metropolis, not like Baldur's Gate.*/
= @287 /*Why do you think I wanted to be an actress? A theater troupe travels around the world and meets interesting people; noblewomen are just supposed to look nice and talk about themselves.*/
DO ~SetGlobal("YF_BCLARANALIA","GLOBAL",2) ChangeStat("YF_Clara",DEX,1,ADD) ChangeStat("Nalia",DEX,1,ADD)~
== BNALIA25 @288 /*I know what you mean. My father often went to Athkatla for his business, but he rarely let me join him unless there was a ball. I would go to make him happy and hope to meet a friend, but I was never popular. I usually spent the evening talking to the waitstaff on the sidelines or listening to the players by myself.*/
= @289 /**sigh* I do miss the music. That and dancing are the only things I truly miss about the life we've left behind.*/
== BYF_Cl25 @290 /*So why don't we go dancing?*/
== BNALIA25 @219 /*Can we do that? I doubt anyone is throwing a ball around here.*/
== BYF_Cl25 @220 /*Not a ball, silly. I've spent a lot of time among the common folk since leaving Beregost and I'm sure I can find a place where we could dance the whole night through. Just give me a little time.*/
= @221 /*Come on, let's go on an adventure of our own. We deserve a night of fun after all this running for our lives.*/
== BNALIA25 @294 /*All right, I'm in. Let's do this.*/
= @295 /*As long as you practice with me; I haven't danced in ages and I don't want to embarrass myself when we arrive.*/
== BYF_Cl25 @296 /*Of course, what are friends for? We'll practice all the latest steps and then we'll go out on the town.*/
EXIT

//2nd Edwin Talk - male, no romance
CHAIN IF ~InParty("Edwin") IfValidForPartyDialog("Edwin") Gender("Edwin",MALE) InMyArea("Edwin") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAEDWIN","GLOBAL",1) !Global("EdwinRomanceActive","GLOBAL",1) !Global("EdwinRomanceActive","GLOBAL",2)~ THEN BYF_Cl25 YF_ClaraEdwin2
@375 /*Edwin, you can stop staring; I am still not interested.*/
== BEDWIN25 @376 /*That is only because you do not understand my true magnificence. (How this is true, I cannot fathom since she has seen my might in battle.)*/
= @377 /*If you will only cease your prattling and listen, you will fall at my feet in awe.*/
== BYF_Cl25 @378 /*Oh, really? Are you suddenly the richest noble in Athkatla?*/
== BEDWIN25 @379 /*No, of course not! You and your obsession with wealth. So plebeian.*/
== BYF_Cl25 @380 /*Your pretty sparkles won't feed me when I'm starving. You need good solid coin for that.*/
== BEDWIN25 @381 /*That is.. (uggh) not the point. And they are more than sparkles.*/
= @382 /*Take this. I will show you.*/
== BYF_Cl25 @383 /*It's an earring, Edwin. I have seen these before.*/
== BEDWIN25 @384 /*Not like this. I have watched you closely in these fights our oh-so-fearless leader keeps on starting. You prefer to hide in the shadows and stab your foes from behind. (A decent strategy if one is not the great Edwin Odesseiron.)*/
= @385 /*This earring will assist you in your efforts, protect you as you've demanded that I do. You need only touch it and a spell will wrap you in illusions to escape your enemies.*/
== BYF_Cl25 @386 /*Really? That is useful.*/
== BEDWIN25 @387 /*You see now? Edwin Odesseiron is far superior to any other suitor you could have. What is a noble or a merchant compared to my sheer brilliance? Next time we are allowed to rest, you will join me in my bed.*/
== BYF_Cl25 @388 /*No. I won't.*/
= @389 /*But thank you for the earring. At least I won't have to put up with your staring anymore.*/
DO ~ApplySpell("YF_Clara",WIZARD_SHADOW_DOOR) SetGlobal("YF_BCLARAEDWIN","GLOBAL",2)~
== BEDWIN25 @390 /*Blast! She got away! (That did not go as I expected. I shall have to try again.)*/
EXIT

//2nd Imoen Banter - she talks first
CHAIN IF WEIGHT #1 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("Imoen2") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAIMOEN","GLOBAL",1)~ THEN BIMOEN25 YF_ClaraImoen2
@582 /*Do you have time for a story?*/
== BYF_Cl25 @583 /*Once upon a time there was a little girl. Her father was rich and her mother was beautiful and she had everything she could want in the world.*/
== BIMOEN25 @584 /*I like it already.*/
== BYF_Cl25 @585 /*However, an evil baron who lived nearby was jealous of her father and had him murdered. Heartbroken and impoverished, the girl and her mother suffered on whatever meager scraps they could find.*/
== BIMOEN25 @586 /*But it all turns out okay, right?*/
== BYF_Cl25 @587 /*Starving and homeless, the mother took sick and died and the girl went on alone.*/
== BIMOEN25 @588 /*And now it gets better?*/
== BYF_Cl25 @589 /*Having nowhere else to turn, the girl took a job in the estate of the evil baron who had killed her father.*/
= @590 /*She cleaned his floors and washed his pots. She was beaten regularly by his meaner servants and was sometimes taken advantage of by the household guards.*/
== BIMOEN25 @591 /*It's not getting better...*/
== BYF_Cl25 @592 /*But she never lost the hope that some day her life would improve.*/
= @593 /*Skilled, charming, and hard-working, she gradually gained more and more responsibilities and became a trusted and respected servant.*/
= @594 /*And she lived happily ever after.*/
== BIMOEN25 @595 /*What? That's a horrible story! She just served the evil baron forever?*/
== BYF_Cl25 @596 /*Nothing lasts forever, but that is the end of this story. Now tell me more about traps.*/
DO ~ChangeStat("YF_Clara",TRAPS,20,ADD) SetGlobal("YF_BCLARAIMOEN","GLOBAL",2)~
== BIMOEN25 @597 /*Oh... fine. But after that I want another one.*/
EXIT

//2nd Rasaad Banter - he talks first
CHAIN IF WEIGHT #1 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("RASAAD") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARARAS","GLOBAL",1)~ THEN BRASAA25 YF_ClaraRasaad2
@626 /*Clara, my face is up here.*/
== BYF_Cl25 @627 /*Whoops, sorry. I got distracted.*/
== BRASAA25 @628 /*That seems to happen a lot. I'm not sure you're truly suited for the Sun Soul path.*/
== BYF_Cl25 @629 /*I don't know what you mean. I've really enjoyed your high kicks and your backbends and ooh, the splits. Those are definitely my favorite.*/
== BRASAA25 @630 /*Enough. If you will not treat these disciplines with the respect that they deserve, then it is time to end your training. It has clearly been a waste.*/
== BYF_Cl25 @631 /*Aww, don't say that. I'm definitely more flexible than I was before.*/
DO ~SetGlobal("YF_BCLARARAS","GLOBAL",2) ChangeStat("YF_Clara",DEX,1,ADD) ChangeStat("RASAAD",DEX,1,ADD)~
= @632 /*But I suppose it's true I'm not a huge fan of physical exertion. Can I still watch sometimes?*/
== BRASAA25 @633 /**sigh* Fine. As long as you keep your comments to yourself.*/
EXIT

//2nd Wilson Banter - he talks first
CHAIN IF ~InMyArea("YF_Clara") IfValidForPartyDialog("WILSON") IfValidForPartyDialog("YF_Clara") Global("YF_BClaraWilson","GLOBAL",1)~ THEN BWILSO25 YF_ClaraWilson2
@761 /*Sniff sniff.*/
DO ~SetGlobal("YF_BClaraWilson","GLOBAL",2)~
== BYF_Cl25 @762 /*Thanks, Wilson, though I still want to ride you.*/
DO ~ChangeStat("YF_Clara",CON,1,ADD)~
== BWILSO25 @763 /*Growl!*/
== BYF_Cl25 @764 /*Yes, I know that would be unfair.*/
== BWILSO25 @765 /*Roar!*/
== BYF_Cl25 @766 /*Yes, I realize that you're not a horse!*/
= @767 /*But we'd be so great together! You mauling people... me shooting others...*/
== BWILSO25 @768 /*Moan. Whine...*/
== BYF_Cl25 @769 /*Really? But you're so good at it.*/
= @770 /*I guess it's a good thing you don't like hurting people.*/
== BWILSO25 @771 /*Snuffle... Roar!*/
== BYF_Cl25 @772 /*Well of course you would. Everyone likes killing people if they're allowed to eat them.*/
== BWILSO25 @773 /*Growl. Growl... Sniff.*/
== BYF_Cl25 @774 /*It's not just you. <CHARNAME> doesn't let me eat the people I kill either.*/
= @775 /*They'd probably taste awful though. We're better off eating deer.*/
EXIT


//3rd Dorn Banter - he should start dialogue
CHAIN IF WEIGHT #-5 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("DORN") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARADORN","GLOBAL",3) OR(3) AreaType(FOREST) AreaCheck("AR6300") AreaCheck("AR6400")~
THEN BDORN25 YF_clardorn3
@169 /*Most people would let me bathe in peace.*/
DO ~UndoExplore() SetGlobal("YF_BCLARADORN","GLOBAL",4) ChangeStat("YF_Clara",WIS,1,ADD)~
== BYF_Cl25 @170 /*How did you know I was here?*/
== BDORN25 @171 /*I had a feeling. Worst that could've happened is no one would've answered. It was a no-lose question.*/
= @172 /*What are you doing? I assumed you were here to kill me, but if you were, we wouldn't be having this conversation.*/
== BYF_Cl25 @173 /*I'm watching you bathe. I like watching strong naked men, though most aren't so suspicious about it.*/
== BDORN25 @174 /*That is either because they are attractive or because they are fools. I am neither. Leave me be.*/
== BYF_Cl25 @175 /*You always sell yourself short, Dorn. You are both more attractive and more foolish than you believe.*/
== BDORN25 @176 /*Hah. My hair... my teeth... my smell... I do not need your lies. Go away.*/
== BYF_Cl25 @177 /*So you're not human. So what? If I lived with elves, I'd be hideous, but I spend my time in Athkatla among poxy whores and frog-like peasant-women so I look pretty good in comparison.*/
= @178 /*You should go live with orcs; I bet all the orc women would drool over you.*/
== BDORN25 @179 /*I have. They did. My days were filled with fighting and I had a woman or two every night.*/
= @180 /*Orcish women are hideous though and they're not much for conversation. Having to fight every orc man I met to prove myself also got old fast.*/
== BYF_Cl25 @181 /*So you came to live with humans where you'd be more accepted? Hah. That's just sad.*/
= @182 /*Look, you're hairy, but lots of guys are hairy. Those teeth probably make kissing difficult, but kissing is overrated. And most fighting guys don't exactly smell like roses; at least you bathe more often than the rest.*/
= @183 /*I really should be getting back though. I said I was scouting the area and I've been gone a while.*/
= @184 /*Besides, I have a reputation to uphold.... can't be seen gazing at naked men all day.*/
== BDORN25 @185 /**smiles* Go then. I am just about done here anyways.*/
== BYF_Cl25 @186 /*I'm already gone.*/
= @187 /*You won't see me, but I'll be watching you.*/
DO ~Explore() RestParty()~
EXIT

//3rd Nalia Banter - triggers in Amkethran Inn
CHAIN IF WEIGHT #-10 ~InParty("Nalia") InMyArea("Nalia") IfValidForPartyDialog("Nalia") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARANALIA","GLOBAL",4)~ THEN BYF_Cl25 YF_ClaraNalia3
@297 /*Are you ready, Nalia?*/
DO ~UndoExplore() SetGlobal("YF_BCLARANALIA","GLOBAL",5) ChangeStat("YF_Clara",CON,1,ADD) ChangeStat("Nalia",CON,1,ADD)~
== BNALIA25 @298 /*Yes, I'm ready. How do I look? I tried to make my dress less fancy so I won't stand out too much.*/
== BYF_Cl25 @299 /*You look beautiful. That's perfect. Those boys won't know what hit them when we walk through the door. We'll have admirers fighting for the chance to touch our hands.*/
== BNALIA25 @300 /*You just mean for dancing, right?*/
== BNALIA25 IF ~Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN @301 /*I wouldn't want <CHARNAME> to get the wrong idea.*/
== BYF_Cl25 @222 /*Don't worry. I found us a semi-respectable establishment and if anyone tries to push things, well, that's what a dagger is for. Stick with me and you'll be fine.*/
= @303 /*We'll have some drinks, dance to a few songs, and return before our fearless leader even knows that we were gone.*/
= @223 /*...And here we are: Unkar's Underground, let your eyes just drink it in.*/
== BNALIA25 @305 /*...Oh wow, look at the lights and the music... There's so many people. (Are they supposed to dance that close together?)*/
== BYF_Cl25 @306 /*Here, drink this. The purple ones will keep you dancing all night long.*/
= @307 /*Now, come on, I love this song. Hey, fellas, you wanna dance with us?*/
== AMCST01 IF ~AreaCheck("AR5501") InMyArea("YF_Clara")~ THEN @308 /*We would be delighted. Hello missy, would you care to take my hand?*/
== WPCUST1 IF ~AreaCheck("AR5003") InMyArea("YF_Clara")~ THEN @308
== BNALIA25 @309 /*Of course, thank you. Though I don't think I know this one.*/
== AMCST01 IF ~AreaCheck("AR5501") InMyArea("YF_Clara")~ THEN @310 /*Don't worry. I'll take good care of you.*/
== WPCUST1 IF ~AreaCheck("AR5003") InMyArea("YF_Clara")~ THEN @310
== AMWENC01 IF ~AreaCheck("AR5501") InMyArea("YF_Clara")~ THEN @224 /*"I have a feeling that I want to go wild,
                    Take my hand, baby, and we'll run off in style,
                    Take my hand, I got all night..."*/
== WPWENCH1 IF ~AreaCheck("AR5003") InMyArea("YF_Clara")~ THEN @224 
== BNALIA25 @312 /*Oh, that was fun. I never danced like that back home.*/
== BYF_Cl25 @313 /*Glad to hear it... Did you lose your partner?*/
== BNALIA25 @314 /*No. He said I wore him out with that last number. But I think I just confused him when I tried to lead.*/
== BYF_Cl25 @315 /*Hah! Well, there's plenty more to choose from. Try that sailor over there; he's got good legs – for dancing, of course.*/
= @316 /*And here, a green one, just for luck....*/
DO ~ActionOverride("Nalia",ApplySpellRES("YF_intox","Nalia")~
== AMWENC01 IF ~AreaCheck("AR5501") InMyArea("YF_Clara")~ THEN @225 /*"Living with the heartache,
                    I got you on my mind.
                    I can't keep on chasing,
                    The dreams you left behind...."*/
== WPWENCH1 IF ~AreaCheck("AR5003") InMyArea("YF_Clara")~ THEN @225
== BNALIA25 @318 /*...We have to stop. I'm exhausted. Is the room spinning or is it me?*/
== BYF_Cl25 @319 /*Just you, I'm afraid. You're probably going to hate me in the morning. You weren't supposed to drink quite that many potions.*/
= @320 /*So tell me now, was it worth it?*/
== BNALIA25 @321 /*It was. Thank you. You're the best friend I've ever had.*/
== BYF_Cl25 @322 /*I like you too, Nalia. Even if you are a bit naive at times. Come on, back to the inn, and try to walk straight if you can.*/
DO ~Explore() RestParty()~
EXIT

//3rd Jaheira SoA Banter (TOB only)
CHAIN IF ~IfValidForPartyDialog("Jaheira") IfValidForPartyDialog("YF_Clara") InMyArea("YF_Clara") InMyArea("Sarevok") Global("BYF_clarjaheiraToB","GLOBAL",0) !Dead("Sarevok")~ THEN BJAHEI25 YF_clarjaheiraBanterToB3
@680 /*Irenicus is dead. Khalid is avenged.*/
DO ~ChangeStat("YF_Clara",WIS,1,ADD) SetGlobal("BYF_clarjaheiraToB","GLOBAL",1)~
== BYF_Cl25 @681 /*That should be a good thing, but you don't sound happy...*/
== BJAHEI25 @682 /*Sarevok is alive. How can my revenge be final when the dead keep coming back?*/
= @683 /*I destroyed him so thoroughly, but now he walks among us as if his bones had not been ground to dust and mixed with the earth of three different kingdoms.*/
= @684 /*No resurrection magic on earth could've saved him, yet here he is. What do I do?*/
== BYF_Cl25 @685 /*Kill him again?*/
== BJAHEI25 @686 /*No... he is not even worth that.*/
= @687 /*I shall simply move on.*/
EXIT

//3rd Korgan Banter - triggers
CHAIN IF WEIGHT #-10 ~InParty("Korgan") Detect("Korgan") IfValidForPartyDialog("Korgan") IfValidForPartyDialog("YF_Clara") !AreaType(DUNGEON) Global("YF_BCLARAKOR","GLOBAL",4) !AreaCheck("AR4500")~ THEN BYF_Cl25 YF_ClaraKorgan3
@188 /*Ooh, I feel awful. Everything hurts. What happened yesterday?*/
DO ~ChangeStat("YF_Clara",CON,1,ADD) ChangeStat("YF_Clara",STR,1,ADD) SetGlobal("YF_BCLARAKOR","GLOBAL",5)~
== BKORGA25 @189 /*Ye kin nae be rememberin' anything? Hah, I should've known dwarf ale would be too much fer ye.*/
== BYF_Cl25 @190 /*I can drink with the best of them, just give me a minute to remember. You blind-folded me and we went to a bar. I was the only one there who wasn't a dwarf. They all hated me.*/
== BKORGA25 @191 /*'course they did. Long-limbs aren't welcome in a dwarf bar. Dwarf bars are fer dwarves!*/
== BYF_Cl25 @192 /*You brought me the strongest drink I've ever tasted and told me to go pick a fight with a woman at a nearby table who looked particularly unhappy with my presence.*/
= @193 /*She looked like she could wrestle a bear.*/
== BKORGA25 @194 /*And has! She once beat a grizzly into submission with nothing but a giant sausage.*/
= @195 /*'twas made into a song: "Bears Ain't no Match fer Glelda's Big Sausage." A fine ballad.*/
== BYF_Cl25 @196 /*I refused so you gave me another mug that awful brown liquid and then another. And after that it all becomes a little blurry...*/
== BKORGA25 @197 /*That was ale! Real ale, not th' weak piss ye long-limbs drink. After yer third one, ye got enough courage t' go speak to Glelda. I didn' hear what ye said, but she felled ye with one punch t' th' gut.*/
== BYF_Cl25 @198 /*Okay... I remember that. I puked all over her shoes. Then tried to give her my best shot.*/
= @199 /*It was like punching a block of granite. I think I broke my hand.*/
= @200 /*And then all I remember is thinking, "My ribs are shattering. I'm dying."*/
== BKORGA25 @201 /*Ye were dyin'! She broke nearly ev'ry bone in yer body, busted yer organs. Ye were spitting up blood an' tryin' t' fight back like th' weak little girl ye are.*/
= @202 /*Th' crowd was cheering Glelda on wit' each hit. I was takin' bets fast as I could, since no one else was willin' t' bet ye'd live.*/
= @203 /*But ye showed them all. Yer knife, right t' th' belly! Glelda never saw it comin'! Not sportin'-like but effective.*/
= @204 /*Ye was still a mess, could hardly move or even breathe, an' Glelda was bleedin' out on th' floor wit' green foam comin' out her mouth. Ye'd poisoned her somethin' fierce.*/
= @205 /*Fortunately fer ye two, there were three clerics present, enough t' keep ye both alive.*/
= @2050 /*Glelda they healed easily enough, but ye they were worried about. None of 'em had ever healed a long-limb before. They were worried about healin' ye crooked.*/
= @206 /*I said they should nae be worryin'. Ye wanted t' be a dwarf! So they healed ye up dwarf-like. Bones thicker! Muscles bigger!*/
== BYF_Cl25 @207 /*Does my face look okay? The rest of me looks... is my bosom fuller?*/
== BKORGA25 @208 /*Ye were awfully flat-chested. Now ye got milk-bags a dwarf could be proud of!*/
= @209 /*But nae be worryin', yer face is as pretty as ever. Yer bones were knitted, yer scars were gone, an' then there was th' orgy.*/
== BYF_Cl25 @210 /*Orgy? I remember ribs shattering and passing out and that's all.*/
== BKORGA25 @211 /*Well, ye did nae be wantin' to pay the clerics, nor the barkeep, so once ye healed up, ye just paid everyone with yer skills instead. The crowd loved it.*/
= @212 /*One rich fool offered you 300 gold t' be next, but ye demanded five.*/
= @213 /*Ye took him an' ten more before th' night was through at th' same price. Two of th' women too.*/
== BYF_Cl25 @214 /*So you're saying I was healed tougher for free and I made 6,500 gold pieces? Why did I ever waste my time with human men? 6,500 gold in one night is better than even the richest noble courtesans.*/
== BKORGA25 @215 /*7,000 actually. I bought myself a turn as well. Here's th' bag; I been carryin' it fer ye.*/
= @216 /*Barkeep said ye be welcome t' come back anytime.*/
== BYF_Cl25 @217 /*Please don't tell anyone.*/
== BKORGA25 @218 /*An' reveal the secret of dwarf bars? Never.*/
EXIT

//3rd Neera Banter
CHAIN IF ~InParty("NEERA") InMyArea("NEERA") IfValidForPartyDialog("NEERA") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARANEERA","GLOBAL",2)~ THEN BYF_Cl25 YF_ClaraNeera3
@716 /*Well, that was an illuminating read. Thanks, Neera!*/
DO ~SetGlobal("YF_BCLARANEERA","GLOBAL",3) ChangeStat("YF_Clara",INT,1,ADD) ChangeStat("YF_Clara",LORE,10,ADD) ChangeStat("NEERA",LORE,10,ADD)~
= @717 /*It's a pity the book ended at "G". I was hoping to find out what this helm was...*/
DO ~GiveItemCreate("HELM02","YF_Clara",0,0,0)~
== BNEERA25 @718 /*I guess you just need this one! I got it for you, special.*/
== BYF_Cl25 @719 /*'Magical Items and Their Identifying Properties Volume II: Gauntlets of God-Stalking through Purple Brotherhood Accessories.'*/
= @720 /*Yaay! You'll have to help me though.*/
== BNEERA25 @721 /*Of course! We can read it together too.*/
EXIT

//3rd Minsc Banter
CHAIN IF ~InParty("Minsc") InMyArea("Minsc") IfValidForPartyDialog("Minsc") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAMINSC","GLOBAL",2)~ THEN BYF_Cl25 YF_ClaraMinsc3
@448 /**squeak, squeak, squeak!**/
DO ~SetGlobal("YF_BCLARAMINSC","GLOBAL",3)~
== BMINSC25 @449 /*Exactly! Boo says your pronunciation is improving.*/
= @450 /*You have mastered hamster-talking: one of the three skills of Heroing!*/
== BYF_Cl25 @451 /*Umm, I may regret asking this, but what are the other two?*/
== BMINSC25 @452 /*Other two what?*/
== BYF_Cl25 @453 /*Other two skills of Heroing. You said that one was hamster-talking...*/
== BMINSC25 @454 /*Ahh, the second is not-being-seen-while-moving-ing. You already have that one.*/
= @455 /*And the third is berserkering!*/
== BYF_Cl25 @456 /*You mean that thing where you go crazy in battle and we all have to stay far away so you don't accidentally kill us?*/
= @457 /*Can you teach me?*/
== BMINSC25 @458 /*Yes, though Boo says the craziness is perhaps optional.*/
= @459 /*The first lesson is we are going to run around screaming and hit the ground with our swords.*/
= @460 /*Watch me first...*/
EXIT

//3rd Wilson Banter - he talks first
CHAIN IF WEIGHT #1 ~InMyArea("YF_Clara") IfValidForPartyDialog("WILSON") IfValidForPartyDialog("YF_Clara") Global("YF_BClaraWilson","GLOBAL",2)~ THEN BWILSO25 YF_ClaraWilson3
@776 /*Roar!*/
DO ~SetGlobal("YF_BClaraWilson","GLOBAL",3)~
== BYF_Cl25 @777 /*Oh come on! There must be something I can give you.*/
= @778 /*I'm so tired of walking...*/
DO ~ChangeStat("YF_Clara",CON,1,ADD)~
== BWILSO25 @779 /*Sniff, sniff... snuffle...*/
== BYF_Cl25 @780 /*How could you possibly have everything you want? That seems like a failure of imagination.*/
== BWILSO25 @781 /*Snuffle: growl, roar, roar... sniff... Roar!*/
== BYF_Cl25 @782 /*Wow, that is a pretty good list... but I have all of those things too and I still want more.*/
== BWILSO25 @783 /*Sniff... whine?*/
== BYF_Cl25 @784 /*Of course it will make me happy! Having more always makes me happy!*/
= @785 /*Okay, fine, it hasn't made me happy yet, but that's just because I don't have enough!*/
== BWILSO25 @786 /*Growl?*/
== BYF_Cl25 @787 /*Yes, my logic is perfectly sound!*/
== BWILSO25 @788 /*Roar!*/
== BYF_Cl25 @789 /*Oh what do you know? You're just a bear!*/
EXIT

//3rd Jan Banter
CHAIN IF ~InParty("Jan") Detect("Jan") IfValidForPartyDialog("Jan") IfValidForPartyDialog("YF_Clara") Global("YF_BClaraJan","GLOBAL",2)~ THEN BYF_Cl25 YF_clarjan3
@156 /*These goggles are amazing, Jan! I can see traps! I can see through walls! I can see through curtains, windows, and clothes!*/
= @157 /*Sometimes that last one lets me see more than I'd like, but it's worth it!*/
= @158 /*You are the greatest inventor ever! Let me have something else.*/
== BJAN25 @159 /*Inventions do not grow on trees, lassie. Well except for that one time, my fifth cousin Bimpnottin  created an invention tree. Now that was an amazing feat. Pity what happened to her though.*/
== BYF_Cl25 @160 /*What happened?*/
== BJAN25 @161 /*She invented an invention to see through time. Saw the creation of the world. Went mad. It happens every third generation or so.*/
== BYF_Cl25 @162 /*And the tree?*/
== BJAN25 @163 /*Chopped down for firewood; it was a cold winter. Now what can I do for you?*/
== BYF_Cl25 @164 /*More awesome stuff!*/
== BJAN25 @165 /*Hah, I like your spirit. Perhaps that is why I have already made you a pair of Jansen-Brand Techno-Thieving Gadgetizer Gloves—(TM).*/
DO ~ActionOverride("YF_Clara",CreateItem("YF_Glove",0,0,0)) SetGlobal("YF_BClaraJan","GLOBAL",3)~
== BYF_Cl25 @166 /*Ooooh... shiny!*/
== BJAN25 @167 /*Not just shiny, but useful. Why, with these gloves you could steal the clothes right off a man's back.*/
== BYF_Cl25 @168 /*Well, it's usually easier to let men take their clothes off voluntarily, but thanks! I'm sure I'll find these useful.*/
EXIT

//3rd HaerDalis Banter
CHAIN IF ~InParty("HaerDalis") InMyArea("HaerDalis") IfValidForPartyDialog("HaerDalis") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAHD","GLOBAL",2)~ THEN BYF_Cl25 YF_ClaraHaerDalis3
@471 /*Haer'Dalis, why do you fight with swords? I thought most bards just played music or cast spells on their enemies.*/
== BHAERD25 @472 /*Aahh, but there is music in the ring of steel. There are songs in the clash of swords and axes, songs that transcend all languages and planes.*/
= @473 /*Have you not heard the harmonies of combat? The discordant notes that rise above and the low bass rhythms of the dying.*/
= @474 /*I have written odes to a single drop of blood and the lives my blades have stolen; I have danced across a hundred battlefields.*/
= @475 /*And, in truth, when our foes prepare for singing, this sparrow gains the edge of surprise with a weapon in my hands.*/
== BYF_Cl25 @476 /*Are you sure that we've been fighting the same battles? I mostly just hear screaming and I don't think I could ever use two swords the way you do.*/
= @477 /*How do you not stab yourself by accident?*/
DO ~SetGlobal("YF_BCLARAHD","GLOBAL",3) ApplySpellRES("YF_SSP","YF_Clara")~
== BHAERD25 @478 /*It is a dance, my margay, one with rules and patterns despite the way your partners change. You need only learn the steps and the song will show you, the give and take of a waltz that ends with blood.*/
= @479 /*I will teach you, if you wish. Perhaps one sword to start, but we shall sing the steel together. A true bard performs the better for a discerning audience.*/
EXIT

//3rd Aerie Banter
CHAIN IF ~InParty("Aerie") InMyArea("Aerie") IfValidForPartyDialog("Aerie") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAAERIE","GLOBAL",2)~ THEN BYF_Cl25 YF_ClaraAerie3
@517 /*Well, Chiktikka Fastpaws was a bust. Damn raccoon has a sense of humor.*/
DO ~SetGlobal("YF_BCLARAAERIE","GLOBAL",3)~
= @518 /*Hey, Aerie, who was that other god you mentioned earlier?*/
== BAERIE25 @519 /*D-Do you mean Baervan Wildwanderer?*/
== BYF_Cl25 @520 /*Yeah, him. Tell me about him.*/
== BAERIE25 @521 /*Well, l-like I said, he's a gnomish g-god of nature and forests. He's the reason that f-forest gnomes can speak with s-small animals.*/
= @522 /**giggle* That's probably why Chiktikka Fastpaws o-offered you that gift. Are the b-birds still stopping you f-from sleeping well at night?*/
== BYF_Cl25 @523 /*Yes! I swear they're doing this on purpose. All they talk about is food! Maybe if I pray to Baervan, I can make the things shut up.*/
== BAERIE25 @524 /*I- I told you, that's n-not how it works. You can't just p-pray when you want things.*/
== BYF_Cl25 @525 /*Ssshh, I'm communing with your god....*/
= @526 /*Hear me, oh Baervan Wildwanderer. Show me the truth of nature. Show me how to silence all those annoying little pests out in the night.*/
== BAERIE25 @527 /*YES, MY CHILD. YOUR BOON SHALL BE GRANTED!*/
== BYF_Cl25 @528 /*Really? Can you like, give me truesight too?*/
== BAERIE25 @529 /*OF COURSE, I WILL BE GLAD TO ASSIST MY MOST DEVOTED FOLLOWER....*/
= @530 /*Oh, I- I can't. I- I can't do it anymore. *snorts* Hahahahahahahahahahahaha!*/
== BYF_Cl25 @531 /*What?! Aerie! That wasn't very nice.*/
== BAERIE25 @532 /*Sorry. I c-couldn't resist. But I- I'll make it up to you. Here. It's not a b-boon from Baervan Wildwanderer, but you can h-have this boon from me.*/
EXIT

//3rd Valygar Banter
CHAIN IF ~InParty("Valygar") InMyArea("Valygar") IfValidForPartyDialog("Valygar") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAVALYG","GLOBAL",2)~ THEN BYF_Cl25 YF_ClaraValygar3
@360 /*Hey, Valygar, you spent a lot of time on the run from the Cowled Wizards. How did you stop their spells from finding you?*/
= @361 /*I thought a really powerful wizard could see everything for miles and everyone knows that the Cowled Wizards are the strongest guys around.*/
DO ~SetGlobal("YF_BCLARAVALYG","GLOBAL",3)~
== BVALYG25 @362 /*Their magic may be powerful, but it is not omnipotent. Such spells are unnatural things and the land fights against them with everything it has.*/
= @363 /*There are ways to hide from a wizard's magic. Certain herbs will cloud their vision if you drink them and certain stones can turn their spells aside.*/
= @364 /*I am sure that a truly gifted sorcerer could overcome these barriers, but the Cowled Wizards are complacent in their rule. They could never imagine that something so common as a herb might fight against their power.*/
= @365 /*Tolgerias likely assumed that I had found some greater magic and that is why he hired <CHARNAME> to track down my hiding place. Magic-users are rarely willing to get their own hands dirty when someone else can do the work instead.*/
== BYF_Cl25 @366 /*That's amazing. There are really herbs that can hide you from a spell?*/
== BVALYG25 @367 /*Of course. I will show you as we travel. It is never a bad idea to have such things on hand.*/
EXIT

//3rd Imoen Banter
CHAIN IF WEIGHT #3 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("Imoen2") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAIMOEN","GLOBAL",2)~ THEN BIMOEN25 YF_ClaraImoen3
@598 /*You up for another story, Clara?*/
== BYF_Cl25 @599 /*Yes. Once upon a time there was a young lady who was a respected servant in the household of an evil baron.*/
= @600 /*Unbeknownst to the baron, she was actually the daughter of a man he had killed many years earlier and every day she secretly plotted revenge.*/
== BIMOEN25 @601 /*You said that story had ended!*/
== BYF_Cl25 @602 /*Every day while doing her work, the young woman sought and learned skills that might help her in the future.*/
= @603 /*One day, she heard about a witch in the forest who knew the secrets of potions and tonics.*/
= @604 /*The witch was not hard to find but she refused to make poison for the girl until the girl promised her something in return.*/
== BIMOEN25 @605 /*This never ends well.*/
== BYF_Cl25 @606 /*The witch wanted her life and her soul. The young lady said she would not part with those, but perhaps she could offer the lives and souls of others.*/
= @607 /*The witch found this acceptable and after a couple hours of tediously squabbling over the details, an agreement was forged.*/
= @608 /*The girl left with a tasteless odorless poison, slow-acting but powerful enough that a single drop in a pot of soup would fell a legion of warriors.*/
= @609 /*During the evil baron's next feast, she put the poison into every single dish and drink she could. The baron and his entire castle perished, and once again she found herself alone.*/
= @610 /*And she lived happily ever after.*/
== BIMOEN25 @611 /*Wow, your stories are morbid.*/
== BYF_Cl25 @612 /*You are the one who keeps asking for them. I, on the other hand, want to know about locks and how to open them.*/
DO ~ChangeStat("YF_Clara",LOCKPICKING,20,ADD) SetGlobal("YF_BCLARAIMOEN","GLOBAL",3)~
EXIT


//4th Minsc Banter
CHAIN IF ~InParty("Minsc") InMyArea("Minsc") IfValidForPartyDialog("Minsc") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAMINSC","GLOBAL",3)~ THEN BYF_Cl25 YF_ClaraMinsc4
@461 /*RAAAAAARGH!*/
DO ~SetGlobal("YF_BCLARAMINSC","GLOBAL",4)~
== BMINSC25 @462 /*Yes! See how that fly hustled away from you, cowering as it flapped its wings?*/
= @463 /*You have become truly fearsome! Boo says even he has goosebumps.*/
== BYF_Cl25 @464 /*That is so refreshing! I see how one could lose themselves in that. I've spent all my battles until now trying so carefully not to die.*/
== BMINSC25 @465 /*That is a foolish thing to try. Boo has something to say about that.*/
= @466 /**squeak squeak squeak**/
== BYF_Cl25 @467 /*"We should smile because death is smiling?" Isn't that kind of morbid?*/
== BMINSC25 @468 /*Hmm that is one way to say it. I understood it as, "Death smiles at us all, the only thing we can do is smile back."*/
== BYF_Cl25 @469 /*Still morbid... but I think I understand. We're all going to die, so we might as well enjoy ourselves, right?*/
== BMINSC25 @470 /*You understand exactly! Minsc is proud of you. We will make a hamster of you yet.*/
EXIT

//4th Imoen Banter
CHAIN IF WEIGHT #3 ~InParty("Imoen2") InMyArea("YF_Clara") IfValidForPartyDialog("Imoen2") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAIMOEN","GLOBAL",3)~ THEN BIMOEN25 YF_ClaraImoen4
@613 /*Once again, Clara. Story me.*/
== BYF_Cl25 @614 /**sigh* Once upon a time, there was a young woman in a castle of the dead. She had poisoned the inhabitants during a feast and they perished that night in their own beds.*/
= @615 /*The next morning, she went from room to room taking what she needed, and when there was nothing more to be gained from remaining there, she left.*/
= @616 /*The woman cut her hair short and dressed as a young man. She spent some time practicing her skills until she became a passable hunter and when she needed more food, she returned to the castle for the provisions that she had hidden in a cellar.*/
= @617 /*The castle was closed and locked, except for a secret entrance, and any merchants who came to trade left disappointed.*/
= @618 /*The locals soon considered the place haunted and all but the young woman avoided it.*/
= @619 /*She was alive, her enemies were dead, and now that she had achieved her life's goal, she had not the slightest idea what to do next.*/
= @620 /*But every day she did what was necessary to survive and in surviving, she found purpose. And she lived happily ever after.*/
== BIMOEN25 @621 /*You keep saying that, but she doesn't sound very happy.*/
== BYF_Cl25 @622 /*She has to be happy, it's the end of the story. When your story is over, you live happily ever after.*/
== BIMOEN25 @623 /*I don't think life works like that.*/
== BYF_Cl25 @624 /*Do you know what would make me happy? Figuring out how to make a trap. Something horribly devastating that can trigger when we're far, far away.*/
DO ~SetGlobal("YF_BCLARAIMOEN","GLOBAL",4)~
== BIMOEN25 @625 /*Oh, I have some ideas for that! Sort of a thiefy-magicy combination. You can help!*/
EXIT

//4th Dorn Banter - he talks first
CHAIN IF WEIGHT #1 ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("DORN") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARADORN","GLOBAL",4)~ THEN BDORN25 YF_clardorn4
@634 /*Kryll...*/
== BYF_Cl25 @635 /*Aww, Dorn, if you keep mumbling another woman's name, I'll think that you don't love me.*/
DO ~ChangeStat("YF_Clara",SAVEVSDEATH,-1,ADD) SetGlobal("YF_BCLARADORN","GLOBAL",5)~
== BDORN25 @636 /*I did not see you standing there. It seems you have still not learned to mind your own business.*/
== BYF_Cl25 @637 /*You were lost in thought and said, "Kryll". You say her name when you sleep as well.*/
= @638 /*So who's Kryll?*/
== BDORN25 @639 /*An answer for an answer. How do you know I say her name in my sleep?*/
== BYF_Cl25 @640 /*There's a foolish question. Clearly I've been watching you secretly.*/
= @641 /*My turn now, who's Kryll?*/
== BDORN25 @642 /*We traveled together for a time. She was a necromancer... and my lover... until she betrayed me and fled.*/
= @643 /*With <CHARNAME>'s help, I tracked her down and put her in the grave. Even now her soul writhes in the abyss.*/
= @644 /*None of my relationships end well.*/
== BYF_Cl25 IF ~Global("DornRomanceActive","GLOBAL",1)~ THEN @645 /*You seem to be pretty friendly with <CHARNAME>. How do you expect that to end?*/
== BYF_Cl25 IF ~Global("YF_HDDornRomance","GLOBAL",1)~ THEN @6450 /*You seem pretty friendly with Haer'Dalis. How do you expect that to end?*/
== BDORN25 IF ~Global("DornRomanceActive","GLOBAL",1)~ THEN @646 /*With my death or <CHARNAME>'s, same as always.*/
== BDORN25 IF ~Global("YF_HDDornRomance","GLOBAL",1)~ THEN @6460 /*With my death or the tiefling's, same as always.*/
== BYF_Cl25 IF ~Global("DornRomanceActive","GLOBAL",2)~ THEN @647 /*But you and <CHARNAME> are together and that seems to be going very well.*/
== BYF_Cl25 IF ~Global("YF_HDDornRomance","GLOBAL",2)~ THEN @6470 /*But you and Haer'Dalis are together and that seems to be going very well... Especially in bed.*/
== BDORN25 IF ~Global("DornRomanceActive","GLOBAL",2)~ THEN @648 /*Things often go well for a time. That does not mean it will end any other way.*/
== BDORN25 IF ~Global("YF_HDDornRomance","GLOBAL",2)~ THEN @6480 /*Things often go well for a time. That does not mean our relationship will not end in bloodshed... even if I might wish otherwise.*/
== BYF_Cl25 @649 /*You know, Dorn, for a murderous psychopath, you sure are broody and depressing.*/
== BDORN25 @650 /*And for a two-gold cheat and liar, you are astoundingly nosy. Now let me be.*/
EXIT

//4th Neera Banter - Neera talks first
CHAIN IF ~InParty("YF_Clara") InMyArea("YF_Clara") IfValidForPartyDialog("NEERA") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARANEERA","GLOBAL",3)~ THEN BNEERA25 YF_ClaraNeera4
@722 /*Oh Clara, I got it!*/
== BYF_Cl25 @723 /*'Magical Items and their Identifying Properties Volume III: Purple Brotherhood Armbands through Zyztrax's Left Hand.'*/
= @724 /*Aww, this must be the last one. We'll have to read it slowly.*/
= @725 /*Oh, I got you something too! Here!*/
DO ~GiveItemCreate("MISC1B","NEERA",0,0,0) SetGlobal("YF_BCLARANEERA","GLOBAL",4) SetGlobal("YF_NeeraHasGrimoire","GLOBAL",1) ChangeStat("YF_Clara",INT,1,ADD) ChangeStat("YF_Clara",LORE,10,ADD) ChangeStat("NEERA",LORE,10,ADD) ChangeStat("NEERA",INT,1,ADD)~
== BNEERA25 @726 /*Is that the Butter Knife of Balduran? That's from the first book!*/
= @727 /*As I remember, it's completely useless...*/
== BYF_Cl25 @728 /*Well... not USELESS... it CAN spread butter...*/
= @729 /*Hah, your face is so priceless right now. Here's your real gift.*/
== BNEERA25 @730 /*'The Grimoire of Absolute Annihilation, translated from Gnomish and including all the original diagrams.'*/
= @731 /*Oh, Clara, you shouldn't have!*/
= @732 /*Ummm... there isn't a crazy lich or some mage of ultimate power who's going to come looking for this, is there?*/
== BYF_Cl25 @733 /*Nah, the wizard who previously owned it can't use it anymore. He's all...*/
== BNEERA25 @734 /*Actually, don't tell me.*/
= @735 /*I'm so excited! I've always wanted a copy of this book but I knew I'd never be able to afford it.*/
= @736 /*Thank you so much!*/
== BYF_Cl25 @737 /*You're welcome! I tried reading it, but couldn't make any sense of the words.*/
== BNEERA25 @738 /*Well, you can help me figure it out. Let's start now!*/
= @739 /*'Grimoire of Absolute Annihilation, Introduction by the translator...'*/
= @740 /*...boring... let's skip that.*/
= @741 /*"Introduction by the author..." Let's skip that too.*/
= @742 /*"Warnings and disclaimers..." Nah, who needs those?*/
= @743 /*Here we go! "Chapter 1: On the proper preparations for harnessing world-ending magical energy."*/
= @744 /*This is going to be fun!*/
EXIT

//Edwina Banter - added into TOB because some mods change Edwin back into a woman
CHAIN IF ~InParty("Edwin") IfValidForPartyDialog("Edwin") Gender("Edwin",FEMALE) InMyArea("Edwin") IfValidForPartyDialog("YF_Clara") Global("YF_BCLARAEDWINA","GLOBAL",0)~ THEN BYF_Cl25 YF_ClaraEdwina1
@790 /*Edwin, I have a present for you.*/
== BEDWIN25 @791 /*Do not bother. I am sure your "gift" will only be a disappointment. A dull creature like you has nothing to offer one such as myself. (Except perhaps your body. Damn this cursed form.)*/
DO ~SetGlobal("YF_BCLARAEDWINA","GLOBAL",1) ChangeStat("YF_Clara",SAVEVSSPELL,-1,ADD)~
== BYF_Cl25 @792 /*Really? Not even a way to fix your little gender issue? I have a friend who dabbles in certain rare items and when I told them about your mishap, they offered me this belt. The Girdle of Femininity/Masculinity I think they called it... And when I put it on...*/
= @793 /*Ta-da! Clarence at your service.*/
== BEDWIN25 @794 /*What? You found it? Give me that belt this instant!*/
== BYF_Cl25 @795 /*I don't know. Maybe I should keep it. This girdle could be all kinds of fun and you've been awfully rude...*/
== BEDWIN25 @796 /*You think to extort me? Me? Edwin Odesseiron? Your simple simian brain cannot even begin to comprehend the agony that I could cast upon you.*/
== BYF_Cl25 @797 /*You could, but you won't. <CHARNAME> wouldn't like it and you won't risk losing <PRO_HISHER> protection. I know your type and for all your pride, self-preservation will always be your number one priority.*/
== BEDWIN25 @798 /*(Perhaps she is not as stupid as I'd thought.) Then what is your price? I assume that you want something.*/
== BYF_Cl25 @799 /*Nothing much. Just ask me nicely. A "please" would be preferred.*/
== BEDWIN25 @800 /*(And so the peasant twists the knife a little deeper. Such sadism would be admirable if aimed at another target. But I must obtain that belt.) Fine. As you command.*/
= @801 /*I am SORRY for my outburst. May I PLEASE have that girdle now?*/
== BYF_Cl25 @802 /*Hah! I could hear your teeth grinding all the way over here. But I guess that's good enough. Here. Take it.*/
DO ~GiveItemCreate("YF_BELTC","Edwin",0,0,0)~
== BEDWIN25 @803 /*Yes! It is mine! I shall be returned to my true glory...*/
= @804 /*(Why isn't it working?) WHY ISN'T IT WORKING? What trickery is this?*/
== BYF_Cl25 @805 /*Well... I may have paid a hedge witch to enchant the item so only I could use it, but surely such a great and powerful wizard as yourself can break the spell?*/
== BEDWIN25 @806 /*You... YOU! YOU UNWASHED TREACHEROUS IMBECILIC CRETINOUS...*/
== BYF_Cl25 @807 /*Worth. Every. Penny.*/
EXIT
