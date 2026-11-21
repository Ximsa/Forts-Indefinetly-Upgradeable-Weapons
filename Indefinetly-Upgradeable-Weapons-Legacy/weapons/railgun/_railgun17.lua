local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head17"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 26400.0
MaxFireSpeed = 26400.0
EnergyFireCost = 3237.610657130781
MetalFireCost = 107.92035523769269
ReloadTime = 7.8046875
Projectile = "_railgun17"
FireStdDev =0.002720364197376857
FireStdDevAuto =0.0013601820986884285
