local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/derrick2.lua")
path = tmp
Sprites={{Name = "derrick-base264",States={Normal={Frames={{texture= "devices/derrick/base.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="derrick-base264"
MetalProductionRate = 267
EnergyProductionRate = -650
