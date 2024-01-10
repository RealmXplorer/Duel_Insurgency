#Functionality
execute if entity @s[scores={skinList=..0},tag=palpsSkins] run function du-in:other/skins/palps
execute if entity @s[scores={skinList=..0},tag=!palpsSkins] run function du-in:other/skins/skin_menu/buy/palps/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.21 with minecraft:player_head{palpsHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Palpatine","color":"#8ff0f7","bold":true,"italic":true}']},SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}},lobbyItem:1b}

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!palpsSkins] inventory.21 with minecraft:player_head{palpsHead:1b,display:{Name:'{"text":"Palpatine Skins","color":"white","bold":true,"italic":false}',Lore:['{"text":"200 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={palpsSkin=1..}] run item replace entity @s[tag=palpsSkins] inventory.21 with minecraft:player_head{palpsHead:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Palpatine","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1802316670,791628963,-1622859676,677073006],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2MxZjIxMjgzZDc3NTAzYjJlYzY0MWE3N2E4ZTY3YTJjNGViYjU4N2Q1M2MyYjRmMDg2NGExNjk3NjUxMGU3In19fQ=="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={palpsSkin=1},tag=palpsSkins] inventory.21 with minecraft:player_head{palpsHead:1b,display:{Name:'{"text":"Dracula","color":"white","bold":true,"italic":false}',Lore:['{"text":"Palpatine","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;610656535,580406886,-2138910999,-1171886517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdmZGFiOWE1ZTMyOGRjOWNmOTYzZmMzNWMzODNiNzEzYjBkOTgzYjliMzEwNjA0ZDk1Njc0YWI4MTE3NjYyZiJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}

#item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Dracula\"}"},SkullOwner:{Id:[I;610656535,580406886,-2138910999,-1171886517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdmZGFiOWE1ZTMyOGRjOWNmOTYzZmMzNWMzODNiNzEzYjBkOTgzYjliMzEwNjA0ZDk1Njc0YWI4MTE3NjYyZiJ9fX0="}]}},weaponItem:1b} 1

execute if entity @s[scores={skinList=19}] run scoreboard players remove @s skinList 1