local NOTIFICATION_TYPES = {
    ['default'] = 'default',
    ['gta'] = 'gta',
    ['foras'] = 'foras',
    ['custom'] = 'custom'
}

function showNewTextUI(text, timeouts, type)
    SendNUIMessage({
        action = 'showNewTextUI',
        type = NOTIFICATION_TYPES[type] or NOTIFICATION_TYPES['default'],
        title = title or '',
        text = text or '',
        timeouts = timeouts or 7000,
    })
end

RegisterCommand('text', function()
    showNewTextUI('This is a text', 7000, 'default')
end)

exports('showNewTextUI', showNewTextUI)
