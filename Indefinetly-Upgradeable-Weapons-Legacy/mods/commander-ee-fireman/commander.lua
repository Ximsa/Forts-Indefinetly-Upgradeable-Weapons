GaugeDamageHitpoints = 1
IUW_WeaponsToMark = {}
for i = 2, 64 do
   table.insert(IUW_WeaponsToMark, "_shotgun" .. i)
   table.insert(IUW_WeaponsToMark, "_rocket" .. i)
   table.insert(IUW_WeaponsToMark, "_cannon20mm" .. i)
end

IUW_OnActivation = OnActivation
IUW_OnDeviceTeamUpdated = OnDeviceTeamUpdated

CommanderApplyMod1369514837 = function()
   for k,v in ipairs(IUW_WeaponsToMark) do
      AddDeviceNodeEffect(teamId, v, "Root", path .. "/effects/fire_icon.lua", false)
   end
end
RegisterApplyMod(CommanderApplyMod1369514837)

function OnActivation(active)
   if GetLocalTeamId()%MAX_SIDES ~= teamId then return end

   IUW_OnActivation(active)

   for k,v in ipairs(IUW_WeaponsToMark) do
      ConfigureDeviceNodeEffect(teamId, v, "Root", active, false)
   end
end

function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)
   IUW_OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)

   if oldTeamId%MAX_SIDES == teamId or newTeamId%MAX_SIDES == teamId then
      if TrackingType(saveName, IUW_WeaponsToMark) then
	 ConfigureDeviceNodeEffect(newTeamId, saveName, "Root", isActive and newTeamId%MAX_SIDES == teamId, false)
      end
   end
end
