local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head46"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 38000.0
MaxFireSpeed = 38000.0
EnergyFireCost = 8890.73093929448
MetalFireCost = 296.3576979764829
ReloadTime = 5.765625
Projectile = "_railgun46"
FireStdDev =0.00017149015026435662
FireStdDevAuto =8.574507513217831e-05
