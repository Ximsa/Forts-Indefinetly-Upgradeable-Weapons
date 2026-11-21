local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base39",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base39"
MetalProductionRate = 20.0
EnergyProductionRate = 195.0
EnergyStorageCapacity = 430.0
MetalStorageCapacity = 200.0
