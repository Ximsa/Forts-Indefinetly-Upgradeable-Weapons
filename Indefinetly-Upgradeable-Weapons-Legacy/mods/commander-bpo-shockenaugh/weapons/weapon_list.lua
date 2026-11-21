
for i = 2, 64 do
   buzzsaw = FindWeapon("_buzzsaw" .. i)
   if buzzsaw then
      buzzsaw.MaxWeaponGroupSize = nil
   end
end

