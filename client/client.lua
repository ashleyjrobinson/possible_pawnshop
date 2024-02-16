local config = require('shared.config')

CreateThread(function()
    for _, blip in ipairs(config.shopBlips) do
        local blipId = AddBlipForCoord(blip.coords.x, blip.coords.y, blip.coords.z)
        SetBlipSprite(blipId, blip.sprite)
        SetBlipDisplay(blipId, 4)
        SetBlipColour(blipId, blip.color)
        SetBlipScale(blipId, 0.7)
        SetBlipAsShortRange(blipId, blip.shortRange)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(blip.label) 
        EndTextCommandSetBlipName(blipId)
    end
end)

CreateThread(function()
    for _, zone in ipairs(config.sphereZones) do
        exports.ox_target:addSphereZone({
            coords = vec3(zone.coords.x, zone.coords.y, zone.coords.z),
            radius = zone.radius,
            debug = config.Debug,
            options = {
                {
                    label = 'Sell Stuff',
                    icon = 'fas fa-money-bill',
                    distance = 2.5,
                    onSelect = function()
                        local shopName = 'PawnShop'
                        local playerId = GetPlayerName(PlayerId())
                        if config.debug then
                            print(playerId)
                        end
                        local shopId = shopName .. "_" .. playerId -- Combine shop name and player name for a unique shopId
                        local shopLabel = 'Pawnshop - ' .. playerId -- Label with player name
                        local shopItems = config.sellItems[shopName] or {}
                        local shopCoords = { x = zone.coords.x, y = zone.coords.y, z = zone.coords.z }

                        if config.Debug then
                            print('Client shopItems:', json.encode(shopItems)) 
                            print('Client shopCoords:', json.encode(shopCoords))
                        end
                        
                        TriggerServerEvent('possible-pawnshop:openShopStash', shopId, shopLabel, shopItems, shopCoords)
                    end
                }
            }
        })        
    end    
end)