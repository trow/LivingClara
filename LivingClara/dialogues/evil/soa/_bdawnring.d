
//To sell the Dawn Ring to the Temple of Talos
EXTEND_BOTTOM TALMISS 0 /*Chaos prevail! Do you require the services of Talos?*/
	+~PartyHasItem("RING38") Global("StealingPlot","GLOBAL",1) Global("_bGiveRingtoTalos","GLOBAL",0)~+ @0 /*I have this Dawn Ring here. I am told you want it.*/ GOTO _bPlayer1SellsRingtoTalos1
END

CHAIN TALMISS _bPlayer1SellsRingtoTalos1
@1 /*Curse those useless thieves! Trust them to do one simple job. I will have to have them all hunted down and killed... unless you have already saved me the trouble.*/
	= @2 /*You're here to sell us the ring then? We will pay you 1,000 gold.*/
END
	++ @3 /*Nah, I think I'll keep it.*/ GOTO _bPlayer1SellsRingtoTalos2 
	++ @4 /*Deal.*/ DO ~GiveGoldForce(1000) AddexperienceParty(16250)~ GOTO _bPlayer1SellsRingtoTalos3 
	+~CheckStatGT(LastTalkedToBy,12,CHR)~+ @5 /*How about 1,200?*/ DO ~GiveGoldForce(1200) AddexperienceParty(16250)~ GOTO _bPlayer1SellsRingtoTalos3  
	+~CheckStatGT(LastTalkedToBy,13,CHR)~+ @6 /*How about 1,300?*/ DO ~GiveGoldForce(1300) AddexperienceParty(16250)~ GOTO _bPlayer1SellsRingtoTalos3  
	+~CheckStatGT(LastTalkedToBy,14,CHR)~+ @7 /*How about 1,400?*/ DO ~GiveGoldForce(1400) AddexperienceParty(16250)~ GOTO _bPlayer1SellsRingtoTalos3  
	+~CheckStatGT(LastTalkedToBy,15,CHR)~+ @8 /*How about 1,500?*/ DO ~GiveGoldForce(1500) AddexperienceParty(16250)~ GOTO _bPlayer1SellsRingtoTalos3  
	+~CheckStatGT(LastTalkedToBy,16,CHR)~+ @9 /*How about 1,600?*/ DO ~GiveGoldForce(1600) AddexperienceParty(16250)~ GOTO _bPlayer1SellsRingtoTalos3  
	+~CheckStatGT(LastTalkedToBy,17,CHR)~+ @10 /*1,600 gold would do, and then how about something magical?*/ 
	DO ~GiveGoldForce(1600) ActionOverride(LastTalkedToBy,CreateItem("BOOT05",0,0,0)) AddexperienceParty(16250)~  /*Creates Gift of Talos*/ GOTO _bPlayer1SellsRingtoTalos3  
	

CHAIN TALMISS _bPlayer1SellsRingtoTalos2
@11 /*Then you have no more business here. Begone!*/ 
EXIT


CHAIN TALMISS _bPlayer1SellsRingtoTalos3
@12 /*We have it! Victory for Talos!*/
DO ~TakePartyItem("RING38") SetGlobal("_bGiveRingtoTalos","GLOBAL",1)~
= @13 /*Wait until the Temple of Lathander hears of their defeat. Feel free to tell them if you wish.*/
DO ~EraseJournalEntry(2071)
EraseJournalEntry(2072)
EraseJournalEntry(2074)
EraseJournalEntry(2075)
EraseJournalEntry(2077)
EraseJournalEntry(2079)
EraseJournalEntry(46838)
EraseJournalEntry(61915)
AddJournalEntry(@1001,QUEST)~
EXIT


//After you do this quest if you talk to Lathander and tell them.

EXTEND_BOTTOM SCSAIN 46 /*You are to help recover the Dawn Ring, stolen by the evil that is the followers of Talos. Please return to your efforts.*/
	+~Global("_bGiveRingtoTalos","GLOBAL",1)~+ @14 /*Actually I sold the ring to Talos. They paid handsomely. Victory to the Storm Lord!*/ DO ~SetGlobal("_bGiveRingtoTalos","GLOBAL",2)~ GOTO _bPlayer1GloatsToLathander1
END

CHAIN SCSAIN _bPlayer1GloatsToLathander1
@15 /*So you came here to gloat in the temple of the Morninglord himself? We will not stand this outrage!*/
DO ~Enemy() 
DisplayStringHead(Myself,61287)
SetGlobal("TempleShout0902","GLOBAL",1)
SetGlobal("warn","LOCALS",1)
AddJournalEntry(@1002,QUEST_DONE)
AddexperienceParty(6000)
SetGlobal("_bMazzyHostile","GLOBAL",1)~
=
@16 /*You will fall for the glory of the Morninglord!*/
EXIT

