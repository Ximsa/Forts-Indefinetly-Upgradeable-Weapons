for i = 2, 64 do
   table.insert(WeaponsToMark, "_cannon20mm" .. i)
   table.insert(WeaponsToMark, "_laser" .. i)
   table.insert(WeaponsToMark, "_howitzer" .. i)

   table.insert(WeaponsWithSecondChance, "_laser" .. i)
   table.insert(WeaponsWithSecondChance, "_howitzer" .. i)
   table.insert(WeaponsWithSecondChance, "_cannon" .. i)
end
