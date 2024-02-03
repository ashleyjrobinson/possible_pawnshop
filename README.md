# Possible Pawnshop
###  Description
Possible Pawnshop utilises Renewed-Lib CreateSaleStash which allows players to sell items through an ox_inventory stash. 

The script creates a unqiue sell stash for the PlayerId(), therefore each players stash is unique to them.

Thanks to the Renewed team for the awesome export.

[Preview](https://youtu.be/fNcMeKOw8-o) //
[Discord/ Support](https://discord.gg/Gnb2S7uAdG)

## Install:
Drag and drop the folder in your resources [standalone] folder (or equivalent) 

NOTE: Ensure it is started after Renewed-Lib

## Compatibility:

Standalone, this should work on any framework aslong as you use ox_inventory.

## Notes:

By default the Renewed-Lib export creates a sale stash, this is available for all to access and not unique to the player. To enable pawnshops to work more consistently and ensure people don't jank your stuff, we create a unique sale stash for each player when the target is opened.

Stashes are registered to your db (something to be aware of - I guess)

## Dependencies:
- ox_lib
- ox_inventory
- ox_target
- Renewed-Lib

## Support:

[Discord/ Support](https://discord.gg/Gnb2S7uAdG)