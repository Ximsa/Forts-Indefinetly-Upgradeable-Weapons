local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base5",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base5"
MetalProductionRate = 3.0
EnergyProductionRate = 25.0
EnergyStorageCapacity = 90.0
MetalStorageCapacity = 30.0
