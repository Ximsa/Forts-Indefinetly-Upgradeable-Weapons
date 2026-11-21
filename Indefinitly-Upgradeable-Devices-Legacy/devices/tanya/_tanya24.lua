local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base24",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base24"
MetalProductionRate = 12.5
EnergyProductionRate = 120.0
EnergyStorageCapacity = 280.0
MetalStorageCapacity = 125.0
