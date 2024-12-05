#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/last_wish/death with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/last_wish/death

item replace entity @s[tag=kitMenu] inventory.3 with minecraft:player_head[custom_data={du-in:'deathHead'},custom_name='{"text":"Death","color":"white","bold":true,"italic":false}',lore=['{"text":"Puss in Boots: The Last Wish","color":"light_purple","bold":true,"italic":true}'],profile={id:[I;494824510,-1282977973,-1144722680,-2093803432],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQyNTljZDljMzhmNjJiZDI5MDFhNzI0NmY3YTdhZTFjMzU4Njc2YmJiNmI4ZTMyZDU4ZDBiNGY2M2Y1MzJmYyJ9fX0="}]}]

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1
