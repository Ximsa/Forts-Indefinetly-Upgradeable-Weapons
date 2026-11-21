local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head19"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 27200.0
MaxFireSpeed = 27200.0
EnergyFireCost = 3551.2170474554564
MetalFireCost = 118.37390158184854
ReloadTime = 7.6640625
Projectile = "_railgun19"
FireStdDev =0.0022482348738651708
FireStdDevAuto =0.0011241174369325854
