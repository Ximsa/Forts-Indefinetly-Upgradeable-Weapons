local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head23"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 28800.0
MaxFireSpeed = 28800.0
EnergyFireCost = 4208.371179564867
MetalFireCost = 140.2790393188289
ReloadTime = 7.3828125
Projectile = "_railgun23"
FireStdDev =0.0015355746696709036
FireStdDevAuto =0.0007677873348354518
