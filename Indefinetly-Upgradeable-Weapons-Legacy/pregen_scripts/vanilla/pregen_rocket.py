import math

iterations = 64

dofile = """local tmp = path
path = "mods/weapon_pack"
dofile(\"mods/weapon_pack/weapons/rocket.lua\")
path = tmp"""
EnergyFireCost = 1200.0
MetalFireCost = 30
MinFireSpeed = 500.0
MaxFireSpeed = 500.1
base_ReloadTime = 12
base_Projectile = "_rocket"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"rocket-base"+str(x)+ "\",States={Normal={Frames={{texture=\"mods/weapon_pack/weapons/rocket/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"rocket-base"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 120
	MetalFireCost = MetalFireCost + MetalFireCost / 64 + 3
	MinFireSpeed = MinFireSpeed + 25
	MaxFireSpeed = MaxFireSpeed + 25
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/rocket/_rocket" + str(x) + ".lua","w")
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
	file.close()
print("done")