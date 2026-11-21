local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base59",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base59"
MetalProductionRate = 30.0
EnergyProductionRate = 295.0
EnergyStorageCapacity = 630.0
MetalStorageCapacity = 300.0
