local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base16",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base16"
MetalProductionRate = 8.5
EnergyProductionRate = 80.0
EnergyStorageCapacity = 200.0
MetalStorageCapacity = 85.0
