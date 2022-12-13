execute if entity @s[tag=givenPrev] run function du-in:lobby/kitmenu/select/prev
item replace entity @s[tag=kitMenu,scores={kitTheme=2..}] inventory.18 with minecraft:barrier{display:{Name:'{"text":"Previous","color":"blue","bold":true,"italic":false}'},CustomModelData:103,fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b,prevItem:1b} 1
tag @s add givenPrev