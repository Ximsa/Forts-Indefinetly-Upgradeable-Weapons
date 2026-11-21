local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base53",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base53"
MetalProductionRate = -38.400000000000006
EnergyProductionRate = 1324.0
Mass = 252.0
