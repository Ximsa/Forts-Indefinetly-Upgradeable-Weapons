local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head54"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 16600.0
MaxFireSpeed = 16600.1
EnergyFireCost = 5215.327168210025
MetalFireCost = 312.91963009260144
ReloadTime = 2.890625
Projectile = "_apflak054"
FireStdDev =6.40011365852788e-05
FireStdDevAuto =6.40011365852788e-05
