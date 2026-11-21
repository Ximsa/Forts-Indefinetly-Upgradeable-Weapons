local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head3"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 20800.0
MaxFireSpeed = 20800.0
EnergyFireCost = 1294.70947265625
MetalFireCost = 43.156982421875
ReloadTime = 8.7890625
Projectile = "_railgun3"
FireStdDev =0.010330578512396695
FireStdDevAuto =0.005165289256198347
