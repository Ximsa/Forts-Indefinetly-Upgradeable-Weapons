local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base4",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base4"
MetalProductionRate = 2.5
EnergyProductionRate = 20.0
EnergyStorageCapacity = 80.0
MetalStorageCapacity = 25.0
