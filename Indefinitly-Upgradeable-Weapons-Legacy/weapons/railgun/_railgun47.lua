local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head47"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 38400.0
MaxFireSpeed = 38400.0
EnergyFireCost = 9134.648610220956
MetalFireCost = 304.48828700736544
ReloadTime = 5.6953125
Projectile = "_railgun47"
FireStdDev =0.00015590013660396056
FireStdDevAuto =7.795006830198028e-05
