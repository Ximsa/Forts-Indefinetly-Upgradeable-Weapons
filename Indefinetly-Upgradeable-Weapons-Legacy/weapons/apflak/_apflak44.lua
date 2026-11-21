local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head44"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 14600.0
MaxFireSpeed = 14600.1
EnergyFireCost = 4006.712192431694
MetalFireCost = 240.40273154590162
ReloadTime = 3.28125
Projectile = "_apflak044"
FireStdDev =0.00016600246545589724
FireStdDevAuto =0.00016600246545589724
