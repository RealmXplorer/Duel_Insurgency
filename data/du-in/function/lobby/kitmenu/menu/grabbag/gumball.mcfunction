#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/gumball with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/gumball

item replace entity @s[tag=kitMenu] inventory.5 with minecraft:player_head[custom_data={du-in:'gumballHead'},custom_name='{"text":"Gumball & Darwin","color":"white","bold":true,"italic":false}',lore=['{"text":"The Amazing World of Gumball","color":"#0AB6FF","bold":true,"italic":true}'],profile={id:[I;-309887366,515785143,-1472648234,-1600947470],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVhNTZmYmFhM2MxZGRjYTVjMTczMWNhZGIzNzAxNTFhY2ZmY2Q3MmY3ZmQ4NjllNmIyOGM4OTM1YjljNWZhNCJ9fX0="}]}]

execute if entity @s[scores={kitList=5}] run scoreboard players remove @s kitList 1