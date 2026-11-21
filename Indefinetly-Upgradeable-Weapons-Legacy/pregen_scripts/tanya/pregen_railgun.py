import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/weapons/railgun.lua\")"

EnergyFireCost = 1050
MetalFireCost = 35
MinFireSpeed = 20000.0
MaxFireSpeed = 20000.0
base_ReloadTime = 9.0
FireStdDev = 0.0125
FireStdDevAuto = 0.0075
base_Projectile = "railgun"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"railgun-head"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(tanyaPath) + "..\"/weapons/railgun/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenInFront[1].Sprite=\"railgun-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 105 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 3.5 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed + 400
	MaxFireSpeed = MaxFireSpeed + 400
	FireStdDev = FireStdDev / 1.1
	FireStdDevAuto = FireStdDev / 2
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/railgun/_railgun" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	#file.write("Sprites = {}\n")
	file.write("FireEffect = \"mods/weapon_pack/effects/fire_shotgun.lua\"")
	file.write("ReloadEffect = \"effects/reload_cannon.lua\"")
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