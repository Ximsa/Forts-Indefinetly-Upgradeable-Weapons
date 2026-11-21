local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head60"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 43600.0
MaxFireSpeed = 43600.0
EnergyFireCost = 12675.0362514141
MetalFireCost = 422.50120838047025
ReloadTime = 4.78125
Projectile = "_railgun60"
FireStdDev =4.515871637025111e-05
FireStdDevAuto =2.2579358185125554e-05
