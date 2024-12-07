#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/yoda with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/yoda

item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head[custom_data={du-in:'yodaHead'},custom_name='{"text":"Yoda","color":"white","bold":true,"italic":false}',lore=['{"text":"Original Trilogy","color":"green","bold":true,"italic":true}'],profile={id:[I;1979740048,-1796193985,-1748551992,-2051541828],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWY5M2I4N2MwYzc5ZTlmNmQ3YWZhMzhjMTAwYjFjZGFjZWYyNWVjOTJhZjUwZmViZjE0NDI2YTJmMGYxZGI0MSJ9fX0="}]}] 1

execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1