//Hexxat dialogue when first meeting her

INTERJECT HEXXAT 0 YF_MazzyHexxat1 /*<CHARNAME>. Good to finally meet you.*/
	== HEXXAT IF ~NumInPartyAliveGT("1")~ THEN @0 /*I have been waiting a long time.*/ 
	== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ 
	THEN @1 /*Monster! Kill her quickly and we may still save the girl!*/
	== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
	THEN @2 /*That girl was under our protection! Prepare to die, evil one!*/
	== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~
	THEN @3 /*The Order of the Radiant Heart has sworn to wipe out such evil from the world. Face me, demon!*/
	DO ~SetGlobal("YF_AnoHatesHex","GLOBAL",1)~
	== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~
	THEN @4 /*She killed Hexxat and now she wants to talk? Very well, demon, talk!*/
	== RASAADJ IF ~InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ 
	THEN @5 /*A great wrong must be righted. Selûne take you, vampire!*/
	== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ 
	THEN @6 /*Silence, monkeys! Let me through! (This thrall's blood is just what I have been searching for.)*/
	== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ 
	THEN @7 /*You! It was you who killed my niece, Yanna Jojannsen! Time to eat a flasher, vampire!*/
	== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
	THEN @8 /*Noooo! We were trusted and we failed her! Attack Boo! For Justice!*/
	== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ 
	THEN @9 /*Undead demon, you will find no mercy here.*/
	== DORNJ IF ~InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ 
	THEN @10 /*One who would devour her own minions can't be trusted. I shall watch you carefully, vampire.*/
	== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ 
	THEN @11 /*Such a great evil cannot be allowed to go free. It is time we returned you to dust, dark one.*/
	== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~
	THEN @12 /*Hah! I like ye already vampire. Just keep yer teeth away from me.*/
	== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~
	THEN @13 /*How could you do that? What kind of creature requires death to live?*/
	== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !Global("LS_HaerDalisRomanceActive","GLOBAL",2)~
	THEN @14 /*Such a question shows your innocence, dove of my heart. But one less vampire shall walk Athkatla if you wish your sparrow's aid.*/
	== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(2) !IsValidForPartyDialog("Aerie") Global("LS_HaerDalisRomanceActive","GLOBAL",2)~
	THEN @15 /*Hah, a twist indeed to our fine tale. I knew that traveling with <CHARNAME> would prove quite interesting.*/
	== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ 
	THEN @16 /*Death is part of nature and Hexxat follows hers. I will not judge you, vampire, though I grieve for that poor girl.*/
	== NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~
	THEN @17 /*I'm not sure about this. And if *I'm* saying that, you should really listen since you know I tend to rush headlong into everything. Maybe we should just seal this tomb back up again.*/
	== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~
	THEN @18 /*Never trust the undead, <CHARNAME>. I know her kind from my old life – always hungry, always scheming – she will only stab us in the back.*/
	== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ 
	THEN @19 /*Monster! To slaughter your own vassal is unthinkable! We cannot allow this!*/
	== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
	THEN @20 /*Although this seems a harsh betrayal, we do not know her reasons and we should not judge so easily. Things aren't always what they seem.*/
	== HEXXAT IF ~NumInPartyAliveGT("1")~ THEN @21 /*May we talk? There is much that you should know.*/
	DO ~SetGlobal("YF_DieHexxatDie","GLOBAL",1)~
END
	++ @22 /*I do not speak with evil! Time to die!*/ GOTO YF_MazzyHexxat3
	++ @23 /*Fine, I'll talk. Vampire meet steel. Steel meet vampire.*/ GOTO YF_MazzyHexxat3
	++ @24 /*Very well... talk.*/ GOTO YF_MazzyHexxat2
	++ @25 /*This had better be good.*/ GOTO YF_MazzyHexxat2
	++ @26 /*Speak quickly, vampire. I do not like your kind.*/ GOTO YF_MazzyHexxat2
	
CHAIN HEXXAT YF_MazzyHexxat2
@27 /*As I was saying, <CHARNAME>, it is good to finally meet you.*/
COPY_TRANS HEXXAT 0

CHAIN HEXXAT YF_MazzyHexxat3
@28 /*Fool! Then you leave me no other choice.*/
DO ~SetGlobal("OHH_cloakmissing","OH7000",5) SetGlobal("YF_HexFight","GLOBAL",1) ChangeAIScript("ohhexxx",OVERRIDE) Enemy() SetQuestDone(84945)~ //stops her from asking about her cloak while you're trying to kill her.
EXIT

//Global leads to additional talk if ForTheGood installed
	