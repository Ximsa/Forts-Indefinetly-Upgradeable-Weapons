local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base57",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base57"
MetalProductionRate = 29.0
EnergyProductionRate = 285.0
EnergyStorageCapacity = 610.0
MetalStorageCapacity = 290.0
