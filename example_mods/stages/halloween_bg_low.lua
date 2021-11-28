function onCreate()
	-- background shit
	makeLuaSprite('halloween_bg_low', 'halloween_bg_low', -600, -300);
	setScrollFactor('halloween_bg_low', 0.9, 0.9);
	
	makeLuaSprite('yee2', 'yee2', -650, 600);
	setScrollFactor('yee2', 0.9, 0.9);
	scaleObject('yee2', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally
	end

	addLuaSprite('stageback', false);
	addLuaSprite('halloween_bg_low', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end