# Possible Pawnshop
###  Description
Possible Pawnshop utilises Renewed-Lib CreateSaleStash which allows players to sell items through an ox_inventory stash. 

The script creates a unqiue sell stash for the PlayerId(), therefore each players stash is unique to them.

Thanks to the Renewed team for the awesome export.

[Preview](https://youtu.be/fNcMeKOw8-o) //
[Discord/ Support](https://discord.gg/Gnb2S7uAdG)

## Compatibility:

Standalone, this should work on any framework aslong as you use ox_inventory.

## Notes:

By default the Renewed-Lib export creates a sell stash, this is available for all to access and not unique to the player. To enable pawnshops to work more consistently and ensure people don't jank your stuff I create a unique sell stash for each player when the target is opened.

Stashes are registered to your db.

## Dependencies:
- ox_lib
- ox_inventory
- Renewed-Lib

## Support:

[Discord/ Support](https://discord.gg/Gnb2S7uAdG)