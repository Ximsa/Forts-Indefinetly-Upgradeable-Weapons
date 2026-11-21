local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base60",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base60"
MetalProductionRate = 30.5
EnergyProductionRate = 300.0
EnergyStorageCapacity = 640.0
MetalStorageCapacity = 305.0
