local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base36",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base36"
MetalProductionRate = -26.499999999999982
EnergyProductionRate = 916.0
Mass = 192.5
