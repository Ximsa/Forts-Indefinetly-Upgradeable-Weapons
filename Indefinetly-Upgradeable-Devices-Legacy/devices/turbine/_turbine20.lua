dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head20",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head20"
EnergyProductionRate = 520
MaxRotationalSpeed = 9.342964280024617
