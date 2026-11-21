local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base7",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base7"
MetalProductionRate = 4.0
EnergyProductionRate = 35.0
EnergyStorageCapacity = 110.0
MetalStorageCapacity = 40.0
