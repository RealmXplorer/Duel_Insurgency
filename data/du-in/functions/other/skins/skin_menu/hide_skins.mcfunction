execute if entity @s[tag=givenHideSkins] run function du-in:other/skins/skin_menu/actions/hide_skins
item replace entity @s[tag=skinMenu] inventory.18 with minecraft:barrier{CustomModelData:101,display:{Name:'{"text":"Show skins in kit menu","color":"gray","bold":true,"italic":false}'},headItem:1b,weaponItem:1b,fixedItem:1b,lobbyItem:1b}
tag @s add givenHideSkins