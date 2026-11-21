local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base48",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base48"
MetalProductionRate = -34.89999999999999
EnergyProductionRate = 1204.0
Mass = 234.5
