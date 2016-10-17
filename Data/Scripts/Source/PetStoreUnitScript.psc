Scriptname PetStoreUnitScript extends ObjectReference

PetsScript Property Pets Auto
Int Property SlotID Auto
Int Property isFilled Auto

GlobalVariable Property pSlot1Exists Auto
GlobalVariable Property pSlot2Exists Auto
GlobalVariable Property pSlot3Exists Auto
GlobalVariable Property pSlot4Exists Auto
GlobalVariable Property pSlot5Exists Auto
GlobalVariable Property pSlot6Exists Auto
GlobalVariable Property pSlot7Exists Auto
GlobalVariable Property pSlot8Exists Auto
GlobalVariable Property pSlot9Exists Auto
GlobalVariable Property pSlot10Exists Auto

GlobalVariable Property pCurrentPetExists Auto
GlobalVariable Property pWaitingPet1Exists Auto
GlobalVariable Property pWaitingPet2Exists Auto
GlobalVariable Property pWaitingPet3Exists Auto
GlobalVariable Property pWaitingPet4Exists Auto
GlobalVariable Property pWaitingPet5Exists Auto
GlobalVariable Property pWaitingPet6Exists Auto
GlobalVariable Property pWaitingPet7Exists Auto
GlobalVariable Property pWaitingPet8Exists Auto
GlobalVariable Property pWaitingPet9Exists Auto
GlobalVariable Property pWaitingPet10Exists Auto

ReferenceAlias Property pWaitingPet1Alias Auto
ReferenceAlias Property pWaitingPet2Alias Auto
ReferenceAlias Property pWaitingPet3Alias Auto
ReferenceAlias Property pWaitingPet4Alias Auto
ReferenceAlias Property pWaitingPet5Alias Auto
ReferenceAlias Property pWaitingPet6Alias Auto
ReferenceAlias Property pWaitingPet7Alias Auto
ReferenceAlias Property pWaitingPet8Alias Auto
ReferenceAlias Property pWaitingPet9Alias Auto
ReferenceAlias Property pWaitingPet10Alias Auto

Event onContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	
	If akNewContainer == Game.GetPlayer()
		If SlotID == 1
			pSlot1Exists.SetValue(1)
		ElseIf SlotID == 2
			pSlot2Exists.SetValue(1)
		ElseIf SlotID == 3
			pSlot3Exists.SetValue(1)
		ElseIf SlotID == 4
			pSlot4Exists.SetValue(1)
		ElseIf SlotID == 5
			pSlot5Exists.SetValue(1)
		ElseIf SlotID == 6
			pSlot6Exists.SetValue(1)
		ElseIf SlotID == 7
			pSlot7Exists.SetValue(1)
		ElseIf SlotID == 8
			pSlot8Exists.SetValue(1)
		ElseIf SlotID == 9
			pSlot9Exists.SetValue(1)
		ElseIf SlotID == 10
			pSlot10Exists.SetValue(1)
		EndIf
	EndIf
	
	If akOldContainer == Game.GetPlayer()
		If SlotID == 1
			pSlot1Exists.SetValue(0)
		ElseIf SlotID == 2
			pSlot2Exists.SetValue(0)
		ElseIf SlotID == 3
			pSlot3Exists.SetValue(0)
		ElseIf SlotID == 4
			pSlot4Exists.SetValue(0)
		ElseIf SlotID == 5
			pSlot5Exists.SetValue(0)
		ElseIf SlotID == 6
			pSlot6Exists.SetValue(0)
		ElseIf SlotID == 7
			pSlot7Exists.SetValue(0)
		ElseIf SlotID == 8
			pSlot8Exists.SetValue(0)
		ElseIf SlotID == 9
			pSlot9Exists.SetValue(0)
		ElseIf SlotID == 10
			pSlot10Exists.SetValue(0)
		EndIf
	EndIf
	
EndEvent
	
Event onRead()
	
	If isFilled == 1
		If SlotID == 1 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet1Alias.GetActorRef())
		ElseIf SlotID == 2 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet2Alias.GetActorRef())
		ElseIf SlotID == 3 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet3Alias.GetActorRef())
		ElseIf SlotID == 4 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet4Alias.GetActorRef())
		ElseIf SlotID == 5 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet5Alias.GetActorRef())
		ElseIf SlotID == 6 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet6Alias.GetActorRef())
		ElseIf SlotID == 7 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet7Alias.GetActorRef())
		ElseIf SlotID == 8 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet8Alias.GetActorRef())
		ElseIf SlotID == 9 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet9Alias.GetActorRef())
		ElseIf SlotID == 10 && pCurrentPetExists.GetValue() == 0
			(Pets as PetsScript).ResetCurrentPet(pWaitingPet10Alias.GetActorRef())
		Else
			Debug.Notification("You already have an active pet!")
		EndIf
	EndIf
	
EndEvent