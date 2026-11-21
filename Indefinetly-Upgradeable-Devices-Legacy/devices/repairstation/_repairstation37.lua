dofile("mods/repair_station/devices/repairstation.lua")
Sprites={{Name = "_repairstation-base37",States={Normal={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,Activate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.7071067811865476,0.5,0.5,1},},duration = 0.5,mipmap=true,},NextState = "Active",},Active={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Deactivate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.7071067811865476,0.5,0.5,1},},duration = 0.5,mipmap=true,},NextState = "Normal",}},},}
Root.Sprite="_repairstation-base37"
EnergyProductionRate = -73.60000000000001
RepairFieldRadius = 920
