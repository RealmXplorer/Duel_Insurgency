execute if entity @s[scores={kitList=..0},tag=saacUnlocked] run function du-in:lobby/kitmenu/select/unlock/saac

#PURCHASE#
execute if entity @s[scores={kitList=..0},tag=!saacUnlocked] run scoreboard players enable @s buy
execute if entity @s[scores={kitList=..0},tag=!saacUnlocked] run trigger buy
execute if entity @s[scores={kitList=..0,buy=1..},tag=!saacUnlocked] run function du-in:kit/saac/buy/buy

item replace entity @s[tag=kitMenu,tag=!saacUnlocked] inventory.1 with minecraft:player_head{legHead:1b,saacHead:1b,display:{Name:'{"text":"Saac","color":"white","bold":true,"italic":false}',Lore:['{"text":"750 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1
item replace entity @s[tag=kitMenu,tag=saacUnlocked] inventory.1 with minecraft:player_head{saacHead:1b,display:{Name:'{"text":"Saac","color":"white","bold":true,"italic":false}',Lore:['{"text":"Saacology (YT)","color":"gold","bold":true,"italic":true}']},SkullOwner:{Id:[I;59345066,1326991218,-1163918538,1015587088],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGViMWRkM2EzNmU0ZjZmZGRkNWI2YmIxYjljOTNmNDhkYTVmYjE3ZGI2MDZjMDY4NDUxYmU2ODQ5ZDY0MmNhZiJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1
execute if entity @s[scores={kitList=1}] run scoreboard players remove @s kitList 1