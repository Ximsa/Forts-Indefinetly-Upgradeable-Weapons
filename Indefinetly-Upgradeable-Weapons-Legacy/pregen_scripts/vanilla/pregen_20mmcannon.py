import math

iterations = 64

dofile = """local tmp = path
path = "mods/weapon_pack"
dofile(\"mods/weapon_pack/weapons/20mmcannon.lua\")
path = tmp"""
EnergyFireCost = 2500.0
MetalFireCost = 40.0
MinFireSpeed = 6000.0
MaxFireSpeed = 6000.1
StdDev = 0.02
base_ReloadTime = 26.0
base_Projectile = "_cannon20mm"
base_StdDev = StdDev
for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"20mmcannon-barrel"+str(x)+ "\",States={Normal={Frames={{texture=\"mods/weapon_pack/weapons/20mmcannon/barrel.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].ChildrenBehind[1].Sprite=\"20mmcannon-barrel"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 250
	MetalFireCost = MetalFireCost + MetalFireCost / 64 + 4
	MinFireSpeed = MinFireSpeed + 111.111
	MaxFireSpeed = MaxFireSpeed + 111.111
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	StdDev = max(base_StdDev - base_StdDev * (x / (iterations) * 1 ), base_StdDev / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/cannon20mm/_cannon20mm" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("NodeEffects = {}\n")
	file.write("MinFireSpeed = " + str(MinFireSpeed) + "\n")
	file.write("MaxFireSpeed = " + str(MaxFireSpeed) + "\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
	file.write("ReloadTime = " + str(ReloadTime) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.write("FireStdDev = " + str(StdDev) + "\n")
	file.write("FireStdDevAuto = " + str(StdDev) + "\n")
	file.close()
print("done")