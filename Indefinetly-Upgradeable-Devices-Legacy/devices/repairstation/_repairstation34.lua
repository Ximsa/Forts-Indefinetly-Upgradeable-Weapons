dofile("mods/repair_station/devices/repairstation.lua")
Sprites={{Name = "_repairstation-base34",States={Normal={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,Activate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},duration = 0.5,mipmap=true,},NextState = "Active",},Active={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Deactivate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},duration = 0.5,mipmap=true,},NextState = "Normal",}},},}
Root.Sprite="_repairstation-base34"
EnergyProductionRate = -68.80000000000003
RepairFieldRadius = 860
