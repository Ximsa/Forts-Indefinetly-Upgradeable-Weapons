local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base30",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base30"
MetalProductionRate = 15.5
EnergyProductionRate = 150.0
EnergyStorageCapacity = 340.0
MetalStorageCapacity = 155.0
