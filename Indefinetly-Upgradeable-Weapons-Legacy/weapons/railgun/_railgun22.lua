local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head22"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 28400.0
MaxFireSpeed = 28400.0
EnergyFireCost = 4040.242392186946
MetalFireCost = 134.67474640623152
ReloadTime = 7.453125
Projectile = "_railgun22"
FireStdDev =0.0016891321366379942
FireStdDevAuto =0.0008445660683189971
