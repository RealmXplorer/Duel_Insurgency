execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/last_wish/death
#clear @s player_head
item replace entity @s[tag=kitMenu] inventory.3 with minecraft:player_head{deathHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b,display:{Name:'{"text":"Death","color":"white","bold":true,"italic":false}',Lore:['{"text":"Puss in Boots: The Last Wish","color":"violet","bold":true,"italic":true}']},SkullOwner:{Id:[I;494824510,-1282977973,-1144722680,-2093803432],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQyNTljZDljMzhmNjJiZDI5MDFhNzI0NmY3YTdhZTFjMzU4Njc2YmJiNmI4ZTMyZDU4ZDBiNGY2M2Y1MzJmYyJ9fX0="}]}}} 1
execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1
