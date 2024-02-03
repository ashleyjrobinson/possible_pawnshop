local config = require('shared.config')
local ox_inventory = exports.ox_inventory

RegisterServerEvent('possible-pawnshop:openShopStash', function(shopId, shopLabel, shopItems, shopCoords)
    if config.Debug then
        print('shopId:', shopId)
        print('shopLabel:', shopLabel)
        print('shopItems:', json.encode(shopItems))
        print('shopCoords:', json.encode(shopCoords))
    end

    local source = source

    -- Create the sale stash using Renewed-Lib export
    exports["Renewed-Lib"]:CreateSaleStash(shopId, shopLabel, shopItems, shopCoords)

    -- Open the stash with the appropirate Id
    local stashId = 'stashshop_' .. shopId
    ox_inventory:forceOpenInventory(source, 'stash', stashId)
end)
