import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/weapons/flak88.lua\")"

EnergyFireCost = 1550.0
MetalFireCost = 40.0
MinFireSpeed = 8000.0
MaxFireSpeed = 8000.1
base_ReloadTime = 5.5
FireStdDev = 0.005
FireStdDevAuto = 0.005
base_Projectile = "cannon88he"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"flak88-barrel"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(tanyaPath) + "..\"/weapons/flak88/barrel.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].ChildrenBehind[1].Sprite=\"flak88-barrel"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 155 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 4 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed + 400
	MaxFireSpeed = MaxFireSpeed + 400
	FireStdDev = FireStdDev / 1.1
	FireStdDevAuto = FireStdDev
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/flak88/_flak88" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	#file.write("Sprites = {}\n")
	file.write("NodeEffects = {}\n")
	file.write("MinFireSpeed = " + str(MinFireSpeed) + "\n")
	file.write("MaxFireSpeed = " + str(MaxFireSpeed) + "\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
	file.write("ReloadTime = " + str(ReloadTime) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.write("FireStdDev =" + str(FireStdDev) + "\n")
	file.write("FireStdDevAuto =" + str(FireStdDevAuto) + "\n")
	file.close()
print("done")