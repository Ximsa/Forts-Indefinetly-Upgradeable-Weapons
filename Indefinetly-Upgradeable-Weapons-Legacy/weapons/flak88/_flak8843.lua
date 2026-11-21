local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel43"
NodeEffects = {}
MinFireSpeed = 24800.0
MaxFireSpeed = 24800.1
EnergyFireCost = 12077.10306120689
MetalFireCost = 311.66717577308106
ReloadTime = 3.65234375
Projectile = "_cannon88he43"
FireStdDev =9.130135600074349e-05
FireStdDevAuto =9.130135600074349e-05
