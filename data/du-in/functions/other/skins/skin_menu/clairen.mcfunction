#Functionality
execute if entity @s[scores={skinList=..0},tag=clairenSkins] run function du-in:other/skins/clairen
execute if entity @s[scores={skinList=..0},tag=!clairenSkins] run function du-in:other/skins/skin_menu/buy/clairen/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.3 with minecraft:player_head{clairenHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Clairen","color":"#8ff0f7","bold":true,"italic":true}']},SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}},lobbyItem:1b}

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!clairenSkins] inventory.3 with minecraft:player_head{clairenHead:1b,display:{Name:'{"text":"Clairen Skins","color":"white","bold":true,"italic":false}',Lore:['{"text":"150 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={clairenSkin=1..}] run item replace entity @s[tag=clairenSkins] inventory.3 with minecraft:player_head{clairenHead:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Clairen","color":"#8ff0f7","bold":true,"italic":true}']},SkullOwner:{Id:[I;-641831667,-1060878634,-1174944740,735223405],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQ2M2E3OTQ2MWEwZTk5YzNlOWI4MDA4ZTEwYzA2MGJiYzdlZDM5Mjk2OTI3YTI3NjBjYjBmNTNmMzU1YjlhOSJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={clairenSkin=1},tag=clairenSkins] inventory.3 with minecraft:player_head{clairenHead:1b,display:{Name:'{"text":"Festive","color":"white","bold":true,"italic":false}',Lore:['{"text":"Clairen","color":"#8ff0f7","bold":true,"italic":true}']},SkullOwner:{Id:[I;362162431,-1389739602,-1387506468,-619197374],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM5NWZmMDFiZDVmYjVkM2I1YWNiZTU1OWM0NDlhOThhZjlkYzE5YjMwMjJhOTg5NTI3Yzg3MTAzNTZhODYzZSJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}

execute if entity @s[scores={skinList=3}] run scoreboard players remove @s skinList 1