
//At Keldorn's house when he finds out his wife is cheating.
INTERJECT_COPY_TRANS2 KELDORJ 22 _bMazzyKeldornWife1 /*...Go—go to your daughters. To look at you right now, Maria... To look at you is to go mad.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @0 /*I know what you are thinking, Sir Keldorn, but do not rush to judgement.*/
	= @1 /*Let us find Sir William of Thorpe. At the very least you should look the man in the eye before you condemn him.*/
END


//At the city gates, with Hanj and the Merchant.
INTERJECT_COPY_TRANS2 AEEXTORT 0 _bMazzyBullyMerchant1 /*"You'll pay, you will, or yous get a face full of fist. That's pretty clear, isn't it?"*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @2 /*A local thug bullying a merchant. Why am I not surprised? Come, <CHARNAME>, we must put a stop to this.*/
END


//With Anomen when he kills the innocent girl. Only triggers if Keldorn, Jaheira, Minsc, and Aerie don't.
INTERJECT_COPY_TRANS YUSUF 2 _bMazzyAnomenQuest1 /*Nooo! You vile dog! I shall cut out your black heart for this!*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Jaheira") !IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Aerie")~ 
	THEN @3 /*Anomen, no! I had assumed you were making empty threats and hoping for a confession. You are truly a monster to kill an innocent girl. There is no hope for you now.*/
	== ANOMENJ IF ~IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Jaheira") !IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Aerie")~ 
	THEN @4 /*You would judge me, stupid halfling? She is no innocent, I tell you. No member of this family is. Say what you will; not even the Order will tell me differently! All of these dogs must die!*/
END


//After Kangaxx is freed. 
INTERJECT_COPY_TRANS2 HLKANG 1 _bMazzyKangaxx2 /*But worry not, my savior. You shall be well rewarded. You will have the privilege of a sweet, painful death.*/
	== MAZZYJ IF ~Global("_bmazzykangaax1","GLOBAL",1) IsValidForPartyDialog("Mazzy")~ THEN @5 /*I told you I did not trust this creature and now we have unleased true evil on the world. Perhaps next time you will listen, <CHARNAME>, when I say to turn aside.*/
END

INTERJECT_COPY_TRANS2 HLKANG 3 _bMazzyKangaxx3 /*You have truly freed me, and the world will be burned to ash for your sin!*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @6 /*No! We will stop you here even if it takes our lives.*/
END

//Talking to guards at the docks building.
INTERJECT_COPY_TRANS DOCSOL01 2 _bMazzyCowardGuard /*In the docks we pretty much just hole up behind these walls.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @7 /*Pathetic. You would never find me hiding when the law was under siege.*/
END

//Talking to Valgyar's butler during his quest.
INTERJECT_COPY_TRANS HERVO 11 _bMazzyValgyarQuest1 /*I was terrified when the wizards came back down the stairs alone. They said Valygar had committed murder and must pay.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @8 /*He did not kill them?*/
	== HERVO IF ~IsValidForPartyDialog("Mazzy")~ THEN @9 /*No! Master Corthala would never. I swear on my honor that no wizard's blood was shed.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @10 /*Then there is something very strange here, <CHARNAME>, and we should be wary.  But if we must stand against the Cowled Wizards in order to serve justice, Arvoreen will understand.*/
	= @11 /*Now, my good man, what happened next? Tell us everything.*/
END

//Talking to the guard in front of the circus when you first get to the Promenade.
INTERJECT_COPY_TRANS CIRCG1 8 _bJaheriaCircus /*Foul magic is, no doubt, involved here. We are waiting for the Cowled Wizards to arrive. They will be able to solve this, I am sure.*/
	== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~
	THEN @12 /*I know you wish to find Imoen and Irenicus soon, <CHARNAME>, but we should try to assist those trapped inside.  If there is evil in this city, we cannot stand idly by.*/
END

//When you accept the Mae'Var quest from Renal Bloodscalp.
INTERJECT_COPY_TRANS RENAL 30 _bMazzyHatesThieves1 /*Work for Mae'Var as long as it takes to collect your evidence, and bring whatever you can find to me. I'll be waiting to receive it most eagerly.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @13 /*You have chosen to enter into a dangerous partnership, <CHARNAME>, but I see some wisdom in your plan.  While you gain the Shadow Thieves' trust, I shall make careful note of all their weaknesses.*/
END

//When you accept the thief stronghold.
INTERJECT_COPY_TRANS RENAL 77 _bMazzyStillHatesThieves /*There will be a quota for you to meet. If you do not, you will lose the guild.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @14 /*I fear this is a bad idea,  <CHARNAME>. But then again, you are a hero, are you not? Perhaps you will lead by shining example and turn these thieves back to the light.*/
	== YOSHJ IF ~InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) IsValidForPartyDialog("Mazzy")~
	THEN @15 /*(Sometimes she is very innocent.) That is a fine sentiment, Mazzy, but you had best secure your purse before we leave.*/
	== HAERDAJ IF ~InMyArea("HaerDalis") InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) IsValidForPartyDialog("Mazzy")~
	THEN @16 /*And shall all evils in our journey be cured as on the stage, the power of love and good triumphant over tragedy? I have seen many worlds, halfling, but I have yet to come across one so rosy as your dreams. Yet let us dream together and perhaps you shall give me songs anew to sing.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") OR(2)  IsValidForPartyDialog("HaerDalis") IsValidForPartyDialog("Yoshimo")~
	THEN @17 /*I was not being serious. This will end in bloodshed, just like always. We cannot leave these thieves alive. But at least this will allow us to continue scouting out the enemy, and perhaps <CHARNAME> will be able to sabotage the Shadow Thieves' operations until the time for battle has arrived.*/
END

//Part of the quest where man is buried alive.
INTERJECT_COPY_TRANS SETHLE 10 _bMazzyHatesCowards /*You're not going to tell anyone, are you? Are you?*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @18 /*Men like you are a blight upon the earth. Too weak to stand against evil and too cowardly to seek the help of those who might.*/
END
	
//Nevin & Uncle Lester fight
INTERJECT_COPY_TRANS MOURNER1 6 _bNevinUncleLester /*Eeek! Save me! Save me!*/	
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @19 /*In truth, they both sound horrible. But I suppose we should not let this young man die.*/
	DO ~ActionOverride("Mazzy",Attack("Lester"))~
END
	
//If Anomen in party when find man who was buried alive (hasn't taken test)
INTERJECT_COPY_TRANS ANOMENJ 224 _bMazzyAnomenArguing1 /*Are there not more important adventures we could be undertaking? This manner of... of aid seems quite tedious. This is a task for the garrison, <CHARNAME>.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !Global("AnomenIsNotKnight","GLOBAL",1) !Global("AnomenIsKnight","GLOBAL",1)~
	THEN @20 /*Selfish words from one who would be a paladin. The Order of the Radiant Heart helps anyone in need, not just those people that you find most interesting.*/
	== ANOMENJ IF ~IsValidForPartyDialog("Mazzy") !Global("AnomenIsNotKnight","GLOBAL",1) !Global("AnomenIsKnight","GLOBAL",1)~
	THEN @21 /*Silence, halfling. You know nothing of such things.*/
	== KELDORJ IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) IsValidForPartyDialog("Mazzy") !Global("AnomenIsNotKnight","GLOBAL",1) !Global("AnomenIsKnight","GLOBAL",1)~
	THEN @22 /*No, Anomen. It is you who should be silent. Mazzy is right about the Order and I am 	beginning to wonder if you have the proper temperament.*/
END

//If Anomen in party when find man who was buried alive (& failed test)
INTERJECT_COPY_TRANS ANOMENJ 224 _bMazzyAnomenArguing2 /*Are there not more important adventures we could be undertaking? This manner of... of aid seems quite tedious. This is a task for the garrison, <CHARNAME>.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") Global("AnomenIsNotKnight","GLOBAL",1)~
	THEN @23 /*Thoughts such as that are why the Order failed you, Anomen. Have you still not learned that every life has value?*/
	== ANOMENJ IF ~IsValidForPartyDialog("Mazzy") Global("AnomenIsNotKnight","GLOBAL",1)~
	THEN @24 /*No, halfling. I learned that revenge has consequences and I see no reason to help this fool when no one would help me. We have given him his life. That is plenty more than he deserves.*/
END

	
//When talking to the ghosts in the shadow temple.  Once have bones.  Many versions to make this work how I wanted.
INTERJECT_COPY_TRANS3 SHAGHO01 16 _bGhostsWantBones1 /*You bring them bones, version 1 - no Edwin*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Edwin")~
	THEN @25 /*To desecrate the body of a child is unthinkable. At least my friends and I, we chose to fight.*/
	== MINSCJ IF ~IsValidForPartyDialog("Mazzy") InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) !IsValidForPartyDialog("Edwin")~
	THEN @26 /*And fight we shall! Boo and I will avenge the tiny one.*/
	== KELDORJ IF ~InMyArea("Keldorn") InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Edwin")~
	THEN @27 /*You are right, Mazzy. Such a violation cannot stand.*/
	== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !IsValidForPartyDialog("Edwin")~
	THEN @28 /*This land has been sorely defiled by the Shade Lord's actions. We will bring back balance if we can.*/
	== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !IsValidForPartyDialog("Edwin")~
	THEN @29 /*The refusal to kill children is a weakness. It is better to take out your enemies when they are young than give them time to grow more powerful.*/
	== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) !IsValidForPartyDialog("Edwin")~
	THEN @30 /*Selûne protect us from this evil. We will cleanse your temple with the power of the light.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Edwin")~
	THEN @31 /*We shall defeat the Shade Lord. I swear it. Take these bones and be at peace.*/
END

INTERJECT_COPY_TRANS3 SHAGHO01 20 _bGhostsWantBones1A /*You bring them bones, version 2 - no Edwin*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Edwin")~
	THEN @25 /*To desecrate the body of a child is unthinkable. At least my friends and I, we chose to fight.*/
	== MINSCJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Edwin")~
	THEN @26 /*And fight we shall! Boo and I will avenge the tiny one.*/
	== KELDORJ IF ~IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Edwin")~
	THEN @27 /*You are right, Mazzy. Such a violation cannot stand.*/
	== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !IsValidForPartyDialog("Edwin")~
	THEN @28 /*This land has been sorely defiled by the Shade Lord's actions. We will bring back balance if we can.*/
	== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) !IsValidForPartyDialog("Edwin")~
	THEN @29 /*The refusal to kill children is a weakness. It is better to take out your enemies when they are young than give them time to grow more powerful.*/
	== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) !IsValidForPartyDialog("Edwin")~
	THEN @30 /*Selûne protect us from this evil. We will cleanse your temple with the power of the light.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Edwin")~
	THEN @31 /*We shall defeat the Shade Lord. I swear it. Take these bones and be at peace.*/
END
	
INTERJECT SHAGHO01 16 _bEdwinWantBones1 /*You bring them bones, version 1 with Edwin*/
	== SHAGHO02 IF ~IsValidForPartyDialog("Edwin")~ THEN @241 /*Please, give her to us.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Edwin")~
	THEN @25 /*To desecrate the body of a child is unthinkable. At least my friends and I, we chose to fight.*/
	== MINSCJ IF ~IsValidForPartyDialog("Mazzy") InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) IsValidForPartyDialog("Edwin")~
	THEN @26 /*And fight we shall! Boo and I will avenge the tiny one.*/
	== KELDORJ IF ~IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Edwin")~
	THEN @27 /*You are right, Mazzy. Such a violation cannot stand.*/
	== JAHEIRAJ IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) IsValidForPartyDialog("Edwin")~
	THEN @28 /*This land has been sorely defiled by the Shade Lord's actions. We will bring back balance if we can.*/
	== IF_FILE_EXISTS DORNJ IF ~InMyArea("DORN") InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) IsValidForPartyDialog("Edwin")~
	THEN @29 /*The refusal to kill children is a weakness. It is better to take out your enemies when they are young than give them time to grow more powerful.*/
	== IF_FILE_EXISTS RASAADJ IF ~InMyArea("RASAAD") InParty("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) IsValidForPartyDialog("Edwin")~
	THEN @30 /*Selûne protect us from this evil. We will cleanse your temple with the power of the light.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Edwin")~
	THEN @31 /*We shall defeat the Shade Lord. I swear it. Take these bones and be at peace.*/
	== EDWINJ IF  ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~
	THEN @32 /*Wait, <CHARNAME>. Give the prophet's bones to me. You would not believe some of the regents required for higher magic.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Edwin")~
	THEN @33 /*Silence, wizard! There is too much evil here already; I will not let you add to it.*/
	== KELDORJ IF ~IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Edwin")~
	THEN @34 /*Allow this, <CHARNAME>, and I may be forced to rethink our partnership.*/
END	
	++ @35 /*If they will help you grow more powerful then take them.*/ EXTERN EDWINJ _bGhostBones2
	++ @36 /*I will not let you desecrate this child further.*/ EXTERN EDWINJ _bGhostBones1
	++ @37 /*Do what you want. I don't care.*/ EXTERN EDWINJ _bGhostBones2

INTERJECT SHAGHO01 20 _bEdwinWantsBones2 /*You bring them bones, version 2 with Edwin*/
	== SHAGHO02 IF ~IsValidForPartyDialog("Edwin")~ THEN @241 /*Please, give her to us.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Edwin")~
	THEN @25 /*To desecrate the body of a child is unthinkable. At least my friends and I, we chose to fight.*/
	== MINSCJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Minsc") IsValidForPartyDialog("Edwin")~
	THEN @26 /*And fight we shall! Boo and I will avenge the tiny one.*/
	== KELDORJ IF ~IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Edwin")~
	THEN @27 /*You are right, Mazzy. Such a violation cannot stand.*/
	== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("Edwin")~
	THEN @28 /*This land has been sorely defiled by the Shade Lord's actions. We will bring back balance if we can.*/
	== IF_FILE_EXISTS DORNJ IF ~IsValidForPartyDialog("DORN") IsValidForPartyDialog("Edwin")~
	THEN @29 /*The refusal to kill children is a weakness. It is better to take out your enemies when they are young than give them time to grow more powerful.*/
	== IF_FILE_EXISTS RASAADJ IF ~IsValidForPartyDialog("RASAAD") IsValidForPartyDialog("Edwin")~
	THEN @30 /*Selûne protect us from this evil. We will cleanse your temple with the power of the light.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Edwin")~
	THEN @31 /*We shall defeat the Shade Lord. I swear it. Take these bones and be at peace.*/
	== EDWINJ IF  ~IsValidForPartyDialog("Edwin")~
	THEN @32 /*Wait, <CHARNAME>. Give the prophet's bones to me. You would not believe some of the regents required for higher magic.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Edwin")~
	THEN @33 /*Silence, wizard! There is too much evil here already; I will not let you add to it.*/
	== KELDORJ IF ~IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Edwin")~
	THEN @34 /*Allow this, <CHARNAME>, and I may be forced to rethink our partnership.*/
END	
	++ @35 /*If they will help you grow more powerful then take them.*/ EXTERN EDWINJ _bGhostBones2
	++ @36 /*I will not let you desecrate this child further.*/ EXTERN EDWINJ _bGhostBones1
	++ @37 /*Do what you want. I don't care.*/ EXTERN EDWINJ _bGhostBones2

CHAIN EDWINJ _bGhostBones1	
	@38 /*(I will not forget this insult. But I must bide my time.)*/
	= @39 /*Of course, oh fearless leader.  This wizard will obey.*/
	DO ~TakePartyItem("misc6q") DestroyItem("misc6q")~
	END
	++ @40 /*Good. Don't forget who is in charge.*/ EXTERN SHAGHO02 15 
	++ @41 /*Do not sulk, Edwin. You will be rewarded soon enough.*/ EXTERN SHAGHO02 15
	
CHAIN EDWINJ _bGhostBones2
	@42 /*Yes! Finally! I shall be unstoppable with these... wait, these bones...*/
	= @43 /*(What cruel trick is this?) Let the ghosts have their damn prophet, <CHARNAME>. She is no use to me.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @44 /*And once again, evil reaps no reward. I am glad that I do not have to kill you, wizard, since we have other foes to fight.*/
	= @45 /*But I shall watch you closely in the future. And you as well, <CHARNAME> for allowing him to try.*/
	COPY_TRANS SHAGHO01 20	
	
//When talking to the ghosts in the shadow temple.  If don't have bones.
INTERJECT_COPY_TRANS SHAGHO01 7 _bGhostsWantBones2 /*...could not protect her as he took her body and... threw her bones to his dark wolves...*/
	== EDWINJ IF ~IsValidForPartyDialog("Edwin")~
	THEN @46 /*(A prophet's bones? Intriguing. I shall have to think on this.)*/
END

//Encounter w. Mencar Pebblecrusher
INTERJECT_COPY_TRANS SEVPAT01 0 _bMencarIsMean /*...Best ye be runnin' back now.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @47 /*<CHARNAME> is a finer hero than you could ever be, dwarf. Bite your scornful tongue or I will silence it with steel.*/
	== SEVPAT01 IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @48 /*Hah! Ye'd have to be tall enough to reach it first.*/
END

	
//Talking to Bylanna in the goverment office.
INTERJECT_COPY_TRANS3 BYLANNA 27 _bJudgingBylanna1 /*Hopefully, the Cowled Wizards will see their error and release your friend.*/
	== MAZZYJ IF ~!Global("_bJudgingBylanna2","GLOBAL",1) IsValidForPartyDialog("Mazzy")~
	THEN @49 /*I may not have met Imoen, <CHARNAME>, but I know this is not right. 
	These wizards run rampant in Athkatla, judging and executing on the sole strength of their opinion, and who is to say whether they are truly acting for the greater good? Who can when there is no oversight?*/
	== BYLANNA IF ~!Global("_bJudgingBylanna2","GLOBAL",1) IsValidForPartyDialog("Mazzy")~
	THEN @50 /*You should not question the Cowled Wizards. They keep this city safe.*/
	== MAZZYJ IF ~!Global("_bJudgingBylanna2","GLOBAL",1) IsValidForPartyDialog("Mazzy")~
	THEN @51 /*Perhaps. But I have seen corruption wear many forms, milady. We must take the world for what it is, not what we desire, even as we try to make this land a better place.*/
	== VALYGARJ IF ~!Global("_bJudgingBylanna2","GLOBAL",1) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) IsValidForPartyDialog("Mazzy")~
	THEN @52 /*Mazzy is right. I would not be alive if <CHARNAME> had not stood against Tolgerias. He cared only for power, not for justice, and I cannot believe his brethren did not realize what was going on.*/
	== MINSCJ IF ~!Global("_bJudgingBylanna2","GLOBAL",1) InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
	THEN @53 /*Boo says that Imoen is a friend and anyone who hurts our friends deserves my boot! Two boots for hooded wizards who hide behind the law!*/
	== YOSHJ IF ~!Global("_bJudgingBylanna2","GLOBAL",1) InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
	THEN @54 /*Although the Cowled Wizards may have erred in taking Imoen, they were right to take Irenicus. However, the wizards may soon discover that they have grasped a dragon by its tail.*/
	== JANJ IF ~!Global("_bJudgingBylanna2","GLOBAL",1) InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~
	THEN @55 /*Ha! Every wizard in Athkatla knows those hooded fellows never admit to their mistakes. I had a friend – well, more of an acquaintance, really, I only knew him through my mother's sister's brother's boy – who got nabbed for spellwork a few autumns back.*/
	= @56 /*Just a little spell, a simple fireball to heat his poor aunt's hearth, and those Cowled fellows were on him like he'd meant to burn a dozen buildings down. It was hardly Roger's fault that slum houses burn like tinder but I've never seen that poor fellow show his face round here again.*/
END	

//Version 2 if you follow the other chain.  Only plays if the other one hasn't.
INTERJECT_COPY_TRANS3 BYLANNA 31 _bJudgingBylanna2 /*But I cannot otherwise offer you help. I am sorry... I wish it were otherwise. Good luck in finding her.*/
	== MAZZYJ IF ~!Global("_bJudgingBylanna1","GLOBAL",1) IsValidForPartyDialog("Mazzy")~
	THEN @49 /*I may not have met Imoen, <CHARNAME>, but I know this is not right.
	These wizards run rampant in Athkatla, judging and executing on the sole strength of their opinion, and who is to say whether they are truly acting for the greater good? Who can when there is no oversight?*/
	== BYLANNA IF ~!Global("_bJudgingBylanna1","GLOBAL",1) IsValidForPartyDialog("Mazzy")~
	THEN @50 /*You should not question the Cowled Wizards. They keep this city safe.*/
	== MAZZYJ IF ~!Global("_bJudgingBylanna1","GLOBAL",1) IsValidForPartyDialog("Mazzy")~
	THEN @51 /*Perhaps. But I have seen corruption wear many forms, milady. We must take the world for what it is, not what we desire, even as we try to make this land a better place.*/
	== VALYGARJ IF ~!Global("_bJudgingBylanna1","GLOBAL",1) InMyArea("Valygar") InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) IsValidForPartyDialog("Mazzy")~
	THEN @52 /*Mazzy is right. I would not be alive if <CHARNAME> had not stood against Tolgerias. He cared only for power, not for justice, and I cannot believe his brethren did not realize what was going on.*/
	== MINSCJ IF ~!Global("_bJudgingBylanna1","GLOBAL",1) InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~
	THEN @53 /*Boo says that Imoen is a friend and anyone who hurts our friends deserves my boot! Two boots for hooded wizards who hide behind the law!*/
	== YOSHJ IF ~!Global("_bJudgingBylanna1","GLOBAL",1) InMyArea("Yoshimo") InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
	THEN @54 /*Although the Cowled Wizards may have erred in taking Imoen, they were right to take Irenicus. However, the wizards may soon discover that they have grasped a dragon by its tail.*/
	== JANJ IF ~!Global("_bJudgingBylanna1","GLOBAL",1) InMyArea("Jan") InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~
	THEN @55 /*Ha! Every wizard in Athkatla knows those hooded fellows never admit to their mistakes. I had a friend – well, more of an acquaintance, really, I only knew him through my mother's sister's brother's boy – who got nabbed for spellwork a few autumns back.*/
	= @56 /*Just a little spell, a simple fireball to heat his poor aunt's hearth, and those Cowled fellows were on him like he'd meant to burn a dozen buildings down. It was hardly Roger's fault that slum houses burn like tinder but they took him for two months and he was never the same again.*/
END	

//If you talk to Lady Delcia after accepting Nalia's keep
INTERJECT_COPY_TRANS2 DELCIA 29 _bDelciaIsaSnob /*... I consider my home to be no better off than when it was occupied by the trolls.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~
	THEN @57 /*The most exalted blood in the world could not make that woman pleasant. But a true hero does not require thanks for their good deeds. We fought for what was right.*/
END


//After the Announcer in the Copper Coronet talks, when the gladiator is fighting.
INTERJECT_COPY_TRANS ANNO1 2 /*You will fight because you are a slave and you have been told to fight! Refuse and be devoured for the amusement of our guests!*/ _bmazzycoppercoronetannouncer1
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Anomen") !IsValidForPartyDialog("Minsc")~
	THEN @58 /*This is not right. We should free these slaves immediately! Slavery is illegal in Athkatla so we can kill these guards without mercy or fear of reprisal.*/
END


//In the Sea Bounty Tavern Pirate Hideout
INTERJECT_COPY_TRANS2 PIRSEA01 1 /*Kill the bloody spy, mates! I'll have no word of this leaking out!*/ _bmazzypiratecaptain1
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @59 /*You cannot silence the truth! To arms, my friends, we fight for righteousness today.*/
END
	
	
//With Baron Ployer in the Sea Bounty Tavern]
INTERJECT_COPY_TRANS2 BARONP 4 /*You... you... This is the type of insolence I was talking about! It is not enough that you ruin a man—you must also berate him!*/ _bmazzybaronployer1
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ 
	THEN @60 /*You got off lightly. If you were truly trading slaves, I would have killed you on the spot.*/
	== JAHEIRAJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Jaheira")~ 
	THEN @61 /*I am starting to think that I should have done the same.*/
END

//With Kangaax (Golden Skull)
INTERJECT_COPY_TRANS HLSKULL 8 /*The fiends that did this to me keep me from returning by tearing apart my mortal form and keeping the pieces separated. You must find my body that I might again take mortal form.*/ _bmazzykangaax1
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @62 /*Be careful, <CHARNAME>. Sometimes creatures are imprisoned for good reason and I would think twice before agreeing to set this Kangaxx free.*/
END

//Waylane trying to sell Mazzy the sphere.
CHAIN IF WEIGHT #5 ~See("Mazzy") IsValidForPartyDialog("Mazzy") RandomNum(2,1) Global("_bwaylanemazzy","LOCALS",0)~ THEN WAYLANE _bwaylanemazzy1
@63 /*You there! The short lass with the bow. Would you like to hear about a once in a lifetime opportunity?*/
== MAZZYJ @64 /*Are you speaking to me?*/
== WAYLANE @65 /*Of course I am. Do you see any other halflings carrying weaponry? You must have raided a child's armory.*/
== MAZZYJ @66 /*You dare...?*/	
== WAYLANE @67 /*I'm sure you've heard much worse than that. So tell me, are you tired of muffled laughter and jokes about your height? Are you tired of people asking you how the air is all the way down there? For the low, low price of 500 gold, you can buy this Planar Sphere and the next drunk who tries to start a game of halfling toss can be completely vaporized. What do you say?*/
DO ~SetGlobal("_bwaylanemazzy","LOCALS",1)~
== MAZZYJ @68 /*I say that you had best start running before I call the guards. Being a halfling does not make me an easy mark.*/
EXIT


//When talking to the Djinn in Trademeet for the first time
INTERJECT_COPY_TRANS2 TRGENI01 7 _bMazzyLikesFreeTrade /*Regardless, the hunt is less taxing and far more amusing this way, don't you agree?*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @69 /*I do NOT agree! Trade is the lifeblood of this city.  You are ruining my home for your own selfish reasons and I cannot let that stand.  <CHARNAME>, we must do something.*/
END

//After you refuse the Djinn's job the first time (2nd time in good only)
INTERJECT_COPY_TRANS2 TRGENI01 27 _bRefuseTheDjinn1 /*Ah, this is saddening. You are the most promising mortal to perform this task, however... I will bide my time for your attitude to change on this matter.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") Global("zahraajob","GLOBAL",0) Global("zahraarefused","GLOBAL",0)~
	THEN @70 /*You are going to allow this, <CHARNAME>? We should convince the djinn to release their hold upon this city, whether through words or righteous steel.*/
END
	
//Hendak in the Copper Coronet
INTERJECT_COPY_TRANS2 HENDAK 7 _bRefuseHendak /*May the abyss swallow your soul for what you do!*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @71 /*I pray that you are joking, <CHARNAME>, though it is in poor taste. If you will not help these people, I shall break their chains myself.*/
END

INTERJECT_COPY_TRANS2 HENDAK 18 _bTalkHendak /*They have many children yet that they retain as slaves. I would ask of you to rid the city of this infestation once and for all.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @72 /*We must do this, <CHARNAME>, we must. To crush the slave guild in this city has been one of my life's ambitions.*/
END

//Talking to Tassa in Aran's Hideout
INTERJECT_COPY_TRANS2 TASSA 7 /*Oh... you don't want to talk to me, silly! You don't have half as much money as my Aran baby! You need a lot of gold to keep Tassa's attention. *giggle*/ _bTalkTassa
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @73 /*You're Tassa!*/
	== TASSA IF ~IsValidForPartyDialog("Mazzy")~
	THEN @74 /*Guilty as charged, but I'm afraid you have me at a disadvantage. A pretty thing such as yourself shouldn't do that.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @75 /*I am Mazzy Fentan, knight and Truesword of Arvoreen. I was shown a painting of you by a representative of Lord Vulova. I was supposed to rescue you.*/
	== TASSA IF ~IsValidForPartyDialog("Mazzy")~
	THEN @76 /*Well, I've been here the whole time, but I never needed rescuing, not even by a cute little knight like you.*/
	= @77 /*Only one I ever needed rescuing from was Armagaran Vulova, and Aran saw to that, he did.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @78 /*I had heard rumors about that. So they're true?*/
	== TASSA IF ~IsValidForPartyDialog("Mazzy")~
	THEN @79 /*Well, I don't know what you've heard exactly, but rumors usually are.*/
	= @80 /*If you see Vulova, feel free to stick a knife in him for me. But other than that, I don't need your help. I'm doing just fine where I am.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @81 /*Then I am sorry to have bothered you, but I have one question. If this guild was attacked, and everyone else killed, could you escape?*/
	== TASSA IF ~IsValidForPartyDialog("Mazzy")~
	THEN @82 /*Of course. Aran doesn't like to see his treasures harmed. I'd be the first one out the back door.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~
	THEN @83 /*That is all I needed to know.*/
END
	
//Squire in Radiant Heart
INTERJECT_COPY_TRANS2 HMELVIN 5 _bSquireTalk /*Yar! They but seen me skill wit' th' fish guttin' knife, and they's gonna train me.*/
	== ANOMENJ IF ~IsValidForPartyDialog("Anomen") !Global("AnomenIsKnight","GLOBAL",1)~ THEN @84 /*The Order is allowing this... this... FISHERMAN into their ranks?! With no training, no sponsor... after all I have struggled, this insult I cannot bear.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Anomen") !Global("AnomenIsKnight","GLOBAL",1)~ THEN @85 /*He has as much right as you do to fight against injustice. You should not judge him for his background as long as his heart is true.*/
	== ANOMENJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Anomen") !Global("AnomenIsKnight","GLOBAL",1)~ THEN @86 /*I do not hate his background. I hate the ease with which this fool received that which I fought for. Do not chide me, halfling, for things you do not understand.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Anomen") !Global("AnomenIsKnight","GLOBAL",1)~ THEN @87 /*I understand, Anomen. You think I have not struggled? But I fight against the bitterness that has lodged within your heart. You would do well to do the same.*/
END

//When Renal tells you to kill Maevar
INTERJECT_COPY_TRANS2 RENAL 43 _bMazzyWantsMaevarDead /*Go and eliminate Mae'Var then, with my full authority. Do that and this business shall be finished, finally.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @88 /*I dislike being used as an assassin, but this is one death that will make the world a better place. Let us cleanse that nest of vipers before Mae'Var can escape.*/
END

//Nalia's Abduction
INTERJECT_COPY_TRANS2 ISAEA 29 _bMazzyIsaeaIsDick /*Oh, feel free to lodge a complaint to the proper authority. That... would be me.*/
	== MAZZYJ IF ~InMyArea("Mazzy") InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @89 /*We cannot allow such an abuse of power to go unchallenged, <CHARNAME>. Who knows how many lives he has destroyed already? This man must face justice for his crimes.*/
END

//Inside Planar Sphere
INTERJECT_COPY_TRANS2 OBSSOL01 10 _bEvilHaflings /*Halflings? Do "halflings" seek to rip and rend the flesh from your body, to swallow your flesh and suck the marrow from your bones? If so, then halflings they may be.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @90 /*If they are halflings, then we are far from home indeed. Anything that could so twist my people's spirits is a greater evil than most that I have seen.*/
END

//When get last paladin quest
INTERJECT_COPY_TRANS2 DEMSON 74 _bPaladinMassacre /*It also earned them enemies. This past tenday has seen the family murdered in their homes, almost to the last. It would seem they were made examples of.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @91 /*So have evil-doers ever tried to destroy those who would bring their crimes into the light. We cannot allow these deaths to go unanswered.*/
END

//End of Cernd baby quest
INTERJECT_COPY_TRANS2 CELICH 1 _bCerndLich /*Well, he is proven weak and undeserving. I give you your lives for this knowledge. Begone; the way is unbarred. Take the mewling whelp with you as well. Sentimental weakling.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @92 /*Wait! This is not over! You are an evil creature and I will not let you escape!*/
	== CELICH IF ~IsValidForPartyDialog("Mazzy")~ THEN @93 /*You think to stop me? Your efforts would no doubt be amusing, but I have more pressing matters to attend to.*/
END


//Trademeet Noble Quest 1
INTERJECT_COPY_TRANS2 CELOGAN 84 _bLoganTomb1 /*I have no objection. The tomb has been a sore point for far too long, and if anyone can do something about that, I am sure you are the one.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @94 /*The High Merchant is correct. I remember stories of that haunted tomb from when I was a child and I always intended to clear it out someday.*/
	= @95 /*However, once I became a Truesword of Arvoreen, I never seemed to have the time. There was always a bigger threat, a more urgent quest to be completed, and I am ashamed that I allowed such darkness to remain near my own home.*/
	== CELOGAN IF ~IsValidForPartyDialog("Mazzy")~ THEN @96 /*Do not speak that way, Miss Fentan. You are a true hero and your actions have done nothing but make this city proud. There was no need for you to concern yourself with one locked tomb when matters of life and death required intervention.*/
END

//Trademeet Noble Quest 2
INTERJECT_COPY_TRANS2 CELOGAN 86 _bLoganTomb2 /*This can end only in bloodshed. I cannot offer the gold that the nobles have, but in the name of peace, I ask that you bring the mantle to me once it is found.*/
	== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @97 /*Is the situation truly so dire? I know that the two families have been at odds for generations but I had not realized their feud had grown so strong.*/
	== CELOGAN IF ~IsValidForPartyDialog("Mazzy")~ THEN @98 /*On the surface, it has not. Our recent troubles and the lack of proof have kept the nobles locked in a stalemate for many years. But ill feelings fester under such conditions and I am afraid that receiving their ancestor's mantle would spur one side to act.*/
	= @99 /*That is why I came to speak with you this <DAYNIGHTALL>. Although giving me the mantle would not please your employer, I believe it would be our best chance to maintain peace.*/
END

//Interjection into the dialogue by the Skeleton outside of Bodhi's hideout that comes at night.
INTERJECT_COPY_TRANS2 GRSKEL1 0 _bMazzySkeletonBodhiHideoutInterjection1 /*Ahhhh... fleshling! This is OUR land in the evening... this is no place for such as YOU!*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @100 /*Never, foul creature! In Arvoreen's name, I shall return you to your grave!*/
END 

//HaerDalis Quest
INTERJECT_COPY_TRANS2 HAERDAJ 56 _bMazzyHD1 /*A wretched cambion hunts us as we speak and has apparently tracked us down to the Prime Material, though he has yet to make his move.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @101 /*I cannot say that I approve of your actions. But you should not be forced to flee over one noble's injured pride.*/
END

//Not in party version
INTERJECT_COPY_TRANS2 HAERDA 206 _bMazzyHD2 /*A wretched cambion hunts us as we speak and has apparently tracked us down to the Prime Material, though he has yet to make his move.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @101 /*I cannot say that I approve of your actions. But you should not be forced to flee over one noble's injured pride.*/
END

//Planar Prison
INTERJECT_COPY_TRANS2 PTAGGET 17 _bMazzyPrison /*Destroy that device and the thralls are freed. The warden is vulnerable... and I will be able to contact my newly freed friends. Some of them are mages who will teleport us away.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @102 /*We should free these slaves either way, <CHARNAME>, but this is a sound strategy. It is always better to have allies on our side.*/
END

//Druid Grove Quest
INTERJECT_COPY_TRANS2 DRSHLO01 1 _bMazzyDruid /*I just... the darkness said... I'm sorry to bother you, <PRO_SIRMAAM>.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @103 /*<CHARNAME>! You cannot leave this boy to fight alone.*/
END

//Mage Stronghold
INTERJECT_COPY_TRANS2 MGAPPR02 108 _bMazzyMage /*At least their deaths have been for something. The ring of wizardry turned out wonderful. It cost... 3,000 gold... and two lives. I suppose that is a bargain.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @104 /*You should have taken better care of your apprentices, <CHARNAME>. Two lives was far too high a price.*/
END

//Eye Quest
INTERJECT_COPY_TRANS2 SASSAR 33 _bMazzySassar /*I would ask that you do not try to open it yourself... I sense great evil from it. And I do wish my brethren and I to remain safe here.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @105 /*If there is evil locked within, it should be vanquished. Though this blind beholder is a more pressing matter now.*/
END

//Abandoned Temple
INTERJECT_COPY_TRANS2 RIFT01 3 _bMazzyRiftChild /*I do not wish you here to mock us with your freedom.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") Global("_bMazzyRiftLady","GLOBAL",0)~ THEN @106 /*We do not intend to mock you. Your eternal shackles have twisted faith into hatred and trust into apathy, and we will free you if we can.*/
END

INTERJECT_COPY_TRANS2 RIFTW01 3 _bMazzyRiftLady /*I do not wish you here to mock us with your freedom.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") Global("_bMazzyRiftChild","GLOBAL",0)~ THEN @106 /*We do not intend to mock you. Your eternal shackles have twisted faith into hatred and trust into apathy, and we will free you if we can.*/
END

//Hidden Temple
INTERJECT_COPY_TRANS2 OHNTELAN 29 _bMazzyTelana /*But as his wife, I can tell you that he is tolerant and kind.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @107 /*That was not my first impression. But it is often only those people closest to us who see our softer sides.*/
END

//After Destruction
INTERJECT_COPY_TRANS2 OHNHAYES 31 _bMazzyHayes /*I wasn't giving up much, betraying her; I had nothing left to give.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @108 /*You are wrong. Your wife loved you... she still loves you, I am certain. But you let the loss of wealth and status poison what you had.*/
	= @109 /*You are a fool. A tragic fool. You truly do have nothing now.*/
END

//Resurrection Gorge
INTERJECT_COPY_TRANS2 OHDXACH 14 _bMazzyDemon /*If it's power you desire, I can supply that, and more. Wealth beyond your wildest imagining.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @110 /*Close your ears to this foul creature, <CHARNAME>. Such evil cannot be allowed to leave the gorge.*/
END

//Asylum
INTERJECT_COPY_TRANS2 PPTIAX 6 _bMazzyTiax /*Silence the squeaking of those that protest! He rules all.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @111 /*This poor fellow may be mad, but have you truly tried to help him? Or have you simply locked him up and thrown away the key?*/
END

//Post Maze
INTERJECT_COPY_TRANS2 PPSAEM2 22 _bMazzySaemon /*No doubt he feels a villain is always undone in the exposition. I cannot say I blame him. I have many a dead friend that boasted when silence would have served.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @112 /*I do not know which is more surprising... That your tongue speaks sense or that a two-faced liar such as yourself has ever called another "friend".*/
END

//Sahuagin
INTERJECT_COPY_TRANS2 SAHGRD02 0 _bMazzyDornSahuagin /*I shall not kill you, however, until the most exalted one commands it.*/
	== DORNJ IF ~IfValidForPartyDialog("Dorn")~ THEN @113 /*You will never feast on the flesh of Dorn Il'Khan!*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy") IfValidForPartyDialog("Dorn")~ THEN @114 /*I cannot believe I'm saying this, but the blackguard is right. If you attempt to slay us, you will be the one who falls.*/
END

//Spectator
INTERJECT_COPY_TRANS2 SAHBEH01 14 _bMazzySpectator /*Oh, they've been here since the drow who summoned me was slaughtered... Sixty years with only two imps and a mad fish-king for company. Is this Hell?*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @115 /*I would normally advise you to slay this creature, <CHARNAME>, but perhaps it has suffered enough.*/
END

//Sahuagin Prince
INTERJECT_COPY_TRANS4 SAHPR2 14 _bMazzyPrince /*Bah! You get to live, you hideous, finless thing... is that not enough for you?*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @116 /*This prince is rude and entitled, <CHARNAME>... Though I suppose he does seem saner than the alternative.*/
	== _bCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @117 /*Maybe I should check if this bossy prince has something good to steal.*/
END

//Underdark Inn
INTERJECT_COPY_TRANS4 UDSVIR03 30 _bMazzyGnome /*You are welcomed back. We had worried for your safety as though one of our own were in danger.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @118 /*You need not have worried. We were happy to help.*/
	== _bCLARAJ IF ~IfValidForPartyDialog("_bClara")~ THEN @119 /*Of course, we wouldn't have *been* in danger if you'd dealt with the beast yourselves...*/
END

//Ust Natha
INTERJECT_COPY_TRANS2 UDDROW08 12 _bMazzyBaragh /*The diminutive worms scattered! I hunted them all...*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @120 /*I know that we cannot afford to draw attention, <CHARNAME>, but I would dearly like to make this monster pay.*/
END

//Government Clerk
INTERJECT_COPY_TRANS2 CLERK01 2 _bMazzytaxes /*Did you know that halflings have had a tax break since the Year of the Spur? Nobody has told them though, and the rest of 'em can't read or write anyway.*/
	== MAZZYJ IF ~IfValidForPartyDialog("Mazzy")~ THEN @121 /*My people are not illiterate, you miserable creature! You tall-folk use prejudice to justify your greed!*/
	= @122 /*I will not allow you to hide away this information in the shadows any longer. Tell me the details of this tax break and I will see that they are shared.*/
END

//After you defeat the Shadow Dragon
CHAIN IF WEIGHT #-1 ~Global("_bMazzyRespondsShadowDragon","GLOBAL",1)~ THEN MAZZYJ _bMazzyRespondsToShadowDragonDeath
	@123 /*This foul beast falls and its evil is removed from the world. My friends have been avenged.*/
	DO ~SetGlobal("_bMazzyRespondsShadowDragon","GLOBAL",2)~
EXIT

