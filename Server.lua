ToNumber = function(c)
    return tonumber(c);
end
checkVersion = function()
    local curVersion = Config.ScriptVersion;
    local newVersion;
    local endpoint = "https://zeskgarcia.com/versions.php?v=";
    PerformHttpRequest(endpoint .. "textuiv1", function(errCode, result, resultHeaders)
        if not (result) then print("[^5Zesko ^2García^7 Scripts] ^1ERROR^7 Checking current script version in the developer's API") end
        local result2 = json.decode(result:sub(1, -2))
        local resource_name = GetCurrentResourceName()
        if (ToNumber(result.version:gsub('%.', '')) > ToNumber(curVersion:gsub('%.', '')) then
            local symbols = '^'..math.random(1,9)
            for cd = 1, 26+#resource_name do
                symbols = symbols..'='
            end
            symbols = symbols..'^0'
            print(symbols)
            print('^2['..resource_name..'] - New update available now!^0\nCurrent Version: ^5'..cureVersion..'^0.\nNew Version: ^5'..result.version..'^0.\nNotes: ^5'..result.notes..'^0.\n\n^5Download it now in the github repo^0.')
            print(symbols)
        end
    end, 'GET')
end

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    if (Config.EnableVersionCheck) then
        checkVersion()
    end
end)

RegisterNetEvent('zskGetConsoleError:newError')
AddEventHandler('zsKGetConsoleError:newError', function(data)
    local errorCode = data.errorCode;
    local curName = GetCurrentResourceName();
    print("[^2" .. curName .."^7] ERROR CODE: " .. errorCode .. "\nCheck the error code in: https://docs.zeskoogarcia.com");
end)