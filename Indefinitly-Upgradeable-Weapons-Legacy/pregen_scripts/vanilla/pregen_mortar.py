import math

iterations = 64

dofile = "dofile(\"weapons/mortar.lua\")"
EnergyFireCost = 200.0
MetalFireCost = 15
MinFireSpeed = 1550.0
MaxFireSpeed = 2750.0 * 1.4
base_MinFireAngle = 45
base_ReloadTime = 9
base_Projectile = "_mortar2"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"mortar-head"+str(x)+ "\",States={Normal={Frames={{texture=\"weapons/mortar/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].Sprite=\"mortar-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 20
	MetalFireCost = MetalFireCost + MetalFireCost / 64 + 1.5
	MinFireAngle = max(base_MinFireAngle - base_MinFireAngle * (x / (iterations * 0.75) ), 0)
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/mortar2/_mortar2" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("NodeEffects = {}\n")
	file.write("MinFireSpeed = " + str(MinFireSpeed) + "\n")
	file.write("MaxFireSpeed = " + str(MaxFireSpeed) + "\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
	file.write("ReloadTime = " + str(ReloadTime) + "\n")
	file.write("MinFireAngle = " + str(MinFireAngle) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.close()
print("done")