local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/derrick2.lua")
path = tmp
Sprites={{Name = "derrick-base240",States={Normal={Frames={{texture= "devices/derrick/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="derrick-base240"
MetalProductionRate = 171
EnergyProductionRate = -410
