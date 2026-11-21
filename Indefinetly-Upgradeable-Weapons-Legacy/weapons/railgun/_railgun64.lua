local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head64"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 45200.0
MaxFireSpeed = 45200.0
EnergyFireCost = 13915.933815562654
MetalFireCost = 463.8644605187554
ReloadTime = 4.5
Projectile = "_railgun64"
FireStdDev =3.084401090789638e-05
FireStdDevAuto =1.542200545394819e-05
