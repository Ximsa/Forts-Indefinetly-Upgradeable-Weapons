local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head44"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 9.804999999999996
ReloadTime = 32.8125
Projectile = "megalaser"
