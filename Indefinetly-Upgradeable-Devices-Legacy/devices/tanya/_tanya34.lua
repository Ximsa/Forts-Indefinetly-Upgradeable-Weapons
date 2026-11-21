local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base34",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base34"
MetalProductionRate = 17.5
EnergyProductionRate = 170.0
EnergyStorageCapacity = 380.0
MetalStorageCapacity = 175.0
