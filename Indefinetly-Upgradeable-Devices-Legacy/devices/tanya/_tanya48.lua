local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base48",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base48"
MetalProductionRate = 24.5
EnergyProductionRate = 240.0
EnergyStorageCapacity = 520.0
MetalStorageCapacity = 245.0
