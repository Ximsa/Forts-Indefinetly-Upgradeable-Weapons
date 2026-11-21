import math

iterations = 64
CannonCannonPath = "path .. \"/../1562567436\""
dofile = "dofile( path .. \"/weapons/_cannon.lua\")"

EnergyFireCost = 4000
MetalFireCost = 150
base_ReloadTime = 30
base_Projectile = "_cannon"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"__cannon-barrel"+str(x)+ "\",States={Normal={Frames={{texture= \"weapons/cannon/barrel.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].ChildrenBehind[1].Sprite=\"__cannon-barrel"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 400 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 10 + MetalFireCost / 64
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/_cannon/__cannon" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(CannonCannonPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	#file.write("Sprites = {}\n")
	file.write("NodeEffects = {}\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
	file.write("ReloadTime = " + str(ReloadTime) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.close()
print("done")