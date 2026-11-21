local tmp = path
path = path .. "/../1295107278"
dofile( path .. "/devices/t_plant2.lua")
path = tmp
Sprites={{Name = "t_plant221",States={Normal={Frames={{texture= path .. "/../1295107278".."/t_plant2.dds",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="t_plant221"
EnergyProductionRate = 728
