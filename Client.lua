local textUiThemes = {
    ["default"] = "default",
    ["gta"] = "gta",
    ["custom"] = "custom"
}

showTextUI = function(text, duration, theme)
    if (text == "" or text == nil or text == " ") then
        if (Config.PrintErrors) then
            print("Please set a TEXT in the TEXTUI FUNCTION")
            return false
        end
    else if (duration == "" or duration == nil or duration == " ") then
        if (Config.PrintErrors) then
            print("Please set a DURATION in the TEXTUI FUNCTION")
            return false
        end
    else if (theme == "" or theme == nil or theme == " ") then
        if (Config.PrintErrors) then
            print("Please set a Theme in the TEXTUI FUNCTION")
            return false
        end
    else
        if (theme ~= textUiThemes[theme]) then
            print("The specified THEME doesn't EXISTS")
            return false
        else if (duration < 2.5) then
            print("The specified TEXTUI duration needs to be Up from 3 seconds")
            return false
        end
    end
    local dataToSend = {
        text = text;
        duration = duration;
        theme = theme;
        type = "SHOW_INTERFACE";
    }
    sendNui(dataToSend)
    if (Config.DEBUG) then
        print("TextUI sent")
    end
end

sendNui = function(nui)
    SendNUIMessage(nui)
end

if (Config.enableExports) then
    exports('textUi', showTextUI)
    exports('sendNui', sendNui)
end