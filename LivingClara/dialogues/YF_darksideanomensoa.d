
//Anomen's objection to Dorn joining. Adding !Global("AnomenIsNotKnight","GLOBAL",1) to all responses that lead into states:
//ANOMENJ 318 You told me nothing of having business at the temple.
//ANOMENJ 319 Whatever this villain has planned for my god's temple, I can't permit it.
//ANOMENJ 320 Whatever this villain has planned for my god's temple, I can't permit it.
//ANOMENJ 321 Slay the blackguard!

ALTER_TRANS DORN BEGIN 2 END BEGIN 4 END BEGIN "TRIGGER" ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS DORN BEGIN 2 END BEGIN 5 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END

ALTER_TRANS DORN BEGIN 6 END BEGIN 0 END BEGIN "TRIGGER" ~!IfValidForPartyDialog("KELDORN") OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS DORN BEGIN 6 END BEGIN 1 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN") !IfValidForPartyDialog("KELDORN")~ END
ALTER_TRANS DORN BEGIN 6 END BEGIN 4 END BEGIN "TRIGGER" ~!IfValidForPartyDialog("KELDORN") OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS DORN BEGIN 6 END BEGIN 5 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN") !IfValidForPartyDialog("KELDORN")~ END

ALTER_TRANS KELDORJ BEGIN 260 END BEGIN 1 END BEGIN "TRIGGER" ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS KELDORJ BEGIN 260 END BEGIN 2 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS KELDORJ BEGIN 260 END BEGIN 3 END BEGIN "TRIGGER" ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS KELDORJ BEGIN 260 END BEGIN 4 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END

ALTER_TRANS KELDORJ BEGIN 261 END BEGIN 0 END BEGIN "TRIGGER" ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ END
ALTER_TRANS KELDORJ BEGIN 261 END BEGIN 1 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END

ALTER_TRANS KELDORJ BEGIN 262 END BEGIN 2 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("ANOMEN")~ END

//修改阿诺门的骑士评定失败之后阿诺门发泄时的对话条件，使其仅能在克拉拉不在队伍中或未发展恋爱到一定阶段时才能触发
ALTER_TRANS ANOMENJ BEGIN 101 END BEGIN 0 END BEGIN "TRIGGER" ~OR(2) !IfValidForPartyDialog("YF_Clara") GlobalLT("YF_ACTestTalk","GLOBAL",6)~ END
ALTER_TRANS ANOMENJ BEGIN 101 END BEGIN 1 END BEGIN "TRIGGER" ~OR(2) !IfValidForPartyDialog("YF_Clara") GlobalLT("YF_ACTestTalk","GLOBAL",6)~ END
ALTER_TRANS ANOMENJ BEGIN 101 END BEGIN 2 END BEGIN "TRIGGER" ~OR(2) !IfValidForPartyDialog("YF_Clara") GlobalLT("YF_ACTestTalk","GLOBAL",6)~ END

EXTEND_BOTTOM ANOMENJ 101
  IF ~IfValidForPartyDialog("YF_Clara") GlobalGT("YF_ACTestTalk","GLOBAL",5)~ 
  THEN REPLY @8 DO ~SetGlobal("AnomenBlowsUp","LOCALS",1)~ GOTO YF_ANOMENFallWithClara
END

CHAIN ANOMENJ YF_ANOMENFallWithClara
@9 /*别碰我！你也看见了！他们庇护那些渣滓，也不愿承认我为我妹妹讨回了公道！这是什么正义？这是什么秩序？*/
== YF_CLARJ @10 /*（轻声）我看到了。我看到了一个哥哥为妹妹做了该做的事。那不是罪，阿诺门。那是正义。*/
== ANOMENJ @11 /*正义？哈！他们称我为屠夫！说我玷污了骑士的誓言！他们不在乎我，也根本不在乎茉伊拉！*/
== YF_CLARJ @12 /*因为他们是瞎子。他们坐在高塔里，捧着发霉的规章，早已忘了规章是为了什么而存在。你记得茉伊拉，你替她讨回了血债——这远比他们的印章和绶带更真实。*/
== ANOMENJ @13 /*（喘息，声音颤抖）我……我只是想让她安息。那些人也该死……他们包庇凶手，他们也一样有罪！*/
== YF_CLARJ @14 /*当然。包庇罪恶就是罪恶。你只是执行了真正的审判，只是他们没有勇气去做。*/
== ANOMENJ @15 /*可是……我现在什么都不是了。没有骑士团，没有荣誉……我什么都不是。*/
== YF_CLARJ @16 /*不。你还有你自己。你还有德尔林这个姓氏。你还有剑。（停顿）而且，你还有时间。*/
== ANOMENJ @17 /*（苦笑）时间？我现在连骑士团都进不去，他们像丢垃圾一样丢了出来！*/
== YF_CLARJ @18 /*听着。你现在冲进去，只能证明他们是对的——一个失控的疯子。但你若转过身，活下去，爬得比他们更高……总有一天，你会坐在他们头顶，亲自编篡那些规章。到时候，谁还敢把你赶出门？*/
== ANOMENJ @19 /*（沉默良久）……爬到更高位。*/
== YF_CLARJ @20 /*只要人在，就有无限可能。死在这里，你就真的只是垃圾了。活着离开，让他们日后跪着求你回来。*/
== ANOMENJ @21 /*（深呼吸，声音逐渐平稳）……你说得对。我不能在这里倒下。我要让他们看看，没有他们的认可，阿诺门·德尔林依然是阿诺门·德尔林。总有一天……总有一天我会回来，让他们为今天的决定颤抖。*/
== YF_CLARJ @22 /*（微笑）这才是我认识的阿诺门。走吧。我们先离开这扇该死的门。他们都看着呢。*/
EXIT

EXTEND_BOTTOM KELDORJ 262 /*You plan to attack a temple of the Radiant Heart, <CHARNAME>? You know I cannot let that stand.*/ 
	+ ~OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IfValidForPartyDialog("ANOMEN")~ + @3 /*You can't let that stand? Then I can't let you stand. Draw your blade!*/
	DO ~LeaveParty() ActionOverride("KELDORN",Enemy())~ EXIT 
END


//Keldorn fights Dorn if he tries to attack the temple.
CHAIN IF WEIGHT #-1 ~Global("YF_keldornattacksdornattemple","GLOBAL",1)~ THEN KELDORJ YF_keldornstopddorn1
@0 /*You plan to attack a temple of the Radiant Heart, <CHARNAME>? You know I cannot let that stand.*/
	DO ~SetGlobal("YF_keldornattacksdornattemple","GLOBAL",2)~
END
	++ @1 /*Keldorn, my friend, you need to lighten up. Don't you know a joke when you hear one?*/ GOTO 264
	++ @2 /*Relax, Keldorn. It was a plan, barely that... 'twas but the first tiny inkling of a scheme, if not less, the barest sketch of the notion of the vague possibility of a plot. So this one doesn't come to fruition. I'll live. I've got others.*/ GOTO 264
	++ @3 /*You can't let that stand? Then I can't let you stand. Draw your blade!*/ DO ~LeaveParty() ActionOverride("KELDORN",Enemy())~ EXIT


//After Anomen Fails Test - additional CN option
EXTEND_BOTTOM ANOMENJ 105 /*Perhaps. Or perhaps I should slaughter the whole lot of them.*/
++ @4 /*Someday, Anomen, but not yet. We are not yet strong enough to prevail.*/ + YF_AnomenHatesRadiant
END

CHAIN ANOMENJ YF_AnomenHatesRadiant
@5 /**sigh* You are right as usual, <CHARNAME>. Let us go forth. The Order's day of reckoning can wait.*/
EXIT

//Coding to change Anomen's Interjection with Sir Ryan Trawl and the Fallen Paladin Quest. Turn off old interjection, add new one.
//AnomenJ state 200 is "Hmph. Such manner of base scum should be put to death, in my opinion. To be a fully sworn paladin and to turn your back on your sworn oaths is inconceivable." This turns that off.

INTERJECT_COPY_TRANS2 KAYL2 25 YF_AnomenEvilFallenPaladinQuest1
/*Recently, one of our highest-ranking officers was implicated in smuggling slaves. His name is Anarg, and though he was once a friend, he was expelled from the Order.*/
	== ANOMENJ IF ~Global("AnomenIsNotKnight","GLOBAL",1) IfValidForPartyDialog("Anomen")~ THEN @6 /*It seems the oppressive rules of the Order can break even their most dedicated lackeys.*/
END

ALTER_TRANS KAYL2 BEGIN 10 END BEGIN 0 END BEGIN "TRIGGER" ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Mazzy")
OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialog("Anomen")~ END 

ALTER_TRANS KAYL2 BEGIN 10 END BEGIN 2 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Anomen")~ END 

ALTER_TRANS KAYL2 BEGIN 10 END BEGIN 3 END BEGIN "TRIGGER" ~!IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Mazzy") 
OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialog("Anomen")~ END 

ALTER_TRANS KELDORJ BEGIN 130 END BEGIN 0 END BEGIN "TRIGGER" ~!IfValidForPartyDialogue("Mazzy") OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialog("Anomen")~ END

ALTER_TRANS KELDORJ BEGIN 130 END BEGIN 1 END BEGIN "TRIGGER" ~!Global("AnomenIsNotKnight","GLOBAL",1) IsValidForPartyDialog("Anomen")~ END 

ALTER_TRANS KELDORJ BEGIN 130 END BEGIN 2 END BEGIN "TRIGGER" ~IsValidForPartyDialogue("Mazzy") OR(2) Global("AnomenIsNotKnight","GLOBAL",1) !IsValidForPartyDialogue("Anomen")~ END 





