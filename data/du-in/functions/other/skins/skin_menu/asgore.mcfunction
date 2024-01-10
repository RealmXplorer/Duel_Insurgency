#Functionality
execute if entity @s[scores={skinList=..0},tag=asgoreSkins] run function du-in:other/skins/asgore
execute if entity @s[scores={skinList=..0},tag=!asgoreSkins] run function du-in:other/skins/skin_menu/buy/asgore/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.20 with minecraft:player_head{asgoreHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Asgore","color":"#8ff0f7","bold":true,"italic":true}']},SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}},lobbyItem:1b}

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!asgoreSkins] inventory.20 with minecraft:player_head{asgoreHead:1b,display:{Name:'{"text":"Asgore Skins","color":"white","bold":true,"italic":false}',Lore:['{"text":"400 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={asgoreSkin=1..}] run item replace entity @s[tag=asgoreSkins] inventory.20 with minecraft:player_head{asgoreHead:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Asgore","color":"gold","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1896887982,-1948695224,-1472869537,261263090],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkxMTgxM2EwNWM3NGJlMWZlMzM5YzMwODlkZDRjY2QxZjhiOGQ2NGM3YmJmMWYwYjAzNGJkNWRmY2ZiNjYifX19"}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={asgoreSkin=1},tag=asgoreSkins] inventory.20 with minecraft:player_head{asgoreHead:1b,display:{Name:'{"text":"Imp","color":"white","bold":true,"italic":false}',Lore:['{"text":"Asgore","color":"gold","bold":true,"italic":true}']},SkullOwner:{Id:[I;1121993168,-1138603385,-1776751622,-2014315443],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODExMGM0ZDllMjYwZjNhOWE5OTc5ZjA0ZjYwMjZkMGEzNTc2OTRjMjEzNjhhZWE0OGFhZmMwNDg1MzU5Y2VhYyJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={asgoreSkin=2},tag=asgoreSkins] inventory.20 with minecraft:player_head{asgoreHead:1b,display:{Name:'{"text":"Dadgore","color":"white","bold":true,"italic":false}',Lore:['{"text":"Asgore","color":"gold","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1896887982,-1948695224,-1472869537,261263090],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkxMTgxM2EwNWM3NGJlMWZlMzM5YzMwODlkZDRjY2QxZjhiOGQ2NGM3YmJmMWYwYjAzNGJkNWRmY2ZiNjYifX19"}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}

execute if entity @s[scores={skinList=18}] run scoreboard players remove @s skinList 1