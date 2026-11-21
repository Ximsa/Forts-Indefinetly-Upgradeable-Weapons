local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel18"
NodeEffects = {}
MinFireSpeed = 450.0
MaxFireSpeed = 450.1
EnergyFireCost = 9694.852353281283
MetalFireCost = 242.37130883203207
ReloadTime = 22.34375
Projectile = "_missile218"
