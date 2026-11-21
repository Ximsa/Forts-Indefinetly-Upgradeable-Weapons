import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/weapons/sniperrifle.lua\")"

EnergyFireCost = 400.0
MetalFireCost = 10
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
base_ReloadTime = 0.9
FireStdDev = 0.0065
FireStdDevAuto = 0.0115
base_Projectile = "sniperrifle"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"sniperrifle-head"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(tanyaPath) + "..\"/weapons/snipertower/head_sniperrifle.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenInFront[1].Sprite=\"sniperrifle-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 40 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 1 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed + 300
	MaxFireSpeed = MaxFireSpeed + 300
	FireStdDev = FireStdDev / 1.1
	FireStdDevAuto = FireStdDev * 2
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/sniperrifle/_sniperrifle" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	#file.write("Sprites = {}\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
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