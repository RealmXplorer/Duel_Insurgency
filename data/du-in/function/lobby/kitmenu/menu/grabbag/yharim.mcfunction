#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/yharim with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/yharim

item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head[custom_data={du-in:'yharimHead'},custom_name='{"text":"The Jungle Tyrant Yharim","color":"white","bold":true,"italic":false}',lore=['{"text":"The Calamity Mod","color":"#FF9D0A","bold":true,"italic":true}'],profile={id:[I;-787015374,-583712165,-1311176001,-1055844486],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI4ZGIwMjNhOTVhYTllNjI4NTkzODE3NWQ4NGVhOWYyOWExZmMwZGEyMjk0ODA2NGY2MzBiNjViNjg5M2MxMyJ9fX0="}]}]

execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1