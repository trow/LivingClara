//hexxat死亡后，召唤出来
BEGIN ~YF_Hdead~

IF ~PartyHasItem("OHHBAG")
	!InPartyAllowDead("hexxat")	
	Dead("hexxat")
	GlobalGT("YF_HexxatDeadCasketTransform","GLOBAL",0)
	GlobalLT("YF_HexxatBag","GLOBAL",2)~
THEN BEGIN woodpile0
	SAY @2	//吸血鬼正在旧袋子内的棺材中再生。如果你有一根木桩，你可以永远结束她的生命。
	IF ~PartyHasItem("MISC6W")~ THEN REPLY @11 DO ~ActionOverride(Player1,DisplayStringNoNameHead(Player1,35847))
	AddexperienceParty(6000)
	SetGlobal("YF_HexxatBag","GLOBAL",2)
	TakePartyItemNum("misc6w",1)
	ActionOverride(Player1,TakePartyItem("OHHBAG"))
	ActionOverride(Player1,TransformItem("ohhcask2","ohhcask"))
	ActionOverride(Player1,TransformItem("YF_cask2","ohhcask"))
	SetGlobal("YF_ClaraLives","GLOBAL",0)~ EXIT	//使用木桩。
	IF ~PartyHasItem("MISC6W")~ THEN REPLY @12 DO ~~ EXIT	//暂时不使用木桩。
	IF ~!PartyHasItem("MISC6W")~ THEN REPLY @13	DO ~~ EXIT	//找到木桩再回来。
END

IF ~Dead("hexxat")
	Global("YF_HexxatBag","GLOBAL",3)
	Global("YF_ClaraLives","GLOBAL",0)~
THEN BEGIN restore0
	SAY @20	//克拉拉被吸取了生命能量，看来需要对她施展复原术之类的法术。
	IF ~TriggerOverride(Player1,HaveSpell(CLERIC_LESSER_RESTORATION))~ THEN REPLY @21 DO ~ActionOverride(Player1,ReallyForceSpellDead("OHHFAK",CLERIC_LESSER_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player1,RemoveSpell(CLERIC_LESSER_RESTORATION))~ GOTO breath0	//让<PLAYER1>施展次级复原术。
	IF ~TriggerOverride(Player2,HaveSpell(CLERIC_LESSER_RESTORATION))~ THEN REPLY @22 DO ~ActionOverride(Player2,ReallyForceSpellDead("OHHFAK",CLERIC_LESSER_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player2,RemoveSpell(CLERIC_LESSER_RESTORATION))~ GOTO breath0	//让<PLAYER2>施展次级复原术。
	IF ~TriggerOverride(Player3,HaveSpell(CLERIC_LESSER_RESTORATION))~ THEN REPLY @23 DO ~ActionOverride(Player3,ReallyForceSpellDead("OHHFAK",CLERIC_LESSER_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player3,RemoveSpell(CLERIC_LESSER_RESTORATION))~ GOTO breath0	//让<PLAYER3>施展次级复原术。
	IF ~TriggerOverride(Player4,HaveSpell(CLERIC_LESSER_RESTORATION))~ THEN REPLY @24 DO ~ActionOverride(Player4,ReallyForceSpellDead("OHHFAK",CLERIC_LESSER_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player4,RemoveSpell(CLERIC_LESSER_RESTORATION))~ GOTO breath0	//让<PLAYER4>施展次级复原术。
	IF ~TriggerOverride(Player5,HaveSpell(CLERIC_LESSER_RESTORATION))~ THEN REPLY @25 DO ~ActionOverride(Player5,ReallyForceSpellDead("OHHFAK",CLERIC_LESSER_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player5,RemoveSpell(CLERIC_LESSER_RESTORATION))~ GOTO breath0	//让<PLAYER5>施展次级复原术。
	IF ~TriggerOverride(Player6,HaveSpell(CLERIC_LESSER_RESTORATION))~ THEN REPLY @26 DO ~ActionOverride(Player6,ReallyForceSpellDead("OHHFAK",CLERIC_LESSER_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player6,RemoveSpell(CLERIC_LESSER_RESTORATION))~ GOTO breath0	//让<PLAYER6>施展次级复原术。
	IF ~TriggerOverride(Player1,HaveSpell(CLERIC_RESTORATION))~ THEN REPLY @31 DO ~ActionOverride(Player1,ReallyForceSpellDead("OHHFAK",CLERIC_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player1,RemoveSpell(CLERIC_RESTORATION))~ GOTO breath0	//让<PLAYER1>施展复原术。
	IF ~TriggerOverride(Player2,HaveSpell(CLERIC_RESTORATION))~ THEN REPLY @32 DO ~ActionOverride(Player2,ReallyForceSpellDead("OHHFAK",CLERIC_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player2,RemoveSpell(CLERIC_RESTORATION))~ GOTO breath0	//让<PLAYER2>施展复原术。
	IF ~TriggerOverride(Player3,HaveSpell(CLERIC_RESTORATION))~ THEN REPLY @33 DO ~ActionOverride(Player3,ReallyForceSpellDead("OHHFAK",CLERIC_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player3,RemoveSpell(CLERIC_RESTORATION))~ GOTO breath0	//让<PLAYER3>施展复原术。
	IF ~TriggerOverride(Player4,HaveSpell(CLERIC_RESTORATION))~ THEN REPLY @34 DO ~ActionOverride(Player4,ReallyForceSpellDead("OHHFAK",CLERIC_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player4,RemoveSpell(CLERIC_RESTORATION))~ GOTO breath0	//让<PLAYER4>施展复原术。
	IF ~TriggerOverride(Player5,HaveSpell(CLERIC_RESTORATION))~ THEN REPLY @35 DO ~ActionOverride(Player5,ReallyForceSpellDead("OHHFAK",CLERIC_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player5,RemoveSpell(CLERIC_RESTORATION))~ GOTO breath0	//让<PLAYER5>施展复原术。
	IF ~TriggerOverride(Player6,HaveSpell(CLERIC_RESTORATION))~ THEN REPLY @36 DO ~ActionOverride(Player6,ReallyForceSpellDead("OHHFAK",CLERIC_RESTORATION))
	CreateVisualEffectObject("SPSTRENH","OHHFAK")
	ActionOverride(Player6,RemoveSpell(CLERIC_RESTORATION))~ GOTO breath0	//让<PLAYER6>施展复原术。
	IF ~PartyHasItem("RESTORE")~ THEN REPLY @30 DO ~ReallyForceSpellDead("OHHFAK",CLERIC_RESTORATION)
	TakePartyItemNum("RESTORE",1)
	DestroyItem("RESTORE")
	CreateVisualEffectObject("SPSTRENH","OHHFAK")~ GOTO breath0	//使用复原术卷轴。
	IF ~OR(3) PartyHasItem("RESTORE") HaveSpellParty(CLERIC_LESSER_RESTORATION) HaveSpellParty(CLERIC_RESTORATION)~ THEN REPLY @40 DO ~~ EXIT	//暂时置之不理。
	IF ~!PartyHasItem("RESTORE") !HaveSpellParty(CLERIC_LESSER_RESTORATION) !HaveSpellParty(CLERIC_RESTORATION)~ THEN REPLY @41 DO ~~ EXIT	//准备好了再回来。
END

IF ~~
THEN BEGIN breath0
	SAY @3	//随着法术生效，女孩被吸走的能量恢复了过来，她又再次开始呼吸。
	IF ~~ THEN DO ~SetGlobal("YF_ClaraLives","GLOBAL",1)~ EXIT
END
