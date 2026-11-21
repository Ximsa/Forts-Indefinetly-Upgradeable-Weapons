local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head35"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 12800.0
MaxFireSpeed = 12800.1
EnergyFireCost = 3068.1118056901278
MetalFireCost = 184.08670834140764
ReloadTime = 3.6328125
Projectile = "_apflak035"
FireStdDev =0.00039142513012204046
FireStdDevAuto =0.00039142513012204046
