local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head19"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 5.179999999999998
ReloadTime = 42.578125
Projectile = "megalaser"
