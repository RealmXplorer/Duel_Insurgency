clear @s carrot_on_a_stick{displayHead:1b}
item replace entity @s[tag=shop] inventory.9 with minecraft:carrot_on_a_stick{displayHead:1b,display:{Name:'{"text":"Skins","color":"gold","bold":true,"italic":false}'},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b,CustomModelData:3000} 1

execute if entity @s[scores={kitUseThrow=1..}] run function du-in:other/clear_ground_items