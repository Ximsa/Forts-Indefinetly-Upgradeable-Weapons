local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base53",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base53"
MetalProductionRate = 27.0
EnergyProductionRate = 265.0
EnergyStorageCapacity = 570.0
MetalStorageCapacity = 270.0
