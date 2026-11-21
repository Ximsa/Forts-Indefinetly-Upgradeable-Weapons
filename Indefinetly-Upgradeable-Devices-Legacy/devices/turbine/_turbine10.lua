dofile("devices/windturbine.lua")
Sprites={{Name = "windturbine-head10",States={Normal={Frames={{texture="devices/windturbine/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="windturbine-head10"
EnergyProductionRate = 270
MaxRotationalSpeed = 8.195060802537874
