local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head51"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 40000.0
MaxFireSpeed = 40000.0
EnergyFireCost = 10149.031599034397
MetalFireCost = 338.3010533011468
ReloadTime = 5.4140625
Projectile = "_railgun51"
FireStdDev =0.0001064818909937576
FireStdDevAuto =5.32409454968788e-05
