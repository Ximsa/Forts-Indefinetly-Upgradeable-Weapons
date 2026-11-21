local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head23"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 10400.0
MaxFireSpeed = 10400.1
EnergyFireCost = 2003.98627598327
MetalFireCost = 120.23917655899619
ReloadTime = 4.1015625
Projectile = "_apflak023"
FireStdDev =0.0012284597357367227
FireStdDevAuto =0.0012284597357367227
