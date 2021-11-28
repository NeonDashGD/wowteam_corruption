function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'DODGE' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'DODGE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				
			end
		end
	end
	--debugPrint('Script started!')
end

function noteMiss(id, direction, noteType, isSustainNote) -- If the note was missed
	if noteType == "DODGE" then
		setProperty('health', 0); -- Hurts the player of they miss the note
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote) -- If the note was hit
	if noteType == "DODGE" then
		characterPlayAnim('boyfriend', 'dodge', true); -- Plays the dodge animation for the bf
	end
end
	