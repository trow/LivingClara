
//1st Dialogue about Viconia
CHAIN IF WEIGHT #-1 ~Global("_bmazkelvic","GLOBAL",1)~ THEN KELDO25J _bkmvic1
@113 /*Mazzy, I have seen you talking to the drow, and you should be more careful. Do not trust her.*/
DO ~SetGlobal("_bmazkelvic","GLOBAL",2)~
== MAZZY25J @114 /*Sir Keldorn, I understand your concern but I think it is misplaced. I do not believe that Viconia means us any harm.*/
== KELDO25J @115 /*It is a ruse! She will earn your trust and poison you while you sleep.*/
== MAZZY25J IF ~Global("MazzyVicFriends","GLOBAL",1)~ THEN @116 /*But she is an exile. <CHARNAME> said that she has not been with the drow for decades.*/
== KELDO25J IF ~Global("MazzyVicFriends","GLOBAL",1)~ THEN @117 /*<CHARNAME> thinks this because that is what the witch has told <PRO_HIMHER>. We have no proof that she is not a spy.*/
== MAZZY25J IF ~Global("MazzyVicFriends","GLOBAL",2)~ THEN @124 /*Keldorn, stop. Viconia is my friend and I too have some feeling for the presence of evil. Viconia is a drow and she is a priestess of Shar, but there is no malice in her. She is hurt and scared and has been offered nothing but cruelty and pain for far longer than either of us has been alive.*/
== MAZZY25J IF ~Global("MazzyVicFriends","GLOBAL",2)~ THEN @125 /*Viconia lashes out at the world because she expects the world to attack her as it always has, and I believe that she can be redeemed. She is already on that path.*/
== KELDO25J IF ~Global("MazzyVicFriends","GLOBAL",2)~ THEN @126 /*Perhaps. Or perhaps you are too soft and caring and it is blinding you to the truth. We have no proof that she is not a spy.*/
== MAZZY25J @118 /*You are right, Keldorn, we have no proof. But tell me this: I have followed your adventures since I was a child and you have always given others the benefit of the doubt. You have negotiated with kobolds and spoken with ogres. You have even bargained with undead and demons, provided that they did not offer harm.*/
= @119 /*Why are you not willing to offer Viconia the same chance?*/
== KELDO25J @120 /*Because she is a DROW!*/
== MAZZY25J @121 /*That is not an answer.*/
== KELDO25J @122 /*You should trust me.*/
== MAZZY25J @123 /*Then you should be prepared to offer the same trust. There is more here than you are telling me, I know it. When you trust me enough to give me the whole story, I promise I will listen. Until then, I must make up my own mind.*/
EXIT

//Next Viconia Talk
CHAIN IF WEIGHT #-1 ~Global("_bmazkelvic","GLOBAL",4)~ THEN KELDO25J _bkmvic2
@127 /*<CHARNAME>, if you insist on traveling with the drow, then I have a tale that you must hear.*/
DO ~SetGlobal("_bmazkelvic","GLOBAL",5)~
== KELDO25J IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @128 /*Mazzy, you should hear this as well, and you might as well listen too, demon, since I know you are already.*/
== VICON25J @129 /*You have a story that concerns me, male?*/
== KELDO25J @130 /*I do not know how well you know my history, but I was not the first of my family to join the Order of the Radiant Heart. I had a brother, my oldest sibling, who was ten years my senior. He was an inquisitor for Torm and I followed in his footsteps as best I could*/
= @131 /*Shortly after I joined the Order as a squire, my brother and I went on a mission together. Our leader was an older knight and while I am not at liberty to share the details, six of us were sent to retrieve an artifact of importance far to the north of here.*/
= @132 /*We had almost reached our destination when we encountered a party of drow. I do not know why they were there but when the battle was finished, only my brother and I still stood. We intended to carry our companions home and raise them, but drow are calculating and had finished each one in a manner that made this impossible. However, while we were checking the bodies, we discovered that one of the drow, a woman, was still alive as well.*/
= @133 /*We had no healer but we had a few potions, enough to keep the three of us from dying. Even then the drow was still very weak and one of her legs was broken. We decided we could not leave an injured woman alone in the mountains so we took her with us; we had no shortage of horses, pack mules, or supplies.*/
= @134 /*We still wanted to complete our mission but our map had been damaged in the fight and there was information which only our leader had known. It should have taken us another week to find what we sought, but it took four times that instead.*/
= @135 /*While we traveled, the drow regained her health and was able to ride without assistance, though we never gave her control over her animal. We tried to show her that we meant no harm; we shared our food and taught her some simple words.*/
= @136 /*Eventually we found what we were looking for and started our journey home. However, one day I went to scout the route ahead and when I returned, I found my brother barely breathing and the drow gone. She had taken the pack animals, our supplies, and the original purpose of our mission.*/
= @137 /*I could have followed her but there was a chance that my brother could be saved if I got him to a temple quickly. So I carried him, taking nothing but the clothes on my back and my brother's sword. However, I hoped in vain for when I reached civilization, they told me he could not even be raised. The drow witch had given him a foul poison that rotted him from the inside out, giving him the appearance of life even though his soul had fled.*/
= @138 /*It was a ruse to fool me into abandoning my mission and it was successful. She knew that I would choose my brother over my duty and she would escape unscathed.*/
= @139 /*So I buried my brother and returned to the Order a failure, expecting to be stripped of my rank. Yet that is not what happened. Instead of being punished, I was promoted, but I swore to never again trust any drow, and I have seen nothing since to change my mind. They are cruel creatures, without mercy or honor.*/
END
	++ @140 /*I am sorry about your brother, Keldorn, but that was not Viconia.*/ + _bkmvic3
	++ @141 /*You are damning the drow for your own failures. If you had protected your kin better, your brother would still live.*/ + _bkmvic3
	++ @142 /*Although I understand your feelings, Viconia bears no guilt in this.*/ + _bkmvic3
	+ ~!Race(Player1,HUMAN)~ + @143 /*My half-brother tried to kill me but you don't see me whining about humans. You should just get over it.*/ + _bkmvic3
	++ @144 /*You may be right that all drow are terrible, but I still need Viconia.*/ + _bkmvic3

CHAIN KELDO25J _bkmvic3
@145 /*It was a long time ago, but in my mind, the two faces are the same. When I look at you, witch, all I see is her.*/
== VICON25J @146 /*It was not me, stupid male. You may be old for your kind, but I left the Underdark years before you were even born.*/
== KELDO25J @147 /*I suppose that is true, drow, but my suspicion remains. You cannot be trusted.*/
== VICON25J @148 /*The female you met was also weak. I would have found a way to kill you before I left instead of allowing you to report back to your Order. */
END
	++ @149 /*You are not helping, Viconia.*/ EXTERN VICON25J _bkmvic4
	++ @150 /*Well, yeah, that's only sensible.*/ EXTERN VICON25J _bkmvic4
	++ @151 /**sigh* I give up.*/ EXTERN VICON25J _bkmvic4
	
CHAIN VICON25J _bkmvic4
@152 /*I have had many chances to kill <CHARNAME> and <PRO_HESHE> still breathes. That should prove my intentions.*/
== KELDO25J @153 /*It has been in your best interests for <CHARNAME> to live so far. In the future, you may find that you prefer us dead and then you will slit both of our throats while we sleep.*/
== VICON25J @154 /*You think too little of me, male. I would not slit your throats. I would poison our food, drink the antidote, and then watch you both die together without any risk to myself.*/
= @155 /*But you do not understand my motivations. I do not want <CHARNAME> dead; if <PRO_HESHE> died, then I would again be hunted. <CHARNAME> is my protection, the reason I can sometimes sleep in peace. <PRO_HESHE> is what saves me from males like you and from any of my own people who might wish to do me harm.*/
== KELDO25J @156 /*You may not mean us harm but you are a being of pure evil. I am a paladin of Torm and you cannot fool me.*/
= @157 /*<CHARNAME>, I think you are being foolish, but it is your decision to make. However, do not expect me to sleep while the drow is on watch. Someone must stay vigilant and watch for her treachery.*/
== VICON25J @158 /*Ha. I do not sleep during your watches either. Now we can at least stop pretending. We will both stay awake and watch the moon and stars together. I never get bored of seeing them.*/
= @159 /*But you cannot look at the stars, can you? If you stop watching me for an instant, I might slip a knife between your ribs.*/
END
	++ @160 /*Both of you can do what you like, but you will not fight or the survivor will have me to answer to.*/ EXTERN KELDO25J _bkmvic5 
	++ @161 /*Stop this bickering! You are giving me a headache.*/ EXTERN KELDO25J _bkmvic5 
	++ @162 /*When my quest is over, you may try to kill each other to your heart's content. Until then, I expect civility.*/ EXTERN KELDO25J _bkmvic5 
	++ @163 /*Be careful, someday you might actually be friends. For now, I require teamwork from you both.*/ EXTERN KELDO25J _bkmvic5 
	
CHAIN KELDO25J _bkmvic5 
@164 /*I understand, <CHARNAME>. You will have no trouble from me... for now.*/
== VICON25J @165 /*You are so pathetic when you try to act with authority, <CHARNAME>, but do not worry. The old paladin will not die by my hand.*/
EXIT



