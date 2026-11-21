local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head57"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 42400.0
MaxFireSpeed = 42400.0
EnergyFireCost = 11793.581731782238
MetalFireCost = 393.1193910594082
ReloadTime = 4.9921875
Projectile = "_railgun57"
FireStdDev =6.0106251488804245e-05
FireStdDevAuto =3.0053125744402123e-05
