local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base39",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base39"
MetalProductionRate = -28.59999999999998
EnergyProductionRate = 988.0
Mass = 203.0
