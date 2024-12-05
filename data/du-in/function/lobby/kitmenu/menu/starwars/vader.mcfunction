#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/vader with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/vader

item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head[custom_data={du-in:'vaderHead'},custom_name='{"text":"Darth Vader","color":"white","bold":true,"italic":false}',lore=['{"text":"Original Trilogy","color":"green","bold":true,"italic":true}'],profile={id:[I;-1928486933,-2006562603,-1417729804,-1466664667],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzFjM2UxZjIyNGI0NDZjY2FjNmE2Y2MzY2Q5ODkxMDE5YTEyMmY5OTY5MWMzOTA3OTkyYTNhZjk5YTIxYjAifX19"}]}] 1

execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1