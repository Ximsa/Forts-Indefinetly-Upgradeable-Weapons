local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base51",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base51"
MetalProductionRate = -37.0
EnergyProductionRate = 1276.0
Mass = 245.0
