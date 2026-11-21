local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head36"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 34000.0
MaxFireSpeed = 34000.0
EnergyFireCost = 6648.707210573474
MetalFireCost = 221.62357368578256
ReloadTime = 6.46875
Projectile = "_railgun36"
FireStdDev =0.00044480128422959145
FireStdDevAuto =0.00022240064211479573
