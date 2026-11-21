dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head32",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head32"
EnergyProductionRate = 820
MaxRotationalSpeed = 10.555264473662723
