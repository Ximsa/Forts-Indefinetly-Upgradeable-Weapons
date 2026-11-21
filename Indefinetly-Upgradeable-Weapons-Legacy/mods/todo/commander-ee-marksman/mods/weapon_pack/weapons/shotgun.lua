dofile("scripts/device_utility.lua")

HasLaserSight = true

table.insert(Sprites,
{
	Name = "shotgun-reload-marksman",
	States =
	{
		Normal = { Frames = { { texture =  path .. "/weapons/shotgun/barrel01.png" }, mipmap = true, }, },
		Idle = Normal,
		Reload =
		{
			Frames =
			{
				{ texture = path .. "/weapons/shotgun/barrel01.png", duration = 0.5 },
				{ texture = path .. "/weapons/shotgun/barrel02.png", duration = 0.1 },
				{ texture = path .. "/weapons/shotgun/barrel03.png", duration = 0.1 },
				{ texture = path .. "/weapons/shotgun/barrel04.png", duration = 0.1 },
				{ texture = path .. "/weapons/shotgun/barrel05.png", duration = 0.1 },
				{ texture = path .. "/weapons/shotgun/barrel04.png", duration = 7.9 },
				{ texture = path .. "/weapons/shotgun/barrel03.png", duration = 0.1 },
				{ texture = path .. "/weapons/shotgun/barrel02.png", duration = 0.1 },
				mipmap = true,
				duration = ReloadFramePeriod,
			},
			NextState = "Normal",
		},
	},
})

reload = FindSpriteComponent(Root, "Reload")
if reload then
	reload.Sprite = "shotgun-reload-marksman"
end
