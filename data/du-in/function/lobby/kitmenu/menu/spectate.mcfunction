execute if entity @s[tag=givenSpectate] run function du-in:lobby/kitmenu/select/spect
item replace entity @s[tag=kitMenu] inventory.26 with minecraft:barrier[custom_name='{"text":"Spectate Game","color":"gray","bold":true,"italic":false}',item_model="du-in:lobby/spectate"]
#tag @s remove spectate
tag @s add givenSpectate