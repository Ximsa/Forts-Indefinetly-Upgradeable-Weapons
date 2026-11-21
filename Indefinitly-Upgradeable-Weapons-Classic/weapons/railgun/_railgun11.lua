local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head11"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 24000.0
MaxFireSpeed = 24000.0
EnergyFireCost = 2353.082197685063
MetalFireCost = 78.43607325616875
ReloadTime = 8.2265625
Projectile = "_railgun11"
FireStdDev =0.004819291117869144
FireStdDevAuto =0.002409645558934572
