local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/antigravityreactor2.lua")
path = tmp
Sprites={{Name = "reactor-base38",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/antigravityreactor2/base.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="reactor-base38"
MetalProductionRate = 14.0
EnergyProductionRate = -85
Mass = -9200.0
MetalStorageCapacity = 85
