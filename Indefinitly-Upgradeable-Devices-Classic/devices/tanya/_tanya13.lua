local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base13",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base13"
MetalProductionRate = 7.0
EnergyProductionRate = 65.0
EnergyStorageCapacity = 170.0
MetalStorageCapacity = 70.0
