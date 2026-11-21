local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base49",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base49"
MetalProductionRate = 25.0
EnergyProductionRate = 245.0
EnergyStorageCapacity = 530.0
MetalStorageCapacity = 250.0
