local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head22"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 5.734999999999997
ReloadTime = 41.40625
Projectile = "megalaser"
