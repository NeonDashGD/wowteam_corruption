function onCreate()
	-- background shit
	makeLuaSprite('evilBG2', 'mallEvil2/evilBG2', -400, -500);
     setLuaSpriteScrollFactor('evilBG2', 0.2, 0.2);
	 scaleObject('evilBG2', 0.8, 0.8);
	


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('evilTree2', 'mallEvil2/evilTree2', 300, -300);
	    setLuaSpriteScrollFactor('evilTree2', 0.40, 0.40);
		makeLuaSprite('evilSnow2', 'mallEvil2/evilSnow2', -200, 700);
		
	end

	addLuaSprite('evilBG2', false);
	addLuaSprite('evilTree2', false);
	addLuaSprite('evilSnow2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end