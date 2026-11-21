local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head32"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 12200.0
MaxFireSpeed = 12200.1
EnergyFireCost = 2783.2422437536015
MetalFireCost = 166.9945346252161
ReloadTime = 3.75
Projectile = "_apflak032"
FireStdDev =0.000520986848192436
FireStdDevAuto =0.000520986848192436
