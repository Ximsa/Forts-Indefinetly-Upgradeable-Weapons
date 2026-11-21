local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head38"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 34800.0
MaxFireSpeed = 34800.0
EnergyFireCost = 7069.743155437727
MetalFireCost = 235.65810518125767
ReloadTime = 6.328125
Projectile = "_railgun38"
FireStdDev =0.0003676043671318937
FireStdDevAuto =0.00018380218356594684
