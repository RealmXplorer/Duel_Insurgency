#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/villager with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/villager

item replace entity @s[tag=kitMenu] inventory.1 with minecraft:player_head[custom_data={du-in:'villagerHead'},custom_name='{"text":"Villager","color":"white","bold":true,"italic":false}',lore=['{"text":"Minecraft","color":"green","bold":true,"italic":true}'],profile={id:[I;1480608382,-1588769976,-1183003207,-1970401256],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDFiODMwZWI0MDgyYWNlYzgzNmJjODM1ZTQwYTExMjgyYmI1MTE5MzMxNWY5MTE4NDMzN2U4ZDM1NTU1ODMifX19"}]}] 1

execute if entity @s[scores={kitList=1}] run scoreboard players remove @s kitList 1