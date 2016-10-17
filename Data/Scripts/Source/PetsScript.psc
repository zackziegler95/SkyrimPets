ScriptName PetsScript extends Quest Conditional

Faction Property pCurrentPetFaction Auto
Faction Property pWaitingPetFaction Auto

ReferenceAlias Property pCurrentPetAlias Auto
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

Book Property pPetSlot1Book Auto
Book Property pPetSlot2Book Auto
Book Property pPetSlot3Book Auto
Book Property pPetSlot4Book Auto
Book Property pPetSlot5Book Auto
Book Property pPetSlot6Book Auto
Book Property pPetSlot7Book Auto
Book Property pPetSlot8Book Auto
Book Property pPetSlot9Book Auto
Book Property pPetSlot10Book Auto

Book Property pPetSlot1FilledBook Auto
Book Property pPetSlot2FilledBook Auto
Book Property pPetSlot3FilledBook Auto
Book Property pPetSlot4FilledBook Auto
Book Property pPetSlot5FilledBook Auto
Book Property pPetSlot6FilledBook Auto
Book Property pPetSlot7FilledBook Auto
Book Property pPetSlot8FilledBook Auto
Book Property pPetSlot9FilledBook Auto
Book Property pPetSlot10FilledBook Auto

ObjectReference Property pObjectToMoveWaitingPetsTo Auto

Function SetNewPet(ObjectReference PetRef)

	actor PetActor = PetRef as Actor
	PetActor.StopCombat()
	PetActor.SetRelationshipRank(Game.GetPlayer(), 3)
	PetActor.SetPlayerTeammate()
	PetActor.AddToFaction(pCurrentPetFaction)
	
	pCurrentPetAlias.ForceRefTo(PetActor)
	pCurrentPetExists.SetValue(1)
	
EndFunction

Function ResetCurrentPet(ObjectReference PetRef)

	actor PetActor = PetRef as Actor
	PetActor.SetPlayerTeammate()
	PetActor.AddToFaction(pCurrentPetFaction)
	PetActor.RemoveFromFaction(pWaitingPetFaction)
	
	If pWaitingPet1Alias.GetActorRef() == PetActor
		pWaitingPet1Alias.Clear()
		pWaitingPet1Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot1Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot1FilledBook, abSilent = true)
	ElseIf pWaitingPet2Alias.GetActorRef() == PetActor
		pWaitingPet2Alias.Clear()
		pWaitingPet2Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot2Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot2FilledBook, abSilent = true)
	ElseIf pWaitingPet3Alias.GetActorRef() == PetActor
		pWaitingPet3Alias.Clear()
		pWaitingPet3Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot3Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot3FilledBook, abSilent = true)
	ElseIf pWaitingPet4Alias.GetActorRef() == PetActor
		pWaitingPet4Alias.Clear()
		pWaitingPet4Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot4Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot4FilledBook, abSilent = true)
	ElseIf pWaitingPet5Alias.GetActorRef() == PetActor
		pWaitingPet5Alias.Clear()
		pWaitingPet5Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot5Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot5FilledBook, abSilent = true)
	ElseIf pWaitingPet6Alias.GetActorRef() == PetActor
		pWaitingPet6Alias.Clear()
		pWaitingPet6Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot6Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot6FilledBook, abSilent = true)
	ElseIf pWaitingPet7Alias.GetActorRef() == PetActor
		pWaitingPet7Alias.Clear()
		pWaitingPet7Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot7Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot7FilledBook, abSilent = true)
	ElseIf pWaitingPet8Alias.GetActorRef() == PetActor
		pWaitingPet8Alias.Clear()
		pWaitingPet8Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot8Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot8FilledBook, abSilent = true)
	ElseIf pWaitingPet9Alias.GetActorRef() == PetActor
		pWaitingPet9Alias.Clear()
		pWaitingPet9Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot9Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot9FilledBook, abSilent = true)
	ElseIf pWaitingPet10Alias.GetActorRef() == PetActor
		pWaitingPet10Alias.Clear()
		pWaitingPet10Exists.SetValue(0)
		Game.GetPlayer().AddItem(pPetSlot10Book, abSilent = true)
		Game.GetPlayer().RemoveItem(pPetSlot10FilledBook, abSilent = true)
	EndIf
	
	pCurrentPetAlias.ForceRefTo(PetActor)
	pCurrentPetExists.SetValue(1)
	
	PetActor.MoveTo(Game.GetPlayer(), 200)
	
EndFunction

Function SetWaiting()

	If (pWaitingPet1Exists.GetValue() == 0 && pSlot1Exists.GetValue() == 1) || (pWaitingPet2Exists.GetValue() == 0 && pSlot2Exists.GetValue() == 1) || (pWaitingPet3Exists.GetValue() == 0 && pSlot3Exists.GetValue() == 1) || (pWaitingPet4Exists.GetValue() == 0 && pSlot4Exists.GetValue() == 1) || (pWaitingPet5Exists.GetValue() == 0 && pSlot5Exists.GetValue() == 1) || (pWaitingPet6Exists.GetValue() == 0 && pSlot6Exists.GetValue() == 1) || (pWaitingPet7Exists.GetValue() == 0 && pSlot7Exists.GetValue() == 1) || (pWaitingPet8Exists.GetValue() == 0 && pSlot8Exists.GetValue() == 1) || (pWaitingPet9Exists.GetValue() == 0 && pSlot9Exists.GetValue() == 1) || (pWaitingPet10Exists.GetValue() == 0 && pSlot10Exists.GetValue() == 1)
		actor PetActor = pCurrentPetAlias.GetActorRef() as Actor
		PetActor.RemoveFromFaction(pCurrentPetFaction)
		PetActor.AddToFaction(pWaitingPetFaction)
		PetActor.SetPlayerTeammate(false)
	
		pCurrentPetAlias.Clear()
		pCurrentPetExists.SetValue(0)
	
		If pWaitingPet1Exists.GetValue() == 0 && pSlot1Exists.GetValue() == 1
			pWaitingPet1Alias.ForceRefTo(PetActor)
			pWaitingPet1Exists.SetValue(1)
			pWaitingPet1Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot1Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot1FilledBook, abSilent = true)
		ElseIf pWaitingPet2Exists.GetValue() == 0 && pSlot2Exists.GetValue() == 1
			pWaitingPet2Alias.ForceRefTo(PetActor)
			pWaitingPet2Exists.SetValue(1)
			pWaitingPet2Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot2Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot2FilledBook, abSilent = true)
		ElseIf pWaitingPet3Exists.GetValue() == 0 && pSlot3Exists.GetValue() == 1
			pWaitingPet3Alias.ForceRefTo(PetActor)
			pWaitingPet3Exists.SetValue(1)
			pWaitingPet3Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot3Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot3FilledBook, abSilent = true)
		ElseIf pWaitingPet4Exists.GetValue() == 0 && pSlot4Exists.GetValue() == 1
			pWaitingPet4Alias.ForceRefTo(PetActor)
			pWaitingPet4Exists.SetValue(1)
			pWaitingPet4Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot4Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot4FilledBook, abSilent = true)
		ElseIf pWaitingPet5Exists.GetValue() == 0 && pSlot5Exists.GetValue() == 1
			pWaitingPet5Alias.ForceRefTo(PetActor)
			pWaitingPet5Exists.SetValue(1)
			pWaitingPet5Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot5Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot5FilledBook, abSilent = true)
		ElseIf pWaitingPet6Exists.GetValue() == 0 && pSlot6Exists.GetValue() == 1
			pWaitingPet6Alias.ForceRefTo(PetActor)
			pWaitingPet6Exists.SetValue(1)
			pWaitingPet6Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot6Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot6FilledBook, abSilent = true)
		ElseIf pWaitingPet7Exists.GetValue() == 0 && pSlot7Exists.GetValue() == 1
			pWaitingPet7Alias.ForceRefTo(PetActor)
			pWaitingPet7Exists.SetValue(1)
			pWaitingPet7Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot7Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot7FilledBook, abSilent = true)
		ElseIf pWaitingPet8Exists.GetValue() == 0 && pSlot8Exists.GetValue() == 1
			pWaitingPet8Alias.ForceRefTo(PetActor)
			pWaitingPet8Exists.SetValue(1)
			pWaitingPet8Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot8Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot8FilledBook, abSilent = true)
		ElseIf pWaitingPet9Exists.GetValue() == 0 && pSlot9Exists.GetValue() == 1
			pWaitingPet9Alias.ForceRefTo(PetActor)
			pWaitingPet9Exists.SetValue(1)
			pWaitingPet9Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot9Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot9FilledBook, abSilent = true)
		ElseIf pWaitingPet10Exists.GetValue() == 0 && pSlot10Exists.GetValue() == 1
			pWaitingPet10Alias.ForceRefTo(PetActor)
			pWaitingPet10Exists.SetValue(1)
			pWaitingPet10Alias.GetActorRef().MoveTo(pObjectToMoveWaitingPetsTo)
			Game.GetPlayer().RemoveItem(pPetSlot10Book, abSilent = true)
			Game.GetPlayer().AddItem(pPetSlot10FilledBook, abSilent = true)
		EndIf
	Else
		Debug.Notification("All slots available are used!")
	EndIf
		
EndFunction

Function DismissPet()

	actor PetActor = pCurrentPetAlias.GetActorRef()
	PetActor.RemoveFromFaction(pCurrentPetFaction)
	PetActor.SetPlayerTeammate(false)
	
	pCurrentPetAlias.Clear()
	pCurrentPetExists.SetValue(0)

EndFunction