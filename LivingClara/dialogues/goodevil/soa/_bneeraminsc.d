//SOA Versions
//1st Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",2)~ THEN NEERAJ _bNeeraMinsc1
@1 /*So... You arrived in Amn recently? This Jon Irenicus kidnapped you? That couldn't have been fun.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",3) SetGlobal("_bMinscNeera","GLOBAL",1)~
== MINSCJ @2 /*It was not! We tried to triumph but were triumphed upon and Dynaheir fell in combat.*/
= @3 /*Boo and I failed as warriors and we shall never forgive ourselves.*/
== NEERAJ @4 /*Oh, gods. I'm so, so sorry.*/
== MINSCJ @5 /*It is okay. We cried out our eyes for many hours, but now the tears are gone and only righteousness remains! We shall strive doubly hard to protect you.*/
== NEERAJ @6 /*You've had a taste of what I'm most afraid of—being taken by a crazy wizard who wants to tear you apart because of what you are. Not even who you are. WHAT you are. Know what I mean?*/
== MINSCJ @7 /**squeak squeak* I thought I understood but Boo has explained that I do not. Perhaps you could explain yourself to the both of us.*/
== NEERAJ @8 /*The Red Wizards don't even think of wild mages as people. We're more like books they think they'll just open up and then toss aside.*/
= @9 /*I want the world to know that I CAN'T be tossed aside. That I matter. Don't you?*/
== MINSCJ @10 /*Dynaheir never liked Red Wizards, always skulking and scheming. Whenever she saw one she said, "Smite!" and Minsc and Boo made sure they were smoten!*/
= @11 /*But Neera should not worry her head about mattering. You are a hero and heroes will always be remembered for heroing!*/
== NEERAJ @12 /*I know I matter, don't get me wrong. I just want—other people to know, too.*/
= @13 /*I guess that makes us peas in a pod—an enormous pod, obviously, with multiple bedrooms, an outhouse, and a wood-burning stove.*/
== MINSCJ @14 /*Pods can never have too many bedrooms, and Boo loves to gather wood for the fire. We approve of your idea, Neera.*/
= @15 /*But that is enough talk; it is time to move forward, carving a path to the future!*/
END
	++ @1501 /*Neera, Minsc, I keep you for your fighting skills, not your conversation. No camaraderie allowed!*/ 
		DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",500) SetGlobal("_bMinscNeera","GLOBAL",3)~ EXIT
	++ @1502 /**Say Nothing.**/ EXIT

//2nd Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",5)~ THEN NEERAJ _bNeeraMinsc2
@16 /*Um, I think I was rude before, Minsc. You mentioned Dynaheir had died and I got nervous and changed the subject.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",6)~
= @17 /*It was just that I was in shock, you know? We were friends, I think.*/
== MINSCJ @18 /*Fear not, I remember you and her together, always chatting, always playing. You were a good friend to her and her to you.*/
= @19 /*She would not take offense at you changing a subject. Subjects are meant to be changed!*/
== NEERAJ @20 /*Thanks. Can I ask how she died?*/
== MINSCJ @21 /*We were attacked! I was fighting three men, and as I watched an axe hit her from behind.*/
= @22 /*If we had won, I could have raised her, but even Boo was unable to defeat our opponents.*/
= @23 /*Now I can never return home. I failed Dynaheir. I failed Boo. I failed myself.*/
== NEERAJ @24 /*Wow, that's awful. I mean I'm sorry.*/
= @25 /*Oh gods, I don't know what to say. I know how much she meant to you.*/
== MINSCJ @26 /*There is nothing one can say, Neera. I grieved, Boo has grieved, you will grieve, and then we will charge blindly on.*/
= @27 /*Charging always helps.*/
== NEERAJ @28 /**laughs* Somehow you always manage to make me feel better.*/
EXIT

//City Talk
CHAIN IF WEIGHT #-1 ~Global("_bMNCityTalk","GLOBAL",1)~ THEN NEERAJ _bNeeraMinscCity
@29 /*Look at all these buildings and people! Baldur's Gate was huge, but this place makes it look like my hamlet back in the High Forest.*/
== MINSCJ @30 /*I agree, but Boo says Waterdeep and Calimport put it to shame.*/
DO ~SetGlobal("_bMNCityTalk","GLOBAL",2)~
== NEERAJ @31 /**laughs* I forgot how cosmopolitan Boo is. I'm not saying it's the biggest city ever. But it's still big enough to impress me.*/
= @32 /*There seems to be no end to the things you can do. Not like the High Forest. I mean, there WAS lots to do, but most of it was pretty dull. There weren't all these people milling around.*/
== MINSCJ @33 /*Cities are bustling with evil so there is always work to be done!*/
= @34 /*Forests are busy, but busy with goodness. There is little heroing to do. Boo and I go there for vacation.*/
== NEERAJ @35 /*You'd have loved the High Forest, then.*/
= @36 /*You could doze off there, wake up, and not know where you were or how long you'd been asleep. It was like the rest of the world had stopped. The trees and animals were still there, obviously. But they never paid much attention... until I started accidentally burning things down, of course. It was the purest kind of lonely.*/
== MINSCJ @37 /*That sounds nice, except for the burning. Boo is far too flammable.*/
== NEERAJ @38 /*It wasn't too bad. More good than bad. I think.*/
= @39 /*I was banished because I didn't fit in. Well, that and burning things. But I DID fit in, in a way. That pure kind of lonely, that solitude—I always think about that. Want it. Good or bad, it's who I am.*/
== MINSCJ @40 /*Boo is never lonely because he has Minsc, and I am never lonely because I have Boo!*/
= @41 /*Perhaps you will find a good friend as well?*/
== NEERAJ @42 /*IF it happened, I guess I wouldn't want solitude so much. Who knows what the Neera of tomorrow will think.*/
= @43 /*Onward... I suppose.*/
EXIT

//3rd Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",8)~ THEN NEERAJ _bNeeraMinsc3
@44 /*We talked about you, you know.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",9)~
== MINSCJ @45 /*I do not know to whom you are referring. One of we is you, and you is Minsc, but who is the other we?*/
== NEERAJ @46 /*Dynaheir! Dynaheir and I talked, a lot. We talked about magic, of course, and spells, and our homes, and adventuring, but also about you.*/
= @47 /*She really loved you, you know.*/
== MINSCJ @48 /*Of course. Minsc and Dynaheir and Boo were inseparable company, and she showed her love daily.*/
== NEERAJ @49 /*Yeah, she mentioned that. She also mentioned that you weren't really supposed to, you know, be together. You were initially opposed but she managed to convince you.*/
== MINSCJ @50 /*I do not remember what she said, merely that she wasn't wearing clothes.*/
= @51 /*Boo remembers. He says Dynaheir stated that she loved me, and that no one could expect her to spend every day with me without developing feelings for me.*/
= @52 /*Boo has an excellent memory or maybe I was just not paying attention.*/
= @53 /*Boo says I was not paying attention.*/
== NEERAJ @54 /*Yeah, rules are overrated. Especially rules that no one can enforce. How would anyone know what you did together?*/
= @55 /*For what it's worth, I always thought you were a cute couple.*/
= @56 /*Or triple. Or whatever you were.*/
EXIT

//4th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",11)~ THEN NEERAJ _bNeeraMinsc4
@57 /*Life on the road is great, but it makes having friends harder. Before you came along, Telana and I were thick as thieves. Really fat thieves!*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",12)~
== MINSCJ @58 /*Ahh Telana... I do not remember Telana, but Boo says she was your friend.*/
= @59 /*I do not see her with you now. Shall we go to her?*/
== NEERAJ @60 /*No. Even when we're together, it's... different.*/
= @61 /*If I had to decide, I think I'm probably better at being on the road than I am at being a friend. I don't necessarily WANT it to be that way, but there you have it.*/
== MINSCJ @62 /*We do not understand. Boo and I have traveled with you for many moons and you have been a mighty friend.*/
== NEERAJ @63 /*We're friends? Good! Glad to hear it, for the most part. I mean—yes, glad to hear it!*/
= @64 /*Anyway, the road calls. Off we go.*/
EXIT

//5th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",14)~ THEN MINSCJ _bNeeraMinsc5
@65 /*You are an excellent witch, Neera. Your witchiness knows no bounds!*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",15)~
== NEERAJ @66 /*Thanks, Minsc.*/
== MINSCJ @67 /*Boo says I should not compliment you so. I think he is jealous.*/
== NEERAJ @68 /*Aww, jealous of me? There's no need to be jealous, not when I love his cute little face. Come here, Boo!*/
== MINSCJ @69 /*Boo likes Neera. It is not everyone who he allows to carry him.*/
== NEERAJ @70 /*You probably don't know this, but he used to come over to my tent, whenever you and Dynaheir were... you know...*/
== MINSCJ @71 /*Boo says that there was no room for him when I was with Dynaheir in our tent. He was replaced. It made him very sad, but you were always his friend.*/
= @72 /*You know, we tried to find Boo a lady hamster but it never worked out.*/
== NEERAJ @73 /*Why not? There are hamsters everywhere.*/
== MINSCJ @74 /*Yes, hamsters are many, but miniature giant space hamsters are few. Boo says the lady hamsters we found for him were cute, but none of them could talk. All they could do was squeak. It made him self-conscious.*/
== NEERAJ @75 /*Ummm, no offense to Boo, but I have never heard him say anything but "squeak" either.*/
== MINSCJ @76 /*Yes, but Boo's squeaks are infused with meaning. A normal hamster's squeak is just a squeak.*/
= @77 /*I still hope one day we will find a lady miniature giant space hamster for Boo, but so far we have been without luck. It means he is alone. Now Minsc is alone too.*/
== NEERAJ @78 /*Aww, you guys aren't alone. You have each other, and me, and <CHARNAME>. We're all friends here.*/
EXIT

//6th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",17)~ THEN NEERAJ _bNeeraMinsc6
@79 /*Darn it! My last wild surge did something... odd to my dry rations.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",18)~
== MINSCJ @80 /*Perhaps your magic was hungry? Sometimes Dynaheir's magic got hungry, but it usually preferred eggs.*/
== NEERAJ @81 /*I don't think so. If it was hungry, they'd probably have just disappeared. Also: wild surges? Surprisingly small appetites.*/
== MINSCJ @82 /*Then Boo is curious, what did it do?*/
== NEERAJ @83 /*Undried them. Look. The hardtack's a gooey mess, the apples look like they were just picked, and the fish is—oh! there he goes. Good luck finding a pond, little guy. I don't suppose you'd share some of your rations, would you?*/
== MINSCJ @84 /*Of course! You can have some of my hardtack, or some of Boo's hardtack. His is of higher quality.*/
== NEERAJ @85 /*Hardtack, hardtack! Always hardtack. Have you noticed no one ever offers to reward us with a nice dinner?*/
= @86 /*Thanks, both of you... Wow! Not bad. You have really nice biscuits. Er... That sounded bad. Buns. No! Hard fruit. Ugh...*/
== MINSCJ @87 /*Thank you! Boo says you are embarrassed, but he will not tell me why.*/
== NEERAJ @88 /*Thanks, Boo.*/
= @89 /*Oh wow, I'm suddenly very full! High time we got moving, don't you think?!*/
EXIT

//7th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",20)~ THEN NEERAJ _bNeeraMinsc7
@90 /*Hey! Uh... We've been getting to know each other pretty well, right? So... I thought I'd mention I was seeing someone. Recently. Before I came to Amn, back on the Sword Coast.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",21)~
== MINSCJ @91 /*Ahh to be in love. Minsc remembers this.*/
= @92 /*Is he waiting for your return?*/
== NEERAJ @93 /*It's—it didn't end well. Actually, I'm not sure it really ended at all. It just—I sort of left.*/
== MINSCJ @94 /*Left? Did he mistreat you in some way? Must we go and teach him some manners?!*/
== NEERAJ @95 /*Mistreat me? Ha! No. Unless you count saying sweet things and giving me gifts as mistreatment. No, no: I mistreated him.*/
= @96 /*This is what happened: I woke up one morning and saw him lying there, and I knew it couldn't go on. He didn't look bad or anything. I just—knew. So I got up, got my things together, and walked out.*/
== MINSCJ @97 /*So you are the one we need to teach? I am confused.*/
= @98 /*Normally I would shake the mistreater until he saw the error of his ways, but Boo says shaking you would not help the situation.*/
= @99 /*We do not know what to do.*/
== NEERAJ @100 /*We have something in common.*/
= @101 /*I was afraid, I guess. Not of him, I just... I didn't want to see him hurt. I've hurt plenty of people, of course. Usually with magic, and usually by accident. It's happened again and again. But I couldn't bear to see... his face, to know I was responsible for how he felt.*/
== MINSCJ @102 /*Luckily for you, we are hard to hurt. Boo is very, very quick, and I am very, very durable.*/
= @103 /*Many mighty magic evil-doers have tried to hurt us and failed. Surely you do not need to worry.*/
== NEERAJ @104 /*Thanks, I just—thought you should know. I don't want to say, uh, "This is this!" or "That is that!" Because you'd have no idea what I was talking about. I just thought you should know what you're getting into in case—*/
= @105 /*You know. Feelings. I'm not saying you have any. I mean, obviously you have feelings. But not about me. Uh, maybe. And I'm not saying I do—have feelings about you. But—there it is.*/
== MINSCJ @106 /*I have many feelings. When it is sunny, I feel hot. When it is raining, I feel wet. And when it is evil, I feel righteous rage!*/
= @107 /*Boo says that perhaps you mean different feelings than I am discussing and that I should stop this conversation.*/
= @108 /*So consider it stopped! The conversation is no more.*/
== NEERAJ @109 /*Boy, am I glad that's over. Can we get moving? Fast? I can jog on ahead and do some scouting...*/
EXIT

//Inn Talk
CHAIN IF WEIGHT #-1 ~Global("_bMNInnTalk","GLOBAL",1)~ THEN NEERAJ _bNeeraMinscInn
@110 /*What a crowd. This place beats most of the inns back in Baldur's Gate. And let's not even TALK about the High Forest. There, an inn is considered busy if there's more than one raccoon in the attic.*/
DO ~SetGlobal("_bMNInnTalk","GLOBAL",2)~
== MINSCJ @111 /*An inn with raccoons is a good inn and one with few problems. An inn in a city is for finding evil to fight!*/
== NEERAJ @112 /*Also, drinking!*/
= @113 /*Speaking of which, I sure am thirsty...*/
== MINSCJ @114 /*When thirsty, one should drink! This is wisdom.*/
= @115 /*Boo would like a drink as well. Shall I get one for each of you?*/
== NEERAJ @116 /*Yes, please!*/
= @117 /*I'll have a Shadowdark ale. Get one for yourself while you're at it.*/
== MINSCJ @118 /*No ale for me, it makes my sword wobbly. Beer for Minsc and Boo! Ale for the pretty witch!*/
== NEERAJ @119 /*Ah, that hits the spot. I could get used to this. Interesting people all around, music, an ale in my hand...*/
= @120 /*No one attacking us, no explosions, no crazy wizards (I don't count), no sudden deaths. Nope. This can't last.*/
== MINSCJ @121 /*Indeed it cannot, but one must take the rest and food when one can get it. Hunger and fatigue will fell even the fittest fighter!*/
== NEERAJ @122 /*Agreed. We will enjoy this while we can.*/
EXIT

//8th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",23)~ THEN NEERAJ _bNeeraMinsc8
@123 /*I never thought I'd travel so long with a fighter. Swords, armor—that stuff does nothing for me. You're interesting, though. More interesting than most warriors I've met.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",24)~
== MINSCJ @124 /*That is because most warriors do not have hamsters, let alone miniature giant space hamsters!*/
== NEERAJ @125 /*To be fair, though—I have no idea how it is for you. Traveling around with me, I mean. Are you surprised to be hanging out with a headstrong wild mage?*/
== MINSCJ @126 /*No surprise at all! You have hung out with us before, have you not? You come, you go, you come, you go... Boo and I knew it was only a matter of time before you came again.*/
== NEERAJ @127 /*You know what I like best about you, Minsc? I never, ever have to worry that there's some subtle meaning behind what you are saying. You are an open book, though I still cannot understand a word Boo says.*/
= @128 /*Second question. "Headstrong." Is that accurate? Is that how you'd describe me? No right answer, I won't judge you—I just want to know what you really think.*/
== MINSCJ @129 /*I have always found your head to be plenty strong. But you use your head for thinking, not for bashing. It is what I like about you.*/
= @130 /*Boo says if you also used your head for bashing then there would be no one to think except Boo and he is getting tired of it.*/
= @131 /*We find you reasonable and smart, someone we trust to tell us what to punch.*/
== NEERAJ @132 /*That's nice to hear. Really!*/
= @133 /*I don't mind being called uncontrollable and unpredictable, really. It's just that—well, there's more to me than that. At least I hope there is. After a while, "She wild mage! She wild!" starts sounding a little... dismissive, you know?*/
= @134 /*Whatever. We should get back to what we were doing.*/
EXIT

//9th Talk/2nd City Talk/1st Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bMNCityTalk","GLOBAL",3)~ THEN NEERAJ _bNeeraMinscCity2
@135 /*Oh no! You just stepped in something. Oh! This city needs to regulate dogs, not magic.*/
== MINSCJ @136 /*Boo agrees. He does not like dogs. They bark and chase him.*/
DO ~SetGlobal("_bMinscNeera","GLOBAL",2) SetGlobal("_bMNCityTalk","GLOBAL",4)~
= @137 /*However, evil does not wait for us to clean our boots. We have more important things to attend to!*/
== NEERAJ @138 /*Those important things won't stop you from smelling.*/
= @139 /*Luckily, I have some spare rags. Lift up your left boot. There, it'll just take a dab. Don't look at me, I'm not touching it—this is your duty. DUTY, get it? There! You cleaned it all up. Isn't that better?*/
== MINSCJ @140 /*I suppose you are right. If one must kick butts for goodness then one's boots must be clean. And kicking butts for goodness always leads to reward!*/
== NEERAJ @141 /*Not having that stuff on your boot is reward enough.*/
= @142 /*Still, you were a good sport. Perhaps you do deserve something for all your hard work.*/
== MINSCJ @143 /*Minsc loves rewards. Boo does as well!*/
= @144 /*What rewards were you thinking of?*/
== NEERAJ @145 /*Oh, I don't know. You're familiar with what's in my pockets, so— why not a kiss?*/
== MINSCJ @146 /*We will always take a kiss from a pretty lady.*/
= @147 /*Boo says he gets to go first though.*/
== NEERAJ @148 /*Of course, the sly devil. There you go, Boo.*/
= @149 /*Your turn Minsc.*/
= @150 /*Mm! *sigh* That was... nice. I'd like to find that dog and thank it for helping make that happen.*/
== MINSCJ @151 /*That was quite a kiss. I think perhaps you want something to happen which has not yet happened, no?*/
= @152 /*Boo agrees; he says he is jealous.*/
== NEERAJ @153 /*Well... I mean... yes, okay!*/
= @154 /*Do I have to spell everything out for you? Why can't you take the hint?*/
== MINSCJ @155 /*I do not take hints; if you want me to do something you must hit me over the head to get my attention.*/
== NEERAJ @156 /*But I have it now, right? I mean... I don't have to explain myself?*/
== MINSCJ @157 /*Explanations would be required, but Boo has already summarized the situation.*/
 = @158 /*He says you are attracted to me because of my great devotion to goodness and my mighty fighting physique.*/
 = @159 /*He says I am attracted to you because I require a bossy woman to order me about in all aspects of my life.*/
 = @160 /*And he says he is happy to finally have one again. Since we were captured, he has had to make all the decisions and he is exhausted.*/
 == NEERAJ @161 /*Aww, that's sweet. Thanks, guys.*/
 EXIT
 
 //Post Combat Talk
 CHAIN IF WEIGHT #-1 ~Global("_bMNFightTalk","GLOBAL",1)~ THEN NEERAJ _bNeeraMinscFight
 @162 /*Phew! I'm glad that's over. But it really wasn't THAT hard. I feel like fighting is becoming second nature to me, like breathing or a persistent craving for cheese.*/
 == MINSCJ @163 /*Yes, we will make a fighter of you yet, Neera, and evil-doers will flee when they hear your battle cry!*/
 DO ~SetGlobal("_bMNFightTalk","GLOBAL",2)~
 == NEERAJ @164 /*Easy for you to say! Thanks for the vote of confidence. But honestly?*/
 = @165 /*I'm not sure what to think. Who doesn't like feeling powerful? But sometimes I worry—nah. Never mind.*/
 = @166 /*The truth is that I'm beginning to see things more clearly. When you're a wild mage, you kind of open yourself up to chaos.*/
 == MINSCJ @167 /*You should not fear chaos, chaos should fear you! When I shout my battle cry, my enemies tremble and die. My friends know to take a step back as well.*/
 = @168 /*I feel my blood rushing through my veins, the glory of combat with my foes. I have seen you, you feel it too.*/
 == NEERAJ @169 /*Well, yes. Clarity isn't all it's cracked up to be. When I look into that chaos, it's equal parts terror and ecstasy—and sometimes I can't tell them apart.*/
 = @170 /*Okay, cheery thoughts! What's a good cheery thought?... Um, you smell—wow!—you smell really good!*/
 == MINSCJ @171 /*That is because we smell like battle. I did not think it was a good smell though.*/
 == NEERAJ @172 /*Not at all! Like I said, you smell really good... Okay, okay. I might be exaggerating a little bit. But go with it. Lean in and let me get a better whiff...*/
 == MINSCJ @173 /*When I lean in, I kiss the pretty half-elf.*/
 == NEERAJ @174 /*...Okay, enough smooching! We're lagging behind.*/
 EXIT
 
 //2nd Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",26)~ THEN NEERAJ _bNeeraMinscLove2
 @175 /*I feel really, really tired today. I hope I'm not getting ill.*/
 DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",27)~
 == MINSCJ @176 /*Oh no! We should rest. Or perhaps I can carry you. I already carry me and Boo, so adding you would not be difficult.*/
 == NEERAJ @177 /*No, no. I'm just tired. I don't feel ill so much as... a little overwhelmed.*/
 == MINSCJ @178 /*Overwhelm is harder. When Minsc feels overwhelmed, he finds the largest problem and hits it with his sword! Then I turn to the next problem and hit that.*/
 = @179 /*What is your worry? Just point and I will hit it with my sword.*/
 == NEERAJ @180 /*I'm worried. About Telana and the others, about your—issues, about—*/
 == MINSCJ @181 /*Hmm, that will be harder to hit. Boo says my issues are many and varied and probably unhittable.*/
 == NEERAJ @182 /*I'm worried about you and me. We're getting really close, and I've been having fun. WE'VE been having fun. You and me—we've had fun together. And soon, you know, we'll probably want to have even MORE fun. When that happens—if it happens—I'm not sure how much fun things will be after that.*/
 == MINSCJ @183 /*Too much fun? Is such a thing possible? Fun and fun can only mean more fun. How could fun and more fun lead to less fun?*/
 == NEERAJ @184 /*I haven't a clue. I... tend to learn things best by experiencing them.*/
 == MINSCJ @185 /*I will gleefully experience any experience you wish to experience. And with experience our experience will grow!*/
 = @186 /*Boo and I are both very happy with you, Neera.*/
 == NEERAJ @187 /*You are? I'm... glad. Excited.*/
 = @188 /*Not now, though. I wasn't lying about being tired, but...*/
 = @189 /*Soon. One of these nights.*/
 EXIT
 
//3rd Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",29)~ THEN NEERAJ _bNeeraMinscLove3
 @190 /*Something on your mind, Minsc? You seem nervous, or anxious, or—well, maybe it's just me.*/
 DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",30)~
 == MINSCJ @191 /*There is always something on my mind, Neera. There are so many thoughts to think and Boo cannot think them all for me.*/
 = @192 /*They overwhelm my brain.*/
 == NEERAJ @193 /*Me too. Okay, I'm just going to say it. I find you kind of irresistible. KIND of.*/
 == MINSCJ @194 /*Of course you do, I am the physical embodiment of righteous goodness! A warrior of the strongest sort. What, Boo?*/
 = @195 /*Oh, Boo has explained to me that I should stop talking about myself and start complimenting you instead. That is a good idea!*/
 = @196 /*You are very pretty, Neera, and clever, and I am lucky to have met you.*/
 = @197 /*And if Boo is correct and you want me to jump into your bed, then I will do so eagerly.*/
 == NEERAJ @198 /*I want this to happen too. So much.*/
 == MINSCJ @199 /*I must make sure I am certain of what you mean though. I have a habit of not understanding.*/
 == NEERAJ @200 /*Nothing's certain, is it?*/
 = @201 /*But yes, I am asking you to jump into my bed and you know... like you and Dynaheir used to do?*/
 == MINSCJ @202 /*I accept! I wait for our next rest with anticipation.*/
 == NEERAJ @203 /*Good. I'll wait up for you. I'm sure I'm blushing. I KNOW you are.*/
 == MINSCJ @204 /*I do not blush. I am merely burning from the sun.*/
 == NEERAJ @205 /*Let's get moving. If there's one thing I know you're good for, it's awkward, distracting conversations.*/
 EXIT
 
//4th Romance Talk - morning after
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",31)~ THEN NEERAJ _bNeeraMinscLove4
 @206 /*So... I suppose we should talk about what happened last night. What we—uh, what you and I did.*/
 DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",32) SetGlobal("_bMinscNeeraSex","GLOBAL",1)~
 == MINSCJ @207 /*It was a good night that contained many things. We ate. We talked. We killed that bandit.*/
 == NEERAJ @208 /*Come on, do I really have to be explicit? It involved heavier breathing than normal.*/
 == MINSCJ @209 /*So not killing the bandit then. That bandit was a poor specimen. He did not even get my blood pumping.*/
 == NEERAJ @210 /*Ha ha. I'm trying to be serious here.*/
 == MINSCJ @211 /*Ahh then, well to be serious, you and I were wonderful together. I enjoyed it mightily.*/
 == NEERAJ @212 /*Good! Me too. But I think you already knew that.*/
 == MINSCJ @213 /*Good, I thought you had, but I checked with Boo to be certain and he thought you had as well.*/
 = @214 /*The first time we were together, Dynaheir made me a list of everything I was supposed to do in bed and last night I followed every step. I forgot one or two, but Boo reminded me.*/
 = @215 /*You look like you want to say something though, so I will stop talking.*/
 == NEERAJ @216 /*I kind of already told you about Avrum, the man back in Baldur's Gate.*/
 == MINSCJ @217 /*I am pretty sure you did not, but let me ask Boo.*/
 = @218 /*No, Boo is also sure he didn't hear about that either.*/
 == NEERAJ @219 /*Ha, I guess you're right. I suppose I convinced myself I had, because I told you what happened next.*/
 = @220 /*It was the morning after we—uh, you know... that I decided to leave him.*/
 == MINSCJ @221 /*Boo is worried you mean to leave us too.*/
 == NEERAJ @222 /*Ha! No. I don't feel like leaving you. Maybe I'm not the same person I was when I left Avrum. Or maybe it's something about you. In any case, last night only made me feel—I don't know, a little closer to you. It's scary. Kind of like getting a wild surge.*/
 = @223 /*When I get a wild surge, I see into chaos. It's full of terror and ecstasy. Sometimes I don't know which is which. That uncertainty is something like what I feel now.*/
 == MINSCJ @224 /*Uncertainty is something I know! With my berserker strength, I destroy our enemies, but there is fear too. Sometimes I worry I will not be able to come back.*/
 = @225 /*Maybe you feel fear too?*/
 == NEERAJ @226 /*I think I'd know if it was fear. Everyone knows what fear is like; everyone's been afraid of something. It's funny. I hear people talk about love the same way, as though everyone knows what it means.*/
 = @227 /*I'm not sure I know anything about what most people call love. But—whatever it is I'm feeling right now, it feels pretty good.*/
 EXIT
 
//Post Refuge Talk - requires 1st romance talk, nothing past
CHAIN IF WEIGHT #-1 ~Global("_bRefugeTalk","GLOBAL",2)~ THEN NEERAJ _bNeeraMinscRefuge
@228 /*Something's been weighing on my mind since what happened at the Hidden Refuge.*/
DO ~SetGlobal("_bRefugeTalk","GLOBAL",3)~
== MINSCJ @229 /*When things weigh on one's mind, one should talk about them! Otherwise, the weight will crush your mind and your head will fall to the ground.*/
== NEERAJ @230 /*Well, yes, genius. I— Sorry. This is just REALLY hard to talk about.*/
= @231 /*It all happened so fast. I wasn't even there. All that work, everything that I put into making the refuge happen—gone in a flash. You know, it was the first time I really felt—*/
== MINSCJ @232 /*You felt like Neera?*/
== NEERAJ @233 /*I generally feel like myself. Who else am I gonna feel like? Actually, it might have been just the opposite. Because I had it, for once.*/
= @234 /*I had control. I was finally directing my powers towards a definite purpose, and they weren't betraying me for a change. I wanted the Hidden Refuge to be a place for wild mages, but I also wanted it to be exactly what wild magic isn't—safe, stable. And then along came the Red Wizards.*/
== MINSCJ @235 /*Red Wizards came to mess up many of Dynaheir's plans as well. That is what Red Wizards do. You should not think it is your fault.*/
== NEERAJ @236 /*No, it was the Wizards' fault, or Hayes, or a world Hells-bent on transforming whatever I try to do into a pile of steaming dung.*/
= @237 /*It's fun when my magic does weird things. Heya, presto! You're a girl! You're a squirrel! You've got pink hair! But sometimes it seems like it's someone else's fun, not mine. I don't want any of that to happen. I just want things to go—the way I want them to go.*/
== MINSCJ @238 /*Sometimes I want things to happen, but then they don't. Boo tells me I often don't really know what I want. Do you?*/
== NEERAJ @239 /*...No. I don't. I hardly EVER know. How can anyone know what they want all the time?*/
= @240 /*But I know what I want right now. I want you. I... guess that's important.*/
== MINSCJ @241 /*And Minsc and Boo want you as well. So we all have what we want.*/
EXIT
  
//5th Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",34)~ THEN NEERAJ _bNeeraMinscLove5
@242 /*You look down.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",35)~
== MINSCJ @243 /*Sometimes the weight of the world is too much for these shoulders. They are big shoulders, but it is an even larger world.*/
== NEERAJ @244 /*You look a little haggard. Cute! But haggard.*/
= @245 /*I can tell you a little story if you want. Something to lift your spirits a bit.*/
== MINSCJ @246 /*Minsc loves stories! Boo does too. We are listening.*/
== NEERAJ @247 /*Great. I have to look over my notes. I'll get back to you in a bit—tomorrow, maybe.*/
== MINSCJ @248 /*Notes? We must wait? Oh, you raise our anticipation only to dash our hopes?*/
= @249 /*Very well, but we are waiting.*/
EXIT

//6th Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",36)~ THEN NEERAJ _bNeeraMinscLove6
@250 /*Are you ready for your uplifting story?*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",37)~
== MINSCJ @251 /*Our readiness has not decreased! You may begin.*/
== NEERAJ @252 /*All right. Once upon a time, there was a mysterious, handsome orphan. He traveled all around the countryside, caring for those who needed care, killing those who needed killing, and helping many people find objects that would've otherwise been lost forever.*/
= @253 /*During his travels, he met a beautiful half-elven lady who captivated him with her quick wit and general usefulness. He also met a cast of secondary characters I won't bore you with.*/
= @254 /*Oh, Hells. I didn't think through the ending very well.*/
= @255 /*I just made things like a million times worse, didn't I?*/
== MINSCJ @256 /*Nonsense. Minsc and Boo enjoyed hearing about the orphan. We are both orphans you know. And we enjoyed hearing about the beautiful half-elven lady as well.*/
= @257 /*Boo says perhaps the story is not finished because the characters have more to do.*/
== NEERAJ @258 /*Hmm. Perhaps you're right.*/
= @259 /*We should be on our way. If the whole wild mage thing doesn't work out, I'll make it a point not to pursue the calling of inspirational bard.*/
EXIT

//7th Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",39)~ THEN NEERAJ _bNeeraMinscLove7
@260 /*Is it just me, or is Boo avoiding me?*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",40)~
== MINSCJ @261 /*Boo is jealous. He says that we are spending more and more time together and less and less time with him.*/
= @262 /*When I was with Dynaheir, he would retreat to your tent, because you were also his friend, but now I am with you, so where does he go?*/
= @263 /*He is somewhat depressed.*/
== NEERAJ @264 /*Oh, that's awful. I'm sorry, Boo. There must be some way I can fix this.*/
= @265 /*You wait, Boo, I will fix this, I will.*/
= @266 /*Because I do care for you, I do, it's just that you're a hamster and I'm a.... that's it!*/
== MINSCJ @267 /*What is it? It is Boo, it is Minsc, it is Neera...*/
== NEERAJ @268 /*It is the solution. Boo is a hamster but I am a wild mage!*/
== MINSCJ @269 /*And Minsc is a ranger! But how does this help Boo?*/
== NEERAJ @270 /*Polymorph! I need to study polymorphing!*/
= @271 /*Magic can fix every problem!*/
EXIT

//Boo Cutscene Talk
CHAIN IF WEIGHT #-1 ~Global("_bBooChange","GLOBAL",1)~ THEN NEERAJ _bNeeraMinscLove8
@272 /*Minsc, Boo, I have a surprise for you.*/
DO ~SetGlobal("_bBooChange","GLOBAL",2)~
== MINSCJ @273 /*It is you! And you are naked! This is a good surprise, but Boo is unsure how this helps him. He says he would've preferred a hamster treat.*/
== NEERAJ @274 /*No, no, watch this! Put Boo down.*/
= @275 /*There, I hope this works...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bBooX")~ 
EXIT

//Post Boo's appearance
BEGIN _bBOO

CHAIN IF WEIGHT #-1 ~Global("_bBooChange","GLOBAL",2)~ THEN MINSCJ _bNeeraMinscLove8.2
@276 /*It is Minsc! But I am Minsc! And where is Boo?*/
== NEERAJ @277 /*It is Boo! I polymorphed him to look like you!*/
= @278 /*How do you feel, Boo?*/
== _bBOO @279 /*Squeak, squeak! Squeak. Squeak... squeak?*/
== NEERAJ @280 /*Oh, you still can't speak. Can you translate, Minsc?*/
== MINSCJ @281 /*Boo says this is very interesting, but he is unsure what your plan is and would also like to know if you know how to change him back.*/
== NEERAJ @282 /*I do! At least I think I do... I haven't tested it yet. But before I change him back to a hamster, you both have to have your surprise.*/
== MINSCJ @283 /*But what is the surprise?*/
== NEERAJ @284 /*Me! See, I have no clothes. And Boo is a human. So now he doesn't have to feel left out, he can participate as well, in the... you know...*/
= @285 /*And I get two handsome men every night, so I don't really see a downside here...*/
== _bBOO @286 /*Squeak!*/
== MINSCJ @287 /*Boo understands! He is very excited. Thank you, Neera, you have made him a happy hamster! Or a human? A hamster who currently looks like a human!*/
= @288 /*Minsc is happy too.*/
== NEERAJ @289 /*Fantastic. You both are about to get a lot more happy too.*/
= @290 /*And don't worry Boo, I'll change you back once we're done.*/
DO ~SetGlobal("_bBooChange","GLOBAL",3) RestParty() ActionOverride("_bBOO",DestroySelf())~
EXIT

//Aerie-Neera Witch Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraAerie","GLOBAL",1)~ THEN AERIEJ _bNeeraAerie
@334 /*Neera, can I ask you a question?*/
DO ~SetGlobal("_bNeeraAerie","GLOBAL",2)~
== NEERAJ @335 /*Sure, Aerie, what's up?*/
== AERIEJ @336 /*Well, Minsc wants me to be his witch and -- and I'm not sure what that means. You've known him a long time and y-you knew Dynaheir, and well...*/
== NEERAJ @337 /*I think he just means he wants to protect you. That's what he does.*/
== AERIEJ @338 /*Yeah, but w--why aren't you his witch?*/
== NEERAJ @339 /*I suppose I am, in a way, but I also don't want the job.*/
== AERIEJ @340 /*Why not?*/
== NEERAJ @341 /*Because a Rashemen warrior and his witch are not supposed to be together and...*/
= @342 /*I mean I know he and Dynaheir were, but they weren't supposed to, and...*/
== AERIEJ IF ~Global("_bMinscNeera","GLOBAL",2)~ THEN @343 /**giggles* Oh I get it. If you were his witch then you couldn't be with him like you are. Like a --- a ---*/
== NEERAJ IF ~Global("_bMinscNeera","GLOBAL",2)~ THEN @344 /*Exactly.*/
== AERIEJ IF ~Global("_bMinscNeera","GLOBAL",1)~ THEN @345 /*Oh, but that means you want to be...*/
= @346 /*Oh...*/
== NEERAJ IF ~Global("_bMinscNeera","GLOBAL",1)~ THEN @347 /*Yes. Fine. I don't know!*/
= @348 /*Okay, yes, I do.*/
== NEERAJ @349 /*It's fine for you to be his witch though, Aerie. It's a good thing. I've been watching Minsc for a long time and he's a good guy.*/
= @350 /*He's strong, loyal, and surprisingly hard to kill. That last one is important when he's around me.*/
= @351 /*You know, because I always hurt the people I care for.*/
== AERIEJ @352 /*D-Don't be too hard on yourself, Neera. You and Minsc might be dangerous to your friends, but we can protect ourselves.*/
= @353 /*You're far more dangerous to our enemies and that's... that's the important thing.*/
EXIT

//Additions to MinscP to make him go to the Hidden Refuge
EXTEND_BOTTOM MINSCP 7 /*Boo does not like goodbyes, but I know we will meet again. Until then, I will seek the small and fuzzy to console Boo. Where do you want to meet up again?*/
	IF ~Global("_bMinscNeera","GLOBAL",2) IfValidForPartyDialog("Neera")~ THEN EXTERN NEERAJ _bMinscGoesHiddenRefuge1
END

CHAIN NEERAJ _bMinscGoesHiddenRefuge1
@3530 /*Go to the hidden refuge, Minsc. You'll like it there.*/
== MINSCP @3531 /*The forest? Boo likes the forest. He likes climbing the trees and chasing the deer. It is more relaxing than the city.*/
END
	+~Global("OHN_REFUGE_BURNED","GLOBAL",1)~+ @3532 /*Yes, good idea. You can go there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("OH6200",1483,1142,0)~ EXIT
	+~Global("OHN_REFUGE_BURNED","GLOBAL",0)~+ @3532 /*Yes, good idea. You can go there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("OH6100",1483,1142,0)~ EXIT
	++ @3533 /*No, just wait here.*/ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
	
EXTEND_BOTTOM MINSCP 7 /*Boo does not like goodbyes, but I know we will meet again. Until then, I will seek the small and fuzzy to console Boo. Where do you want to meet up again?*/
	IF ~Global("_bMinscNeera","GLOBAL",2) !IfValidForPartyDialog("Neera")~ THEN GOTO _bMinscGoesHiddenRefuge2
END

CHAIN MINSCP _bMinscGoesHiddenRefuge2
@3534 /*I know! I will go to the Hidden Refuge. Boo likes the forest. He likes climbing the trees and chasing the deer. It is more relaxing than the city.*/
END
	+~Global("OHN_REFUGE_BURNED","GLOBAL",1)~+ @3532 /*Yes, good idea. You can go there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("OH6200",1483,1142,0)~ EXIT
	+~Global("OHN_REFUGE_BURNED","GLOBAL",0)~+ @3532 /*Yes, good idea. You can go there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("OH6100",1483,1142,0)~ EXIT
	++ @3533 /*No, just wait here.*/ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT


//TOB Versions of Talks
 //1st Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",2)~ THEN NEERA25J _bNeeraMinsc1
@291 /*So... You arrived in Tethyr recently? After being kidnapped by Jon Irenicus? That couldn't have been fun.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",3) SetGlobal("_bMinscNeera","GLOBAL",1)~
== MINSC25J @2 /*It was not! We tried to triumph but were triumphed upon and Dynaheir fell in combat.*/
= @3 /*Boo and I failed as warriors and we shall never forgive ourselves.*/
== NEERA25J @4 /*Oh, gods. I'm so, so sorry.*/
== MINSC25J @5 /*It is okay. We cried out our eyes for many hours, but now the tears are gone and only righteousness remains! We shall strive doubly hard to protect you.*/
== NEERA25J @6 /*You've had a taste of what I'm most afraid of—being taken by a crazy wizard who wants to tear you apart because of what you are. Not even who you are. WHAT you are. Know what I mean?*/
== MINSC25J @7 /**squeak squeak* I thought I understood but Boo has explained that I do not. Perhaps you could explain yourself to the both of us.*/
== NEERA25J @8 /*The Red Wizards don't even think of wild mages as people. We're more like books they think they'll just open up and then toss aside.*/
= @9 /*I want the world to know that I CAN'T be tossed aside. That I matter. Don't you?*/
== MINSC25J @10 /*Dynaheir never liked Red Wizards, always skulking and scheming. Whenever she saw one she said, "Smite!" and Minsc and Boo made sure they were smoten!*/
= @11 /*But Neera should not worry her head about mattering. You are a hero and heroes will always be remembered for heroing!*/
== NEERA25J @12 /*I know I matter, don't get me wrong. I just want—other people to know, too.*/
= @13 /*I guess that makes us peas in a pod—an enormous pod, obviously, with multiple bedrooms, an outhouse, and a wood-burning stove.*/
== MINSC25J @14 /*Pods can never have too many bedrooms, and Boo loves to gather wood for the fire. We approve of your idea, Neera.*/
= @15 /*But that is enough talk; it is time to move forward, carving a path to the future!*/
END
	++ @1501 /*Neera, Minsc, I keep you for your fighting skills, not your conversation. No camaraderie allowed!*/ 
		DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",500) SetGlobal("_bMinscNeera","GLOBAL",3)~ EXIT
	++ @1502 /**Say Nothing.**/ EXIT

//2nd Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",5)~ THEN NEERA25J _bNeeraMinsc2
@16 /*Um, I think I was rude before, Minsc. You mentioned Dynaheir had died and I got nervous and changed the subject.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",6)~
= @17 /*It was just that I was in shock, you know? We were friends, I think.*/
== MINSC25J @18 /*Fear not, I remember you and her together, always chatting, always playing. You were a good friend to her and her to you.*/
= @19 /*She would not take offense at you changing a subject. Subjects are meant to be changed!*/
== NEERA25J @20 /*Thanks. Can I ask how she died?*/
== MINSC25J @21 /*We were attacked! I was fighting three men, and as I watched an axe hit her from behind.*/
= @22 /*If we had won, I could have raised her, but even Boo was unable to defeat our opponents.*/
= @23 /*Now I can never return home. I failed Dynaheir. I failed Boo. I failed myself.*/
== NEERA25J @24 /*Wow, that's awful. I mean I'm sorry.*/
= @25 /*Oh gods, I don't know what to say. I know how much she meant to you.*/
== MINSC25J @26 /*There is nothing one can say, Neera. I grieved, Boo has grieved, you will grieve, and then we will charge blindly on.*/
= @27 /*Charging always helps.*/
== NEERA25J @28 /**laughs* Somehow you always manage to make me feel better.*/
EXIT

//City Talk
CHAIN IF WEIGHT #-1 ~Global("_bMNCityTalk","GLOBAL",1)~ THEN NEERA25J _bNeeraMinscCity
@292 /*Look at all these buildings and people! I always forget how big cities are, so much larger than my hamlet back in the High Forest.*/
== MINSC25J @30 /*I agree, but Boo says Waterdeep and Calimport put it to shame.*/
DO ~SetGlobal("_bMNCityTalk","GLOBAL",2)~
== NEERA25J @31 /**laughs* I forgot how cosmopolitan Boo is. I'm not saying it's the biggest city ever. But it's still big enough to impress me.*/
= @32 /*There seems to be no end to the things you can do. Not like the High Forest. I mean, there WAS lots to do, but most of it was pretty dull. There weren't all these people milling around.*/
== MINSC25J @33 /*Cities are bustling with evil so there is always work to be done!*/
= @34 /*Forests are busy, but busy with goodness. There is little heroing to do. Boo and I go there for vacation.*/
== NEERA25J @35 /*You'd have loved the High Forest, then.*/
= @36 /*You could doze off there, wake up, and not know where you were or how long you'd been asleep. It was like the rest of the world had stopped. The trees and animals were still there, obviously. But they never paid much attention... until I started accidentally burning things down, of course. It was the purest kind of lonely.*/
== MINSC25J @37 /*That sounds nice, except for the burning. Boo is far too flammable.*/
== NEERA25J @38 /*It wasn't too bad. More good than bad. I think.*/
= @39 /*I was banished because I didn't fit in. Well, that and burning things. But I DID fit in, in a way. That pure kind of lonely, that solitude—I always think about that. Want it. Good or bad, it's who I am.*/
== MINSC25J @40 /*Boo is never lonely because he has Minsc, and I am never lonely because I have Boo!*/
= @41 /*Perhaps you will find a good friend as well?*/
== NEERA25J @42 /*IF it happened, I guess I wouldn't want solitude so much. Who knows what the Neera of tomorrow will think.*/
= @43 /*Onward... I suppose.*/
EXIT

//3rd Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",8)~ THEN NEERA25J _bNeeraMinsc3
@44 /*We talked about you, you know.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",9)~
== MINSC25J @45 /*I do not know to whom you are referring. One of we is you, and you is Minsc, but who is the other we?*/
== NEERA25J @46 /*Dynaheir! Dynaheir and I talked, a lot. We talked about magic, of course, and spells, and our homes, and adventuring, but also about you.*/
= @47 /*She really loved you, you know.*/
== MINSC25J @48 /*Of course. Minsc and Dynaheir and Boo were inseparable company, and she showed her love daily.*/
== NEERA25J @49 /*Yeah, she mentioned that. She also mentioned that you weren't really supposed to, you know, be together. You were initially opposed but she managed to convince you.*/
== MINSC25J @50 /*I do not remember what she said, merely that she wasn't wearing clothes.*/
= @51 /*Boo remembers. He says Dynaheir stated that she loved me, and that no one could expect her to spend every day with me without developing feelings for me.*/
= @52 /*Boo has an excellent memory or maybe I was just not paying attention.*/
= @53 /*Boo says I was not paying attention.*/
== NEERA25J @54 /*Yeah, rules are overrated. Especially rules that no one can enforce. How would anyone know what you did together?*/
= @55 /*For what it's worth, I always thought you were a cute couple.*/
= @56 /*Or triple. Or whatever you were.*/
EXIT

//4th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",11)~ THEN NEERA25J _bNeeraMinsc4
@57 /*Life on the road is great, but it makes having friends harder. Before you came along, Telana and I were thick as thieves. Really fat thieves!*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",12)~
== MINSC25J @58 /*Ahh Telana... I do not remember Telana, but Boo says she was your friend.*/
= @59 /*I do not see her with you now. Shall we go to her?*/
== NEERA25J @60 /*No. Even when we're together, it's... different.*/
= @61 /*If I had to decide, I think I'm probably better at being on the road than I am at being a friend. I don't necessarily WANT it to be that way, but there you have it.*/
== MINSC25J @62 /*We do not understand. Boo and I have traveled with you for many moons and you have been a mighty friend.*/
== NEERA25J @63 /*We're friends? Good! Glad to hear it, for the most part. I mean—yes, glad to hear it!*/
= @64 /*Anyway, the road calls. Off we go.*/
EXIT

//5th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",14)~ THEN MINSC25J _bNeeraMinsc5
@65 /*You are an excellent witch, Neera. Your witchiness knows no bounds!*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",15)~
== NEERA25J @66 /*Thanks, Minsc.*/
== MINSC25J @67 /*Boo says I should not compliment you so. I think he is jealous.*/
== NEERA25J @68 /*Aww, jealous of me? There's no need to be jealous, not when I love his cute little face. Come here, Boo!*/
== MINSC25J @69 /*Boo likes Neera. It is not everyone who he allows to carry him.*/
== NEERA25J @70 /*You probably don't know this, but he used to come over to my tent, whenever you and Dynaheir were... you know...*/
== MINSC25J @71 /*Boo says that there was no room for him when I was with Dynaheir in our tent. He was replaced. It made him very sad, but you were always his friend.*/
= @72 /*You know, we tried to find Boo a lady hamster but it never worked out.*/
== NEERA25J @73 /*Why not? There are hamsters everywhere.*/
== MINSC25J @74 /*Yes, hamsters are many, but miniature giant space hamsters are few. Boo says the lady hamsters we found for him were cute, but none of them could talk. All they could do was squeak. It made him self-conscious.*/
== NEERA25J @75 /*Ummm, no offense to Boo, but I have never heard him say anything but "squeak" either.*/
== MINSC25J @76 /*Yes, but Boo's squeaks are infused with meaning. A normal hamster's squeak is just a squeak.*/
= @77 /*I still hope one day we will find a lady miniature giant space hamster for Boo, but so far we have been without luck. It means he is alone. Now Minsc is alone too.*/
== NEERA25J @78 /*Aww, you guys aren't alone. You have each other, and me, and <CHARNAME>. We're all friends here.*/
EXIT

//6th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",17)~ THEN NEERA25J _bNeeraMinsc6
@79 /*Darn it! My last wild surge did something... odd to my dry rations.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",18)~
== MINSC25J @80 /*Perhaps your magic was hungry? Sometimes Dynaheir's magic got hungry, but it usually preferred eggs.*/
== NEERA25J @81 /*I don't think so. If it was hungry, they'd probably have just disappeared. Also: wild surges? Surprisingly small appetites.*/
== MINSC25J @82 /*Then Boo is curious, what did it do?*/
== NEERA25J @83 /*Undried them. Look. The hardtack's a gooey mess, the apples look like they were just picked, and the fish is—oh! there he goes. Good luck finding a pond, little guy. I don't suppose you'd share some of your rations, would you?*/
== MINSC25J @84 /*Of course! You can have some of my hardtack, or some of Boo's hardtack. His is of higher quality.*/
== NEERA25J @85 /*Hardtack, hardtack! Always hardtack. Have you noticed no one ever offers to reward us with a nice dinner?*/
= @86 /*Thanks, both of you... Wow! Not bad. You have really nice biscuits. Er... That sounded bad. Buns. No! Hard fruit. Ugh...*/
== MINSC25J @87 /*Thank you! Boo says you are embarrassed, but he will not tell me why.*/
== NEERA25J @88 /*Thanks, Boo.*/
= @89 /*Oh wow, I'm suddenly very full! High time we got moving, don't you think?!*/
EXIT

//7th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",20)~ THEN NEERA25J _bNeeraMinsc7
@90 /*Hey! Uh... We've been getting to know each other pretty well, right? So... I thought I'd mention I was seeing someone. Recently. Before I came to Amn, back on the Sword Coast.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",21)~
== MINSC25J @91 /*Ahh to be in love. Minsc remembers this.*/
= @92 /*Is he waiting for your return?*/
== NEERA25J @93 /*It's—it didn't end well. Actually, I'm not sure it really ended at all. It just—I sort of left.*/
== MINSC25J @94 /*Left? Did he mistreat you in some way? Must we go and teach him some manners?!*/
== NEERA25J @95 /*Mistreat me? Ha! No. Unless you count saying sweet things and giving me gifts as mistreatment. No, no: I mistreated him.*/
= @96 /*This is what happened: I woke up one morning and saw him lying there, and I knew it couldn't go on. He didn't look bad or anything. I just—knew. So I got up, got my things together, and walked out.*/
== MINSC25J @97 /*So you are the one we need to teach? I am confused.*/
= @98 /*Normally I would shake the mistreater until he saw the error of his ways, but Boo says shaking you would not help the situation.*/
= @99 /*We do not know what to do.*/
== NEERA25J @100 /*We have something in common.*/
= @101 /*I was afraid, I guess. Not of him, I just... I didn't want to see him hurt. I've hurt plenty of people, of course. Usually with magic, and usually by accident. It's happened again and again. But I couldn't bear to see... his face, to know I was responsible for how he felt.*/
== MINSC25J @102 /*Luckily for you, we are hard to hurt. Boo is very, very quick, and I am very, very durable.*/
= @103 /*Many mighty magic evil-doers have tried to hurt us and failed. Surely you do not need to worry.*/
== NEERA25J @104 /*Thanks, I just—thought you should know. I don't want to say, uh, "This is this!" or "That is that!" Because you'd have no idea what I was talking about. I just thought you should know what you're getting into in case—*/
= @105 /*You know. Feelings. I'm not saying you have any. I mean, obviously you have feelings. But not about me. Uh, maybe. And I'm not saying I do—have feelings about you. But—there it is.*/
== MINSC25J @106 /*I have many feelings. When it is sunny, I feel hot. When it is raining, I feel wet. And when it is evil, I feel righteous rage!*/
= @107 /*Boo says that perhaps you mean different feelings than I am discussing and that I should stop this conversation.*/
= @108 /*So consider it stopped! The conversation is no more.*/
== NEERA25J @109 /*Boy, am I glad that's over. Can we get moving? Fast? I can jog on ahead and do some scouting...*/
EXIT

//Inn Talk
CHAIN IF WEIGHT #-1 ~Global("_bMNInnTalk","GLOBAL",1)~ THEN NEERA25J _bNeeraMinscInn
@110 /*What a crowd. This place beats most of the inns back in Baldur's Gate. And let's not even TALK about the High Forest. There, an inn is considered busy if there's more than one raccoon in the attic.*/
DO ~SetGlobal("_bMNInnTalk","GLOBAL",2)~
== MINSC25J @111 /*An inn with raccoons is a good inn and one with few problems. An inn in a city is for finding evil to fight!*/
== NEERA25J @112 /*Also, drinking!*/
= @113 /*Speaking of which, I sure am thirsty...*/
== MINSC25J @114 /*When thirsty, one should drink! This is wisdom.*/
= @115 /*Boo would like a drink as well. Shall I get one for each of you?*/
== NEERA25J @116 /*Yes, please!*/
= @117 /*I'll have a Shadowdark ale. Get one for yourself while you're at it.*/
== MINSC25J @118 /*No ale for me, it makes my sword wobbly. Beer for Minsc and Boo! Ale for the pretty witch!*/
== NEERA25J @119 /*Ah, that hits the spot. I could get used to this. Interesting people all around, music, an ale in my hand...*/
= @120 /*No one attacking us, no explosions, no crazy wizards (I don't count), no sudden deaths. Nope. This can't last.*/
== MINSC25J @121 /*Indeed it cannot, but one must take the rest and food when one can get it. Hunger and fatigue will fell even the fittest fighter!*/
== NEERA25J @122 /*Agreed. We will enjoy this while we can.*/
EXIT

//8th Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",23)~ THEN NEERA25J _bNeeraMinsc8
@123 /*I never thought I'd travel so long with a fighter. Swords, armor—that stuff does nothing for me. You're interesting, though. More interesting than most warriors I've met.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",24)~
== MINSC25J @124 /*That is because most warriors do not have hamsters, let alone miniature giant space hamsters!*/
== NEERA25J @125 /*To be fair, though—I have no idea how it is for you. Traveling around with me, I mean. Are you surprised to be hanging out with a headstrong wild mage?*/
== MINSC25J @126 /*No surprise at all! You have hung out with us before, have you not? You come, you go, you come, you go... Boo and I knew it was only a matter of time before you came again.*/
== NEERA25J @127 /*You know what I like best about you, Minsc? I never, ever have to worry that there's some subtle meaning behind what you are saying. You are an open book, though I still cannot understand a word Boo says.*/
= @128 /*Second question. "Headstrong." Is that accurate? Is that how you'd describe me? No right answer, I won't judge you—I just want to know what you really think.*/
== MINSC25J @129 /*I have always found your head to be plenty strong. But you use your head for thinking, not for bashing. It is what I like about you.*/
= @130 /*Boo says if you also used your head for bashing then there would be no one to think except Boo and he is getting tired of it.*/
= @131 /*We find you reasonable and smart, someone we trust to tell us what to punch.*/
== NEERA25J @132 /*That's nice to hear. Really!*/
= @133 /*I don't mind being called uncontrollable and unpredictable, really. It's just that—well, there's more to me than that. At least I hope there is. After a while, "She wild mage! She wild!" starts sounding a little... dismissive, you know?*/
= @134 /*Whatever. We should get back to what we were doing.*/
EXIT

//9th Talk/2nd City Talk/1st Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bMNCityTalk","GLOBAL",3)~ THEN NEERA25J _bNeeraMinscCity2
@293 /*Oh no! You just stepped in something. This city needs to regulate their dogs.*/
== MINSC25J @136 /*Boo agrees. He does not like dogs. They bark and chase him.*/
DO ~SetGlobal("_bMinscNeera","GLOBAL",2) SetGlobal("_bMNCityTalk","GLOBAL",4)~
= @137 /*However, evil does not wait for us to clean our boots. We have more important things to attend to!*/
== NEERA25J @138 /*Those important things won't stop you from smelling.*/
= @139 /*Luckily, I have some spare rags. Lift up your left boot. There, it'll just take a dab. Don't look at me, I'm not touching it—this is your duty. DUTY, get it? There! You cleaned it all up. Isn't that better?*/
== MINSC25J @140 /*I suppose you are right. If one must kick butts for goodness then one's boots must be clean. And kicking butts for goodness always leads to reward!*/
== NEERA25J @141 /*Not having that stuff on your boot is reward enough.*/
= @142 /*Still, you were a good sport. Perhaps you do deserve something for all your hard work.*/
== MINSC25J @143 /*Minsc loves rewards. Boo does as well!*/
= @144 /*What rewards were you thinking of?*/
== NEERA25J @145 /*Oh, I don't know. You're familiar with what's in my pockets, so— why not a kiss?*/
== MINSC25J @146 /*We will always take a kiss from a pretty lady.*/
= @147 /*Boo says he gets to go first though.*/
== NEERA25J @148 /*Of course, the sly devil. There you go, Boo.*/
= @149 /*Your turn Minsc.*/
= @150 /*Mm! *sigh* That was... nice. I'd like to find that dog and thank it for helping make that happen.*/
== MINSC25J @151 /*That was quite a kiss. I think perhaps you want something to happen which has not yet happened, no?*/
= @152 /*Boo agrees; he says he is jealous.*/
== NEERA25J @153 /*Well... I mean... yes, okay!*/
= @154 /*Do I have to spell everything out for you? Why can't you take the hint?*/
== MINSC25J @155 /*I do not take hints; if you want me to do something you must hit me over the head to get my attention.*/
== NEERA25J @156 /*But I have it now, right? I mean... I don't have to explain myself?*/
== MINSC25J @157 /*Explanations would be required, but Boo has already summarized the situation.*/
 = @158 /*He says you are attracted to me because of my great devotion to goodness and my mighty fighting physique.*/
 = @159 /*He says I am attracted to you because I require a bossy woman to order me about in all aspects of my life.*/
 = @160 /*And he says he is happy to finally have one again. Since we were captured, he has had to make all the decisions and he is exhausted.*/
 == NEERA25J @161 /*Aww, that's sweet. Thanks, guys.*/
 EXIT
 
 //Post Combat Talk
 CHAIN IF WEIGHT #-1 ~Global("_bMNFightTalk","GLOBAL",1)~ THEN NEERA25J _bNeeraMinscFight
 @162 /*Phew! I'm glad that's over. But it really wasn't THAT hard. I feel like fighting is becoming second nature to me, like breathing or a persistent craving for cheese.*/
 == MINSC25J @163 /*Yes, we will make a fighter of you yet, Neera, and evil-doers will flee when they hear your battle cry!*/
 DO ~SetGlobal("_bMNFightTalk","GLOBAL",2)~
 == NEERA25J @164 /*Easy for you to say! Thanks for the vote of confidence. But honestly?*/
 = @165 /*I'm not sure what to think. Who doesn't like feeling powerful? But sometimes I worry—nah. Never mind.*/
 = @166 /*The truth is that I'm beginning to see things more clearly. When you're a wild mage, you kind of open yourself up to chaos.*/
 == MINSC25J @167 /*You should not fear chaos, chaos should fear you! When I shout my battle cry, my enemies tremble and die. My friends know to take a step back as well.*/
 = @168 /*I feel my blood rushing through my veins, the glory of combat with my foes. I have seen you, you feel it too.*/
 == NEERA25J @169 /*Well, yes. Clarity isn't all it's cracked up to be. When I look into that chaos, it's equal parts terror and ecstasy—and sometimes I can't tell them apart.*/
 = @170 /*Okay, cheery thoughts! What's a good cheery thought?... Um, you smell—wow!—you smell really good!*/
 == MINSC25J @171 /*That is because we smell like battle. I did not think it was a good smell though.*/
 == NEERA25J @172 /*Not at all! Like I said, you smell really good... Okay, okay. I might be exaggerating a little bit. But go with it. Lean in and let me get a better whiff...*/
 == MINSC25J @173 /*When I lean in, I kiss the pretty half-elf.*/
 == NEERA25J @174 /*...Okay, enough smooching! We're lagging behind.*/
 EXIT
 
 //2nd Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",26)~ THEN NEERA25J _bNeeraMinscLove2
 @175 /*I feel really, really tired today. I hope I'm not getting ill.*/
 DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",27)~
 == MINSC25J @176 /*Oh no! We should rest. Or perhaps I can carry you. I already carry me and Boo, so adding you would not be difficult.*/
 == NEERA25J @177 /*No, no. I'm just tired. I don't feel ill so much as... a little overwhelmed.*/
 == MINSC25J @178 /*Overwhelm is harder. When Minsc feels overwhelmed, he finds the largest problem and hits it with his sword! Then I turn to the next problem and hit that.*/
 = @179 /*What is your worry? Just point and I will hit it with my sword.*/
 == NEERA25J @180 /*I'm worried. About Telana and the others, about your—issues, about—*/
 == MINSC25J @181 /*Hmm, that will be harder to hit. Boo says my issues are many and varied and probably unhittable.*/
 == NEERA25J @182 /*I'm worried about you and me. We're getting really close, and I've been having fun. WE'VE been having fun. You and me—we've had fun together. And soon, you know, we'll probably want to have even MORE fun. When that happens—if it happens—I'm not sure how much fun things will be after that.*/
 == MINSC25J @183 /*Too much fun? Is such a thing possible? Fun and fun can only mean more fun. How could fun and more fun lead to less fun?*/
 == NEERA25J @184 /*I haven't a clue. I... tend to learn things best by experiencing them.*/
 == MINSC25J @185 /*I will gleefully experience any experience you wish to experience. And with experience our experience will grow!*/
 = @186 /*Boo and I are both very happy with you, Neera.*/
 == NEERA25J @187 /*You are? I'm... glad. Excited.*/
 = @188 /*Not now, though. I wasn't lying about being tired, but...*/
 = @189 /*Soon. One of these nights.*/
 EXIT
 
//3rd Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",29)~ THEN NEERA25J _bNeeraMinscLove3
 @190 /*Something on your mind, Minsc? You seem nervous, or anxious, or—well, maybe it's just me.*/
 DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",30)~
 == MINSC25J @191 /*There is always something on my mind, Neera. There are so many thoughts to think and Boo cannot think them all for me.*/
 = @192 /*They overwhelm my brain.*/
 == NEERA25J @193 /*Me too. Okay, I'm just going to say it. I find you kind of irresistible. KIND of.*/
 == MINSC25J @194 /*Of course you do, I am the physical embodiment of righteous goodness! A warrior of the strongest sort. What, Boo?*/
 = @195 /*Oh, Boo has explained to me that I should stop talking about myself and start complimenting you instead. That is a good idea!*/
 = @196 /*You are very pretty, Neera, and clever, and I am lucky to have met you.*/
 = @197 /*And if Boo is correct and you want me to jump into your bed, then I will do so eagerly.*/
 == NEERA25J @198 /*I want this to happen too. So much.*/
 == MINSC25J @199 /*I must make sure I am certain of what you mean though. I have a habit of not understanding.*/
 == NEERA25J @200 /*Nothing's certain, is it?*/
 = @201 /*But yes, I am asking you to jump into my bed and you know... like you and Dynaheir used to do?*/
 == MINSC25J @202 /*I accept! I wait for our next rest with anticipation.*/
 == NEERA25J @203 /*Good. I'll wait up for you. I'm sure I'm blushing. I KNOW you are.*/
 == MINSC25J @204 /*I do not blush. I am merely burning from the sun.*/
 == NEERA25J @205 /*Let's get moving. If there's one thing I know you're good for, it's awkward, distracting conversations.*/
 EXIT
 
//4th Romance Talk - morning after
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",31)~ THEN NEERA25J _bNeeraMinscLove4
 @206 /*So... I suppose we should talk about what happened last night. What we—uh, what you and I did.*/
 DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",32) SetGlobal("_bMinscNeeraSex","GLOBAL",1)~
 == MINSC25J @207 /*It was a good night that contained many things. We ate. We talked. We killed that bandit.*/
 == NEERA25J @208 /*Come on, do I really have to be explicit? It involved heavier breathing than normal.*/
 == MINSC25J @209 /*So not killing the bandit then. That bandit was a poor specimen. He did not even get my blood pumping.*/
 == NEERA25J @210 /*Ha ha. I'm trying to be serious here.*/
 == MINSC25J @211 /*Ahh then, well to be serious, you and I were wonderful together. I enjoyed it mightily.*/
 == NEERA25J @212 /*Good! Me too. But I think you already knew that.*/
 == MINSC25J @213 /*Good, I thought you had, but I checked with Boo to be certain and he thought you had as well.*/
 = @214 /*The first time we were together, Dynaheir made me a list of everything I was supposed to do in bed and I followed every step. I forgot one or two, but Boo reminded me.*/
 = @215 /*You look like you want to say something though, so I will stop talking.*/
 == NEERA25J @216 /*I kind of already told you about Avrum, the man back in Baldur's Gate.*/
 == MINSC25J @217 /*I am pretty sure you did not, but let me ask Boo.*/
 = @218 /*No, Boo is also sure he didn't hear about that either.*/
 == NEERA25J @219 /*Ha, I guess you're right. I suppose I convinced myself I had, because I told you what happened next.*/
 = @220 /*It was the morning after we—uh, you know... that I decided to leave him.*/
 == MINSC25J @221 /*Boo is worried you mean to leave us too.*/
 == NEERA25J @222 /*Ha! No. I don't feel like leaving you. Maybe I'm not the same person I was when I left Avrum. Or maybe it's something about you. In any case, last night only made me feel—I don't know, a little closer to you. It's scary. Kind of like getting a wild surge.*/
 = @223 /*When I get a wild surge, I see into chaos. It's full of terror and ecstasy. Sometimes I don't know which is which. That uncertainty is something like what I feel now.*/
 == MINSC25J @224 /*Uncertainty is something I know! With my berserker strength, I destroy our enemies, but there is fear too. Sometimes I worry I will not be able to come back.*/
 = @225 /*Maybe you feel fear too?*/
 == NEERA25J @226 /*I think I'd know if it was fear. Everyone knows what fear is like; everyone's been afraid of something. It's funny. I hear people talk about love the same way, as though everyone knows what it means.*/
 = @227 /*I'm not sure I know anything about what most people call love. But—whatever it is I'm feeling right now, it feels pretty good.*/
 EXIT
 
  
//5th Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",34)~ THEN NEERA25J _bNeeraMinscLove5
@242 /*You look down.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",35)~
== MINSC25J @243 /*Sometimes the weight of the world is too much for these shoulders. They are big shoulders, but it is an even larger world.*/
== NEERA25J @244 /*You look a little haggard. Cute! But haggard.*/
= @245 /*I can tell you a little story if you want. Something to lift your spirits a bit.*/
== MINSC25J @246 /*Minsc loves stories! Boo does too. We are listening.*/
== NEERA25J @247 /*Great. I have to look over my notes. I'll get back to you in a bit—tomorrow, maybe.*/
== MINSC25J @248 /*Notes? We must wait? Oh, you raise our anticipation only to dash our hopes?*/
= @249 /*Very well, but we are waiting.*/
EXIT

//6th Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",36)~ THEN NEERA25J _bNeeraMinscLove6
@250 /*Are you ready for your uplifting story?*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",37)~
== MINSC25J @251 /*Our readiness has not decreased! You may begin.*/
== NEERA25J @252 /*All right. Once upon a time, there was a mysterious, handsome orphan. He traveled all around the countryside, caring for those who needed care, killing those who needed killing, and helping many people find objects that would've otherwise been lost forever.*/
= @253 /*During his travels, he met a beautiful half-elven lady who captivated him with her quick wit and general usefulness. He also met a cast of secondary characters I won't bore you with.*/
= @254 /*Oh, Hells. I didn't think through the ending very well.*/
= @255 /*I just made things like a million times worse, didn't I?*/
== MINSC25J @256 /*Nonsense. Minsc and Boo enjoyed hearing about the orphan. We are both orphans you know. And we enjoyed hearing about the beautiful half-elven lady as well.*/
= @257 /*Boo says perhaps the story is not finished because the characters have more to do.*/
== NEERA25J @258 /*Hmm. Perhaps you're right.*/
= @259 /*We should be on our way. If the whole wild mage thing doesn't work out, I'll make it a point not to pursue the calling of inspirational bard.*/
EXIT

//7th Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",39)~ THEN NEERA25J _bNeeraMinscLove7
@260 /*Is it just me, or is Boo avoiding me?*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",40)~
== MINSC25J @261 /*Boo is jealous. He says that we are spending more and more time together and less and less time with him.*/
= @262 /*When I was with Dynaheir, he would retreat to your tent, because you were also his friend, but now I am with you, so where does he go?*/
= @263 /*He is somewhat depressed.*/
== NEERA25J @264 /*Oh, that's awful. I'm sorry, Boo. There must be some way I can fix this.*/
= @265 /*You wait, Boo, I will fix this, I will.*/
= @266 /*Because I do care for you, I do, it's just that you're a hamster and I'm a.... that's it!*/
== MINSC25J @267 /*What is it? It is Boo, it is Minsc, it is Neera...*/
== NEERA25J @268 /*It is the solution. Boo is a hamster but I am a wild mage!*/
== MINSC25J @269 /*And Minsc is a ranger! But how does this help Boo?*/
== NEERA25J @270 /*Polymorph! I need to study polymorphing!*/
= @271 /*Magic can fix every problem!*/
EXIT

//Boo Cutscene Talk
CHAIN IF WEIGHT #-1 ~Global("_bBooChange","GLOBAL",1)~ THEN NEERA25J _bNeeraMinscLove8
@272 /*Minsc, Boo, I have a surprise for you.*/
DO ~SetGlobal("_bBooChange","GLOBAL",2)~
== MINSC25J @273 /*It is you! And you are naked! This is a good surprise, but Boo is unsure how this helps him. He says he would've preferred a hamster treat.*/
== NEERA25J @274 /*No, no, watch this! Put Boo down.*/
= @275 /*There, I hope this works...*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bBooX")~ 
EXIT

//Post Boo's appearance 
CHAIN IF WEIGHT #-1 ~Global("_bBooChange","GLOBAL",2)~ THEN MINSC25J _bNeeraMinscLove8.2
@276 /*It is Minsc! But I am Minsc! And where is Boo?*/
== NEERA25J @277 /*It is Boo! I polymorphed him to look like you!*/
= @278 /*How do you feel, Boo?*/
== _bBOO @279 /*Squeak, squeak! Squeak. Squeak... squeak?*/
== NEERA25J @280 /*Oh, you still can't speak. Can you translate, Minsc?*/
== MINSC25J @281 /*Boo says this is very interesting, but he is unsure what your plan is and would also like to know if you know how to change him back.*/
== NEERA25J @282 /*I do! At least I think I do... I haven't tested it yet. But before I change him back to a hamster, you both have to have your surprise.*/
== MINSC25J @283 /*But what is the surprise?*/
== NEERA25J @284 /*Me! See, I have no clothes. And Boo is a human. So now he doesn't have to feel left out, he can participate as well, in the... you know...*/
= @285 /*And I get two handsome men every night, so I don't really see a downside here...*/
== _bBOO @286 /*Squeak!*/
== MINSC25J @287 /*Boo understands! He is very excited. Thank you, Neera, you have made him a happy hamster! Or a human? A hamster who currently looks like a human!*/
= @288 /*Minsc is happy too.*/
== NEERA25J @289 /*Fantastic. You both are about to get a lot more happy too.*/
= @290 /*And don't worry Boo, I'll change you back once we're done.*/
DO ~SetGlobal("_bBooChange","GLOBAL",3) RestParty() ActionOverride("_bBOO",DestroySelf())~
EXIT

//Post Quest Talk
CHAIN IF WEIGHT #-1 ~Global("_bMNQuestTalk","GLOBAL",1)~ THEN NEERA25J _bNeeraMinscQuest
@294 /*I can't believe it's over.*/
DO ~SetGlobal("_bMNQuestTalk","GLOBAL",2)~
== MINSC25J @295 /*Is something over? The work of heroes is always far from finished!*/
== NEERA25J @296 /*Far from finished your business, maybe. But my quest, my dream ever since Ekandor hounded me all across the Sword Coast, is over.*/
= @297 /*The Order of the Eight Staves is gone. We cut off its head. We uprooted the tree. We drained the pond. We—*/
== MINSC25J @298 /*It was a mighty butt-kicking for goodness! You have become a mighty mage! I have become a mighty ranger! Boo has become a mighty hamster!*/
== NEERA25J @299 /*The funny thing? I'm happy. But I'm not—HAPPY, you know?*/
== MINSC25J @300 /*I do not understand the difference between happy and HAPPY. I asked Boo and he doesn't understand either.*/
== NEERA25J @301 /*It's just that—well, I changed something. I maybe even changed the world, and for the better. But inside, nothing's different. I thought for sure it would be.*/
== MINSC25J @302 /*But you have changed. You are a mighty mage, being mighty for goodness! I said this already.*/
== NEERA25J @303 /*Yes. Quest after quest, more power, more experience. Life goes on and on, and then we die. But I don't WANT that.*/
= @304 /*I WANT something to change inside me. It needs to change! Because there's still something that tells me I can't—*/
= @305 /*That I can't be happy.*/
== MINSC25J @306 /*Now we are all confused. You already said you were happy, just not HAPPY. But now you say you are not happy either?*/
== NEERA25J @307 /*Ah, look at me. I'm being silly. Maybe it's shock. Like I'm actually so happy that if I felt it, I'd die. So... yeah. Just protecting myself. Don't worry about me. Conversation over.*/
== MINSC25J @308 /*Boo needs to know, are you happy or are you not happy? Minsc would like to know as well.*/
== NEERA25J @309 /*You make me happy... sometimes, in some ways. But I want to be happy all the time. Is that so wrong?*/
= @310 /*Let's just get moving. Maybe someday, when this is over, we can figure things out... together. I—I just want you to know that, for what it's worth, I—*/
= @311 /*I—*/
= @312 /*I mean—*/
= @313 /*I'm really glad you're with me.*/
== MINSC25J @314 /*And we are glad that you are with us, aren't we Boo?*/
EXIT

//General TOB Talk
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",42)~ THEN NEERA25J _bNeeraMinscTOB
@315 /*I am an arch-mage; I should be able to figure this out.*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",43)~
== MINSC25J @316 /*I am sorry, I could not hear your mumbling. You will need to mumble louder if I am to understand.*/
== NEERA25J @317 /*I should be able to talk to Boo! I am a mighty wizard and there should be a spell to understand hamsters.*/
== MINSC25J @318 /*Boo says that no one can understand hamsters; all they say is *squeak, squeak*. One does not have to be a mighty wizard to understand Boo, however. One needs only to be Minsc!*/
== NEERA25J @319 /*I don't think making me into you would help my situation.*/
= @320 /*I mean all I need is the spell, Speak With Animals, but why does no one have that scroll?*/
== MINSC25J @321 /*Dynaheir had that spell. All witches have that spell; it was created in Rashemen!*/
= @322 /*Boo says that you are an arch-mage so you could write your own spell. He will help you.*/
== NEERA25J @323 /*But how can he help me when I cannot understand him!*/
== MINSC25J @324 /*Boo will speak to me, I will speak to you, you will speak to Boo, and with all the speaking everyone will understand everyone!*/
== NEERA25J @325 /*Okay, I think I can do this... maybe.*/
= @326 /*It will take some time though.*/
EXIT

//General TOB Talk 2
CHAIN IF WEIGHT #-1 ~Global("_bNeeraMinscLove","GLOBAL",45)~ THEN NEERA25J _bNeeraMinscTOB2
@327 /*There! I have it, I should be able to understand miniature-giant-space-hamsterese!*/
= @328 /*Where are you, Boo?*/
DO ~SetGlobal("_bNeeraMinscLove","GLOBAL",46)~
== MINSC25J @329 /**squeak squeak squeak**/
== NEERA25J @330 /*Awww thanks! I love you too.*/
= @331 /*I understood that! It worked! I am the greatest arch-mage ever!*/
== MINSC25J @332 /**squeak squeak**/
== NEERA25J @333 /*Really? Who would've thought? I couldn't agree more.*/
EXIT


//Gorion Wraith Scene - Regular Version
CHAIN IF WEIGHT #-98 ~InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("_bMinscNeera","GLOBAL",2) Global("WraithPunish","GLOBAL",2) Global("_bMinscNeeraWraith","GLOBAL",0) OR(2) !Global("ImoenRomanceActive","GLOBAL",2) !InParty("Imoen2")~ THEN HGWRA01 _bNMWraithScene1
@354 /*You are a spawn of evil, bringing destruction and death where you go.*/
DO ~SetGlobal("_bMinscNeeraWraith","GLOBAL",1) SetGlobal("OHN_wraith","GLOBAL",1)~
== NEERA25J @355 /*Oh come on, that's not fair! <CHARNAME> does a lot of good as well!*/
== HGWRA01 @356 /*Some good... some pain... who cares how many are hurt? <CHARNAME> is much like you in that, is <PRO_HESHE> not, Neera?*/
== NEERA25J @357 /*No! But I'm guessing that answer won't satisfy you.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("OHNWRA01")~
EXIT

//Gorion Wraith Scene - Imoen Version
CHAIN IF WEIGHT #-98 ~InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("_bMinscNeera","GLOBAL",2) Global("WraithPunish","GLOBAL",2) Global("_bMinscNeeraWraith","GLOBAL",0) Global("ImoenRomanceActive","GLOBAL",2) InParty("Imoen2")~ THEN HGWRA01 _bNMImoenWraithScene1
@358 /*You and Imoen are spawns of evil, bringing destruction and death wherever you go.*/
DO ~SetGlobal("_bMinscNeeraWraith","GLOBAL",1) SetGlobal("OHN_wraith","GLOBAL",1)~
== NEERA25J @359 /*Oh come on, that's not fair! Both of them do a lot of good as well!*/
== HGWRA01 @360 /*Some good... some pain... who cares how many are hurt? <CHARNAME> and Imoen are much like you in that, are they not, Neera?*/
== NEERA25J @357 /*No! But I'm guessing that answer won't satisfy you.*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("OHNWRA01")~
EXIT

//Interjection Into Neera Scene
INTERJECT NEERA25J 120 /*No! You're alive. I didn't want you dead. I never—*/ _bMNWraithInterject
		== OHNAVRUM IF ~Global("_bMinscNeeraWraith","GLOBAL",1)~ THEN @361 /*You never take anyone seriously but yourself and your own whims and pleasures, Neera. Through magic or callousness, you have destroyed many; it is that cruel indifference to the lives of others that draws you to a life on the road.*/
		DO ~SetGlobal("_bMinscNeeraWraith","GLOBAL",2)~
		== NEERA25J @362 /*No! It isn't, I swear! It's—it's not that!*/
		== MINSC25J @363 /*Do not listen to him, Neera! You are a hero! Boo protects you, and I protect everyone!*/
		== HGWRA01 @364 /*You protect her? How can you do that when you are more of a danger to your companions than anyone!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bDyna")~
EXIT

BEGIN _bDYNA

CHAIN IF WEIGHT #-97 ~Global("_bMinscNeeraWraith","GLOBAL",2)~ THEN HGWRA01 _bDynaheirWraithTalk
@365 /*You do not even remember those you kill. Like your witch... your love... Dynaheir.*/
== _bDYNA @366 /*Thy called?*/
DO ~SetGlobal("_bMinscNeeraWraith","GLOBAL",3) SetGlobal("OHN_wraith","GLOBAL",3)~
== MINSC25J @367 /*Dynaheir, you're alive? I will never fail you again! Minsc and Boo are overjoyed! We will grab you in a great hug!*/
== _bDYNA @368 /*Who art thou to touch me like you know me?*/
== MINSC25J @369 /*It is Minsc! Surely you must remember me!*/
== _bDYNA @370 /*Minsc! Minsc... his mighty berserker wrath will not go unremembered.*/
= @371 /*But it was that wrath that killed me...*/
= @372 /*While we fought he swung his sword in mighty arcs... a danger to friend and foe alike.*/
= @373 /*And I did not see it as it clove me in two.*/
== MINSC25J @374 /*No! I would never... you were killed by our enemies!*/
== _bDYNA @375 /*I was killed by Minsc, yet I knew as I fell that he would not remember in his rage... I made Boo swear to tell him I was slain by our foes.*/
= @376 /*All that time I scorned the poor hamster... yet it was to him I made my final request...*/
== MINSC25J @377 /*Boo, is this true! Boo, answer me!*/
= @378 /**squeak...**/
= @379 /*No... I killed her... I killed my wychlaran.*/
== NEERA25J @380 /*Oh gods... Minsc...*/
== MINSC25J @381 /*Stay away! Everyone stay away! You are not safe from Minsc!*/
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("_bDyna2")~
EXIT

//Post Wraith Talk
CHAIN IF WEIGHT #-100 ~Global("_bMinscNeeraWraith","GLOBAL",4)~ THEN NEERA25J _bNeeraMinscWraith
@382 /*We did it, Minsc, we destroyed them.*/
= @383 /*Talk to me.*/
DO ~SetGlobal("_bMinscNeeraWraith","GLOBAL",5)~
== MINSC25J @384 /**squeak, squeak**/
== NEERA25J IF ~GlobalLT("_bNeeraMinscLove","GLOBAL",46)~ THEN @385 /*I'm sorry, Boo, I still can't understand you.*/
== MINSC25J IF ~GlobalLT("_bNeeraMinscLove","GLOBAL",46)~ THEN @386 /*Boo said that I told him to tell you that I am a failure, I cannot protect any of you, and we should not be together.*/
== NEERA25J @387 /*What! I refuse to accept that.*/
= @388 /*Minsc, you listen to me! You are not a failure and you have protected me from all sorts of evil. You can't let what that wraith said bother you!*/
= @389 /*My wraith told me that I took nothing seriously and I cared about no one, but I'm taking this seriously! I take us seriously and I care about you! Both of you!*/
== MINSC25J @390 /*No, Neera, you keep Boo. I must go on alone where I cannot hurt anyone...*/
== NEERA25J @391 /*What? Absolutely not. You won't last five minutes without one of us telling you what to do.*/
= @392 /*I mean... that sounded wrong...*/
== MINSC25J @393 /*Goodbye, Neera.*/
== NEERA25J @394 /*Damn it, Minsc! Listen to me! We're the same! You can't give Boo to me; I might accidentally explode him!*/
= @395 /*You've seen my magic and I can barely control it. You think you might kill me, but you're wrong. As powerful as we've become, I'm far more likely to accidentally kill all of you.*/
== MINSC25J @396 /*Kill us? You are not so dangerous... you do not even have a sword!*/
== NEERA25J @397 /*So you swing a sword around like a crazy man and hit people? So what! I have stone skin on constantly... I can take a few hits.*/
= @398 /*But me... I make magic fireballs that explode and accidentally disintegrate people. I'm likely to turn you into a squirrel and see you get stepped on, or summon some invincible pit fiend to murder us all.*/
= @399 /*As I get more powerful, I see farther and farther into the realm of pure chaos and I love it... but it's also terrifying... I'm worried that I'll hurt you... hurt everyone.*/
= @400 /*Or I'll do something horrible to myself and need some invincible berserk warrior to protect me while I'm stunned... or polymorphed... or magically asleep...*/
== MINSC25J @401 /*Neera should not worry. Your pretty lights pose no threat to Minsc and Boo!*/
= @402 /*You still want Minsc to protect you even after...*/
== NEERA25J @403 /*Absolutely! So you make mistakes... I've made tons! You accidentally hurt people... but I do too! You're really hard to kill and so am I, and that's the important thing.*/
= @404 /*Let's go make mistakes together!*/
EXIT

