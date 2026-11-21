local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base9",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base9"
MetalProductionRate = -7.600000000000001
EnergyProductionRate = 268.0
Mass = 98.0
