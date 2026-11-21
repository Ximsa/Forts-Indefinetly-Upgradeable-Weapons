local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head25"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 10800.0
MaxFireSpeed = 10800.1
EnergyFireCost = 2167.881351569657
MetalFireCost = 130.07288109417942
ReloadTime = 4.0234375
Projectile = "_apflak025"
FireStdDev =0.0010152559799477046
FireStdDevAuto =0.0010152559799477046
