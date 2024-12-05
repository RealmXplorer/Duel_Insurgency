#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/slime with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/slime

item replace entity @s[tag=kitMenu] inventory.5 with minecraft:player_head[custom_data={du-in:'slimeHead'},custom_name='{"text":"Slime","color":"white","bold":true,"italic":false}',lore=['{"text":"Minecraft","color":"green","bold":true,"italic":true}'],profile={id:[I;2131429491,-546682343,-1681000759,251135175],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODk1YWVlYzZiODQyYWRhODY2OWY4NDZkNjViYzQ5NzYyNTk3ODI0YWI5NDRmMjJmNDViZjNiYmI5NDFhYmU2YyJ9fX0="}]}] 1

execute if entity @s[scores={kitList=5}] run scoreboard players remove @s kitList 1
