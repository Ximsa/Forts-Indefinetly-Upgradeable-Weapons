local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/t_plant2.lua")
path = tmp
Sprites={{Name = "t_plant29",States={Normal={Frames={{texture= path .. "/../1295107278".."/t_plant2.dds",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="t_plant29"
EnergyProductionRate = 344
