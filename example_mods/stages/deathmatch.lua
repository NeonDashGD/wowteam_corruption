function onCreate()
	-- background shit
	makeLuaSprite('theStage','DeathmatchBack',-200,0)
	addLuaSprite('theStage',false)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end