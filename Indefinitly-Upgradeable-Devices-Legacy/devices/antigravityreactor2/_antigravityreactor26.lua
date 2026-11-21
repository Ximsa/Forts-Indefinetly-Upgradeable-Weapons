local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/antigravityreactor2.lua")
path = tmp
Sprites={{Name = "reactor-base36",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/antigravityreactor2/base.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="reactor-base36"
MetalProductionRate = 12.0
EnergyProductionRate = -75
Mass = -7600.0
MetalStorageCapacity = 75
