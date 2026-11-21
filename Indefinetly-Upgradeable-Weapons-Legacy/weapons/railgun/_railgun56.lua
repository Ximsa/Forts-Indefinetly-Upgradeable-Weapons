local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head56"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 42000.0
MaxFireSpeed = 42000.0
EnergyFireCost = 11508.757397447127
MetalFireCost = 383.62524658157116
ReloadTime = 5.0625
Projectile = "_railgun56"
FireStdDev =6.611687663768467e-05
FireStdDevAuto =3.3058438318842337e-05
