iterations = 64

for x in range (2, iterations + 1):
    file = open("../../mods/commander-iba-turtle/mods/1369514837/weapons/sniper2/_sniper2" + str(x) + ".lua","w")
    file.write("if active then\n")
    file.write("    ReloadTime = 2*ReloadTime\n")
    file.write("end")
    file.close()
print("done")