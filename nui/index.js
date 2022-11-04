const NOTIFICATION_LIST = {
    ['default']: 'default',
    ['gta']: 'gta',
    ['foras']: 'foras',
    ['custom']: 'custom'
}

window.addEventListener('message', (event) => {
    if (event.data.action === 'showNewTextUI') {
        let text = event.data.text;
        let timeouts = event.data.timeouts;
        let type = NOTIFICATION_LIST[event.data.type] || 'default';
        if ((text.len() > 0) && (timeouts != null) && (type != '')) {
            showNewTextUI(text, timeouts, type);
        }
    }
})
