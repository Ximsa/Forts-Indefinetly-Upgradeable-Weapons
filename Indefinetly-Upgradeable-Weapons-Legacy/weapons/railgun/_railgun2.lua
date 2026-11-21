local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head2"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 20400.0
MaxFireSpeed = 20400.0
EnergyFireCost = 1171.40625
MetalFireCost = 39.046875
ReloadTime = 8.859375
Projectile = "_railgun2"
FireStdDev =0.011363636363636364
FireStdDevAuto =0.005681818181818182
