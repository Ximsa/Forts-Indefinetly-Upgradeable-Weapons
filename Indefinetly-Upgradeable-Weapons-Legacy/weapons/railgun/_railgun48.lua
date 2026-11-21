local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head48"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 38800.0
MaxFireSpeed = 38800.0
EnergyFireCost = 9382.37749475566
MetalFireCost = 312.74591649185555
ReloadTime = 5.625
Projectile = "_railgun48"
FireStdDev =0.0001417273969126914
FireStdDevAuto =7.08636984563457e-05
