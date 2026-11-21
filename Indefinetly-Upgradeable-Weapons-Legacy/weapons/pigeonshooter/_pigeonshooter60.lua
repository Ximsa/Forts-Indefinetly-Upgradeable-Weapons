local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head60"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 20800.0
MaxFireSpeed = 20800.1
EnergyFireCost = 5432.158393463183
MetalFireCost = 362.1438928975457
ReloadTime = 3.453125
Projectile = "_musket60"
FireStdDev =7.225394619240181e-05
FireStdDevAuto =0.00014450789238480363
