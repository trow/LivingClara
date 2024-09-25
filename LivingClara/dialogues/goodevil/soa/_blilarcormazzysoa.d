//First talk. Happens when you start dialogue with the sword.
CHAIN IF WEIGHT #-1 ~Global("_bMazzyLilarcor1","GLOBAL",2)~ THEN SW2H14 _bMazzyLilarcorTalk1
	@0 /*(The sword flashes for a moment, then sighs when you are not impressed with its magnificence.) "So... are we gonna... kill something now?"*/ 
== MAZZYJ @1 /*<CHARNAME>, I feel I must warn you about the dangers of possessed runeswords such as this one.*/
	DO ~SetGlobal("_bMazzyLilarcor1","GLOBAL",3)~
	= @2 /*They are powerful legendary weapons, but driven by an unceasing hunger for souls, they doom their owners to a life of misery.*/
== SW2H14 @3 /*Yeah, that's me! Lilarcor the runesword. Gonna steal your soul! Kill! Kill!*/
== MAZZYJ @4 /*Perhaps I was mistaken. You cannot steal souls at all, can you?*/
== SW2H14 @5 /*Sure I can! Fear for your soul, mortal! I'm gonna kill you and take it!*/
== MAZZYJ @6 /*Which means you cannot drive us to our doom. You are at worst mildly annoying.*/
== SW2H14 @7 /*What? You doubt my power?*/
	= @8 /*I'm gonna doom you! Kill you and doom you! Prepare to be doomed!*/
== MAZZYJ @9 /*"Legendary" is also too strong of a word. Lawrence Lilarcor was famous, yes, but mostly for being a fool.*/
== SW2H14 @10 /*A fool? Who's a fool? Come here so I can kill you! Time to die!*/
== MAZZYJ @11 /*Furthermore, he seems entirely unable to act under his own power. Perhaps he is completely harmless.*/
	= @12 /*Quite sharp though. He will be a mighty weapon against our enemies.*/
== SW2H14 @13 /*That's right! You tell 'em! I'm gonna kill your enemies dead!*/
DO ~DestroySelf()~
EXIT

//Second talk. Happens five days later (trigger for timer in mazzygoodevil.baf)
CHAIN IF WEIGHT #-1 ~Global("_bMazzyLilarcor1","GLOBAL",5)~ THEN SW2H14 _bMazzyLilarcorTalk2
	@0 /*(The sword flashes for a moment, then sighs when you are not impressed with its magnificence.) "So... are we gonna... kill something now?"*/
== MAZZYJ @14 /*I must know, Lawrence, what drives you now that you have shed your mortal form?*/
	DO ~SetGlobal("_bMazzyLilarcor1","GLOBAL",6)~
= @15 /*What is the motivation of a magic sword?*/
== SW2H14 @16 /*My motivation? I'm a sword! Swords kill! Stab me in someone's guts and watch them die!*/
== MAZZYJ @17 /*Yes, so you've said. But why? Is it the thrill of combat? Do you simply miss the warmth of human touch?*/
== SW2H14 @18 /*Killin's fun! I can't die, but they can... so I kill 'em!*/
== MAZZYJ @19 /*Yes, but...*/
== SW2H14 @20 /*And after I kill them... they die!*/
== MAZZYJ @21 /**sigh* Nevermind.*/
DO ~ActionOverride("Lilarcor",DestroySelf())~
EXIT
