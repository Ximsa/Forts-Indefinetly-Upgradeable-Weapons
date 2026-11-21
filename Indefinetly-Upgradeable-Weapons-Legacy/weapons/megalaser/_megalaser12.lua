local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head12"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 3.8850000000000007
ReloadTime = 45.3125
Projectile = "megalaser"
