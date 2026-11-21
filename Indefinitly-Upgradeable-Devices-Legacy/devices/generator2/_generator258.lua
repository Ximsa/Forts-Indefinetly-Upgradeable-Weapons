local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base58",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base58"
MetalProductionRate = -41.90000000000002
EnergyProductionRate = 1444.0
Mass = 269.5
