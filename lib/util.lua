-- from http://lua-users.org/wiki/CopyTable
function DeepCopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[DeepCopy(orig_key)] = DeepCopy(orig_value)
        end
        setmetatable(copy, DeepCopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function Merge(t1, t2)
    local result = DeepCopy(t1)
    for k, v in pairs(t2) do
        if result[k] and type(result[k]) == 'table' and type(v) == 'table' then
            result[k] = Merge(result[k], v)
        else
            result[k] = DeepCopy(v)
        end
    end
    return result
end

function Compose(inner_fn, outer_fn) return function(...) return outer_fn(inner_fn(...)) end end

function Compose3(inner_fn, central_fn, outer_fn) return function(...) return outer_fn(central_fn(inner_fn(...))) end end

function Significant(n, x)
    if x == 0 then
        return 0
    end
    local sign = x < 0 and -1 or 1
    x = math.abs(x)
    -- determine the amount of shifts
    local decimal_places = math.ceil(math.log10(x))
    local shifts_wanted = n - decimal_places
    -- shift unwanted digits beyond the comma separator
    x = x * 10 ^ shifts_wanted
    -- round to nearest integer
    x = x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
    -- shift back
    x = x / 10 ^ shifts_wanted
    return x * sign
end

function Significant3(x)
    return Significant(3, x)
end

function Keys(x)
    local keys = {}
    for k, _ in pairs(x) do
        table.insert(keys, k)
    end
    return keys
end

-- recursively mutate values in a table according to a update_fn
-- tbl is a table to update in
-- lookup_vals is a table with keys set to values of update_fn to apply to. Value of lookup_vals is ignored
function RecursiveUpdateFiltered(tbl, lookup_vals, update_fn)
    for k, v in pairs(tbl) do
        if type(v) == "table" then                         -- table -> recurse into
            RecursiveUpdateFiltered(tbl[k], lookup_vals, update_fn)
        elseif type(v) == "string" and lookup_vals[v] then -- found entry, update value with update_fn
            tbl[k] = update_fn(tbl[k])
        end
    end
end
