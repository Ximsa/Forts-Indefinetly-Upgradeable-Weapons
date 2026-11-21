local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head12"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 24400.0
MaxFireSpeed = 24400.0
EnergyFireCost = 2494.849107023892
MetalFireCost = 83.1616369007964
ReloadTime = 8.15625
Projectile = "_railgun12"
FireStdDev =0.004381173743517403
FireStdDevAuto =0.0021905868717587017
