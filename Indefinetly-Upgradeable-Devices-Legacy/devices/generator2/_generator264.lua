local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base64",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base64"
MetalProductionRate = -46.10000000000004
EnergyProductionRate = 1588.0
Mass = 290.5
