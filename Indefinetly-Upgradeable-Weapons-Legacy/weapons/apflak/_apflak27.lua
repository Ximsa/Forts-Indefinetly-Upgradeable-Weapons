local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head27"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 11200.0
MaxFireSpeed = 11200.1
EnergyFireCost = 2336.938161714307
MetalFireCost = 140.21628970285843
ReloadTime = 3.9453125
Projectile = "_apflak027"
FireStdDev =0.0008390545288824003
FireStdDevAuto =0.0008390545288824003
