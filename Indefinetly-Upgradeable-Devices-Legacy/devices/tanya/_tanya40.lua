local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/tanya.lua")
path = tmp
Sprites={{Name = "tanya-base40",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/tanya/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="tanya-base40"
MetalProductionRate = 20.5
EnergyProductionRate = 200.0
EnergyStorageCapacity = 440.0
MetalStorageCapacity = 205.0
