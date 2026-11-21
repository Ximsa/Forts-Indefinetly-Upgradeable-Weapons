local tmp = path
path = path .. "/../1336948067"
dofile( path .. "/weapons/aabeam.lua")
path = tmp
Sprites={{Name = "firebeam-head134",States={Normal={Frames={{texture= path .. "/../1336948067".."/weapons/aabeam/head.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="firebeam-head134"
EnergyFireCost = 380.0
BeamDuration = 3.650000000000002
