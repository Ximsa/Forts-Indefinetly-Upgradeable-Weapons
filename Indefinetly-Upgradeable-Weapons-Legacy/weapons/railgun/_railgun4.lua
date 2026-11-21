local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head4"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 21200.0
MaxFireSpeed = 21200.0
EnergyFireCost = 1419.939308166504
MetalFireCost = 47.3313102722168
ReloadTime = 8.71875
Projectile = "_railgun4"
FireStdDev =0.009391435011269721
FireStdDevAuto =0.004695717505634861
