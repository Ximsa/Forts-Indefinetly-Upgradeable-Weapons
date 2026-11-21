local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head30",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head30"
NodeEffects = {}
MinFireSpeed = 120.10828177977933
MaxFireSpeed = 11565.0
EnergyFireCost = 4160.893815068307
MetalFireCost = 104.02234537670769
ReloadTime = 7.65625
Projectile = "_mortar230"
FireStdDevAuto =5.652154436695497e-05
