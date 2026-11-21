iterations = 64

for x in range (2, iterations + 1):
    file = open("../../mods/commander-iba-miser/mods/1363924614/devices/mine/_mine" + str(x) + ".lua","w")
    file.write("dofile(path .. '/devices/production_boost.lua')")
    file.close()
    file = open("../../mods/commander-iba-miser/mods/1363924614/devices/turbine/_turbine" + str(x) + ".lua","w")
    file.write("dofile(path .. '/devices/production_boost.lua')")
    file.close()
print("done")