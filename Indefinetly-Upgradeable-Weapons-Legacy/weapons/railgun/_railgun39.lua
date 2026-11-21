local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head39"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 35200.0
MaxFireSpeed = 35200.0
EnergyFireCost = 7285.207892241442
MetalFireCost = 242.8402630747148
ReloadTime = 6.2578125
Projectile = "_railgun39"
FireStdDev =0.0003341857883017215
FireStdDevAuto =0.00016709289415086075
