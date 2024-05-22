execute if entity @s[tag=givenSpectate] run function du-in:lobby/kitmenu/select/spect
item replace entity @s[tag=kitMenu] inventory.26 with minecraft:barrier[custom_name='{"text":"Spectate Game","color":"gray","bold":true,"italic":false}',custom_model_data=101]
#tag @s remove spectate
tag @s add givenSpectate