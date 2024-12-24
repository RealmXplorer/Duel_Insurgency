#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/kratos with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.10 with minecraft:player_head[custom_data={du-in:'kratosHead'},custom_name='{"text":"Kratos","color":"white","bold":true,"italic":false}',lore=['{"text":"God of War","color":"#c40a0a","bold":true,"italic":true}'],profile={id:[I;-1393862153,-1179957992,-2034239043,1790888762],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2U2NDg3MzZkNzU2MmE0Njk4MzI5MDNjOWJmNjcxNTNkNjU3ZTllMWEwOWFhNjkwNzQwNWQ2YTE1Y2Y2YzE2YSJ9fX0="}]}]

execute if entity @s[scores={kitList=9}] run scoreboard players remove @s kitList 1