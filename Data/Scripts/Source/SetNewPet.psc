Scriptname SetNewPet extends ActiveMagicEffect  

PetsScript Property Pets Auto
Faction Property pWaitingPetFaction Auto
Faction Property pCreatureFaction Auto
GlobalVariable Property pCurrentPetExists Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	
	If akTarget.GetLevel() <= akCaster.GetLevel()
		If akTarget.IsInFaction(pCreatureFaction)
			If akTarget.IsInFaction(pWaitingPetFaction) && pCurrentPetExists.GetValue() == 0
				(Pets as PetsScript).ResetCurrentPet(akTarget)
			ElseIf pCurrentPetExists.GetValue() == 0
				(Pets as PetsScript).SetNewPet(akTarget)
			Else
				Debug.Notification("You already have a pet!")
			EndIf
		Else
			Debug.Notification("That is not an animal!")
		EndIf
	Else
		Debug.Notification("The level is too damn high!")
	EndIf
	
EndEvent