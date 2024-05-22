execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/ani
#clear @s player_head
item replace entity @s[tag=kitMenu] inventory.5 with minecraft:player_head[custom_data={du-in:'aniHead'},custom_name='{"text":"Anakin Skywalker","color":"white","bold":true,"italic":false}',lore=['{"text":"Prequel Trilogy","color":"blue","bold":true,"italic":true}'],profile={id:[I;-1582649935,-1708046690,-1453924638,-704354099],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkZDFlNzE2MTI0YzRmNGM0ZWIzMDgzNjViZjNhNDhlNTI5ODFiOTVkZWU0NDVhYjZlNTc4NGI3ZDRmOWZjIn19fQ=="}]}] 1

execute if entity @s[scores={kitList=5}] run scoreboard players remove @s kitList 1