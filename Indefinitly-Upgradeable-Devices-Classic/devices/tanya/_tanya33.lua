local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base33",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base33"
MetalProductionRate = 17.0
EnergyProductionRate = 165.0
EnergyStorageCapacity = 370.0
MetalStorageCapacity = 170.0
