local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head20"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 27600.0
MaxFireSpeed = 27600.0
EnergyFireCost = 3711.704813821948
MetalFireCost = 123.72349379406492
ReloadTime = 7.59375
Projectile = "_railgun20"
FireStdDev =0.0020438498853319735
FireStdDevAuto =0.0010219249426659867
