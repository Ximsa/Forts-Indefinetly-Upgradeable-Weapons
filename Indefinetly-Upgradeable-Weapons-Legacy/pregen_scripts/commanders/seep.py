import math

iterations = 64

path = "../../mods/commander-bpo-seep/mods/1369514837/weapons/"

weaponFiles = [
    {
        'path': "rocket/_rocket",
        'content': """if active then""",
    },
]

for x in range (2, iterations + 1):
    for file in weaponFiles:
        fp = open( path + file['path'] + str(x) + ".lua","w")
        fp.write(file['content'] + "\n")
        fp.write("    Projectile = \"armoured_rocket" + str(x) + "\"\nend\n")
        fp.close()
print("done")
