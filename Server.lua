print(GetCurrentResourceName() .. " started");

exports('showNewTextUI', function(text, timeouts, theme)
    TriggerClientEvent('zeskoTextUi:client:show', source, text, timeouts, theme)
end)
