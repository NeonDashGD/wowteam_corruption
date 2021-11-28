function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Warning Note Gun' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Warning_Notes'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Warning Note Gun' then
		playSound('gunShoot', 0.5)
	end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Warning Note Gun' then
		playSound('gunShoot', 0.5)
	end
end
function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Warning Note Gun' then
		playSound('gunShoot', 0.5)
		setProperty('health', -500);
	end
end