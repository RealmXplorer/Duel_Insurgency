execute if entity @s[tag=givenDefault] run function du-in:other/skins/skin_menu/actions/default_skins
item replace entity @s[tag=skinMenu] inventory.0 with minecraft:barrier{CustomModelData:105,display:{Name:'{"text":"Skin Presets","color":"gray","bold":true,"italic":false}'},headItem:1b,weaponItem:1b,fixedItem:1b,lobbyItem:1b}
tag @s add givenDefault