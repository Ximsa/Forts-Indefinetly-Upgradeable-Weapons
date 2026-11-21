local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head50"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 15800.0
MaxFireSpeed = 15800.1
EnergyFireCost = 4709.289540939206
MetalFireCost = 282.55737245635237
ReloadTime = 3.046875
Projectile = "_apflak050"
FireStdDev =9.370406407450671e-05
FireStdDevAuto =9.370406407450671e-05
