execute if entity @s[scores={kitList=..0},tag=pazUnlocked] run function du-in:lobby/kitmenu/select/unlock/paz

#PURCHASE#
execute if entity @s[scores={kitList=..0},tag=!pazUnlocked] run scoreboard players enable @s buy
execute if entity @s[scores={kitList=..0},tag=!pazUnlocked] run trigger buy
execute if entity @s[scores={kitList=..0,buy=1..},tag=!pazUnlocked] run function du-in:kit/paz/buy/buy

item replace entity @s[tag=kitMenu,tag=!pazUnlocked] inventory.5 with minecraft:player_head{pazHead:1b,display:{Name:'{"text":"PearApplez","color":"white","bold":true,"italic":false}',Lore:['{"text":"1000 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},weaponItem:1b,headItem:1b,fixedItem:1b,lobbyItem:1b} 1
item replace entity @s[tag=kitMenu,tag=pazUnlocked] inventory.5 with minecraft:player_head{pazHead:1b,display:{Name:'{"text":"PearApplez","color":"white","bold":true,"italic":false}',Lore:['{"text":"PearApplez","color":"dark_red","bold":true,"italic":true}','{"text":"(he paid me in VBucks)","color":"gray","bold":false,"italic":true}']},SkullOwner:{Id:[I;837252449,1229669474,-1997864783,1308219708],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWNmY2QwMjk1ODZlMTYyZmE4YWU0ODViZDdiNTdiMTFhM2I5ODU2NzkzZjRmZDFjYTZkMzBiMDIyMzEzZmM5YiJ9fX0="}]}},weaponItem:1b,headItem:1b,fixedItem:1b,lobbyItem:1b} 1
execute if entity @s[scores={kitList=5}] run scoreboard players remove @s kitList 1