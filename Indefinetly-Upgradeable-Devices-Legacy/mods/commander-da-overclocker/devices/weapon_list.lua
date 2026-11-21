

local iuw_overclocker_ApplyMod = ApplyMod 
function ApplyMod()
	-- call original function
	if iuw_overclocker_ApplyMod
	then
		iuw_overclocker_ApplyMod()
	end
	local order = 0.75 
	local multiplier = 0.5
	
	for _, v in pairs(Weapons) 
	do
		if active and v.UpgradeNumber
		then
			
			v.BuildTimeIntermediate = (v.BuildTimeIntermediate or 1) * upgradeTimeMultiplier(v.UpgradeNumber, multiplier, order) / multiplier
			v.BuildTimeComplete = (v.BuildTimeComplete or 1) * upgradeTimeMultiplier(v.UpgradeNumber, multiplier, order) / multiplier
		end
		if v.Upgrades then
			for i, upgradeParams in pairs(v.Upgrades) do
				local upgrade = FindWeapon(upgradeParams.SaveName)
				if upgrade and upgrade.UpgradeNumber then
					upgrade.BuildTimeIntermediate = (upgrade.BuildTimeIntermediate or 1) * upgradeTimeMultiplier(upgrade.UpgradeNumber, multiplier, order) / multiplier
					upgrade.BuildTimeComplete = (upgrade.BuildTimeComplete or 1) * upgradeTimeMultiplier(upgrade.UpgradeNumber, multiplier, order) / multiplier
				end
			end
		end
	end
	--printTable(Weapons)
end

function upgradeTimeMultiplier(upgradeNumber, defaultMultiplier, order)
	return -1.0 / math.pow(upgradeNumber + math.pow(1.0/defaultMultiplier, 1.0 / order),order) + 1 -- basicly 1 / x^order
end


-- helpers
function println(v)
	Log(""..v)
end

function printTable(t)
	_printTable(
		t,
		0)
end

function _printTable(t, depth)
	println(string.rep("\t",depth) .. "{")
	for k,v in pairs(t)
	do
		if type(v) == "table"
		then
			-- recursion!
			local indentation = string.rep("\t",depth + 1)
			local key = "[\"" .. k .. "\"]"
			if type(k) ~= "string"
			then
				key = string.gsub(key,"\"","")
			end
			println(indentation .. key .. " =")
			_printTable(v, depth + 1)
		else
			-- recursion end
			local indentation = string.rep("\t",depth + 1)
			local key = "[\"" .. k .. "\"]"
			if type(k) ~= "string"
			then
				key = string.gsub(key,"\"","")
			end
			println(indentation .. key .. " = " .. tostring(v) .. ",")
		end
	end
	println(string.rep("\t",depth) .. "},")
end