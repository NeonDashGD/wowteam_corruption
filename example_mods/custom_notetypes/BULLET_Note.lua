function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BULLET_Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BULLETNOTE_assets'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'BULLET_Note' then
		triggerEvent('Flash', 0.50, 5)
			playSound('punch', 1)
			setProperty('health', -500);
		characterPlayAnim('boyfriend', 'hurt', true);
		characterPlayAnim('Dad', 'shoot', true);
	

	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'BULLET_Note' then
		triggerEvent('Flash', 0.50, 5)
		triggerEvent('Screen Shake', 0.10,0.05, 0.10,0.05)
		triggerEvent('Add Camera Zoom', 0.25, 0.04)
			playSound('hankshoot', 1)
		characterPlayAnim('boyfriend', 'dodge', true);
		characterPlayAnim('Dad', 'shoot', true);
	
	end
end