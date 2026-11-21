local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head3"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 6400.0
MaxFireSpeed = 6400.1
EnergyFireCost = 616.5283203125
MetalFireCost = 36.99169921875
ReloadTime = 4.8828125
Projectile = "_apflak03"
FireStdDev =0.008264462809917354
FireStdDevAuto =0.008264462809917354
