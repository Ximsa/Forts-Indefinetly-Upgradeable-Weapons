local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base16",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base16"
MetalProductionRate = -12.499999999999996
EnergyProductionRate = 436.0
Mass = 122.5
