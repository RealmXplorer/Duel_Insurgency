execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/luke
#clear @s player_head
item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head[custom_data={du-in:'lukeHead'},custom_name='{"text":"Luke Skywalker","color":"white","bold":true,"italic":false}',lore=['{"text":"Original Trilogy","color":"green","bold":true,"italic":true}'],profile={id:[I;-799851537,1294877218,-1487768355,-441253933],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjgzZjMxZWIwM2U1NjM2ZWE2ZmE4OGVlZjk4M2RhOTZhMWM0MGJmMzE0ZjA0ZDg1YTE0Y2EyNmJiNzgyZjQifX19"}]}] 1

execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1