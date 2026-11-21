local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base28",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base28"
MetalProductionRate = 14.5
EnergyProductionRate = 140.0
EnergyStorageCapacity = 320.0
MetalStorageCapacity = 145.0
