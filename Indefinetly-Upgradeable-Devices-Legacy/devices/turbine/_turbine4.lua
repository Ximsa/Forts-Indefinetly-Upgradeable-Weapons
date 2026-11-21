dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head4",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head4"
EnergyProductionRate = 120
MaxRotationalSpeed = 7.420165891385977
