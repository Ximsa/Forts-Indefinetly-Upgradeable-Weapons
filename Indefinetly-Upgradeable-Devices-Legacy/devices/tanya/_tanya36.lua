local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base36",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base36"
MetalProductionRate = 18.5
EnergyProductionRate = 180.0
EnergyStorageCapacity = 400.0
MetalStorageCapacity = 185.0
