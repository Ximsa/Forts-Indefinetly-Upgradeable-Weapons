local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base9",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base9"
MetalProductionRate = 5.0
EnergyProductionRate = 45.0
EnergyStorageCapacity = 130.0
MetalStorageCapacity = 50.0
