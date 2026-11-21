local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base34",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base34"
MetalProductionRate = -25.099999999999984
EnergyProductionRate = 868.0
Mass = 185.5
