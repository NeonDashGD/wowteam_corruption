function onCreate()
	-- background shit
	makeLuaSprite('theStage','the_mind',-600,-450)
	addLuaSprite('theStage',false)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end