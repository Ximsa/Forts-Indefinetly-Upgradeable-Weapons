local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head7"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 7200.0
MaxFireSpeed = 7200.1
EnergyFireCost = 860.7104210721445
MetalFireCost = 51.64262526432867
ReloadTime = 4.7265625
Projectile = "_apflak07"
FireStdDev =0.005644739300537772
FireStdDevAuto =0.005644739300537772
