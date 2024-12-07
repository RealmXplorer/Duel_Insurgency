#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/frisk with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/frisk

item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head[custom_data={du-in:'friskHead'},custom_name='{"text":"Frisk","color":"white","bold":true,"italic":false}',lore=['{"text":"Undertale","color":"aqua","bold":true,"italic":true}'],profile={id:[I;-1590443435,829243816,-2071605894,1474773107],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVhNWJhNWY2ZDQ1YTU2ZmRkNzZiNjJlM2RjZmFiYmZjNWYyNTZjODU4Zjc0ZDA2MjUyNDRhZTM0Y2E3NjRmIn19fQ=="}]}] 1
execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1