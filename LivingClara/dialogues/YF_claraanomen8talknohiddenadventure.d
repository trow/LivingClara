//8th Talk - disowned version
CHAIN IF WEIGHT #-1 ~Global("AnomenDecide","GLOBAL",4) Global("YF_ClaraAnomenLove","GLOBAL",23) !AreaCheck("AR1001")~ THEN ANOMENJ YF_ClaraAnomen8B
@124 /*My anger has built to the point when I am shaking with pure rage. I—I must speak to you! I must gain some reassurance!*/
= @125 /*My father... that rude, drunken bastard! He cast me out of the family when I was only doing what I must! I could not take vengeance when there was no proof, and he knew it!*/
= @126 /*And yet... my heart cries out for vengeance! That my sister should lie murdered and the murderer laugh, untouched... I am so full of hate I can barely control it!*/
= @127 /*Please, my lady... Did I do the right thing? Should the dictates of honor truly overcome duty and justice?!*/
== YF_CLARJ IF ~Global("YF_ClaraSaysKillSaerk","GLOBAL",1)~ THEN @128 /*Do not look to me Anomen. I advised you to kill Saerk and defend your family's honor. Saerk should be dead at your hand.*/
== YF_CLARJ IF ~!Global("YF_ClaraSaysKillSaerk","GLOBAL",1)~ THEN @129 /*The honor of your family should have overcome everything, Anomen. Saerk should be dead at your hand.*/
== ANOMENJ @130 /*And now my father has turned me away. My family truly is destroyed now, and what would the Order say of that? Do nothing. And you abandon me as well.*/
= @131 /*I... I will have to think on this. It was... the path of honor, and I should be content. But... but... *sigh* No. I will not speak to you of this. Let us move on.*/
== YF_CLARJ @132 /*There is still another way, my lord. Kill Saerk now. Kill Saerk, avenge your sister, and your father will take you back.*/
== ANOMENJ @133 /*I cannot! I am a member of the Order. I will uphold my vows; I will uphold them no matter what. Please do not ask me to do otherwise, my lady. The Order would cast me out as a murderer.*/
== YF_CLARJ @134 /*I could do it. I am as silent as death when I wish to be. I could slip in, poison Saerk's wine, and slip out again. No one would know you had a hand in it; no one except for me, you, and your father. Your reputation at the Order would remain unblemished.*/
== ANOMENJ @135 /*You could... I could have everything... my honor... my family... my knighthood...*/
= @136 /*No! No, you temptress. We are through! You are without honor. We are through.*/
== YF_CLARJ @137 /*Good. Without your family name, you are no more than a commoner. I am too good for you.*/
= @138 /*Now if you will excuse me, I must be off to see your father. We have much to discuss.*/
DO ~SetGlobal("YF_ClaraAndCor","GLOBAL",1) SetGlobal("YF_ClaraWaiting","GLOBAL",0) SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR1001",687,214,S)~
== ANOMENJ @139 /*My father? I do not understand.*/
DO ~SetGlobal("YF_ClaraAnomenLove","GLOBAL",24) SetGlobal("YF_AnomenClaraRomance","GLOBAL",3)~
= @140 /*<CHARNAME>, when we have a moment let us go to my father's house. I must know what she is up to!*/
EXIT