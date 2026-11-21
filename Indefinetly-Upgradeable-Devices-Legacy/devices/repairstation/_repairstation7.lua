dofile("mods/repair_station/devices/repairstation.lua")
Sprites={{Name = "_repairstation-base7",States={Normal={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,Activate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.5,0.8660254037844386,1},},duration = 0.5,mipmap=true,},NextState = "Active",},Active={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Deactivate={Frames={{texture="mods/repair_station/devices/repairstation/active.tga",colour={0.0,0.5,0.8660254037844386,1},},duration = 0.5,mipmap=true,},NextState = "Normal",}},},}
Root.Sprite="_repairstation-base7"
EnergyProductionRate = -25.60000000000001
RepairFieldRadius = 320
