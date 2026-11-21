local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base4",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base4"
MetalProductionRate = -4.1000000000000005
EnergyProductionRate = 148.0
Mass = 80.5
