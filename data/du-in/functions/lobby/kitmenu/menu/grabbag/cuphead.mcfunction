execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/cuphead
#clear @s player_head
item replace entity @s[tag=kitMenu] inventory.6 with minecraft:player_head{fixedItem:1b,cupHead:1b,headItem:1b,lobbyItem:1b,weaponItem:1b,display:{Name:'{"text":"Cuphead","color":"white","bold":true,"italic":false}',Lore:['{"text":"Cuphead","color":"#FAE900","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1338006069,2041596448,-1132796168,-93113296],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}}}
execute if entity @s[scores={kitList=6}] run scoreboard players remove @s kitList 1