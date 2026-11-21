
function EnlargeEffect(Effects,RadialOffsetMaximum)
    for k,v in pairs(Effects or {}) do
        if v.Type == "sparks" then
            for l,w in pairs(v.Keyframes or {}) do
                w.RadialOffsetMax = RadialOffsetMaximum
            end
        end
    end
end