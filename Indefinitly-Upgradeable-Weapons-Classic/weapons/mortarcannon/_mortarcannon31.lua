local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head31",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head31"
NodeEffects = {}
MinFireSpeed = 108.0974536018014
MaxFireSpeed = 11800.0
EnergyFireCost = 4305.907780928749
MetalFireCost = 107.64769452321875
ReloadTime = 7.578125
Projectile = "_mortar231"
FireStdDevAuto =5.086938993025948e-05
