local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head54"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 41200.0
MaxFireSpeed = 41200.0
EnergyFireCost = 10952.187053241048
MetalFireCost = 365.07290177470185
ReloadTime = 5.203125
Projectile = "_railgun54"
FireStdDev =8.000142073159848e-05
FireStdDevAuto =4.000071036579924e-05
