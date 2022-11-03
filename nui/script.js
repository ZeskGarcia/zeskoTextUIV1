setValues = function(t) {
    let values = t.replace('~INPUT_PICKUP~', `<span class="input">E</span>`);
    $('.text').html(values)
}

setTheme = function(t) {
    let themeList = {
        ["default"]: "default",
        ["gta"]: "gta",
        ["custom"]: "custom"
    }
    if (t == themeList[t]) {
        $('.textUI').toggleClass(`${themeList[t]}`);
    }
}
window.addEventListener('message', async (event) => {
    let d = event.data;
    if (d.type == "SHOW_INTERFACE") {
        setValues(d.text);
        setTheme(d.theme);
        $('.nui').fadeIn();
        setTimeout(async function() {
            $('.nui').fadeOut();
            setTheme(d.theme);
        }, d.duration*1000);
    } else {
        $('.nui').fadeOut();
    }
})