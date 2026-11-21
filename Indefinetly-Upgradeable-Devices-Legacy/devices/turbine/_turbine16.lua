dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head16",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head16"
EnergyProductionRate = 420
MaxRotationalSpeed = 8.90181550969745
