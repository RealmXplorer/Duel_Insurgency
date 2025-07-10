#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/zootopia/bogo with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.3 with minecraft:player_head[custom_data={du-in:'bogoHead'},custom_name={text:"Chief Bogo",color:white,bold:true,italic:false},lore=[{text:"Zootopia",color:light_purple,bold:true,"italic":true}],profile={id:[I;-963451295,816924341,-1844196778,1289811172],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzVjODU1NjMxMTEyMjhmMDk2MjBhMGM5NDJjMjEwZWNlYjk5MzM5NjUzM2YzNDc2MDU1YzdiNDU1MGNkY2QwIn19fQ=="}]}] 1

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1

