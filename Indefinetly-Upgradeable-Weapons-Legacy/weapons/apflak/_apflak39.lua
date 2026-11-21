local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head39"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 13600.0
MaxFireSpeed = 13600.1
EnergyFireCost = 3469.1466153530682
MetalFireCost = 208.14879692118407
ReloadTime = 3.4765625
Projectile = "_apflak039"
FireStdDev =0.0002673486306413772
FireStdDevAuto =0.0002673486306413772
