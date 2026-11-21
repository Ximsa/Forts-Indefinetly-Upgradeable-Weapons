local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base6",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base6"
MetalProductionRate = 3.5
EnergyProductionRate = 30.0
EnergyStorageCapacity = 100.0
MetalStorageCapacity = 35.0
