dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head2",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head2"
EnergyProductionRate = 70
MaxRotationalSpeed = 7.142857142857143
