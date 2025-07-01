RegisterNetEvent("naufal-calculator:client:calculator", function()
    SetNuiFocus(true, true)
    SendNUIMessage({ type = "openCalculator" })
end)

if not Config.UseItem then
    RegisterCommand("calculator", function()
        SetNuiFocus(true, true)
        SendNUIMessage({ type = "openCalculator" })
    end, false)
end

RegisterNUICallback("closeCalculator", function(_, cb)
    SetNuiFocus(false, false)
    cb({})
end)

RegisterNUICallback("calculate", function(data, cb)
    local result = load("return " .. data.expression)()
    cb({ result = result })
end)