execute if entity @s[scores={kitList=..0},tag=runzaUnlocked] run function du-in:lobby/kitmenu/select/unlock/runza
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/runza

execute if entity @s[scores={kitList=..0},tag=!runzaUnlocked] run scoreboard players enable @s buy
execute if entity @s[scores={kitList=..0},tag=!runzaUnlocked] run trigger buy
execute if entity @s[scores={kitList=..0,buy=1..},tag=!runzaUnlocked] run function du-in:kit/runza/buy/buy

#clear @s player_head
item replace entity @s[tag=kitMenu,tag=!runzaUnlocked] inventory.3 with minecraft:player_head{runzaHead:1b,display:{Name:'{"text":"Runza Rex","color":"white","bold":true,"italic":false}',Lore:['{"text":"1949 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1
item replace entity @s[tag=kitMenu,tag=runzaUnlocked] inventory.3 with minecraft:player_head{runzaHead:1b,display:{Name:'{"text":"Runza Rex","color":"white","bold":true,"italic":false}',Lore:['{"text":"Runza Restaurants","color":"dark_green","bold":true,"italic":true}']},SkullOwner:{Id:[I;1628619847,-798801625,-2062989915,-239227229],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjNhMzUzMzI3N2RkOTZkMmEyNDNjYmFmY2RkZTA4OTQwMWY3YTc4Zjg4MTYxYjM3ZTYxMDBjYTNhNWMwOGRkMSJ9fX0="}]}},lobbyItem:1b,weaponItem:1b,headItem:1b,fixedItem:1b} 1
execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1