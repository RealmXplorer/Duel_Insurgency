#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/chara with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/chara

item replace entity @s[tag=kitMenu] inventory.8 with minecraft:player_head[custom_data={du-in:'charaHead'},custom_name='{"text":"Chara","color":"white","bold":true,"italic":false}',lore=['{"text":"Undertale","color":"aqua","bold":true,"italic":true}'],profile={id:[I;867896025,-2025831227,-1696125005,-2071803774],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzkzNzM0YmMyNTY1Mzc2MzAxZmJiNzE2NmZkNGQxNGM3NjE3ZTUwOTdiM2VjMmQ0ODZhZmFkNGIwNTgifX19"}]}] 1

execute if entity @s[scores={kitList=8}] run scoreboard players remove @s kitList 1