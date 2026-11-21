local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/generator2.lua")
path = tmp
Sprites={{Name = "generator2-base29",States={Normal={Frames={{texture= path .. "/../1295107278".."/devices/generator2.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="generator2-base29"
MetalProductionRate = -21.599999999999987
EnergyProductionRate = 748.0
Mass = 168.0
