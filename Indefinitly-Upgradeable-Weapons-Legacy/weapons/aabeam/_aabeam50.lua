local tmp = path
path = path .. "/../1336948067"
dofile( path .. "/weapons/aabeam.lua")
path = tmp
Sprites={{Name = "firebeam-head150",States={Normal={Frames={{texture= path .. "/../1336948067".."/weapons/aabeam/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="firebeam-head150"
EnergyFireCost = 540.0
BeamDuration = 5.249999999999998
