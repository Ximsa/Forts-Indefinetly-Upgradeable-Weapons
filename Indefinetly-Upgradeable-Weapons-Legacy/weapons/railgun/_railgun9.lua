local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head9"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 23200.0
MaxFireSpeed = 23200.0
EnergyFireCost = 2076.0579128326667
MetalFireCost = 69.20193042775556
ReloadTime = 8.3671875
Projectile = "_railgun9"
FireStdDev =0.005831342252621665
FireStdDevAuto =0.0029156711263108323
