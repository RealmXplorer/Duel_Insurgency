#Functionality
execute if entity @s[scores={skinList=..0},tag=ralseiSkins] run function du-in:other/skins/ralsei
execute if entity @s[scores={skinList=..0},tag=!ralseiSkins] run function du-in:other/skins/skin_menu/buy/ralsei/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.13 with minecraft:player_head{ralseiHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Creeper","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}},lobbyItem:1b}

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!ralseiSkins] inventory.13 with minecraft:player_head{ralseiHead:1b,display:{Name:'{"text":"Ralsei Skins","color":"white","bold":true,"italic":false}',Lore:['{"text":"150 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={ralSkin=1..}] run item replace entity @s[tag=ralseiSkins] inventory.13 with minecraft:player_head{ralseiHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Ralsei","color":"#17FFB9","bold":true,"italic":true}']},SkullOwner:{Id:[I;1694033945,-1566817452,-1958054767,-65585814],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2ZmZmUxZDFjM2E2NTk5ZDZmNGI4MzZiZTUxNDhlNjFiOTdmNTJiNzlmODMzNWUwZjFkMDA1OTU5MjMyMTc2NCJ9fX0="}]}}}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={ralSkin=1},tag=ralseiSkins] inventory.13 with minecraft:player_head{ralseiHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b,display:{Name:'{"text":"Timekeeper Ralsei","color":"white","bold":true,"italic":false}',Lore:['{"text":"Ralsei","color":"#17FFB9","bold":true,"italic":true}']},SkullOwner:{Id:[I;-81617903,697581951,-1630698045,1582056172],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhkY2M1YTNjOWE4NTQyYjAzMGJiZWU5MjI0MGE4YjRlMzdhNTY1ZDU1ZmQzMWJhYjg4YTE1NjY5NjI3YjE4YyJ9fX0="}]}}}

execute if entity @s[scores={skinList=12}] run scoreboard players remove @s skinList 1
