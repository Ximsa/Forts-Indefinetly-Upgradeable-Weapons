local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base8",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base8"
MetalProductionRate = 4.5
EnergyProductionRate = 40.0
EnergyStorageCapacity = 120.0
MetalStorageCapacity = 45.0
