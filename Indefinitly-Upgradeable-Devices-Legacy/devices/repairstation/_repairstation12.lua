dofile("mods/repair_station/devices/repairstation.lua")
Sprites={{Name = "_repairstation-base12",States={Normal={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,Activate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.8660254037844386,0.0,1},},duration = 0.5,mipmap=true,},NextState = "Active",},Active={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Deactivate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.8660254037844386,0.0,1},},duration = 0.5,mipmap=true,},NextState = "Normal",}},},}
Root.Sprite="_repairstation-base12"
EnergyProductionRate = -33.600000000000016
RepairFieldRadius = 420
