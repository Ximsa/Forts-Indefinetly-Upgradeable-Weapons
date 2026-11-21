local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base22",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base22"
MetalProductionRate = -16.699999999999992
EnergyProductionRate = 580.0
Mass = 143.5
