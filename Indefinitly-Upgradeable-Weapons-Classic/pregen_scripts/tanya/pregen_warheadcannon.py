import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/weapons/warheadcannon.lua\")"

EnergyFireCost = 3000.0
MetalFireCost = 75.0
MinFireSpeed = 110.0
MaxFireSpeed = 110.1
base_ReloadTime = 26.0
base_Projectile = "missile2"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"warheadcannon-barrel"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(tanyaPath) + "..\"/weapons/warheadcannon/barrel.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].ChildrenBehind[1].Sprite=\"warheadcannon-barrel"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 300 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 7.5 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed + 20
	MaxFireSpeed = MaxFireSpeed + 20

	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/warheadcannon/_warheadcannon" + str(x) + ".lua","w")
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
	file.close()
print("done")