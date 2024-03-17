execute if entity @s[tag=givenSpectate] run function du-in:lobby/kitmenu/select/spect
item replace entity @s[tag=kitMenu] inventory.26 with minecraft:barrier{CustomModelData:101,display:{Name:'{"text":"Spectate Game","color":"gray","bold":true,"italic":false}'},headItem:1b,du-in:weaponItem,fixedItem:1b,lobbyItem:1b}
#tag @s remove spectate
tag @s add givenSpectate