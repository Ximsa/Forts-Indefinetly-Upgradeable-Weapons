local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base17",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base17"
MetalProductionRate = 9.0
EnergyProductionRate = 85.0
EnergyStorageCapacity = 210.0
MetalStorageCapacity = 90.0
