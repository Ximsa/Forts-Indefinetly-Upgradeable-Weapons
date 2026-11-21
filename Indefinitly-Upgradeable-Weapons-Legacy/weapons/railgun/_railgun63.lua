local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head63"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 44800.0
MaxFireSpeed = 44800.0
EnergyFireCost = 13598.457910707844
MetalFireCost = 453.2819303569284
ReloadTime = 4.5703125
Projectile = "_railgun63"
FireStdDev =3.3928411998686026e-05
FireStdDevAuto =1.6964205999343013e-05
