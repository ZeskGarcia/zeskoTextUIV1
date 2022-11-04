function replaceHTMLColors(text) {
    text = text.replace('~INPUT_PICKUP~', `<span class='input'>E</span>`);
    text = text.replace('~r~', `<span style = 'color:red'>`)
    text = text.replace('~g~', `<span style = 'color:green'>`)
    text = text.replace('~y~', `<span style = 'color:yellow'>`)
    text = text.replace('~w~', `<span style = 'color:white'>`)
    text = text.replace('~b~', `<span style = 'color:blue'>`)
    text = text.replace('~o~', `<span style = 'color:orange'>`)
    text = text.replace('~p~', `<span style = 'color:purple'>`)
    text = text.replace('~s~', `</span>`)
    return `${text}`;
}

function startNotificationControls(text, timeouts, type) {
    $('.textUI').toggleClass(type);
    $('.nui').fadeIn(() => {
        $('.text').html(text);
        setTimeout(() => {
            $('.nui').fadeOut(() => {  });
        }, timeouts || 7000)
    });
}

function showNewTextUI(text, timeouts, type) {
    let text = replaceHTMLColors(text);
    let timeouts = (timeouts > 0) ? timeouts : 7000;
    let type = NOTIFICATION_LIST[type] || 'default';
    $('.textUI').toggleClass(type);
    startNotificationControls(text, timeouts, type);
}

function scriptStarted() {
    console.log(`[${GetParentResourceName()}] · Script started successfully!\nScript -->`)
}