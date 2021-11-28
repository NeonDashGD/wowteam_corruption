function onCreate()
	-- background shit
	makeLuaSprite('theStage','broken',0,0)
	addLuaSprite('theStage',false)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end