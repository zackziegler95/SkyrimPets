ScriptName PetAliasScript extends ReferenceAlias

ReferenceAlias Property pCurrentPetAlias Auto
Spell Property pSpell Auto

Event OnDeath(Actor akKiller)

	;Self.Clear()
	
EndEvent

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)

	If self != pCurrentPetAlias
		;GetActorRef().StopCombat()
	EndIf

EndEvent