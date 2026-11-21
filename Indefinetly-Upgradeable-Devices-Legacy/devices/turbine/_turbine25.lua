dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head25",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head25"
EnergyProductionRate = 645
MaxRotationalSpeed = 9.866397074331857
