local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/derrick2.lua")
path = tmp
Sprites={{Name = "derrick-base211",States={Normal={Frames={{texture= "devices/derrick/base.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="derrick-base211"
MetalProductionRate = 55
EnergyProductionRate = -120
