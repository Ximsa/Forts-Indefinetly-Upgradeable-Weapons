local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/derrick2.lua")
path = tmp
Sprites={{Name = "derrick-base242",States={Normal={Frames={{texture= "devices/derrick/base.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="derrick-base242"
MetalProductionRate = 179
EnergyProductionRate = -430
