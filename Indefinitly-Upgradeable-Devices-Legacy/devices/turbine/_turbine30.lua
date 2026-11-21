dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head30",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head30"
EnergyProductionRate = 770
MaxRotationalSpeed = 10.363163431477643
