import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/weapons/silolauncher2.lua\")"

EnergyFireCost = 2150.0
MetalFireCost = 75.0
MinFireSpeed = 850.0
MaxFireSpeed = 1250.1
base_ReloadTime = 23.0
FireStdDev = 0.05
FireStdDevAuto = 0.05
base_Projectile = "silomissile2"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"silolauncherswarm2-head"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(tanyaPath) + "..\"/weapons/silolauncher/barrel.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].Sprite=\"silolauncherswarm2-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 215 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 7.5 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed * 0.9
	MaxFireSpeed = MaxFireSpeed + 50
	FireStdDev = FireStdDev / 1.1
	FireStdDevAuto = FireStdDev
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/silolauncher2/_silolauncher2" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	#file.write("Sprites = {}\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("FireEffect = \"effects/warhead_launch.lua\"")
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