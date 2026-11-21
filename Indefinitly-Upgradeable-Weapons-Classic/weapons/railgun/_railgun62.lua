local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head62"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 44400.0
MaxFireSpeed = 44400.0
EnergyFireCost = 13285.866250543108
MetalFireCost = 442.8622083514372
ReloadTime = 4.640625
Projectile = "_railgun62"
FireStdDev =3.732125319855463e-05
FireStdDevAuto =1.8660626599277314e-05
