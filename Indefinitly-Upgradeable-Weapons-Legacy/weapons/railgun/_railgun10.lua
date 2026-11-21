local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head10"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 23600.0
MaxFireSpeed = 23600.0
EnergyFireCost = 2213.4963177206773
MetalFireCost = 73.78321059068924
ReloadTime = 8.296875
Projectile = "_railgun10"
FireStdDev =0.005301220229656059
FireStdDevAuto =0.0026506101148280293
