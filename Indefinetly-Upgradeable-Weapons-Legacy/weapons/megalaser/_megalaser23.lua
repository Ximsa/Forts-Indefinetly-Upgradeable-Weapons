local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head23"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 5.919999999999996
ReloadTime = 41.015625
Projectile = "megalaser"
