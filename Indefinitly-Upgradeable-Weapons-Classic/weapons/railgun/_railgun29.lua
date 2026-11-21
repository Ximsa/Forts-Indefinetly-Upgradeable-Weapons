local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head29"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 31200.0
MaxFireSpeed = 31200.0
EnergyFireCost = 5273.770468703659
MetalFireCost = 175.7923489567887
ReloadTime = 6.9609375
Projectile = "_railgun29"
FireStdDev =0.0008667918686801656
FireStdDevAuto =0.0004333959343400828
