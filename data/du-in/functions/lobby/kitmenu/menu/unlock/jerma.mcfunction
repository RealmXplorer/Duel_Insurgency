execute if entity @s[scores={kitList=..0},tag=jermaUnlocked] run function du-in:lobby/kitmenu/select/unlock/jerma
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/runza

execute if entity @s[scores={kitList=..0},tag=!jermaUnlocked] run scoreboard players enable @s buy
execute if entity @s[scores={kitList=..0},tag=!jermaUnlocked] run trigger buy
execute if entity @s[scores={kitList=..0,buy=1..},tag=!jermaUnlocked] run function du-in:kit/jerma/buy/buy

#clear @s player_head
item replace entity @s[tag=kitMenu,tag=!jermaUnlocked] inventory.4 with minecraft:player_head{jermaHead:1b,display:{Name:'{"text":"Andy","color":"white","bold":true,"italic":false}',Lore:['{"text":"985 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1
item replace entity @s[tag=kitMenu,tag=jermaUnlocked] inventory.4 with minecraft:player_head{jermaHead:1b,display:{Name:'{"text":"Jerma","color":"white","bold":true,"italic":false}',Lore:['{"text":"Jerma985 (Twitch)","color":"dark_purple","bold":true,"italic":true}']},SkullOwner:{Id:[I;1547217839,-1191557859,-2112938076,-2070163647],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTc1ODViOTkwZjgwM2Y3YTViMDkyYWRlNDI3MjhlOTU0YmExYzFmMmIzNzc4OTE4ZGU0ODk3NDY2ZTBiZmVmIn19fQ=="}]}},weaponItem:1b,fixedItem:1b,headItem:1b,lobbyItem:1b} 1
execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1