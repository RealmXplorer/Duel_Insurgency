#Functionality
execute if entity @s[scores={skinList=..0},tag=sansSkins] run function du-in:other/skins/sans
execute if entity @s[scores={skinList=..0},tag=!sansSkins] run function du-in:other/skins/skin_menu/buy/sans/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.12 with minecraft:player_head{sansHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Creeper","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}},lobbyItem:1b}

#Lock Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!sansSkins] inventory.12 with minecraft:player_head{sansHead:1b,display:{Name:'{"text":"Sans Skins","color":"white","bold":true,"italic":false}',Lore:['{"text":"150 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={sansSkin=1..}] run item replace entity @s[tag=sansSkins] inventory.12 with minecraft:player_head{sansHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Sans","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;1075612150,944654141,-1270342541,-1555910951],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTVhZWY4ZDczYzZiM2I5N2Q3YjU3MTZmY2EyMTVmNWViYTY3OTkyMTJkMTFlYjYzZTE1ODg5NDBkMWUyMWI3MyJ9fX0="}]}},lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={sansSkin=1},tag=sansSkins] inventory.12 with minecraft:player_head{sansHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Sansta","color":"white","bold":true,"italic":false}',Lore:['{"text":"Sans","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1361811219,-379894067,-1830054592,-906781659],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThhMjJmZmU1NjdhMzc2ZjliNjcyMjg5M2I4YzczZjJlYzU4YTk1ZGMxMmYxYjY3ZmUzNTUwMTU3ZmQ4NmI2YyJ9fX0="}]}},lobbyItem:1b}

execute if entity @s[scores={skinList=11}] run scoreboard players remove @s skinList 1
