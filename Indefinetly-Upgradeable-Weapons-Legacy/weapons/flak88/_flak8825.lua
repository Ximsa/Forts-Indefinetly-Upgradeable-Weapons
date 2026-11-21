local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel25"
NodeEffects = {}
MinFireSpeed = 17600.0
MaxFireSpeed = 17600.1
EnergyFireCost = 6720.432189865937
MetalFireCost = 173.43050812557254
ReloadTime = 4.42578125
Projectile = "_cannon88he25"
FireStdDev =0.0005076279899738523
FireStdDevAuto =0.0005076279899738523
