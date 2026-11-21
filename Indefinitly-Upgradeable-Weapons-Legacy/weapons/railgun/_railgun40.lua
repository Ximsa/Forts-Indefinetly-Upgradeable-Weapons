local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head40"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 35600.0
MaxFireSpeed = 35600.0
EnergyFireCost = 7504.039265557714
MetalFireCost = 250.13464218525723
ReloadTime = 6.1875
Projectile = "_railgun40"
FireStdDev =0.00030380526209247406
FireStdDevAuto =0.00015190263104623703
