#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/player with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/player

item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head[custom_data={du-in:'playerHead'},custom_name='{"text":"Player","color":"white","bold":true,"italic":false}',lore=['{"text":"Minecraft","color":"green","bold":true,"italic":true}']]

execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1