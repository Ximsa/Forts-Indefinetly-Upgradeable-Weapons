local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head5"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 2.5900000000000003
ReloadTime = 48.046875
Projectile = "megalaser"
