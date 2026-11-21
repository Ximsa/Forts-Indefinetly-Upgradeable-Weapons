local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head30"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 7.214999999999994
ReloadTime = 38.28125
Projectile = "megalaser"
