#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/palps with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/palps

item replace entity @s[tag=kitMenu] inventory.3 with minecraft:player_head[custom_data={du-in:'palpsHead'},custom_name='{"text":"Palpatine","color":"white","bold":true,"italic":false}',lore=['{"text":"Original Trilogy","color":"green","bold":true,"italic":true}'],profile={id:[I;1802316670,791628963,-1622859676,677073006],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2MxZjIxMjgzZDc3NTAzYjJlYzY0MWE3N2E4ZTY3YTJjNGViYjU4N2Q1M2MyYjRmMDg2NGExNjk3NjUxMGU3In19fQ=="}]}] 1

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1