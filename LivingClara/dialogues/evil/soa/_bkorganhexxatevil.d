//1st Korgan-Hexxat conversation, after their banter, on rest

CHAIN IF WEIGHT #-1 ~Global("_BKorHex","GLOBAL",2)~ THEN KORGANJ _bKorganHexTalk1
@1 /*Vampire, I’ve given it some thought an’ I’ve decided that I accept yer proposal.*/
== HEXXATJ @2 /*And what proposal was that?*/
== KORGANJ @3 /*Why dark meat fer dwarf blood, of course! Ye join me tonight an’ ye kin drink yer fill.*/
== HEXXATJ @4 /*I prefer women.*/
== KORGANJ @5 /*As do I! We have that in common. But I’m nae offering ye me body alone, I’m offering ye me blood an’ I know fer blood ye’re always hungry. Are ye nae tired of sneaking away at night to kill townsfolk in their beds or picking through th’ leavings of our battles? I am a feast that is ready an’ willing.*/
== HEXXATJ @6 /*Someone cooperative and conscious would be a change, I think, for both of us. Tell me, dwarf, when was the last time you took a woman who wasn’t crying, fighting…*/
== KORGANJ @7 /*Many a time!*/
== HEXXATJ @8 /*…or demanding payment? Would I be your first?*/
== KORGANJ @9 /*Hah, but I am paying ye.*/
END
	++ @9001 /*Okay... I am going to step in and put a stop to this right now. I don't want to hear you or see you two together. Be creepy on your own time.*/ 
		DO ~SetGlobal("_BKorHex","GLOBAL",50)~ EXIT
	++ @9002 /**Say nothing and let them continue.**/ EXTERN HEXXATJ _bKorganHexTalk1a

CHAIN HEXXATJ _bKorganHexTalk1a
@10 /*I suppose you are. Are you sure you want to do this, Korgan? When I start feeding, I sometimes get carried away.*/
== KORGANJ @11 /*There’s a healing potion in me pack if ye notice me stop moving. An’ failing that a cleric kin always bring me back.*/
== HEXXATJ @12 /*The other night I was drinking this girl. She was a sweet, delicious, beautiful thing but she awoke and put up a slight struggle. Before I knew it, I had ripped her apart and was sucking the marrow from her bones. Even a cleric might not be able to save you.*/
== KORGANJ @13 /*Well, as me second brother used to say, “Any Bloodaxe worth his beard should die one of two ways: with his weapon buried in the flesh of his enemies or with it buried in the warmth of a woman.”*/
== HEXXATJ @14 /*My flesh is cold. Where is your brother now?*/
== KORGANJ @15 /*Me axe took open his belly years ago an’ his own missed entirely, so he did nae be going the way he wanted. However, warm flesh or cold flesh, th' saying still holds. If I die with ye, I’ll die happy an’ then I’ll go see me brother an’ laugh in his face.*/
== HEXXATJ @16 /*Very well. Come here, dwarf. Give your warmth over to death’s cold embrace. I think this will prove interesting for us both.*/
DO ~SetGlobal("_BKorHex","GLOBAL",3) RestParty()~ 
EXIT

//On waking
CHAIN IF WEIGHT #-1 ~Global("_BKorHex","GLOBAL",3)~ THEN HEXXATJ _bKorganHexTalk2
@17 /*Korgan! Where was that potion? …here.*/
= @18 /*Did it work, dwarf? Do you still live?*/
== KORGANJ @19 /*Ohh, me head feels like I drank a thousand mugs of ale but th’ better the night, th’ worse the morning I always say.*/
== HEXXATJ @20 /*So you found the night worth the price you paid?*/
== KORGANJ @21 /*A little blood be nothing. I’ve paid more fer less many times before. An’ ye? Have I shown ye th’ glory of me great dwarven hammer?*/
== HEXXATJ @22 /*I still prefer women. But your blood, yes, that was glorious. Most blood I drink is infused with fear or stinks of death and rage. But yours, yours was filled with the joy of life. I had forgotten what that was like.*/
== KORGANJ @23 /*So ye’re up fer another round?*/
== HEXXATJ @24 /*You are in no condition to do that again right now. But in a few days’ time, if my pickings have been slim then I would feed upon you again, yes.*/
DO ~SetGlobal("_BKorHex","GLOBAL",4)~
EXIT

//2nd Talk, five days later
CHAIN IF WEIGHT #-1 ~Global("_BKorHex","GLOBAL",6)~ THEN KORGANJ _bKorganHexTalk3
@25 /*What’s got yer head up in th’ clouds, lass? Ye’re paying even less attention to th’ world than usual.*/
== HEXXATJ @26 /*I visited a house when all of you were sleeping. In the house were many men, but in one room I found a girl repairing clothes from a large pile.  As I watched, several men woke up and visited her room to use her quickly. No one said a word and she did not once put down her needle.*/
= @27 /*When she saw me, she asked if I was death and I told her that I was. She said, “I’ve been waiting for you.” She tasted like... gratitude. I’m trying to hold onto the taste for as long as I can.*/
== KORGANJ @28 /*An’ the men? Should we go back an’ split their skulls?*/
== HEXXATJ @29 /*Hmm? No. I cut all their throats on my way out. It was not only her own death that the girl was grateful for.*/
DO ~SetGlobal("_BKorHex","GLOBAL",7)~
EXIT

//3rd Talk - on waking
CHAIN IF WEIGHT #-1 ~Global("_BKorHex","GLOBAL",9)~ THEN HEXXATJ _bKorganHexTalk4
@30 /*I drank a woman last night, Korgan, and she knew you! I finished her while she slept and was hoping for something sweet, but all I felt was sorrow, rage, and vengeance with you as their target.*/
== KORGANJ @31 /*Now pause yer yapping fer one minute, vampire. Ye cannae possibly know who in this world she was angry at.*/
== HEXXATJ @32 /*You forget, Korgan. I know you. I have tasted your joy and sorrow, your hope and despair, your rage and your occasional compassion. It was you she hated. I want to know why.*/
== KORGANJ @33 /*Well, who was she?  I’ve left a trail of blood, death an’ grief across many lands both above an’ below. I cannae remember every woman who might hate me now.*/
== HEXXATJ @34 /*She was staying with a farming family. They said she called herself Lady Crane and came from somewhere north and inland, east of Baldur’s Gate. She was noble but had not a penny to her name and no family to speak of.*/
== KORGANJ @35 /*Well, I was out that way once. I was hired by some human lord fighting some other human lord over some ancient family grudge. I could ne’er remember their names so I called 'em Lord Hard Head an’ Lord Soft Bottom. I was fighting fer Hard Head, of course.*/
== HEXXATJ @36 /*Of course you were.*/
== KORGANJ @37 /*So there I was, in with Lord Hard Head’s band of mercenaries, knights, an’ soldiers. We were sacking one last town on th’ way to Soft Bottom’s castle an’ as usual I was first through the break in th’ wall. We killed off th’ last defenders an’ then started our two days of rape an’ pillage.*/
== HEXXATJ @38 /*Two days?*/
== KORGANJ @39 /*Well, three be customary an’ some lords offer four, but Hard Head was a stingy man. He wanted us to leave something left fer him to rule. We were even restricted to only what loot we could carry, which meant I was looking fer gold. Hard Head made it up to us the following week after we took Soft Bottom's castle though, now that was…*/
== HEXXATJ @40 /*Keep to the point.*/
== KORGANJ @41 /*Right. Anyway, as first through th' town’s defences, I got first pickings an’ I took the nicest house as mine. One soldier objected to me claim saying that a whole house was too much fer a half-sized man like me. So I cut off his legs an’ told him that now he was half-sized too, har har. There weren’t any more objections after that.*/
== HEXXATJ @42 /*And Lady Crane…*/
== KORGANJ @43 /*Patience woman! 'Twas her house. Her son tried to stop me at th' door so I killed him. I think her husband had died defending th' wall, rather brave fer a noble, an’ that left just her an’ her daughter. Well, both of 'em were good for a kiss an’ a tickle, though her daughter was a sad little thing an’ hardly squirmed after the first few go rounds. 'Twas a good bit of fun but I had a problem. All I could find was silver, which was too heavy to be worth carrying out, an’ neither of them would give me any gold.*/
== HEXXATJ @44 /*Maybe there really was no gold.*/
== KORGANJ @45 /*I thought so too, but then th’ lady said something about how since I was going to kill 'em anyway, I might as well leave poor. So I tried a little torture.*/
== HEXXATJ @46 /*That is one of your skills?*/
== KORGANJ @47 /*Nae, I just ask a question an’ lop off a piece of th' person if I be disliking the answer. I thought the lady knew what I wanted an’ of the two of them she was th' more fun in bed, so I cut pieces off her daughter until she talked. She had such a spine! Her daughter was shorter than me by th’ time the lady finally gave me th’ gold. That height nae be so good for th’ longlimbs though so I doubt th’ girl survived.*/
== HEXXATJ @48 /*You are probably correct. When I found her, she was quite alone.*/
== KORGANJ @49 /*Anyway, that’s me story. I had th’ lady’s gold so I took a farewell roll on th' floor before heading on me way. I had me a castle waiting an’ all that.*/
== HEXXATJ @50 /*I wish I had known this before. I would have promised Lady Crane your death, killed you while you slept, and drunk the gratitude from her veins. She would have been so thankful to be avenged; she would have been the most delicious meal I've ever tasted. Instead her blood was ashes in my mouth.*/
== KORGANJ @51 /*Now don’t be sad, lass. I’m hated by hundreds an’ hundreds of people in these lands. Ye’ll get yer chance to kill me fer someone yet.*/
== HEXXATJ @52 /*Thank you, Korgan, that helps. It is so easy to despair.*/
DO ~SetGlobal("_BKorHex","GLOBAL",10)~
EXIT

//4th Talk, interrupted rest
CHAIN IF WEIGHT #-1 ~Global("_BKorHex","GLOBAL",13)~ THEN HEXXATJ _bKorganHexTalk5
@53 /*I did it! Korgan, I finally did it.*/
== KORGANJ @54 /*Keep yer voice down, woman; it’s th' middle of the night. What did ye finally do?*/
== HEXXATJ @55 /*I finally drank true love! You have no idea how long I have been searching, but I found it! There was a man and a woman and they didn’t wake up and I drained them both! I’m so full of it and it’s beautiful! The world is beautiful! You’re beautiful!*/
== KORGANJ @56 /*Now I know ye’ve gone mad. People have called me many things, but ne’er beautiful.*/
== HEXXATJ @57 /*But it won’t last, Korgan.  It will fade like all the others and I cannot let that occur. I must try to transform this love into my own and keep it forever. We will join tonight not as two bodies using each other but as two souls blissfully entwined for all eternity, and then we will have love and it will never leave me. Do you see me glowing, Korgan? Do you feel how warm I am? I have found the answer and it is mine and you must help me keep it now!*/
== KORGANJ @58 /*Ye’re warm! Or at least less cold. And ye be gabbin' far more than usual. I nae be understanding half of what ye said, vampire, but I think I get to enjoy yer sweet body without losing me blood tonight.*/
== HEXXATJ @59 /*Yes, you do, Korgan. Quickly now, there is not a minute to lose.*/
DO ~SetGlobal("_BKorHex","GLOBAL",14) RestParty()~
EXIT

//on waking
CHAIN IF WEIGHT #-1 ~Global("_BKorHex","GLOBAL",14)~ THEN HEXXATJ _bKorganHexTalk6
@60 /*No, it fades. The color is running out and the world is returning to gray. Why, Korgan, why does love leave me? It was mine! How will I find it again?*/
== KORGANJ @61 /*Well, lass, cannae ye just drink another loving couple? Th’ world must be full of 'em.*/
== HEXXATJ @62 /*I’ve killed countless lovers, Korgan, and it never works! While I’m drinking one, the other always wakes up. This last time was a fluke, a one-in-a-thousand chance. It will never come again.*/
== KORGANJ @63 /*Are ye crying, vampire? There are no tears, but ye sound as though ye’re crying.*/
== HEXXATJ @64 /*It’s all gone. There is nothing more for me here.*/
== KORGANJ @65 /*Nae, lass, ye be wrong.*/
== HEXXATJ @66 /*What?*/
== KORGANJ @67 /*Hexxat, do ye remember what ye said all those days ago about th' women that I’ve had? Ye was right. I have ne’er had a woman what wasn’t crying, fighting me, or after me gold. Last night ye were th' first.*/
== HEXXATJ @68 /*You’re being serious! I had not thought that possible. Are you saying you love me, dwarf?*/
== KORGANJ @69 /*Nae. I nae be loving ye, an’ ye nae be loving me. But last night ye were full of enough love fer th' both of us. 'Twas love drunk from th' people ye killed, but ye were still in love an’ ye shared that passion with me. So ye may have lost that love but a little is still in me an’ ye have me thanks. I will always remember ye fer it.*/
== HEXXATJ @70 /*Then tomorrow use me again, dwarf, and I will drink from you and remember that love.*/
== KORGANJ @71 /*Ye may drink a little if ye want, but I cannae return to what we had. I no longer want a squirming body I kin use, Hexxat. Ye have ruined me. I want someone to share me bed fer me, an’ as ye have always said, ye prefer women.*/
== HEXXATJ @72 /*So is that it then, Korgan? It is over between us?*/
== KORGANJ @73 /*There ne’er was an us, ye know that. But I am still yer friend, Hexxat. I will travel by yer side an’ fill the battlefield with th' bodies of yer enemies.*/
== HEXXATJ @74 /*You’re my friend? Thank you, Korgan. I have tried to be friends with so many, but my friendship is rarely returned. This means a lot to me.*/
DO ~SetGlobal("_BKorHex","GLOBAL",15) SetGlobal("_bKorganHexxatFriends","GLOBAL",1)~
EXIT

//5th Talk, interrupted
CHAIN IF  WEIGHT #-1 ~Global("_BKorHex","GLOBAL",18)~ THEN HEXXATJ _bKorganHexTalk7
@75 /*Korgan, wake up.*/
== KORGANJ @76 /*Me gods, woman! Ye nae be needin' to sleep, but some of us still have to. Well, what is it?*/
== HEXXATJ @77 /*I met someone!*/
== KORGANJ @78 /*Ye meet someone every night, vampire, and then ye drink their blood. But now ye still look hungry so this must be different.*/
== HEXXATJ @79 /*I look hungry?*/
== KORGANJ @80 /*Ye're barely stopping yerself from sinking yer teeth into me. So ye met someone and they still breathe. What of it?*/
== HEXXATJ @81 /*There is an inn at a crossroads near here. I was going to find and drink one of the sleeping customers but the woman who runs it was still awake; I saw her and she was so beautiful. I wanted her, Korgan!*/
== KORGANJ @82 /*So what? Ye drool over every half-pretty girl we meet. Why be she any different?*/
== HEXXATJ @83 /*I never truly desired any of those women. I only remembered that many years ago I would have wanted them and I hoped that if I pleasured them, then maybe they would love me and I would feel something in return. But nothing has ever come of it. There are few enough women who like the look of me and even fewer who like my cold touch.*/
== KORGANJ @84 /*Hah! What are ye talking about, ye're desired by most everyone.*/
== HEXXATJ @85 /*Most men, yes, but most women do not desire other women, Korgan. However, at the inn I grew careless as I watched the innkeeper and she saw me. And she was interested and we talked and…*/
== KORGANJ @86 /*An’ ye opened her legs an’ had yer way with her an’ now yer as giddy as a young lass who’s killed her first drow.*/
== HEXXATJ @87 /*You are crude, dwarf, but correct. We held each other and shared the details of our lives and I felt something. It was only a shadow of true feeling, the kind I take from my prey, but it was mine and it was real. I’m sure that it will grow if I nurture it.*/
== KORGANJ @88 /*I assume ye left me out of yer stories. So will ye go back to see yer lass tomorrow?*/
== HEXXATJ @89 /*No, her husband returns then and we have things we must accomplish. But we agreed that when I am finished with my quests, I will find her again.*/
== KORGANJ @90 /*Well, I be happy for ye, woman. But why will ye nae let this old dwarf sleep? Why are ye telling me all this?*/
== HEXXATJ @91 /*Because you’re my friend, Korgan! You are my only friend. Most are afraid of me. Even <CHARNAME> merely tolerates me.*/
== KORGANJ @92 /*Fair enough. An’ I’ll tell ye what... as yer friend, when we are done here an' ye go back to yer girl, I will kill her husband fer ye so ye nae be having to.*/
== HEXXATJ @93 /*Really? That’s so sweet. Thank you. But what will you do after?*/
== KORGANJ @94 /*Another time, woman. Let this old dwarf sleep an’ I’ll tell ye all about it another time.*/
DO ~SetGlobal("_BKorHex","GLOBAL",19) RestParty()~
EXIT

//Last talk
CHAIN IF  WEIGHT #-1 ~Global("_BKorHex","GLOBAL",21)~ THEN HEXXATJ _bKorganHexTalk8
@95 /*Korgan, you still haven’t told me your plans after we are done with all of this.*/
== KORGANJ @96 /*Well, assuming I still be alive then I plan to settle down.*/
== HEXXATJ @97 /*Settle down? You?*/
== KORGANJ @98 /*Aye, I’ll go home, find me a buxom lass, win her heart with th' heads of her enemies, an' raise a horde of little Bloodaxes.*/
== HEXXATJ @99 /*Won’t you be bored?*/
== KORGANJ @100 /*Nah, there be nothing boring about life back home. I will have me a wife to enjoy an' children to teach about fighting an' drinking. There be enemy clans to kill, drow to fight, an' even the occasional mind-flayer. Those are always entertaining. So I will nae be bored when I go home again.*/
== HEXXATJ @101 /*Yet you are here.*/
== KORGANJ @102 /*Well, I had to leave. Home was all I knew. Now I have seen th’ world, met countless numbers of different an interesting people, and killed many of them. An’ having seen the world, I can say that it will be good to be back home. Plus there still be half-a-dozen dwarves to whom I owe bloody deaths. I’ve been gone so long that they probably think I’m dead.*/
== HEXXATJ @103 /*I’m sure they will be surprised.*/
== KORGANJ @104 /*Oh, aye, that they will. I think when I kill yer lass’s husband, I’ll dress up like one of th' Golden Hammer clan. They’re always trading with th' surface folk. I’ll kill him in front of a crowd and bellow about how th' Golden Hammer Clan will return to slaughter 'em all. Maybe I kin even start a war!*/
== HEXXATJ @105 /*You won’t be looking for a wife from that clan, I take it?*/
== KORGANJ @106 /*Well, I might. It be easier to get a lass if half her clan is dead. Fewer family t' object or challenge me for her honour. Fewer other suitors to kill as well.*/
== HEXXATJ @107 /*Well I wish you luck. And thank you again.*/
== KORGANJ @108 /*Nae, thank ye, Hexxat. An’ I wish ye luck yerself.*/
DO ~SetGlobal("_BKorHex","GLOBAL",22)~
EXIT


