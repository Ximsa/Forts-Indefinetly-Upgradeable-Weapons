local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head40",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head40"
NodeEffects = {}
MinFireSpeed = 41.879168334064715
MaxFireSpeed = 13915.0
EnergyFireCost = 5717.363249948733
MetalFireCost = 142.93408124871834
ReloadTime = 6.875
Projectile = "_mortar240"
FireStdDevAuto =1.970784392191281e-05
