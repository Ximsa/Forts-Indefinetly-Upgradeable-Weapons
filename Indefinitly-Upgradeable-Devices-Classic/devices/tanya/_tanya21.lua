local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base21",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base21"
MetalProductionRate = 11.0
EnergyProductionRate = 105.0
EnergyStorageCapacity = 250.0
MetalStorageCapacity = 110.0
