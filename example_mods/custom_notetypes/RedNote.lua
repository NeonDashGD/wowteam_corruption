function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an RedNote
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'RedNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'rednote'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'RedNote' then
			playSound('shot', 1)
			setProperty('health', -1);

	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'RedNote' then
		playSound('shot', 1)
		characterPlayAnim('boyfriend', 'dodge', true);
	end
end