local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head17"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 9200.0
MaxFireSpeed = 9200.1
EnergyFireCost = 1541.719360538467
MetalFireCost = 92.50316163230802
ReloadTime = 4.3359375
Projectile = "_apflak017"
FireStdDev =0.0021762913579014853
FireStdDevAuto =0.0021762913579014853
