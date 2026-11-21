local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head25"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 29600.0
MaxFireSpeed = 29600.0
EnergyFireCost = 4552.55083829628
MetalFireCost = 151.751694609876
ReloadTime = 7.2421875
Projectile = "_railgun25"
FireStdDev =0.001269069974934631
FireStdDevAuto =0.0006345349874673155
