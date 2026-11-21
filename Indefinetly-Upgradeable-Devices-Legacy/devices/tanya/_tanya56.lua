local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base56",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base56"
MetalProductionRate = 28.5
EnergyProductionRate = 280.0
EnergyStorageCapacity = 600.0
MetalStorageCapacity = 285.0
