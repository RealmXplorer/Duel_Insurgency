#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/last_wish/puss with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/last_wish/puss

item replace entity @s[tag=kitMenu] inventory.1 with minecraft:player_head[custom_data={du-in:'pussHead'},custom_name='{"text":"Puss in Boots","color":"white","bold":true,"italic":false}',lore=['{"text":"Shrek 2","color":"green","bold":true,"italic":true}'],profile={id:[I;-519165600,-420199686,-1290829664,-623163008],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWEwYWEwMjIzMTU1OGEzYTAxNjNhNTIwMTFlNWRmOTRiOTRhNGNiNGM1OWZjZmMyNDUxNjU1ZTViMjY5ZTlmNCJ9fX0="}]}] 1

execute if entity @s[scores={kitList=1}] run scoreboard players remove @s kitList 1