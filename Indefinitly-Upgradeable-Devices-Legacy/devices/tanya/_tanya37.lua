local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base37",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base37"
MetalProductionRate = 19.0
EnergyProductionRate = 185.0
EnergyStorageCapacity = 410.0
MetalStorageCapacity = 190.0
