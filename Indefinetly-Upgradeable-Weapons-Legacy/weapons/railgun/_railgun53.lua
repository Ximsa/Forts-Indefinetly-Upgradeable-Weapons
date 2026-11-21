local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head53"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 40800.0
MaxFireSpeed = 40800.0
EnergyFireCost = 10680.307252421955
MetalFireCost = 356.01024174739877
ReloadTime = 5.2734375
Projectile = "_railgun53"
FireStdDev =8.800156280475834e-05
FireStdDevAuto =4.400078140237917e-05
