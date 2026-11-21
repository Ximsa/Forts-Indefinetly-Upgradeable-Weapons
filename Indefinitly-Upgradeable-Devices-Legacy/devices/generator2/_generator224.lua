local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base24",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base24"
MetalProductionRate = -18.09999999999999
EnergyProductionRate = 628.0
Mass = 150.5
