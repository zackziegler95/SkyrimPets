Scriptname PetSpellTomeScript extends ObjectReference 

GlobalVariable Property pCurrentPetExists Auto
ReferenceAlias Property pCurrentPetAlias Auto
Spell Property SpellLearned Auto

Event OnRead()
 
	Actor CurrentPet = pCurrentPetAlias.GetActorRef()
	If pCurrentPetExists.GetValue() == 1
		CurrentPet.AddSpell(SpellLearned)
	Else
		Debug.Notification("You don't have a pet silly!")
	EndIf
 
EndEvent
 
 