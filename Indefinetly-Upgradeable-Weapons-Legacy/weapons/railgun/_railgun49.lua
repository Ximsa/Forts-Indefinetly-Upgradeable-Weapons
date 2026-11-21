local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head49"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 39200.0
MaxFireSpeed = 39200.0
EnergyFireCost = 9633.977143111217
MetalFireCost = 321.1325714370408
ReloadTime = 5.5546875
Projectile = "_railgun49"
FireStdDev =0.0001288430881024467
FireStdDevAuto =6.442154405122336e-05
