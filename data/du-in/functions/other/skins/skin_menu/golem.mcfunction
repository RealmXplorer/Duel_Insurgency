execute if entity @s[scores={skinList=..0}] run function du-in:other/skins/golem

execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.14 with minecraft:player_head{creeperHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Creeper","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}},lobbyItem:1b}

execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={golemSkin=1..}] run item replace entity @s inventory.14 with minecraft:player_head{golemHead:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Iron Golem","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-847629707,-1011593993,-2048760807,-2341734],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjJiY2FjZWViNDE2MmY0MDBkNDQ3NDMzMTU5MzJhYzgyMGQzMTE5YWM4OTg2YTAxNjFhNzI2MTYxY2NjOTNmYyJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={golemSkin=1}] inventory.14 with minecraft:player_head{golemHead:1b,display:{Name:'{"text":"Nutcracker","color":"white","bold":true,"italic":false}',Lore:['{"text":"Iron Golem","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1034086629,-1860875844,-1338317964,1870776582],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzI0MDdlNjZjODFiMTQ0M2MyZTdkZmM0ZDY1ODNlYjE5YzYyMmZhMjJmMzRmYmY5OWZlNmM0NWY3NmEifX19"}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={golemSkin=2}] inventory.14 with minecraft:player_head{golemHead:1b,display:{Name:'{"text":"Terraria","color":"white","bold":true,"italic":false}',Lore:['{"text":"Iron Golem","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;1224490280,587221666,-2097683818,1282182721],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM5MGY0Yjg1YzkzYjZlNzUxMGFkNWE2NDQ3Y2JiN2Q2NWMxMDk5MTRlOWJkNzU2YzFkNzY2ZjIzMmNlYmNhZiJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}

execute if entity @s[scores={skinList=13}] run scoreboard players remove @s skinList 1
