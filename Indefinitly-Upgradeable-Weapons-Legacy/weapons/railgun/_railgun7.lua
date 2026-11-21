local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head7"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 22400.0
MaxFireSpeed = 22400.0
EnergyFireCost = 1807.4918842515035
MetalFireCost = 60.24972947505012
ReloadTime = 8.5078125
Projectile = "_railgun7"
FireStdDev =0.0070559241256722156
FireStdDevAuto =0.0035279620628361078
