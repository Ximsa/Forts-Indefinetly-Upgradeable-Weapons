local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head6"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 22000.0
MaxFireSpeed = 22000.0
EnergyFireCost = 1676.299701416865
MetalFireCost = 55.8766567138955
ReloadTime = 8.578125
Projectile = "_railgun6"
FireStdDev =0.007761516538239438
FireStdDevAuto =0.003880758269119719
