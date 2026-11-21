dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head64",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head64"
EnergyProductionRate = 1620
MaxRotationalSpeed = 13.253000904109166
