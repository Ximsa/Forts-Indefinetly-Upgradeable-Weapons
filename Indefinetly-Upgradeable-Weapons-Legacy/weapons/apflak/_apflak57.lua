local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head57"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 17200.0
MaxFireSpeed = 17200.1
EnergyFireCost = 5615.9913008486865
MetalFireCost = 336.9594780509211
ReloadTime = 2.7734375
Projectile = "_apflak057"
FireStdDev =4.8085001191043417e-05
FireStdDevAuto =4.8085001191043417e-05
