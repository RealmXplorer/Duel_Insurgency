execute if entity @s[scores={kitList=..0},tag=krampusUnlocked] run function du-in:lobby/kitmenu/select/unlock/krampus

#PURCHASE#
execute if entity @s[scores={kitList=..0},tag=!krampusUnlocked] run scoreboard players enable @s buy
execute if entity @s[scores={kitList=..0},tag=!krampusUnlocked] run trigger buy
execute if entity @s[scores={kitList=..0,buy=1..},tag=!krampusUnlocked] run function du-in:kit/krampus/buy/buy

item replace entity @s[tag=kitMenu,tag=!krampusUnlocked] inventory.2 with minecraft:player_head{krampusHead:1b,display:{Name:'{"text":"Krampus","color":"white","bold":true,"italic":false}',Lore:['{"text":"1250 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},weaponItem:1b,headItem:1b,fixedItem:1b,lobbyItem:1b} 1
item replace entity @s[tag=kitMenu,tag=krampusUnlocked] inventory.2 with minecraft:player_head{krampusHead:1b,display:{Name:'{"text":"Krampus","color":"white","bold":true,"italic":false}',Lore:['{"text":"Krampusnacht","color":"dark_red","bold":true,"italic":true}']},SkullOwner:{Id:[I;452690322,1745437228,-1899884149,651889013],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWYxODk5OGE1MWEyZjI5MTJmMzlhMjk0MjEyYzdlOWQxOTQ3ODlmZTA1M2ZjZjg1MzgyYTllZjIxOWQ5MyJ9fX0="}]}},weaponItem:1b,headItem:1b,fixedItem:1b,lobbyItem:1b} 1
execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1