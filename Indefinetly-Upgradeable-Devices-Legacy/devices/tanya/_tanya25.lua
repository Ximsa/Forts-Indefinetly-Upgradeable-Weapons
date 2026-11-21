local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base25",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base25"
MetalProductionRate = 13.0
EnergyProductionRate = 125.0
EnergyStorageCapacity = 290.0
MetalStorageCapacity = 130.0
