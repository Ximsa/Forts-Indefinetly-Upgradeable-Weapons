import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/weapons/grenadegun.lua\")"

EnergyFireCost = 3500.0
MetalFireCost = 50
MinFireSpeed = 3750.0
MaxFireSpeed = 3750.1
base_ReloadTime = 25
FireStdDev = 0.02
FireStdDevAuto = 0.01
base_Projectile = "grenade"
#FireEffect = tanyaPath + ".. \"/effects/fire_grenadegun.lua\""
FireEffect = "\"effects/fire_cannon.lua\""
for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"grenade-head"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(tanyaPath) + "..\"/weapons/gatlinggun/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].Sprite=\"grenade-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 350 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 5 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed + 200
	MaxFireSpeed = MaxFireSpeed + 200
	FireStdDev = FireStdDev / 1.1
	FireStdDevAuto = FireStdDev / 2
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/grenadegun/_grenadegun" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	#file.write("Sprites = {}\n")
	file.write("FireEffect = " + str(FireEffect) + "\n")
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