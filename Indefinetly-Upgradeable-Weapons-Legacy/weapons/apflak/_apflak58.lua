local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head58"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 17400.0
MaxFireSpeed = 17400.1
EnergyFireCost = 5753.741164924447
MetalFireCost = 345.22446989546677
ReloadTime = 2.734375
Projectile = "_apflak058"
FireStdDev =4.37136374464031e-05
FireStdDevAuto =4.37136374464031e-05
