local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head15"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 4.4399999999999995
ReloadTime = 44.140625
Projectile = "megalaser"
