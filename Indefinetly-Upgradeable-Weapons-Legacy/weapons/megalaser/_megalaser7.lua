local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head7"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 2.9600000000000004
ReloadTime = 47.265625
Projectile = "megalaser"
