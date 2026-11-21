local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head57"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 12.210000000000003
ReloadTime = 27.734375
Projectile = "megalaser"
