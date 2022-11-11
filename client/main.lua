

Citizen.CreateThread(function()
    for k, v in pairs(Config.Blips) do
        Config.Blips[k].Blip = AddBlipForCoord(Config.Blips[k].coords.x, Config.Blips[k].coords.y, Config.Blips[k].coords.z)
        SetBlipSprite(Config.Blips[k].Blip, Config.Blips[k].sprite)
        SetBlipDisplay(Config.Blips[k].Blip, Config.Blips[k].display)
        SetBlipScale(Config.Blips[k].Blip, Config.Blips[k].scale)
        SetBlipColour(Config.Blips[k].Blip, Config.Blips[k].colour)
        SetBlipAsShortRange(Config.Blips[k].Blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.Blips[k].name)
        EndTextCommandSetBlipName(Config.Blips[k].Blip)
    end
end)