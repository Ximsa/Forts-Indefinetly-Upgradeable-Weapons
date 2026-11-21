local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head47"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 15200.0
MaxFireSpeed = 15200.1
EnergyFireCost = 4349.83267153379
MetalFireCost = 260.98996029202743
ReloadTime = 3.1640625
Projectile = "_apflak047"
FireStdDev =0.00012472010928316846
FireStdDevAuto =0.00012472010928316846
