local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base44",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base44"
MetalProductionRate = 22.5
EnergyProductionRate = 220.0
EnergyStorageCapacity = 480.0
MetalStorageCapacity = 225.0
