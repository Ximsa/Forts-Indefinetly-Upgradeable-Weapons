local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head18"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 26800.0
MaxFireSpeed = 26800.0
EnergyFireCost = 3393.1983236484493
MetalFireCost = 113.10661078828164
ReloadTime = 7.734375
Projectile = "_railgun18"
FireStdDev =0.002473058361251688
FireStdDevAuto =0.001236529180625844
