local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head37"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 34400.0
MaxFireSpeed = 34400.0
EnergyFireCost = 6857.593260738685
MetalFireCost = 228.58644202462293
ReloadTime = 6.3984375
Projectile = "_railgun37"
FireStdDev =0.0004043648038450831
FireStdDevAuto =0.00020218240192254155
