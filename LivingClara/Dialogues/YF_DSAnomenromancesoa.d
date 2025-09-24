//Darkside Anomen Romance

//Clara Talk 1
CHAIN IF WEIGHT #-1 ~Global("YF_ClaraAnomenLove","GLOBAL",48)~ THEN ANOMENJ YF_DSAClara1
@1 /*My love, I believe I have come to something of an epiphany.*/
== YF_clarj @2 /*Do tell, my lord. I would love to hear it.*/
== ANOMENJ @3 /*Killing my father was against the law; it would have caused me to be cast from the Order I so longed to join and yet it made the world a better place.*/
= @4 /*Killing Saerk did the same, for he was as evil as my father. Even Saerk's daughter, while technically considered an innocent, was likely as evil as the remainder of her family.*/
= @5 /*Following the law is not necessarily good. Breaking the law is not necessarily evil. In fact, to do great good, to truly change the world for the better, we must commit many acts which are against the law.*/
= @6 /*Those in the Order might call them acts of evil, but that is just the cowards rationalizing their own fear and hesitation. Minor acts of evil can ultimately serve the greater good. The calculated deaths of a few can save the lives of many!*/
== YF_clarj @7 /*Oh, my love, I am so proud of you. You should be ruling this city, you are surely wiser than even the most learned Paladin!*/
== ANOMENJ @8 /*I am. I see that now.*/
DO ~SetGlobal("YF_ClaraAnomenLove","GLOBAL",49) ChangeStat("Anomen",STR,1,ADD)~
= @9 /*I wish to make the world a better place and I will make it better once I am in control! The lives of the worthless smallfolk of Amn will improve more than they ever have in history!*/
= @10 /*But to do that I need money, power, and influence among the great houses of Athkatla.*/
= @11 /*My dearest Lady Caroline, will you help me?*/
== YF_clarj @12 /*Of course, my love. Anything you wish.*/
EXIT

//Clara Talk 2
CHAIN IF WEIGHT #-1 ~Global("YF_ClaraAnomenLove","GLOBAL",51)~ THEN ANOMENJ YF_DSAClara2
@13 /*I am Lord Delryn, yet my name is not clear. The murder of Saerk and his household still plagues me. In my heart, I know he was responsible for many evil crimes; if only I could prove it!*/
DO ~SetGlobal("YF_ClaraAnomenLove","GLOBAL",52) SetGlobal("YF_AnomenClearsName","GLOBAL",1)~
== YF_clarj @14 /*Perhaps such proof could be found if the guards performed another search of his residence?*/
== ANOMENJ @15 /*Yes, I am sure it could! Let us go to the Council of Six Building and talk to the appropriate authority.*/
= @16 /*Not Bylanna, I don't think she is the correct person to see the truth. And perhaps not Chief Inspector Bregga... ah, the wizard, Corneil, his magic could find evidence that the others were unable to secure.*/
= @17 /*<CHARNAME>, next time we are able, let us stop by the Council of Six Building and talk with Corneil. I have some business with him.*/
DO ~AddJournalEntry(@1001,QUEST)~ /*Clearing Anomen's Name: A Visit to a Wizard

Anomen wishes us to stop by the Council of Six Building in Athkatla and speak with the wizard Corneil in an effort to clear his name. He hopes the wizard can use his magic to find evidence of Saerk's wrongdoing and thus make his murder justified.*/
EXIT


//Works for Clara & CHARNAME
EXTEND_BOTTOM CORNEIL 0 /*What is it you wish? You are obviously out of place here, so unless you have pressing business, I am very busy and do not wish to be bothered by such as you.*/
IF ~Global("YF_AnomenClearsName","GLOBAL",1) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN EXTERN ANOMENJ YF_InnocenceBribe
END

CHAIN ANOMENJ YF_InnocenceBribe
@18 /*My Lord Corneil, I must petition for a moment of your time.*/
== CORNEIL @19 /*Lord Delryn, of course! Let me offer my condolences for your father's passing. You are a credit to your name, and I hear the fortunes of House Delryn have already risen.*/
== CORNEIL IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN @20 /*And you must be Lady <CHARNAME>. I can see why the lord here is smitten with you. You will make a fine Lady Delryn, once the required period of mourning for his father has passed, of course.*/
== CORNEIL IF ~InParty("YF_Clara") Global("YF_LordAndLadyDelryn","GLOBAL",5)~ THEN @200 /*And you must be Lady Delryn. My reports did not do justice to your beauty. This young lord is lucky to have you by his side.*/
== YF_clarj IF ~InParty("YF_Clara") Global("YF_LordAndLadyDelryn","GLOBAL",5)~ THEN @201 /*Thank you, my lord. Your words are very kind.*/
== CORNEIL @21 /*There is no need to stand on ceremony. Call me Corneil. How may I be of assistance?*/
== ANOMENJ @22 /*My thanks, Corneil. You may have heard of my conflict with House Farrahd. They were evil men, low of birth but with high ambition, who made life a misery for my father and countless others.*/
= @23 /*However, through fear, money, and careful dealings, the evil of House Farrahd remained hidden and the inspectors never found any evidence of their wrong-doing.*/
= @24 /*I am hoping that with your considerable magics, you might be able to find what the inspectors could not.*/
== CORNEIL @25 /*A tragic tale, Anomen. I will move immediately to help you. In fact, I will do it freely, because you are a good man.*/
= @26 /*The only problem is that the components for such strong investigative magic are exceedingly expensive and my own meager salary does not cover them.*/
== ANOMENJ @27 /*And I would not ask you to. Purchasing the components is the least I could do. How many thousands of gold are required?*/
== CORNEIL @28 /*10,000 gold should be enough, my lord.*/
== ANOMENJ @29 /*I regret that I only carry 5,000 on me at any one time...*/
= @30 /*<CHARNAME> may I borrow the rest from the group coffers?*/
END
	++ @31 /*Not right now, Anomen. We need the money.*/ EXTERN CORNEIL YF_NoMFC
	+ ~PartyGoldGT(4999) Global("AnomenRomanceActive","GLOBAL",2)~ + @32 /*Of course, Anomen, I know you will pay it back when you can.*/ EXTERN CORNEIL YF_YesMFC
	+ ~PartyGoldGT(4999) !Global("AnomenRomanceActive","GLOBAL",2)~ + @33 /*Of course, Anomen; I am sure you will pay it back when you can.*/ EXTERN CORNEIL YF_YesMFC
	+ ~PartyGoldLT(5000)~ + @34 /*Sorry, Anomen. We don't have the funds right now.*/ EXTERN CORNEIL YF_NoMFC

CHAIN CORNEIL YF_NoMFC
@35 /*That is regrettable, but there is no hurry. Please return when you have the funds.*/
DO ~SetGlobal("YF_AnomenClearsName","GLOBAL",2) SetGlobal("YF_CorneilWaiting","GLOBAL",1)~
EXIT

CHAIN CORNEIL YF_YesMFC
@36 /*Excellent. Return in two days and I should have the results of my investigation.*/
DO ~TakePartyGold(5000) SetGlobal("YF_AnomenClearsName","GLOBAL",2) SetGlobal("YF_CorneilPaid","GLOBAL",1) SetGlobal("YF_CorneilWaiting","GLOBAL",2) AddJournalEntry(@1002,QUEST)~ /*Clearing Anomen's Name: A Visit to a Wizard

Anomen wishes us to stop by the Council of Six Building in Athkatla and speak with the wizard Corneil in an effort to clear his name. He hopes the wizard can use his magic to find evidence of Saerk's wrongdoing and thus make his murder justified.*/
EXIT

EXTEND_BOTTOM CORNEIL 0 /*What is it you wish? You are obviously out of place here, so unless you have pressing business, I am very busy and do not wish to be bothered by such as you.*/
	+ ~Global("YF_CorneilWaiting","GLOBAL",1) PartyGoldGT(4999) InParty("Anomen")~ + @37 /*We have the money to investigate the actions of House Farrahd for Lord Anomen Delryn.*/ + YF_YesMFC
END


//Post-Investigation Talk
CHAIN IF WEIGHT #-1 ~Global("YF_AnomenClearsName","GLOBAL",4)~ THEN CORNEIL YF_AnomenCleared
@38 /*Lord Delryn, just the man I was looking for! I have excellent news.*/
== ANOMENJ @39 /*Your investigation found something?*/
== CORNEIL @40 /*Yes, I have discovered the following, to be proclaimed publicly as an official act of governance:*/
= @41 /*Saerk Farrahd was the illegitimate son of a harlot and a sailor, who gained his fortune by seducing the daughter of a soft-hearted merchant.*/
= @42 /*Saerk Farrahd was active in procuring and trading slaves, preferring to pray on ladies of good breeding whose families had fallen on hard times.*/
= @43 /*To finish off a rival, Saerk Farrahd paid several disgruntled former workers of Lord Cor Delryn to break into the Delryn mansion and murder Lord Cor. He was not present so they took advantage of and murdered Lord Delryn's daughter instead.*/
== CORNEIL IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN @44 /*Lord Delryn's son, Anomen, peacefully confronted Saerk about the murder. However, Saerk ordered his guards to attack Anomen in order to end the Delryn line. It was in this melee that Saerk finally met justice.*/
== CORNEIL IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN @45 /*Lord Delryn's son, Anomen, and his friend, Lady <CHARNAME>, peacefully confronted Saerk about the murder. However, Saerk ordered his guards to attack them in order to end the Delryn line. It was in this melee that Saerk finally met justice.*/
== CORNEIL @46 /*Saerk Farrahd bribed city officials to increase his fortune. These same officials arranged for the death of Lord Cor Delryn in order to protect their names after Saerk's death. Those officials have already been dealt with.*/
== CORNEIL IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN @47 /*Lord Anomen Delryn has been cleared of any wrongdoing in the death of Saerk Farrahd and his household, and is to be honored for his courage and virtue.*/
== CORNEIL IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN @48 /*Lord Anomen Delryn and Lady <CHARNAME> have been cleared of any wrongdoing in the death of Saerk Farrahd and his household, and are to be honored for their courage and virtue.*/
== CORNEIL @49 /*I trust these results are satisfactory?*/
== ANOMENJ @50 /*More than I could possibly have hoped for! You have my thanks.*/
DO ~AddexperienceParty(20000) AddXPObject("Anomen",250000) SetGlobal("YF_AnomenClearsName","GLOBAL",5) AddJournalEntry(@1003,QUEST_DONE)~ /*~Clearing Anomen's Name: The Matter Settled

Corneil has finished his investigation and officially cleared Anomen of any misconduct in the death of Saerk Farrahd. The wizard made a formal statement that Saerk had been dealing in slaves and was responsible for the murder of Anomen's sister, Moira. Whether this is true or not, I couldn't say, but at least the specter of guilt is no longer hanging above Anomen's head.*/
EXIT

//Clara Talk 3
CHAIN IF WEIGHT #-1 ~Global("YF_ClaraAnomenLove","GLOBAL",54)~ THEN YF_clarj YF_DSAClara3
@51 /*My love, your name is cleared. You are honored, your business is booming, and your House is whispered of as a rising force among the nobles of Athkatla. What is next for us?*/
DO ~SetGlobal("YF_ClaraAnomenLove","GLOBAL",55) SetGlobal("YF_CouncilSixTalk","GLOBAL",1)~
== ANOMENJ @52 /*We thank the gods for our good fortune! I am satisfied for the moment. House Delryn is one of the foremost merchant houses of Amn.*/
== YF_clarj @53 /*The Council of Six is made up of the heads of the great merchant houses of Amn, but no one knows who they are...*/
== ANOMENJ @54 /*Hah, everyone knows who they are, my love. It is the most poorly kept secret in Athkatla.*/
= @55 /*Unfortunately, one cannot join the Council without an open spot, and all six council seats are currently filled.*/
= @56 /*The Meisarch is Erlranther Alibakkar; rumor has it that he is off dealing with the rebellion in Riatavin.*/
= @57 /*The Tessarch is Phaan Colwyvv. He is rarely in the city, always overseas pursuing trade agreements.*/
= @58 /*The Namarch is Qar Jysstev; we'd probably find him in his estate.*/
= @59 /*The Iltarch is Rhinnom Dannihyr, but no one has ever seen him. He's the only council member whose identity is actually a secret, and rumor has it that he controls the Shadow Thieves.*/
== ANOMENJ IF ~Dead("aran")~ THEN @60 /*Or at least he did before we cleared that blight from the city.*/
== ANOMENJ @61 /*The Pommarch is Tyrda Q'Helvor. She is only a woman so no one takes her seriously. No offense meant, of course.*/
= @62 /*And lastly the Dahaunarch is Pehllus Tanislove. He often goes for walks around the government district and he always had a kind word for me.*/
== YF_clarj @63 /*Perhaps an opening could be found on the Council if one of their members met with an unfortunate and tragic accident?*/
== ANOMENJ @64 /*Perhaps, but even if there were an opening, one cannot petition to join the Council. A council member must approach you.*/
== ANOMENJ IF ~Dead("aran")~ THEN @65 /*Yet given the destruction of the Shadow Thieves, the fall of Rhinnom Dannihyr might be at hand. Maybe there is an opening already.*/
== ANOMENJ IF ~!Dead("aran")~ THEN @66 /*Perhaps we could arrange the fall of the Iltarch, Rhinnom Dannihyr. No one knows who he is, but his power comes from his control of the Shadow Thieves.*/
== ANOMENJ IF ~!Dead("aran")~ THEN @67 /*Wiping the Thieves from this city would be an act of untold goodness and may serve our interests as well.*/
== ANOMENJ @68 /*But put all this from your mind, dear Caroline. The <DAYNIGHTALL> is too fine, and you are too beautiful to worry about such politics.*/
EXIT


//Council Letter - CN & Clara
CHAIN IF WEIGHT #-1 ~Global("YF_CouncilSixTalk","GLOBAL",2) Global("YF_TerlFix1","GLOBAL",1)~ THEN ANOMENJ YF_CouncilLetter
@69 /*Terl! By the gods, no! Must you show up with horrible news whenever I know even a little peace?*/
== TERL @70 /*I am sorry, my lord, I am only the messenger.*/
== ANOMENJ @71 /*And an amazing messenger you are to always find me no matter how far I travel. Fine then, who is your message from this time?*/
== TERL @72 /*Lord Qar Jysstev.*/
== ANOMENJ @73 /*Really? Give it here.*/
= @74 /*Yes... I see...*/
= @75 /*<CHARNAME>, Lord Qar Jysstev wishes to see us; well, to see me. I suggest we visit him at the earliest opportunity. He should be at his estate in the government district.*/
DO ~SetGlobal("YF_CouncilSixTalk","GLOBAL",3) AddJournalEntry(@1004,USER) ActionOverride("Terl",EscapeArea())~ /*Anomen wishes us to visit Lord Qar Jysstev, who has asked to speak with him. The lord may be found at his estate in the government district.*/
EXIT

//Works for Clara & CHARNAME
EXTEND_BOTTOM SCQAR 0 /*What is it you wish? You are obviously out of place here, so unless you have pressing business, I am very busy and do not wish to be bothered by such as you.*/
IF ~Global("YF_CouncilSixTalk","GLOBAL",3) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN EXTERN ANOMENJ YF_JysstevTalk
END

EXTEND_BOTTOM SCQAR 5 /*On with your business. Don't bother me.*/
IF ~Global("YF_CouncilSixTalk","GLOBAL",3) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN EXTERN ANOMENJ YF_JysstevTalk
END

EXTEND_BOTTOM SCQAR 6 /*You worthless toads. You have ruined the reputation of my hospitality. Sir Sarles will most likely ...*/
IF ~Global("YF_CouncilSixTalk","GLOBAL",3) InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN EXTERN ANOMENJ YF_JysstevTalk
END

CHAIN ANOMENJ YF_JysstevTalk
@76 /*My apologies, Lord Jysstev, but you wished to see me?*/
DO ~SetGlobal("YF_CouncilSixTalk","GLOBAL",4)~
== SCQAR @77 /*Oh, Lord Delryn! I am sorry, I did not recognize you at first.*/
= @78 /*Look at you! A true warrior, strong of shoulder and long of limb; you are a credit to House Delryn!*/
= @79 /*In fact, it is your House that brings you to me today. You have made quite a name for yourself as a skilled warrior, an honest and clever merchant, and a powerful cleric. You are just what we are looking for.*/
== ANOMENJ @80 /*Looking for? Looking for what?*/
== SCQAR @81 /*Of course, I am getting ahead of myself. Sit! Rest! Have some refreshments!*/
== SCQAR IF ~InParty("YF_Clara") InMyArea("YF_Clara") Global("YF_LordAndLadyDelryn","GLOBAL",5)~ THEN @82 /*Your companions are welcome as well. Indeed, you must be the new Lady Delryn. I have heard much about you and you do not disappoint. No wonder you have captured our young lord's heart.*/
== SCQAR IF ~Global("AnomenRomanceActive","GLOBAL",2) InMyArea(Player1)~ THEN @83 /*Your companions are welcome as well. Indeed, you must be the Lady <CHARNAME>. I have heard much of your exploits. Such power hidden in a form of grace and beauty. No wonder you have captured our young lord's heart.*/
== SCQAR IF ~Global("YF_LordAndLadyDelryn","GLOBAL",5) OR(2) !InParty("YF_Clara") !InMyArea("YF_Clara")~ THEN @84 /*I am sure you know of the Council of Six?*/
== SCQAR IF ~Global("AnomenRomanceActive","GLOBAL",2) !InMyArea(Player1)~ THEN @84
== SCQAR IF ~InParty("YF_Clara") InMyArea("YF_Clara") Global("YF_LordAndLadyDelryn","GLOBAL",5)~ THEN @85 /*I am sure you both know of the Council of Six?*/
== SCQAR IF ~Global("AnomenRomanceActive","GLOBAL",2) InMyArea(Player1)~ THEN @85
== ANOMENJ @86 /*Of course, my lord. Six members chosen to rule from the most worthy merchant families of Amn; their identities are a secret.*/
== SCQAR @87 /*Hah, not as secret as one would hope, but yes, you have the right of it. Except that now there are only five.*/
== ANOMENJ @88 /*Five, my lord?*/
== SCQAR @89 /*Yes, the Iltarch, Rhinnom Dannihyr, sought a place above his station, using the Shadow Thieves as his own personal army and trying to intimidate and murder his way to greater power.*/
= @90 /*It was a great relief to all of us when we heard that you and your companions were dismantling his organization piece by piece.*/
== ANOMENJ @91 /*And the Iltarch? No one has ever seen him, my lord.*/
== SCQAR @92 /*You met him already and if my informants are correct as usual, he was alive when you entered his lair and dead when you left. He went by a different name there to protect his identity. You knew him as Aran Linvail.*/
== ANOMENJ @93 /*Linvail! This... this is a lot to take in.*/
== SCQAR @94 /*Of course, of course, and we wish to reward you for your actions. With the Shadow Thieves dead, and House Farrahd gone, my days are lighter and more profitable than ever.*/
= @95 /*What better way to reward you then to give you a seat at the table?*/
== ANOMENJ @96 /*A place on the Council of Six? My lord, this honor is too great!*/
== SCQAR @97 /*Yes, yes, you are not worthy, etc. I will hear none of the usual protests.*/
= @98 /*It will have to wait until the council meets next, which may be some months... who knows how long those useless peasants in Riatavin will oppose us. Until then, keep your ships full of coin; a council seat is expensive to maintain.*/
== ANOMENJ @99 /*Thank you, my lord. An honor, my lord.*/
== SCQAR @100 /*Yes, yes, I will not keep you any longer. You are clearly busy... feel free to go out there and eliminate a few more of my rivals.*/
== ANOMENJ IF ~!Dead("hprelate")~ THEN @101 /*My lord, a final question if I may. What is the council's opinion of the Order of the Radiant Heart?*/
== SCQAR IF ~!Dead("hprelate")~ THEN @102 /*The Order operates independently of the Council. They pass freely through borders, pay no taxes and obey no authority but their own. They even have their own sources of revenue!*/
= @103 /*There are many who would like to see those self-righteous warriors fall from grace. The peasants love them, but peasants have short memories. They will believe any rumor we tell them.*/
= @104 /*However, I do not expect them to fall anytime soon. The Order is the strongest fighting force in Athkatla, putting even our own guards to shame.*/
= @105 /*Even so, one must remember that paladins lead dangerous lives and blood washes easily off marble floors. Let us leave it at that.*/
== ANOMENJ @106 /*Of course, my lord. Farewell, my lord.*/
EXIT

//Clara Talk 4
CHAIN IF WEIGHT #-1 ~Global("YF_ClaraAnomenLove","GLOBAL",57)~ THEN YF_clarj YF_DSAClara4
@107 /*The Council of Six, my lord!*/
DO ~SetGlobal("YF_ClaraAnomenLove","GLOBAL",58)~
== ANOMENJ @108 /*Yes, I know, the reality of it still has not sunk in fully. But I will join on the lowest rung of the ladder and it may be years before I gain any true power.*/
== YF_clarj @109 /*It might be less... the Council is full of old men, frail and prone to petty temptations. Perhaps one of them will do something foolish.*/
== ANOMENJ @110 /*Perhaps they will. But for now, let us seek honor and glory. And wealth! We will need vast quantities of coin if I am going to make any real change at all.*/
EXIT


//CN Version
//Add global to line if CN helps Anomen w/ Cor
/*I intend to do this myself. I do not want you to dirty your hands, my love... but I will not stop whatever you intend. As I said before, then, Father... prepare yourself!*/
ADD_TRANS_ACTION BANOMEN BEGIN 501 END BEGIN END ~SetGlobal("YF_CNHAKC","GLOBAL",1)~

//Add global to give WIS to Anomen if he spares Cor.
/*I am sorry, my love, for all of this disturbance. You have a quest to attend to... and I intend to be there to assist you. Now... and forevermore...*/
ADD_TRANS_ACTION BANOMEN BEGIN 513 END BEGIN END ~ChangeStat("Anomen",WIS,1,ADD)~

//Adds extra options after Cor dead
ADD_TRANS_TRIGGER BANOMEN 518 ~!Global("YF_CNHAKC","GLOBAL",1)~ DO 0

EXTEND_BOTTOM BANOMEN 518 /*<CHARNAME>. I... I do love you, as I have said so many times. It is true. But... it is not enough. Not enough to assuage my dark soul.*/ 
	++ @111 /*Goodbye my love, and good luck.*/ + 519
	++ @112 /*What WE have done Anomen. We killed him together, you and I. If you leave, what happens to me?*/ + YF_DarksideRomance
	++ @113 /*I am not prepared to lose you. There must be another way.*/ + YF_DarksideRomance1
END

CHAIN BANOMEN YF_DarksideRomance
@114 /*That is why I tried to act alone! Oh... this is all ruined now. We are murderers, I am disowned...*/
END
	++ @115 /*Are you disowned? Did your father make it official?*/ DO ~SetGlobal("YF_CNAD","GLOBAL",1)~ + CNAsksDisowned
	++ @116 /*There are no witnesses. Who saw us kill him?*/ DO ~SetGlobal("YF_CNAW","GLOBAL",1)~ + CNAsksWitnesses
	++ @118 /*I guess you are right. Goodbye, my love, and good luck.*/ + 519
	
CHAIN BANOMEN YF_DarksideRomance1
@117 /*If there is, I cannot see it. We are murderers and I am disowned....*/
END
	++ @115 /*Are you disowned? Did your father make it official?*/ DO ~SetGlobal("YF_CNAD","GLOBAL",1)~ + CNAsksDisowned
	++ @116 /*There are no witnesses. Who saw us kill him?*/ DO ~SetGlobal("YF_CNAW","GLOBAL",1)~ + CNAsksWitnesses
	++ @118 /*I guess you are right. Goodbye, my love, and good luck.*/ + 519
	
CHAIN BANOMEN CNAsksDisowned
@119 /*He might not have! We should check with the door guard, Jardine. He would have taken any messages to the government building.*/
END
	+ ~OR(2) Global("YF_CNAD","GLOBAL",1) Global("YF_CNAW","GLOBAL",1)~ + @121 /*Let us speak with Jardine.*/ DO ~SetGlobal("YF_DarksideAnomen","GLOBAL",1) SetGlobal("AnomenCor","GLOBAL",4) ActionOverride("Anomen",JoinParty()~ EXIT
	++ @116 /*There are no witnesses. Who saw us kill him?*/ DO ~SetGlobal("YF_CNAW","GLOBAL",1)~ + CNAsksWitnesses
	
CHAIN BANOMEN CNAsksWitnesses
@120 /*Our door guard, Jardine, let me through. He would know the truth.*/
END
	+ ~OR(2) Global("YF_CNAD","GLOBAL",1) Global("YF_CNAW","GLOBAL",1)~ + @121 /*Let us speak with Jardine.*/ DO ~SetGlobal("YF_DarksideAnomen","GLOBAL",1) SetGlobal("AnomenCor","GLOBAL",4) ActionOverride("Anomen",JoinParty()~ EXIT
	++ @115 /*Are you disowned? Did your father make it official?*/ DO ~SetGlobal("YF_CNAD","GLOBAL",1)~  + CNAsksDisowned
	
	
//Guard Dialogue if Anomen goes to confront father (CN)
CHAIN IF WEIGHT #-10 ~!InParty("Anomen") Global("AnomenCor","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ THEN DELRYNG1 YF_AnomenGuard
@122 /*Greetings, <CHARNAME>. Lord Delryn and his son are inside and I fear they will come to blows.*/
END
	++ @123 /*Thank you, I will go in immediately.*/ DO ~Wait(1)~ EXIT
	++ @124 /*Why didn't you stop Anomen from entering? Wasn't he disowned?*/ + YF_AnomenGuard2

CHAIN DELRYNG1 YF_AnomenGuard2
@125 /*I was given no orders to bar Anomen's entry, and I am grateful for that.*/
= @126 /*Anomen did not look like he was in the mood to be detained, nor could I have stopped him if it came to blows. There was a time I was a match for him, but no longer.*/
= @127 /*You are a friend of Anomen's so you may enter. Please do so quickly.*/
EXIT

//Guard Dialogue After Fight
CHAIN IF WEIGHT #-10 ~Global("YF_DarksideAnomen","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ THEN DELRYNG1 YF_AnomenGuard1
@128 /*Lord Delryn. I am grieved to hear of your father's passing. The hopes of your family and House now rest on you, my lord.*/
== ANOMENJ @129 /*Am I Lord Delryn? You... you must have heard my father disowned me...*/
== DELRYNG1 @130 /*I heard no such thing, my lord. Nor was I asked to take that message to the proper authorities. You are Lord Delryn.*/
= @131 /*You saw that your late father was murdered, my lord? Brigands, perhaps? They must have come when your father sent me to buy more drink for him.*/
== ANOMENJ @132 /*Yes... brigands. You would take that message to the officials?*/
== DELRYNG1 @133 /*Of course, my lord. Your word is my command.*/
== ANOMENJ @134 /*You have been a loyal servant, Jardine. The most loyal of all. I know my father never paid you your true worth. I will rectify that immediately.*/
== DELRYNG1 @135 /*It is an honor to serve, my lord.*/
= @136 /*May I recommend washing, my lord? You look as if you have been in a bloody fight. You were out slaying bandits, I am sure.*/
= @137 /*It would also help if some of the valuables inside the house were missing, my lord.*/
== ANOMENJ @138 /*Valuables?*/
== DELRYNG1 @139 /*The brigands who murdered your father must have escaped with valuables, my lord. They would be missing.*/
== ANOMENJ @140 /*Right... <CHARNAME>, let us go inside and see to everything and then we will rest. My house is yours, of course.*/
DO ~SetGlobal("YF_DarksideAnomen","GLOBAL",2) StartMovie("restinn") ActionOverride(Player1,Rest()) ActionOverride(Player2,Rest()) ActionOverride(Player3,Rest()) ActionOverride(Player4,Rest()) ActionOverride(Player5,Rest()) ActionOverride(Player6,Rest())~
EXIT

//New Standard Guard Dialogue
CHAIN IF WEIGHT #-10 ~Global("YF_DarksideAnomen","GLOBAL",2) InParty("Anomen")~ THEN DELRYNG1 YF_AnomenGuard3
@141 /*My lord, my lady, a pearl to you.*/
EXIT

//New Standard Guard Dialogue
CHAIN IF WEIGHT #-10 ~Global("YF_DarksideAnomen","GLOBAL",2) !InParty("Anomen")~ THEN DELRYNG1 YF_AnomenGuard4
@142 /*A pearl to you, Lady <CHARNAME>.*/
EXIT


//This should turn off old AnomenP lines 
ADD_TRANS_TRIGGER ANOMENP 7 ~!Global("YF_DarksideAnomen","GLOBAL",2)~ DO 0 1 

//New AnomenP Dialogue
EXTEND_BOTTOM ANOMENP 7 /*We must continue our travels.*/
	+ ~Global("YF_DarksideAnomen","GLOBAL",2)~ + @143 /*Yes, let's get going, Anomen.*/ DO ~JoinParty()~ EXIT
	+ ~Global("YF_DarksideAnomen","GLOBAL",2)~ + @144 /*No, it would be better to split up for now.*/ + YF_AnomenGoodbye
END

CHAIN ANOMENP YF_AnomenGoodbye
@145 /*Are you sure, my love? I do not wish to be away from you.*/
= @146 /*But you are probably right; I have so much work to do to maintain my family's trade empire. Find me at our home if you need me again.*/
END
	++ @1460 /*Okay, I'll meet you there.*/ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR1001",692,218,NE)~ EXIT
	++ @1461 /*No, just wait here until I return.*/ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT


//CN Post Cor Talk 1
CHAIN IF WEIGHT #-1 ~Global("YF_CNAnomenLove","GLOBAL",2)~ THEN ANOMENJ YF_DSACN1
@1 /*My love, I believe I have come to something of an epiphany.*/
END
	++ @147 /*Do tell.*/ + YF_DSACN2
	++ @148 /*And what is that, my love?*/ + YF_DSACN2
	++ @149 /*Yes?*/ + YF_DSACN2
	
CHAIN ANOMENJ YF_DSACN2
@3 /*Killing my father was against the law; it would have caused me to be cast from the Order I so longed to join and yet it made the world a better place.*/
= @4 /*Killing Saerk did the same, for he was as evil as my father. Even Saerk's daughter, while technically considered an innocent, was likely as evil as the remainder of her family.*/
= @5 /*Following the law is not necessarily good. Breaking the law is not necessarily evil. In fact, to do great good, to truly change the world for the better, we must commit many acts which are against the law.*/
= @6 /*Those in the Order might call them acts of evil, but that is just the cowards rationalizing their own fear and hesitation. Minor acts of evil can ultimately serve the greater good. The calculated deaths of a few can save the lives of many!*/
END
	++ @150 /*I am so proud of you. You are surely wiser than even the most learned paladin.*/ + YF_DSACN3
	++ @151 /*I have believed this for some time. I am glad that you agree.*/ + YF_DSACN4
	++ @152 /*Of course. That is why we should be ruling this city. We would not be afraid to do what is necessary.*/ + YF_DSACN5
	
APPEND ANOMENJ IF ~~ THEN YF_DSACN3
	SAY @8 /*I am. I see that now.*/
	IF ~~ THEN + YF_DSACN6
	END
	
	IF ~~ THEN YF_DSACN4
	SAY @153 /*I do. I see now that you are right.*/
	IF ~~ THEN + YF_DSACN6 
	END
	
	IF ~~ THEN YF_DSACN5
	SAY @154 /*Yes, my love. We are the only ones who can see the truth.*/
	IF ~~ THEN + YF_DSACN6
	END
END

CHAIN ANOMENJ YF_DSACN6
@9 /*I wish to make the world a better place and I will make it better once I am in control! The lives of the worthless smallfolk of Amn will improve more than they ever have in history!*/
DO ~SetGlobal("YF_CNAnomenLove","GLOBAL",3) ChangeStat("Anomen",WIS,1,ADD)~
= @10 /*But to do that I need money, power, and influence among the great houses of Athkatla.*/
= @155 /*My love, will you help me?*/
END
	++ @156 /*Of course. Anything you wish.*/ DO ~Wait(1)~ EXIT
	++ @157 /*I've come too far to back out now.*/ DO ~Wait(1)~ EXIT
	++ @158 /*Sure, sounds like fun.*/ DO ~Wait(1)~ EXIT

//CN Post Cor Talk 2
CHAIN IF WEIGHT #-1 ~Global("YF_CNAnomenLove","GLOBAL",5)~ THEN ANOMENJ YF_DSACN7
@13 /*I am Lord Delryn, yet my name is not clear. The murder of Saerk and his household still plagues me. In my heart, I know he was responsible for many evil crimes; if only I could prove it!*/
DO ~SetGlobal("YF_CNAnomenLove","GLOBAL",6) SetGlobal("YF_AnomenClearsName","GLOBAL",1)~
END
	++ @14 /*Perhaps such proof could be found if the guards performed another search of his residence?*/ + YF_DSACN8
	++ @159 /*Maybe we can talk to Bylanna again.*/ + YF_DSACN10
	++ @160 /*You're right. There must be something we can do.*/ + YF_DSACN9
	
APPEND ANOMENJ IF ~~ THEN YF_DSACN8
	SAY @15 /*Yes, I am sure it could! Let us go to the Council of Six Building and talk to the appropriate authority.*/
	IF ~~ THEN + YF_DSACN10
	END
	
	IF ~~ THEN YF_DSACN9 
	SAY @161 /*Yes, I have an idea. Let us go to the Council of Six Building and talk to the appropriate authority.*/
	IF ~~ THEN + YF_DSACN10 
	END
END

CHAIN ANOMENJ YF_DSACN10
@16 /*Not Bylanna, I don't think she is the correct person to see the truth. And perhaps not Chief Inspector Bregga... ah, the wizard, Corneil, his magic could find evidence that the others were unable to secure.*/
= @17 /*<CHARNAME>, next time we are able, let us stop by the Council of Six Building and talk with Corneil. I have some business with him.*/
DO ~AddJournalEntry(@1001,QUEST)~ /*Clearing Anomen's Name: A Visit to a Wizard

Anomen wishes us to stop by the Council of Six Building in Athkatla and speak with the wizard Corneil in an effort to clear his name. He hopes the wizard can use his magic to find evidence of Saerk's wrongdoing and thus make his murder justified.*/
EXIT

//CN Talk 3
CHAIN IF WEIGHT #-1 ~Global("YF_CNAnomenLove","GLOBAL",8)~ THEN ANOMENJ YF_DSACN11
@162 /*Thank the gods for our good fortune! House Delryn will soon be one of the foremost merchant houses of Amn.*/
DO ~SetGlobal("YF_CNAnomenLove","GLOBAL",9) SetGlobal("YF_CouncilSixTalk","GLOBAL",1)~
= @163 /*My love, what do you know about the Council of Six?*/
END
	++ @164 /*All I know is that its members are a secret.*/ + YF_DSACN12
	++ @53 /*The Council of Six is made up of the heads of the great merchant houses of Amn, but no one knows who they are...*/ + YF_DSACN12
	++ @165 /*Figureheads at best. It's obvious that the Cowled Wizards are in charge. I don't know why the Council bothers to hide its membership.*/ + YF_DSACN12
	++ @166 /*Nothing and that's how I like it. I've got better things to worry about than some secret Council of old men.*/ + YF_DSACN12
	
CHAIN ANOMENJ YF_DSACN12
@54 /*Hah, everyone knows who they are, my love. It is the most poorly kept secret in Athkatla.*/
= @55 /*Unfortunately, one cannot join the Council without an open spot, and all six council seats are currently filled.*/
= @56 /*The Meisarch is Erlranther Alibakkar; rumor has it that he is off dealing with the rebellion in Riatavin.*/
= @57 /*The Tessarch is Phaan Colwyvv. He is rarely in the city, always overseas pursuing trade agreements.*/
= @58 /*The Namarch is Qar Jysstev; we'd probably find him in his estate.*/
= @59 /*The Iltarch is Rhinnom Dannihyr, but no one has ever seen him. He's the only council member whose identity is actually a secret, and rumor has it that he controls the Shadow Thieves.*/
== ANOMENJ IF ~Dead("aran")~ THEN @60 /*Or at least he did before we cleared that blight from the city.*/
== ANOMENJ @167 /*The Pommarch is Tyrda Q'Helvor. She is only a woman so no one takes her seriously. No offense meant, my love.*/
= @62 /*And lastly the Dahaunarch is Pehllus Tanislove. He often goes for walks around the government district and he always had a kind word for me.*/
= @168 /*Someday, I hope to stand among them....*/
= @169 /*Bah, I am dreaming. Even if there were an opening, one cannot petition to join the Council. A council member must approach you.*/
== ANOMENJ IF ~Dead("aran")~ THEN @65 /*Yet given the destruction of the Shadow Thieves, the fall of Rhinnom Dannihyr might be at hand. Maybe there is an opening already.*/
== ANOMENJ IF ~!Dead("aran")~ THEN @66 /*Perhaps we could arrange the fall of the Iltarch, Rhinnom Dannihyr. No one knows who he is, but his power comes from his control of the Shadow Thieves.*/
== ANOMENJ IF ~!Dead("aran")~ THEN @67 /*Wiping the Thieves from this city would be an act of untold goodness and may serve our interests as well.*/
== ANOMENJ @170 /*But put all this from your mind, my love. The <DAYNIGHTALL> is too fine, and you are too beautiful to worry about such politics.*/
EXIT

//4th CN Talk
CHAIN IF WEIGHT #-1 ~Global("YF_CNAnomenLove","GLOBAL",11)~ THEN ANOMENJ YF_DSACN13
@171 /*The Council of Six, <CHARNAME>! The reality of it still hasn't sunk in fully.*/
DO ~SetGlobal("YF_CNAnomenLove","GLOBAL",12)~
END
	++ @172 /*It will be a great honor, but one that you must work for.*/ + YF_DSACN14
	++ @173 /*You are lucky to be considered.*/ + YF_DSACN14
	++ @174 /*This is the first step, but we still have far to go.*/ + YF_DSACN14
	++ @175 /*I promise you, it's not a dream. Soon the Council will be ours.*/ + YF_DSACN15
	++ @176 /*First the Council, then Athkathla, then Amn itself will be laid out at our feet.*/ + YF_DSACN15

CHAIN ANOMENJ YF_DSACN14
@177 /*You are right, of course. I will join on the lowest rung of the ladder and it may be years before I gain any true power.*/
END
	++ @109 /*It might be less, the Council is full of old men, frail and prone to petty temptations. Perhaps one of them will do something foolish.*/ + YF_DSACN16
	++ @179 /*There is no hurry. Until then, we will secure our position in other ways.*/ + YF_DSACN17
	++ @180 /*WE will join, my love. I will be climbing with you every step of the way.*/ + YF_DSACN18

CHAIN ANOMENJ YF_DSACN15
@178 /*We must be patient. I will join on the lowest rung of the ladder and it may be years before I gain any true power.*/
END
	++ @109 /*It might be less, the Council is full of old men, frail and prone to petty temptations. Perhaps one of them will do something foolish.*/ + YF_DSACN16
	++ @179 /*There is no hurry. Until then, we will secure our position in other ways.*/ + YF_DSACN17
	++ @180 /*WE will join, my love. I will be climbing with you every step of the way.*/ + YF_DSACN18

CHAIN ANOMENJ YF_DSACN16
@181 /*Perhaps. For now, let us seek honor and glory. And wealth! We will need vast quantities of coin if I am going to make any real change at all.*/
EXIT

CHAIN ANOMENJ YF_DSACN17
@182 /*Of course, my love. For now, let us seek honor and glory. And wealth! We will need vast quantities of coin if I am going to make any real change at all.*/
EXIT

CHAIN ANOMENJ YF_DSACN18
@183 /*And I could not do this without you. Let us seek honor and glory together. And wealth! We will need vast quantities of coin if I am going to make any real change at all.*/
EXIT
