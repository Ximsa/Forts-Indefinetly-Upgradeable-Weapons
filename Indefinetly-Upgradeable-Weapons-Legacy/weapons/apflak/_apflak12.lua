local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head12"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 8200.0
MaxFireSpeed = 8200.1
EnergyFireCost = 1188.023384297091
MetalFireCost = 71.28140305782547
ReloadTime = 4.53125
Projectile = "_apflak012"
FireStdDev =0.003504938994813922
FireStdDevAuto =0.003504938994813922
