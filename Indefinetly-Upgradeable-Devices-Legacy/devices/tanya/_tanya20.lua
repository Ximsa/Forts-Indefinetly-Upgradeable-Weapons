local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base20",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base20"
MetalProductionRate = 10.5
EnergyProductionRate = 100.0
EnergyStorageCapacity = 240.0
MetalStorageCapacity = 105.0
