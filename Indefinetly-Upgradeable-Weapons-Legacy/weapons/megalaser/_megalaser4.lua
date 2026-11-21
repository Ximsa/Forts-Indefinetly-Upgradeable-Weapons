local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head4"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 2.4050000000000002
ReloadTime = 48.4375
Projectile = "megalaser"
