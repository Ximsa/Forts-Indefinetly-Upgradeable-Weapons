local tmp = path
path = path .. "/../1336948067"
dofile( path .. "/weapons/aabeam.lua")
path = tmp
Sprites={{Name = "firebeam-head156",States={Normal={Frames={{texture= path .. "/../1336948067".."/weapons/aabeam/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="firebeam-head156"
EnergyFireCost = 600.0
BeamDuration = 5.849999999999996
