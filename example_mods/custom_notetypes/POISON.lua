function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'POISON' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'POISON_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-500'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '500'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

local timee = 10;

function goodNoteHit(noteType) -- If the note was hit
	if noteType == 'POISON' then
		--setProperty('health', getProperty('health') - 0.6)
		while true do
		if timee > 0 then
			wait(0.5---)
			setProperty('health', getProperty('health') - 0.2)
			if timee <= 0 then
				break
			end
		end
	end
end