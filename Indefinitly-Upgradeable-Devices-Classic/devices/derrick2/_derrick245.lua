local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/derrick2.lua")
path = tmp
Sprites={{Name = "derrick-base245",States={Normal={Frames={{texture= "devices/derrick/base.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="derrick-base245"
MetalProductionRate = 191
EnergyProductionRate = -460
