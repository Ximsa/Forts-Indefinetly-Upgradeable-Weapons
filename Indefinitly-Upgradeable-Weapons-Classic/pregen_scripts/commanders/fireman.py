import math

iterations = 64

path = "../../mods/commander-ee-fireman/mods/1369514837/weapons/"

weaponFiles = [
    {
        'path': "firebeam/_firebeam",
        'content': """BeamDuration = BeamDuration * 1.28
GenerateBeamTable(BeamDuration, 0.05, 1.25)""",
    },
]

for x in range (2, iterations + 1):
    for file in weaponFiles:
        fp = open( path + file['path'] + str(x) + ".lua","w")
        fp.write(file['content'] + "\n")
        fp.close()
print("done")
