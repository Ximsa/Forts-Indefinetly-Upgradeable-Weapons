local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base43",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base43"
MetalProductionRate = 22.0
EnergyProductionRate = 215.0
EnergyStorageCapacity = 470.0
MetalStorageCapacity = 220.0
