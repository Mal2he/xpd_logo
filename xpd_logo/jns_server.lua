RegisterServerEvent("amigo-wartermarker")
AddEventHandler("amigo-wartermarker", function() TriggerClientEvent("lazeersej", source, GetPlayers())
end)
function GetPlayers()
    local label = ""
    label = GetNumPlayerIndices() .. " I Byen"
    return label
end
