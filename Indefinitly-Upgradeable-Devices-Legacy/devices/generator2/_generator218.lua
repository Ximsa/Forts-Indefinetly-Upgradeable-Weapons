local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base18",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base18"
MetalProductionRate = -13.899999999999995
EnergyProductionRate = 484.0
Mass = 129.5
