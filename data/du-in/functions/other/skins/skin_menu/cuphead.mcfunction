#Functionality 
execute if entity @s[scores={skinList=..0},tag=cupSkins] run function du-in:other/skins/cuphead
execute if entity @s[scores={skinList=..0},tag=!cupSkins] run function du-in:other/skins/skin_menu/buy/cuphead/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.1 with minecraft:player_head{cupHead:1b,fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Cuphead","color":"#FAE900","bold":true,"italic":true}']},SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}},lobbyItem:1b}

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!cupSkins] inventory.1 with minecraft:player_head{cupHead:1b,display:{Name:'{"text":"Cuphead Skins","color":"white","bold":true,"italic":false}',Lore:['{"text":"400 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,du-in:weaponItem,headItem:1b,lobbyItem:1b} 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={cupSkin=1..}] run item replace entity @s[tag=cupSkins] inventory.1 with minecraft:player_head{fixedItem:1b,cupHead:1b,headItem:1b,lobbyItem:1b,du-in:weaponItem,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Cuphead","color":"#FAE900","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1338006069,2041596448,-1132796168,-93113296],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}}}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={cupSkin=1},tag=cupSkins] inventory.1 with minecraft:player_head{fixedItem:1b,cupHead:1b,headItem:1b,lobbyItem:1b,du-in:weaponItem,display:{Name:'{"text":"Mugman","color":"white","bold":true,"italic":false}',Lore:['{"text":"Cuphead","color":"#FAE900","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1051019556,-501201800,-1820652581,-562471100],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDJhNmNhZDZkMzRiYjc5ZTY5ZmVjMjVhYTljZTIwNmJhZGMyOTMzNTg0NTVjNDZmNDQzMGFkMzhmODgxZGRlYSJ9fX0="}]}}}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={cupSkin=2},tag=cupSkins] inventory.1 with minecraft:player_head{fixedItem:1b,cupHead:1b,headItem:1b,lobbyItem:1b,du-in:weaponItem,display:{Name:'{"text":"Ms. Chalice","color":"white","bold":true,"italic":false}',Lore:['{"text":"Cuphead","color":"#FAE900","bold":true,"italic":true}']},SkullOwner:{Id:[I;-769844474,-1113439278,-1590773033,1473452272],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDhiNzc2NDk5MGU0Y2M4YzcwNmJkNmQ2NWUzYzJjMzRmNzkzZjUzMjJiZTc5NmE0YTcwMjExNzJiODdhOGJlMyJ9fX0="}]}}}

execute if entity @s[scores={skinList=1}] run scoreboard players remove @s skinList 1


# #clear @s player_head
# item replace entity @s[tag=kitMenu,tag=!jermaUnlocked] inventory.4 with minecraft:player_head{jermaHead:1b,display:{Name:'{"text":"Andy","color":"white","bold":true,"italic":false}',Lore:['{"text":"985 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,du-in:weaponItem,headItem:1b,lobbyItem:1b} 1
# item replace entity @s[tag=kitMenu,tag=jermaUnlocked] inventory.4 with minecraft:player_head{jermaHead:1b,display:{Name:'{"text":"Jerma","color":"white","bold":true,"italic":false}',Lore:['{"text":"Jerma985 (Twitch)","color":"dark_purple","bold":true,"italic":true}']},SkullOwner:{Id:[I;1547217839,-1191557859,-2112938076,-2070163647],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTc1ODViOTkwZjgwM2Y3YTViMDkyYWRlNDI3MjhlOTU0YmExYzFmMmIzNzc4OTE4ZGU0ODk3NDY2ZTBiZmVmIn19fQ=="}]}},du-in:weaponItem,fixedItem:1b,headItem:1b,lobbyItem:1b} 1
# execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1