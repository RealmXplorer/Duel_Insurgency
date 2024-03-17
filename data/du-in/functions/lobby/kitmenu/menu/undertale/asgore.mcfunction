execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/asgore
#clear @s player_head
item replace entity @s[tag=kitMenu] inventory.3 with minecraft:player_head[custom_data={du-in:'asgoreHead'},custom_name='{"text":"Asgore","color":"white","bold":true,"italic":false}',lore=['{"text":"Undertale","color":"aqua","bold":true,"italic":true}']] 1
#SkullOwner:{Id:[I;-1896887982,-1948695224,-1472869537,261263090],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkxMTgxM2EwNWM3NGJlMWZlMzM5YzMwODlkZDRjY2QxZjhiOGQ2NGM3YmJmMWYwYjAzNGJkNWRmY2ZiNjYifX19"}]}}

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1
