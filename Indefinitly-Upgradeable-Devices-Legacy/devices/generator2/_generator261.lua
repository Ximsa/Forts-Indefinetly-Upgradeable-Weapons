local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base61",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base61"
MetalProductionRate = -44.00000000000003
EnergyProductionRate = 1516.0
Mass = 280.0
