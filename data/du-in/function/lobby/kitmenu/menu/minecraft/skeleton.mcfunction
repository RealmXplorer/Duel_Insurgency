#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/skeleton with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/skeleton

item replace entity @s[tag=kitMenu] inventory.8 with minecraft:player_head[custom_data={du-in:'skeletonHead'},custom_name='{"text":"Skeleton","color":"white","bold":true,"italic":false}',lore=['{"text":"Minecraft","color":"green","bold":true,"italic":true}'],profile={id:[I;-1235635673,-1149942338,-1971409182,1320249502],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDgyYjc4ZGE2ZWU3MTNkNWFjZmU1ZmNiMDc1NGVlNTY5MDA4MzFhNTA5ODMxMzA2NDEwOGRlNmU3ZTQwNjgzOSJ9fX0="}]}] 1

execute if entity @s[scores={kitList=8}] run scoreboard players remove @s kitList 1