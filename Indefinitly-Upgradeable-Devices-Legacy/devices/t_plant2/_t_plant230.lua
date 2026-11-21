local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/t_plant2.lua")
path = tmp
Sprites={{Name = "t_plant230",States={Normal={Frames={{texture= path .. "/../1295107278".."/t_plant2.dds",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="t_plant230"
EnergyProductionRate = 1016
