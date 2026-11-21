dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head24",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head24"
EnergyProductionRate = 620
MaxRotationalSpeed = 9.763979820467426
