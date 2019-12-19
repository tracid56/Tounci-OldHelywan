-- dévéloppement par MrTOUNCI
-- Version 1.0 


RegisterCommand("darknet", function(source, args, rawCommand)
    local message = table.concat(args, " ")

    TriggerClientEvent("chatMessage", -1, "DarkNet", {173,32,32},  message)
end)


function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end