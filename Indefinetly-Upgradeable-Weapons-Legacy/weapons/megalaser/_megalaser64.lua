local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head64"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 13.505000000000006
ReloadTime = 25.0
Projectile = "megalaser"
