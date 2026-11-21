local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base29",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base29"
MetalProductionRate = 15.0
EnergyProductionRate = 145.0
EnergyStorageCapacity = 330.0
MetalStorageCapacity = 150.0
