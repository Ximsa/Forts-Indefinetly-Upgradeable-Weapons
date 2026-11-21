local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base22",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base22"
MetalProductionRate = 11.5
EnergyProductionRate = 110.0
EnergyStorageCapacity = 260.0
MetalStorageCapacity = 115.0
