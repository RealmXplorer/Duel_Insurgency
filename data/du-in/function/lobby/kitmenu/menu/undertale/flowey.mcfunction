execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/flowey
#clear @s player_head
item replace entity @s[tag=kitMenu] inventory.5 with minecraft:player_head[custom_data={du-in:'floweyHead'},custom_name='{"text":"Flowey","color":"white","bold":true,"italic":false}',lore=['{"text":"Undertale","color":"aqua","bold":true,"italic":true}'],profile={id:[I;-1335355653,-1617476810,-1712807685,-947254848],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTVmZGYyMmM5YmY0NGIzZWE1MzJjNGRkZTgzODk0YmI2MWExZjIwMTAxZDExNzRmOGRjYjMzOWI2ZmY0OSJ9fX0="}]}] 1
#SkullOwner:{Id:[I;-1335355653,-1617476810,-1712807685,-947254848],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTVmZGYyMmM5YmY0NGIzZWE1MzJjNGRkZTgzODk0YmI2MWExZjIwMTAxZDExNzRmOGRjYjMzOWI2ZmY0OSJ9fX0="}]}},lobbyItem:1b}
execute if entity @s[scores={kitList=5}] run scoreboard players remove @s kitList 1