execute if entity @s[tag=givenNext] run function du-in:lobby/kitmenu/select/next
item replace entity @s[tag=kitMenu,scores={kitTheme=1..4}] inventory.0 with minecraft:barrier{display:{Name:'{"text":"Next","color":"blue","bold":true,"italic":false}'},CustomModelData:102,fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1
tag @s add givenNext