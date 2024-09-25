
//Mazzy-Jaheira Conversation

CHAIN
IF  WEIGHT #-1 ~Global("_BJMChat","GLOBAL",2)~ THEN MAZZY25J _bMazJah1
@0 /*Excuse me, Jaheira, when were you born?*/
DO ~SetGlobal("_BJMChat","GLOBAL",3) SetGlobal("_BJahMazFriends","GLOBAL",1)~
== JAHEI25J @1 /*That is a personal matter, and not one I will share with you. Do you have no manners?*/
== MAZZY25J @2 /*It is not a rude question. All of my people ask the ages of everyone they meet. You cannot even speak most halfling languages without knowing the relative age of the person you are addressing.*/
== JAHEI25J @3 /*We are not speaking halfling, we are speaking common, and...*/
= @4 /*When do halflings speak halfling? I don't think I've ever heard it.*/
== MAZZY25J @5 /*It is considered rude to speak it in front of the tall folk. We never do so except in emergencies. I think it is also a safety measure to prevent tall folk from ever learning one of our languages. But that is a tangent; we were talking about your age.*/
== JAHEI25J @6 /*Yes, we were and I was telling you that there is no question more rude among half-elves; if you know my age you can look at me and guess how much human blood I have.*/
== MAZZY25J @7 /*You are a *half* elf, is the answer not always one half?*/
== JAHEI25J @8 /*Hah, you would think so, but no. Elves consider only those of absolutely pure blood to be elves. Anyone with a single human ancestor, no matter how far back, is a half-elf. The more elven you are, the better. Some half-elves with mostly elven blood are even able to pass as elves for a while until they start showing signs of age.*/
= @9 /*But since you clearly meant no ill will, I will answer your question. I was born in Tethyr during the early stages of the civil war and each of my parents were true half-elves, meaning so am I. My fallen husband, Khalid, was three-quarters elven.*/
= @10 /*I remember being worried that he would outlive me, watch me grow old and die. Seems so foolish now... but there is your answer, halfling.*/
== MAZZY25J @11 /*That cannot be right. The Tethyr Civil War started in 1347, which would make you roughly the same age as <CHARNAME>.*/
== JAHEI25J @12 /*You know your history, but you are incorrect. The true war started in 1347 as you said, but the earliest stages of the conflict started in 1333 and I was born in 1334, the year of the Battle of Nightflames, when Crown Prince Rythan was killed by an army secretly sponsored by the king. My parents were killed in the riots in 1348 and I fled to join the druids after that.*/
== MAZZY25J @13 /*And in which season were you born?*/
== JAHEI25J @14 /*My parents always told me I was born on the day the first snow fell.*/
== MAZZY25J @15 /*Ah-hah! I have you beat by months. I was born in the spring. If you were a halfling, I could call you "little cousin." Maybe I will anyway.*/
== JAHEI25J @16 /**chuckle* Do I call you "big cousin" then?*/
== MAZZY25J @17 /*You could if you wish. Just remember are that I am your elder, you are young and naive, and you must always defer to my wisdom and experience.*/
== JAHEI25J @18 /**laughing* Thank you, Mazzy, I needed that. It is so easy for me to wallow in sorrow and regret.*/
== MAZZY25J @19 /*For me as well. Battle is a suitable diversion, but perhaps friendship is as well.*/
== JAHEI25J @20 /*Battle tends to rob us of our friends...*/
== MAZZY25J @21 /*That it does, but we have not been slain yet! Let us enjoy the <DAYNIGHTALL>.*/
EXIT

//2nd Talk
CHAIN IF WEIGHT #-1 ~Global("_bJMComfort","GLOBAL",2)~ THEN JAHEI25J _bMazJah2
@22 /*Mazzy, are you crying?*/
DO ~SetGlobal("_bJMComfort","GLOBAL",3)~
== MAZZY25J @23 /*Yes, little cousin, I am. What of it?*/
== JAHEI25J @24 /*I did not mean any judgment; I was simply wondering if I could help.*/
== MAZZY25J @25 /*You cannot solve this. I just miss Patrick.*/
== JAHEI25J @26 /*I understand completely.*/
== MAZZY25J @27 /*Does it get easier?*/
== JAHEI25J @28 /*I don't know. I wish I did.*/
== MAZZY25J @29 /*Could you sit with me?*/
== JAHEI25J @30 /*Of course. For as long as you would like.*/
EXIT

//Breakup Talk - only if friends
CHAIN IF WEIGHT #-1 ~Global("_bJMBreakUp","GLOBAL",2)~ THEN JAHEI25J _bMJBreakup
@49 /*How could you, Mazzy? I thought we were friends and yet you have stolen <CHARNAME>'s heart from me.*/
DO ~SetGlobal("_BJahMazFriends","GLOBAL",0) SetGlobal("_bJMBreakUp","GLOBAL",3)~
== MAZZY25J @50 /*We are friends, little cousin, and I did not steal <PRO_HISHER> heart. I did not ask anything of <CHARNAME> until <PRO_HESHE> came to me. I did not try to lead <PRO_HIMHER> on and I would not have agreed if <CHARNAME> had not been serious.*/
== JAHEI25J @51 /*You should have told <PRO_HIMHER> no! You should have sent <PRO_HIMHER> back to me!*/
== MAZZY25J @52 /*Why? So <PRO_HESHE> could hurt you in the future instead of hurting you right now? I am sorry for your pain but I would have been lying if I had told <CHARNAME> that I was not interested and it was <PRO_HISHER> choice to make.*/
= @53 /*Love is not absolute. The fact that <CHARNAME> moved on does not mean that what you had was somehow false or negate your memories.*/
== JAHEI25J @54 /*Pretty words to justify betrayal.*/
== MAZZY25J @55 /*You are wrong, little cousin. Laying with <CHARNAME> behind your back would have been betrayal. That is why I told checked that <PRO_HESHE> was certain and made sure <PRO_HESHE> told you first.*/
== JAHEI25J @56 /*And if <CHARNAME> casts you aside in the future, will you still speak with such composure? Or will you be the one demanding that <PRO_HESHE> come back to you?*/
== MAZZY25J @57 /*If that day comes, I will be hurt. I will probably cry and I will miss <PRO_HIMHER>. But as long as <CHARNAME> discusses things with me before <PRO_HESHE> takes another lover, I will respect <PRO_HISHER> choice.*/
= @58 /*<CHARNAME> has already promised and I believe that <PRO_HESHE> will keep <PRO_HISHER> word.*/
== JAHEI25J @59 /*I suppose I cannot doubt your conviction. Perhaps your intent was not malicious after all.*/
= @60 /*But I am not ready to forgive you. Do not call me cousin any longer.*/
== MAZZY25J @61 /*As you wish.*/
EXIT

//Jaheira - Mazzy/CN Romance Talk
CHAIN IF WEIGHT #-1 ~Global("_bJMCNDoubt","GLOBAL",1)~ THEN MAZZY25J _bMJCNTalk
@71 /*Little cousin, what did I just do? Did I really just invite <CHARNAME> to be mine?*/
DO ~SetGlobal("_bJMCNDoubt","GLOBAL",2)~
== JAHEI25J @72 /*Yes... but so what? You are a grown woman and <PRO_HESHE>, while powerful, is still no more than a child. Have some spine.*/
== MAZZY25J @73 /*But how do I know that I'm doing the right thing?*/
== JAHEI25J @74 /*You do not, but you press on nonetheless. Because you believe <PRO_HESHE> is worth it.*/
== MAZZY25J @75 /*But what if <PRO_HESHE> falls in love with me? What if I fall in love with <PRO_HIMHER>?*/
== JAHEI25J IF ~OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2)~ THEN @76 /*You didn't worry half this much about Imoen...*/
== MAZZY25J IF ~OR(2) Global("_bImoenMazzyRomance","GLOBAL",1) Global("_bImoenMazzyRomance","GLOBAL",2)~ THEN @77 /*That's because Imoen is not in love with me. She needs me... I help keep her whole... but she's not in love with me.*/
== JAHEI25J @78 /*If <CHARNAME> and you fall in love, then you fall in love. Stop worrying yourself.*/
== MAZZY25J @79 /*But what if I love <PRO_HIMHER> and <PRO_HESHE>...*/
== JAHEI25J @80 /*And you lose <PRO_HIMHER>?*/
== MAZZY25J @81 /*Yes.*/
== JAHEI25J @82 /*I do not have an answer for you. You must decide if that is a risk you are willing to take.*/
== MAZZY25J @83 /**sigh**/
EXIT
