dofile("mods/repair_station/devices/repairstation.lua")
Sprites={{Name = "_repairstation-base64",States={Normal={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,Activate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.0,0.0,1},},duration = 0.5,mipmap=true,},NextState = "Active",},Active={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Deactivate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.0,0.0,1},},duration = 0.5,mipmap=true,},NextState = "Normal",}},},}
Root.Sprite="_repairstation-base64"
EnergyProductionRate = -116.79999999999986
RepairFieldRadius = 1460
