local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base3",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base3"
MetalProductionRate = -3.4000000000000004
EnergyProductionRate = 124.0
Mass = 77.0
