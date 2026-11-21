local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/antigravityreactor2.lua")
path = tmp
Sprites={{Name = "reactor-base340",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/antigravityreactor2/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="reactor-base340"
MetalProductionRate = 46.0
EnergyProductionRate = -245
Mass = -34800.0
MetalStorageCapacity = 245
