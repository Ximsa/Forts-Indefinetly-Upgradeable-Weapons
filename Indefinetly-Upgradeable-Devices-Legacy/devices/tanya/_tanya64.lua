local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base64",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base64"
MetalProductionRate = 32.5
EnergyProductionRate = 320.0
EnergyStorageCapacity = 680.0
MetalStorageCapacity = 325.0
