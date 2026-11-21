import math

iterations = 64

dofile = """local tmp = path
path = "mods/weapon_pack"
dofile(\"mods/weapon_pack/weapons/shotgun.lua\")
path = tmp"""
EnergyFireCost = 800.0
MetalFireCost = 30
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
RoundsEachBurst = 10
base_ReloadTime = 9
base_Projectile = "_shotgun"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"shotgun-head"+str(x)+ "\",States={Normal={Frames={{texture=\"mods/weapon_pack/weapons/shotgun/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].Sprite=\"shotgun-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 80
	MetalFireCost = MetalFireCost + MetalFireCost / 64 + 3
	MinFireSpeed = MinFireSpeed + 1000
	MaxFireSpeed = MaxFireSpeed + 1000
	RoundsEachBurst = RoundsEachBurst + 0
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)

	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/shotgun/_shotgun" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("NodeEffects = {}\n")
	file.write("MinFireSpeed = " + str(MinFireSpeed) + "\n")
	file.write("MaxFireSpeed = " + str(MaxFireSpeed) + "\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
	file.write("ReloadTime = " + str(ReloadTime) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.write("RoundsEachBurst = " + str(RoundsEachBurst))

	file.close()
print("done")
