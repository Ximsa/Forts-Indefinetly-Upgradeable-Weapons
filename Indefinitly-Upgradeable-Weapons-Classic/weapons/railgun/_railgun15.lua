local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head15"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 25600.0
MaxFireSpeed = 25600.0
EnergyFireCost = 2933.579467836137
MetalFireCost = 97.78598226120455
ReloadTime = 7.9453125
Projectile = "_railgun15"
FireStdDev =0.0032916406788259973
FireStdDevAuto =0.0016458203394129987
