local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/t_plant2.lua")
path = tmp
Sprites={{Name = "t_plant244",States={Normal={Frames={{texture= path .. "/../1295107278".."/t_plant2.dds",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="t_plant244"
EnergyProductionRate = 1464
