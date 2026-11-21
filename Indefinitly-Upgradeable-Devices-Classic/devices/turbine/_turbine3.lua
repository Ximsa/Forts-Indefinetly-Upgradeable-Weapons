dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head3",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head3"
EnergyProductionRate = 95
MaxRotationalSpeed = 7.282857142857143
