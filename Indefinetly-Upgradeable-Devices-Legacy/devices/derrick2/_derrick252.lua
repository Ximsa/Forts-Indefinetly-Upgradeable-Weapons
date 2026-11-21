local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/derrick2.lua")
path = tmp
Sprites={{Name = "derrick-base252",States={Normal={Frames={{texture= "devices/derrick/base.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="derrick-base252"
MetalProductionRate = 219
EnergyProductionRate = -530
