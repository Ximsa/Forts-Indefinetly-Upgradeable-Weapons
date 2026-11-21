local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base12",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base12"
MetalProductionRate = 6.5
EnergyProductionRate = 60.0
EnergyStorageCapacity = 160.0
MetalStorageCapacity = 65.0
