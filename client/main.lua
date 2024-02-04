GlobalBlips = {}

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        ConfigureBlips()
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    ConfigureBlips()
end)

function ConfigureBlips()
    for k, v in pairs(Config.Blips) do
        if GlobalBlips[k] ~= nil then
            RemoveBlip(GlobalBlips[k])
        end
        if v.coords ~= nil then
            Sprite = v.sprite or Config.Default.sprite
            Display = v.display or Config.Default.display
            Scale = v.scale or Config.Default.scale
            Colour = v.colour or Config.Default.colour
            Range = v.shortrange or Config.Default.shortrange
            GlobalBlips[k] = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
            SetBlipSprite(GlobalBlips[k], Sprite)
            SetBlipDisplay(GlobalBlips[k], Display)
            SetBlipScale(GlobalBlips[k], Scale)
            SetBlipColour(GlobalBlips[k], Colour)
            if v.shortrange then
                SetBlipAsShortRange(GlobalBlips[k], Range)
            end
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.name)
            EndTextCommandSetBlipName(GlobalBlips[k])
        else
            print("BLIPMAKER: Coords Not Set correctly. vector3 required")
        end
    end
end

AddEventHandler('onResourceStop', function(t) if t ~= GetCurrentResourceName() then return end
    for k,v in pairs(GlobalBlips) do 
        if GlobalBlips[k] ~= nil then
            RemoveBlip(v) 
            print("Blip = "..v.." = Removed") 
        else
            print("Cannot Find Blip "..v)
        end
    end
end)