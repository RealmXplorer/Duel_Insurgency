#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/nick with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/nick

item replace entity @s[tag=kitMenu] inventory.1 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name={text:"Nick Wilde",color:white,bold:true,italic:false},lore=[{text:"Zootopia",color:light_purple,bold:true,"italic":true}],profile={id:[I;197955443,1635337300,-2010219319,1548182461],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZjY4ZmZkNzYxNDk5Yzg5MjU0M2JmMDVkNzhmZGUxODAxY2YzMTgzMTFlMTMzYjQzMGRiOTJhZmZiYTA3ZSJ9fX0="}]}] 1

execute if entity @s[scores={kitList=1}] run scoreboard players remove @s kitList 1