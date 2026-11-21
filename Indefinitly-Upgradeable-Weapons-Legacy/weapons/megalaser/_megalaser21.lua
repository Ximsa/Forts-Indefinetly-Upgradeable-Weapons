local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head21",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head21"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 5.549999999999997
ReloadTime = 41.796875
Projectile = "megalaser"
