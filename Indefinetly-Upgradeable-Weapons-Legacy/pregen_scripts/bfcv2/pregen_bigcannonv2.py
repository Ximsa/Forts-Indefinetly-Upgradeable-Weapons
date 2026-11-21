import math

iterations = 64
BFCPath = "path .. \"/../1606499289\""
dofile = "dofile( path .. \"/weapons/bigcannonv2.lua\")"

EnergyFireCost = 5000.0
MetalFireCost = 1000.0
MinFireSpeed = 5000.0
MaxFireSpeed = 7000.0
base_ReloadTime = 90.0
FireStdDev = 0.015
FireStdDevAuto = 0.02
base_Projectile = "bigcannonv2"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"_bigcannonv2head"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(BFCPath) + "..\"/weapons/bigcannonv2/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].Sprite=\"_bigcannonv2head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 500
	MetalFireCost = MetalFireCost + 100
	MinFireSpeed = MinFireSpeed + 200
	MaxFireSpeed = MaxFireSpeed + 200
	FireStdDev = FireStdDev / 1.1
	FireStdDevAuto = FireStdDev / 1.1
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/bigcannonv2/_bigcannonv2" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(BFCPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	file.write("Sprites = {}\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	#file.write("NodeEffects = {}\n")
	#file.write("FireEffect = \"mods/weapon_pack/effects/fire_20mmcannon.lua\"")
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