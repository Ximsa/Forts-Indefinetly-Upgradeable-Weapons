import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/weapons/mortarcannon.lua\")"

EnergyFireCost = 800.0
MetalFireCost = 20
MinFireSpeed = 2550.0
MaxFireSpeed = 4750.0
base_ReloadTime = 10
FireStdDevAuto = 0.0012
base_Projectile = "mortar2"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"mortarcannon-head"+str(x)+ "\",States={Normal={Frames={{texture= \"weapons/mortar/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].Sprite=\"mortarcannon-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 80 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 2 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed *0.9
	MaxFireSpeed = MaxFireSpeed + 235
	FireStdDevAuto = FireStdDevAuto * 0.9
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/mortarcannon/_mortarcannon" + str(x) + ".lua","w")
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
	file.write("FireStdDevAuto =" + str(FireStdDevAuto) + "\n")
	file.close()
print("done")