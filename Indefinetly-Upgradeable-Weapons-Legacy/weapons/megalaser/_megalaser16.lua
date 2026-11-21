local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head16"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 4.624999999999999
ReloadTime = 43.75
Projectile = "megalaser"
