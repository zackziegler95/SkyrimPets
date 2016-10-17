Scriptname DismissPet extends ActiveMagicEffect  

PetsScript Property Pets Auto
GlobalVariable Property pCurrentPetExists Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)

	If pCurrentPetExists.GetValue() == 1
		(Pets as PetsScript).DismissPet()
	Else
		Debug.Notification("You don't have a pet currently")
	EndIf
	
EndEvent