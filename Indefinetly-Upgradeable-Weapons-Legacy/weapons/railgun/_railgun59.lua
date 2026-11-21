local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head59"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 43200.0
MaxFireSpeed = 43200.0
EnergyFireCost = 12376.65107831542
MetalFireCost = 412.5550359438476
ReloadTime = 4.8515625
Projectile = "_railgun59"
FireStdDev =4.9674588007276224e-05
FireStdDevAuto =2.4837294003638112e-05
