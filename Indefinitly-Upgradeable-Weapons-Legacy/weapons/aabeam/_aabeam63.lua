local tmp = path
path = path .. "/../1336948067"
dofile( path .. "/weapons/aabeam.lua")
path = tmp
Sprites={{Name = "firebeam-head163",States={Normal={Frames={{texture= path .. "/../1336948067".."/weapons/aabeam/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="firebeam-head163"
EnergyFireCost = 670.0
BeamDuration = 6.549999999999994
