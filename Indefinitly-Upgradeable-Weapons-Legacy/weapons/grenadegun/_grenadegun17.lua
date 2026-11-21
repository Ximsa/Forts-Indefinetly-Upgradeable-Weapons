local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head17"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 6950.0
MaxFireSpeed = 6950.1
EnergyFireCost = 10792.03552376927
MetalFireCost = 154.17193605384668
ReloadTime = 21.6796875
Projectile = "_grenade17"
FireStdDev =0.0043525827158029705
FireStdDevAuto =0.0021762913579014853
