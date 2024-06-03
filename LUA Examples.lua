function speak_dialog(dialog)
	if dialog == 1 then
		SetSpeakDetail( OwnerID(), 'Window text')
		addspeakoption(ownerid(),ownerid(),'button1','speak_dialog(2)',0)
		addspeakoption(ownerid(),ownerid(),'button2','speak_dialog(3)',0)
	elseif dialog == 2 then
		CloseSpeak( OwnerID() )
	elseif dialog == 3 then
		CloseSpeak( OwnerID() )
	else 
		--callback
		DialogClose( OwnerID() )
		CloseSpeak( OwnerID() )
		callspeaklua(targetid(), ownerid(), "speak_dialog(1)")
	end
	if dialog ~= nil and dialog ~= 1 then
		addspeakoption(ownerid(),ownerid(),'Back','speak_dialog(1)',0)
	end
end
