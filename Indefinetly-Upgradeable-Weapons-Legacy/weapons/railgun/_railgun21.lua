local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head21",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head21"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 28000.0
MaxFireSpeed = 28000.0
EnergyFireCost = 3874.7002015379157
MetalFireCost = 129.15667338459718
ReloadTime = 7.5234375
Projectile = "_railgun21"
FireStdDev =0.0018580453503017939
FireStdDevAuto =0.0009290226751508969
