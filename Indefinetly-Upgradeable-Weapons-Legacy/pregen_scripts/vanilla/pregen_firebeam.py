import math

iterations = 64

dofile = """local tmp = path
path = "mods/weapon_pack"
dofile(\"mods/weapon_pack/weapons/firebeam.lua\")
path = tmp"""
stockBeamDuration = 2.5
stockEnergyFireCost = 1500.0
base_Projectile = "firebeam"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"firebeam-base"+str(x)+ "\",States={Normal={Frames={{texture=\"mods/weapon_pack/weapons/firebeam/base\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"firebeam-base"+str(x)+"\""
	BeamDuration = stockBeamDuration * ((x-1) * 0.1 + 1)
	EnergyFireCost = stockEnergyFireCost * ((x-1) * 0.1 + 1)

	Projectile = "\"" + base_Projectile + "\""
	file = open("../../weapons/firebeam/_firebeam" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("NodeEffects = {}\n")
	file.write("BeamDuration = " + str(BeamDuration) + "\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "/BeamDuration" + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.write("GenerateBeamTable(BeamDuration, 0.05, 1)")
	file.close()
print("done")