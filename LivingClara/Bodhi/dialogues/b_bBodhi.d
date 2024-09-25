BEGIN b_bBodhi

CHAIN IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InMyArea("_BBodhi") !StateCheck("_BBodhi",CD_STATE_NOTVALID) Global("_BBODHIKORG","GLOBAL",0)~ THEN BKORGAN _bBodhiKorgan1
@1 /*Vampire, ye be a coward through an' through.*/
DO ~SetGlobal("_BBODHIKORG","GLOBAL",1)~
== b_bBodhi @2 /*Am I? I fight by your side, kill as you kill...*/
== BKORGAN @3 /*Pshaw, ye kill th' weak an' easy. Ye switched sides because we be stronger an' ye were afraid t' die, but if th' goin' gets tough, ye'll flee an' leave us t' rot.*/
== b_bBodhi @4 /*And you, dwarf? Are you a trustworthy companion? Will you stand by <CHARNAME>'s side until the very end, no matter who we face?*/
= @5 /*Do you not fear death?*/
== BKORGAN @6 /*Hahaha, if I die then I'll die laughin', with me axe in me enemy's skull an' our bloods poolin' on th' ground.*/
= @7 /*When ye die, you'll be cowerin' in yer coffin, beggin' fer yer life.*/
== b_bBodhi @8 /*Perhaps. But your life will end soon, Korgan, whereas I will live for centuries to come.*/
EXIT

CHAIN IF ~InParty("_bClara") !StateCheck("_bClara",CD_STATE_NOTVALID) InMyArea("_bClara") !StateCheck("_BBodhi",CD_STATE_NOTVALID) Global("_BBODHICLARA","GLOBAL",0)~ THEN b_bBodhi _bBodhiClara1
@9 /*Do I scare you so much, child? You flinch when I even look your way.*/
DO ~SetGlobal("_BBODHICLARA","GLOBAL",1)~
== B_BCLARA @10 /*I have already been killed once by your kind, Bodhi; I do not fear you.*/
== b_bBodhi @11 /*You smell of nothing BUT fear, but your brave face is appreciated.*/
= @12 /*You are safe from me, however, as delicious as you might be. I have sworn myself to <CHARNAME>, and that included not eating <PRO_HISHER> pets.*/
== B_BCLARA @13 /*I am not a pet! I am Caroline Aurora...*/
== b_bBodhi @14 /*That name means nothing. You are flesh and blood... meat for the hungry... prey for the strong...*/
= @15 /*Nothing more.*/
EXIT

//1st Edwin Banter - he starts talk
CHAIN IF WEIGHT #-1 ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InMyArea("_BBodhi") !StateCheck("_BBodhi",CD_STATE_NOTVALID) Global("_BBODHIEDWIN","GLOBAL",0)~ THEN BEDWIN _bBodhiEdwin1
@16 /*There is power in enchanted items, Bodhi! You should be more careful!*/
DO ~SetGlobal("_BBODHIEDWIN","GLOBAL",1)~
== b_bBodhi @17 /*I do not need to take care, Edwin. Our enemies are weak and I am strong.*/
== BEDWIN @18 /*Yes, very strong, but that is the problem. You shred enchanted cloaks and destroy scrolls containing unknown secrets. This is folly!*/
= @19 /*Why are we fighting if not to take the secrets and power of the fallen? (Surely this is obvious. I am traveling with fools.)*/
== b_bBodhi @20 /*Power comes from within me, Edwin. I do not need your scrolls. Cast your spells as you wish and leave me be.*/
EXIT

//2nd Korgan Banter
CHAIN IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InMyArea("Korgan") !StateCheck("_BBodhi",CD_STATE_NOTVALID) !AreaType(DUNGEON) Global("_BBODHIKORG","GLOBAL",1)~ THEN b_bBodhi _bBodhiKorgan2
@21 /*I see you at night, Korgan, you are a hunter just as I am.*/
DO ~SetGlobal("_BBODHIKORG","GLOBAL",2)~
= @22 /*Well, not quite as I am. You are slow and fat and prefer to chase the first lass you see.*/
= @23 /*I am more discerning and take only the strongest and most powerful.*/
== BKORGAN @24 /*Ye do yerself a disservice with yer delusions, woman. Ye hunt those weaker than yerself, as do I, an' we both take 'em with our bare hands.*/
= @25 /*We both like a spirited fight, as long as th' outcome is not in doubt; th' only difference is my lasses still live when I be done with 'em.*/
EXIT

//Korgan Items Banter - he speaks first
CHAIN IF WEIGHT #2 ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InMyArea("_BBodhi") !StateCheck("_BBodhi",CD_STATE_NOTVALID) GlobalGT("_BBODHIKORG","GLOBAL",0) Global("_BBODHIKORG2","GLOBAL",0)~ THEN BKORGAN _bBodhiKorgan3
@26 /*Do ye plan t' leave nothin' behind fer us to use? By th' gods, woman, learn some finesse!*/
DO ~SetGlobal("_BBODHIKORG2","GLOBAL",1)~
== b_bBodhi @27 /*I am sorry, Korgan, have I done something to deserve your whining? I kill your enemies for you, do I not?*/
== BKORGAN @28 /*Ye destroy everything! Ye kill our enemies, ye break their armor, ye break their weapons, ye even turn their gold t' dust!*/
= @29 /*How is an honest dwarf supposed t' make a livin'?*/
== b_bBodhi @30 /*The weak need weapons and armor, dwarf. I desire only the soft flesh beneath. I cannot help it if your flimsy toys shatter in my hands.*/
EXIT


//2nd Clara Banter
CHAIN IF ~InParty("_bClara") IfValidForPartyDialog("_bClara") InMyArea("_bClara") !StateCheck("_BBodhi",CD_STATE_NOTVALID) Global("_BBODHICLARA","GLOBAL",1)~ THEN b_bBodhi _bBodhiClara2
@31 /*I smell you, Shadow Thief... come out and play.*/
= @32 /*Why do you live when your comrades are dead? Was <CHARNAME> careless in <PRO_HISHER> slaughter? How did you escape your fate?*/
= @33 /*Should I finish the job?*/
== B_BCLARA @34 /*Stop it, Bodhi! I'm not your prey!*/
= @35 /*I'm also not a Shadow Thief anymore.*/
== b_bBodhi @36 /*Are you not? You were a Shadow Thief... you smell like a Shadow Thief... you cannot change what you are.*/
== B_BCLARA @37 /*Why not? You did! You weren't always a vampire!*/
== b_bBodhi @38 /*No... I was one of the people... graceful and beautiful... wise and immortal...*/
= @39 /*That life was taken from me!*/
= @40 /*The only pleasure that remains to me is hunting down succulent... delicious... flesh!*/
= @41 /*Hide from me all you like... I can smell your fear.*/
DO ~SetGlobal("_BBODHICLARA","GLOBAL",2) ChangeStat("_bClara",HIDEINSHADOWS,10,ADD) ChangeStat("_bClara",STEALTH,10,ADD)~
== B_BCLARA @42 /*Well then, I'll just have to fix that, won't I?*/
EXIT


//3rd Clara Banter - she talks first
CHAIN IF ~InParty("_BBodhi") IfValidForPartyDialog("_bClara") InMyArea("_BBodhi") !StateCheck("_BBodhi",CD_STATE_NOTVALID) Global("_BBODHICLARA","GLOBAL",2)~ THEN B_BCLARA _bBodhiClara3
@43 /*How about now?*/
DO ~SetGlobal("_BBODHICLARA","GLOBAL",3) ChangeStat("_bClara",HIDEINSHADOWS,10,ADD) ChangeStat("_bClara",STEALTH,10,ADD)~
== b_bBodhi @44 /*Hmm... no, I can hear you but that is all.*/
= @45 /*Well done. I did not expect you to succeed in masking your scent, not from me.*/
== B_BCLARA @46 /*Practice makes perfect. Hunters do it all the time. Of course, that's just with animals, not vampires, but the principle is the same...*/
== b_bBodhi @47 /*I am more animal than most, little fleshling.*/
= @48 /*You are my companion so helping you become a more skilled hunter seemed prudent.*/
= @49 /*Hunt me, though, and I will dine on your liver and make jewelry from your bones.*/
EXIT
