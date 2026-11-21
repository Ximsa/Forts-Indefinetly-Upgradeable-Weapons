local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head55"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 41600.0
MaxFireSpeed = 41600.0
EnergyFireCost = 11228.31497594794
MetalFireCost = 374.2771658649316
ReloadTime = 5.1328125
Projectile = "_railgun55"
FireStdDev =7.272856430145315e-05
FireStdDevAuto =3.6364282150726576e-05
