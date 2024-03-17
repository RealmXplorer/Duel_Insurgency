execute if entity @s[tag=givenRandKit] run function du-in:lobby/kitmenu/select/random_legend

item replace entity @s[tag=kitMenu] inventory.19 with minecraft:barrier{CustomModelData:106,display:{Name:'{"text":"Mystery Legendary Kit","color":"blue","bold":true,"italic":false}'},headItem:1b,du-in:weaponItem,fixedItem:1b,lobbyItem:1b}
tag @s add givenRandKit