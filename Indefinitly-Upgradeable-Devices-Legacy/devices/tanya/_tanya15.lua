local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base15",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base15"
MetalProductionRate = 8.0
EnergyProductionRate = 75.0
EnergyStorageCapacity = 190.0
MetalStorageCapacity = 80.0
