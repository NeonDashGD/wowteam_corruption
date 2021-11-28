function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an 2Si Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'HAMMER_Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'HAMMERNOTE_assets'); --Change texture
	
        	if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
	end
   end	

end	



-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

local healthDrain = 0;
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'HAMMER_Note' then
		-- bf anim
		characterPlayAnim('boyfriend', 'hurt', true);
		setProperty('boyfriend.specialAnim', true);

		-- dad anim
		characterPlayAnim('dad', animToPlay, true);
		setProperty('dad.specialAnim', true);

		-- health loss | || || |_
		--setProperty('health', getProperty('health') - 0.6);
		healthDrain = healthDrain + 0.6;
	end
end

function onUpdate(elapsed)
	if healthDrain > 0 then
		healthDrain = healthDrain - 0.07 * elapsed;
		setProperty('health', getProperty('health') - 0.07 * elapsed);
		if healthDrain < 0 then
			healthDrain = 0;
		end
	end
end