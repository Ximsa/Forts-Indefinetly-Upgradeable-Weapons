local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head8"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 22800.0
MaxFireSpeed = 22800.0
EnergyFireCost = 1940.7339449429332
MetalFireCost = 64.69113149809777
ReloadTime = 8.4375
Projectile = "_railgun8"
FireStdDev =0.006414476477883832
FireStdDevAuto =0.003207238238941916
