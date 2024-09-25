//Aerie Wing Conversation

CHAIN IF WEIGHT #-1 ~Global("_bAerieJahWingTalk","GLOBAL",1)~ THEN AERIE25J _bAERIE25Jaheira1
@1 /*Jaheira, you've been a druid for a long time, haven't you?*/
== JAHEI25J @2 /*Over two decades... nearly my whole life.*/
== AERIE25J @3 /*And I've heard that powerful druids can regenerate lost limbs.*/
= @4 /*None of the priests my uncle took me to could regrow my wings, but you're not a priest so...*/
== JAHEI25J @5 /*Do you want me to try? I have never used my magic on wings, but the process should be the same.*/
= @6 /*The spell uses your body's memory to regrow the limb as it once was.*/
== AERIE25J @7 /*Will it hurt?*/
== JAHEI25J @8 /*Of course not. Healing spells never hurt.*/
= @9 /*Let us find some privacy. Remove your clothes, lie face down, and try to relax.*/
= @10 /*Hmm...*/
== AERIE25J @11 /*What is it? What's wrong?*/
DO ~ApplySpell("Aerie",CLERIC_REGENERATE) SetGlobal("_bAerieJahWingTalk","GLOBAL",2)~
== JAHEI25J @12 /*This should be working... maybe if I try...*/
== AERIE25J @13 /*Ahhgh!*/
DO ~ApplySpellRES("_b7dam","Aerie")~
== AERIE25J @14 /*You said it wouldn't hurt!*/
== JAHEI25J @15 /*I don't understand! Your body was resisting the regeneration and when I tried to force it, I lost control.*/
= @16 /*I am sorry.*/
== AERIE25J @17 /*It's okay... I didn't really expect it to work.*/
= @18 /*Maybe I'm not meant to fly again.*/
== JAHEI25J @19 /*Do not say that! There must be a way to fix this! We simply need to figure out the solution.*/
= @20 /*I will think about the problem while we travel. Do not lose hope.*/
EXIT





