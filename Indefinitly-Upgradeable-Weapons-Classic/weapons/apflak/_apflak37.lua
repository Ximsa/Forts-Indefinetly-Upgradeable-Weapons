local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head37"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 13200.0
MaxFireSpeed = 13200.1
EnergyFireCost = 3265.5206003517555
MetalFireCost = 195.9312360211053
ReloadTime = 3.5546875
Projectile = "_apflak037"
FireStdDev =0.00032349184307606645
FireStdDevAuto =0.00032349184307606645
