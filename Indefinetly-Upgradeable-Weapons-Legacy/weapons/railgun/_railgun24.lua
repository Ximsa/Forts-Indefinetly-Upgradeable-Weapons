local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head24"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 29200.0
MaxFireSpeed = 29200.0
EnergyFireCost = 4379.126979245568
MetalFireCost = 145.9708993081856
ReloadTime = 7.3125
Projectile = "_railgun24"
FireStdDev =0.0013959769724280942
FireStdDevAuto =0.0006979884862140471
