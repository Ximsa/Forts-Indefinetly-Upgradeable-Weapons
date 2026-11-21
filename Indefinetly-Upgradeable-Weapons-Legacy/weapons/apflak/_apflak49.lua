local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head49"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 15600.0
MaxFireSpeed = 15600.1
EnergyFireCost = 4587.608163386295
MetalFireCost = 275.2564898031777
ReloadTime = 3.0859375
Projectile = "_apflak049"
FireStdDev =0.00010307447048195738
FireStdDevAuto =0.00010307447048195738
