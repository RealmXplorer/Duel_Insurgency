execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/golem

item replace entity @s[tag=kitMenu,tag=!showSkins] inventory.3 with minecraft:player_head{golemHead:1b,display:{Name:'{"text":"Iron Golem","color":"white","bold":true,"italic":false}',Lore:['{"text":"Minecraft","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-847629707,-1011593993,-2048760807,-2341734],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjJiY2FjZWViNDE2MmY0MDBkNDQ3NDMzMTU5MzJhYzgyMGQzMTE5YWM4OTg2YTAxNjFhNzI2MTYxY2NjOTNmYyJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1

execute unless entity @s[tag=kitMenu,scores={golemSkin=1..},tag=showSkins] run item replace entity @s[tag=showSkins] inventory.3 with minecraft:player_head{golemHead:1b,display:{Name:'{"text":"Iron Golem","color":"white","bold":true,"italic":false}',Lore:['{"text":"Minecraft","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-847629707,-1011593993,-2048760807,-2341734],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjJiY2FjZWViNDE2MmY0MDBkNDQ3NDMzMTU5MzJhYzgyMGQzMTE5YWM4OTg2YTAxNjFhNzI2MTYxY2NjOTNmYyJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
item replace entity @s[tag=kitMenu,scores={golemSkin=1},tag=showSkins] inventory.3 with minecraft:player_head{golemHead:1b,display:{Name:'{"text":"Iron Golem","color":"white","bold":true,"italic":false}',Lore:['{"text":"Minecraft","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1034086629,-1860875844,-1338317964,1870776582],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzI0MDdlNjZjODFiMTQ0M2MyZTdkZmM0ZDY1ODNlYjE5YzYyMmZhMjJmMzRmYmY5OWZlNmM0NWY3NmEifX19"}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
item replace entity @s[tag=kitMenu,scores={golemSkin=2},tag=showSkins] inventory.3 with minecraft:player_head{golemHead:1b,display:{Name:'{"text":"Iron Golem","color":"white","bold":true,"italic":false}',Lore:['{"text":"Minecraft","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;1224490280,587221666,-2097683818,1282182721],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM5MGY0Yjg1YzkzYjZlNzUxMGFkNWE2NDQ3Y2JiN2Q2NWMxMDk5MTRlOWJkNzU2YzFkNzY2ZjIzMmNlYmNhZiJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1