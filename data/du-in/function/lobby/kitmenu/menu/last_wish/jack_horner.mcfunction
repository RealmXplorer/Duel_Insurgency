#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/last_wish/jack_horner with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/last_wish/jack_horner

item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head[custom_data={du-in:'hornerHead'},custom_name='{"text":"Big Jack Horner","color":"white","bold":true,"italic":false}',lore=['{"text":"Puss in Boots: The Last Wish","color":"light_purple","bold":true,"italic":true}'],profile={id:[I;187771445,-62896871,-1779691991,-1837786005],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThkZDRlMTNhZjI3NDEzNzUyODk1MzJiYTlmMmZlZDNhYWRmMzIyM2YyYjc0NTYyZGJhNDRlZTEzYzhiZWVkNSJ9fX0="}]}]

execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1