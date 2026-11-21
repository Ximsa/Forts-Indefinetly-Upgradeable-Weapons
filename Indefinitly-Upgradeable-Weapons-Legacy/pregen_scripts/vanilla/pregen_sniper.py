import math

iterations = 64

dofile = "dofile(\"weapons/sniper-ap.lua\")"
EnergyFireCost = 200.0
MetalFireCost = 3
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
base_ReloadTime = 5
base_Projectile = "_sniper2"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"sniper-ap-head"+str(x)+ "\",States={Normal={Frames={{texture=\"weapons/snipertower/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenInFront[1].Sprite=\"sniper-ap-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 20
	MetalFireCost = MetalFireCost + MetalFireCost / 64 + 0.3
	MinFireSpeed = MinFireSpeed + 250
	MaxFireSpeed = MaxFireSpeed + 250
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/sniper2/_sniper2" + str(x) + ".lua","w")
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