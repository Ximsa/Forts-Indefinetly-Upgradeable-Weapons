dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head8",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head8"
EnergyProductionRate = 220
MaxRotationalSpeed = 7.9453023855524965
