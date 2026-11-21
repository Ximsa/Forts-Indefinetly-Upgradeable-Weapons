local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head18"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 9400.0
MaxFireSpeed = 9400.1
EnergyFireCost = 1615.8087255468806
MetalFireCost = 96.94852353281283
ReloadTime = 4.296875
Projectile = "_apflak018"
FireStdDev =0.00197844668900135
FireStdDevAuto =0.00197844668900135
