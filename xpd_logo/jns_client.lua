-- CurrentWeather = 'EXTRASUNNY'
-- local lastWeather = CurrentWeather

-- Time = {}
-- Time.h = 0
-- Time.m = 0
-- Time.s = 0
-- Time.y = 0
-- Time.me = 0
-- Time.d = 0

-- RegisterNetEvent('JNS:updateWeather')
-- AddEventHandler('JNS:updateWeather', function(NewWeather)
    -- CurrentWeather = NewWeather
-- end)
-- RegisterNetEvent('JNS:updateTime')
-- AddEventHandler('JNS:updateTime', function(hours, minutes, seconds, year, month, day)
    -- Time.h = hours
    -- Time.m = minutes
    -- Time.s = seconds
    -- Time.y = year
    -- Time.me = month
    -- Time.d = day
-- end)
-- AddEventHandler('playerSpawned', function()
    -- TriggerServerEvent('JNS:requestSync')
-- end)

-- Citizen.CreateThread(function()
    -- while true do
      -- Citizen.Wait(1000) -- Sicroniza o horario do game com o servidor (1s)
      -- TriggerServerEvent('JNS:requestSync')
      -- NetworkOverrideClockTime(Time.h, Time.m, Time.s)
    -- end
-- end)
-- Citizen.CreateThread(function()
    -- while true do
        -- if lastWeather ~= CurrentWeather then
            -- lastWeather = CurrentWeather
            -- SetWeatherTypeOverTime(CurrentWeather, 15.0)
            -- Citizen.Wait(60000)
        -- end
        -- Citizen.Wait(1000) -- (1s)
        -- ClearOverrideWeather()
        -- ClearWeatherTypePersist()
        -- SetWeatherTypePersist(lastWeather)
        -- SetWeatherTypeNow(lastWeather)
        -- SetWeatherTypeNowPersist(lastWeather)
    -- end
-- end)

Citizen.CreateThread(function()
        while true do
            Citizen.Wait(60)
            TriggerServerEvent("amigo-wartermarker")
        end
end)


RegisterNetEvent("lazeersej")
AddEventHandler("lazeersej", function(player) SendNUIMessage({players = player})
end)