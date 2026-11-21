local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head13"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 24800.0
MaxFireSpeed = 24800.0
EnergyFireCost = 2638.83112432114
MetalFireCost = 87.96103747737133
ReloadTime = 8.0859375
Projectile = "_railgun13"
FireStdDev =0.0039828852213794575
FireStdDevAuto =0.0019914426106897288
