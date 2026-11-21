import math

iterations = 64

dofile ="""local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp"""
EnergyFireCost = 300.0
MetalFireCost = 30
base_ReloadTime = 16.4
base_Projectile = "smokebomb"
base_Destroy_Projectile = "smoke"
base_FireSpreadMultiplier = 0.025

for x in range (2, iterations + 1):
    newSprite = "Sprites={{Name = \"smokebomb_base"+str(x)+ "\",States={Normal={Frames={{texture=\"mods/dlc_smokebomb/weapons/smokebomb/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
    newRoot = "Root.Sprite=\"smokebomb_base"+str(x)+"\""
    EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 30
    MetalFireCost = MetalFireCost + MetalFireCost / 64 + 3
    ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
    FireSpreadMultiplier = base_FireSpreadMultiplier*(1+(x-1)*0.04)
    Projectile = "\"" + base_Projectile + str(x) + "\""
    DestroyProjectile = "\"" + base_Destroy_Projectile + str(x) + "\""
    file = open("../../weapons/smokebomb/_smokebomb" + str(x) + ".lua","w")
    file.write(dofile + "\n")
    file.write(newSprite + "\n")
    file.write(newRoot + "\n")
    file.write("NodeEffects = {}\n")
    file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
    file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
    file.write("ReloadTime = " + str(ReloadTime) + "\n")
    file.write("FireSpreadMultiplier = " + str(FireSpreadMultiplier) + "\n")
    file.write("Projectile = " + str(Projectile) + "\n")
    file.write("DestroyProjectile = " + str(DestroyProjectile) + "\n")
    file.close()
print("done")