import math

iterations = 64
BFCPath = "path .. \"/../1557699803\""
dofile = "dofile( path .. \"/weapons/bigcannon.lua\")"

EnergyFireCost = 5000.0
MetalFireCost = 1000.0
MinFireSpeed = 3000.0
MaxFireSpeed = 4000.1
base_ReloadTime = 40.0
FireStdDev = 0.01
FireStdDevAuto = 0.012
base_Projectile = "bigcannon"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"bigcannonbarrel"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(BFCPath) + "..\"/weapons/bigcannon/barrel.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].ChildrenBehind[1].Sprite=\"bigcannonbarrel"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 500
	MetalFireCost = MetalFireCost + 100
	MinFireSpeed = MinFireSpeed + 200
	MaxFireSpeed = MaxFireSpeed + 200
	FireStdDev = FireStdDev / 1.1
	FireStdDevAuto = FireStdDev / 2
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/bigcannon/_bigcannon" + str(x) + ".lua","w")
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