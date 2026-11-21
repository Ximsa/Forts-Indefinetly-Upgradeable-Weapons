local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base61",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base61"
MetalProductionRate = 31.0
EnergyProductionRate = 305.0
EnergyStorageCapacity = 650.0
MetalStorageCapacity = 310.0
