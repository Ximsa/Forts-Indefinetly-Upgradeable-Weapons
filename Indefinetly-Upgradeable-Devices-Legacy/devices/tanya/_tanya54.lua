local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base54",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base54"
MetalProductionRate = 27.5
EnergyProductionRate = 270.0
EnergyStorageCapacity = 580.0
MetalStorageCapacity = 275.0
