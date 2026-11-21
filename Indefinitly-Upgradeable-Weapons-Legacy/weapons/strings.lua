function Merge(t1, t2) 
   for k, v in pairs(t2) do t1[k] = v end 
end
local iterations = 64

for i=1, iterations do
   Merge(
      Weapon,
      {
         -- vanilla
         ["_minigun"..i]               = L"Upgrade Minigun",
         ["_minigun"..i.."Tip2"]       = L"Level "..i,
         ["_minigunAP"..i]             = L"Upgrade Armour Piercing Minigun",
         ["_minigunAP"..i.."Tip2"]     = L"Level "..i,
         ["_sniper2"..i]               = L"Upgrade Sniper",
         ["_sniper2"..i.."Tip2"]       = L"Level "..i,
         ["_mortar2"..i]               = L"Upgrade Mortar",
         ["_mortar2"..i.."Tip2"]       = L"Level "..i,
         ["_cannon"..i]                = L"Upgrade Cannon",
         ["_cannon"..i.."Tip2"]        = L"Level "..i,
         ["_laser"..i]                 = L"Upgrade Laser",
         ["_laser"..i.."Tip2"]         = L"Level "..i,
         --tog
         ["_shotgun"..i]               = L"Upgrade Shotgun",
         ["_shotgun"..i.."Tip2"]       = L"Level "..i,
         ["_rocket"..i]                = L"Upgrade Rocket",
         ["_rocket"..i.."Tip2"]        = L"Level "..i,
         ["_cannon20mm"..i]            = L"Upgrade 20mm Cannon",
         ["_cannon20mm"..i.."Tip2"]    = L"Level "..i,
         ["_firebeam"..i]              = L"Upgrade Firebeam",
         ["_firebeam"..i.."Tip2"]      = L"Level "..i,
         --Moonshot
         ["_buzzsaw"..i]               = L"Upgrade Buzzsaw",
         ["_buzzsaw"..i.."Tip2"]       = L"Level "..i,
         ["_smokebomb"..i]             = L"Upgrade Smokebomb",
         ["_smokebomb"..i.."Tip2"]     = L"Level "..i,
         ["_howitzer"..i]              = L"Upgrade Howitzer",
         ["_howitzer"..i.."Tip2"]      = L"Level "..i,
         ["_magnabeam"..i]             = L"Upgrade Magnabeam",
         ["_magnabeam"..i.."Tip2"]     = L"Level "..i,
         -- tanya
         ["_flamegun"..i]              = L"Upgrade Flamegun",
         ["_flamegun"..i.."Tip2"]      = L"Level "..i,
         ["_apflak"..i]                = L"Upgrade APflak",
         ["_apflak"..i.."Tip2"]        = L"Level "..i,
         ["_artillery20mm"..i]         = L"Upgrade 20mm Artillery",
         ["_artillery20mm"..i.."Tip2"] = L"Level "..i,
         ["_atomcannon"..i]            = L"Upgrade Atomcannon",
         ["_atomcannon"..i.."Tip2"]    = L"Level "..i,
         ["_flak88"..i]                = L"Upgrade Flak88",
         ["_flak88"..i.."Tip2"]        = L"Level "..i,
         ["_grenadegun"..i]            = L"Upgrade Grenadegun",
         ["_grenadegun"..i.."Tip2"]    = L"Level "..i,
         ["_hellfirecannon"..i]        = L"Upgrade Hellfirecannon",
         ["_hellfirecannon"..i.."Tip2"]= L"Level "..i,
         ["_megalaser"..i]             = L"Upgrade Megalaser",
         ["_megalaser"..i.."Tip2"]     = L"Level "..i,
         ["_mortarcannon"..i]          = L"Upgrade Mortarcannon",
         ["_mortarcannon"..i.."Tip2"]  = L"Level "..i,
         ["_pigeonshooter"..i]         = L"Upgrade Pigeonshooter",
         ["_pigeonshooter"..i.."Tip2"] = L"Level "..i,
         ["_ninja"..i]                 = L"Upgrade Ninja",
         ["_ninja"..i.."Tip2"]         = L"Level "..i,
         ["_railgun"..i]               = L"Upgrade Railgun",
         ["_railgun"..i.."Tip2"]       = L"Level "..i,
         ["_silolauncher2"..i]         = L"Upgrade Silolauncher",
         ["_silolauncher2"..i.."Tip2"] = L"Level "..i,
         ["_sniperemp"..i]             = L"Upgrade EMP - Sniper",
         ["_sniperemp"..i.."Tip2"]     = L"Level "..i,
         ["_sniperrifle"..i]           = L"Upgrade Sniperrifle",
         ["_sniperrifle"..i.."Tip2"]   = L"Level "..i,
         --big friendly cannon
         ["_bigcannon"..i]             = L"Upgrade Big Friendly Cannon",
         ["_bigcannon"..i.."Tip2"]     = L"Level "..i,
         --big friendly cannon version 2
         ["_bigcannonv2"..i]           = L"Upgrade Big Friendly Cannon Version 2",
         ["_bigcannonv2"..i.."Tip2"]   = L"Level "..i,
         --aa laser
         ["_aabeam"..i]                = L"Upgrade AA Beam",
         ["_aabeam"..i.."Tip2"]        = L"Level "..i,
         --cannon cannon
         ["__cannon"..i]               = L"Upgrade Cannon Cannon",
         ["__cannon"..i.."Tip2"]       = L"Level "..i,
      }
   )
end
