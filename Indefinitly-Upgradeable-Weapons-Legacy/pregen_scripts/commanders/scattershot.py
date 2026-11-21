import math

iterations = 64

path = "../../mods/commander-bpo-scattershot/mods/1369514837/weapons/"

weaponFiles = [
    {
        'path': "sniper2/_sniper2",
        'content' :  """RoundsEachBurst = (RoundsEachBurst or 1) + 1
RoundPeriod = 0.15
FireStdDev = FireStdDev*2
FireStdDevAuto = FireStdDevAuto*2
RetriggerFireEffect = true
ReloadTime = 1.7*ReloadTime
--Sprites[3].States["ReloadBPO"].Frames[10].duration = 6.6"""
    },
    {
        'path': "minigun/_minigun",
        'content': """RoundsEachBurst = RoundsEachBurst + 2""",
    },
    {
        'path': "buzzsaw/_buzzsaw",
        'content': """RoundsEachBurst = RoundsEachBurst + 2""",
    },
    {
        'path': "shotgun/_shotgun",
        'content': """RoundsEachBurst = RoundsEachBurst + 2
if not active then
	FireSpreadMultiplier = FireStdDev + 0.02
end
MinFireSpread = MinFireSpread + 10""",
    },
    {
        'path': "cannon20mm/_cannon20mm",
        'content': """if active then
	ProjectilesEachRound = 3
	RoundsEachBurst = RoundsEachBurst/ProjectilesEachRound
end"""
    },
]

for x in range (2, iterations + 1):
    for file in weaponFiles:
        fp = open( path + file['path'] + str(x) + ".lua","w")
        fp.write(file['content'] + "\n")
        fp.close()
print("done")
