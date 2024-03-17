#Functionality
execute if entity @s[scores={skinList=..0},tag=friskSkins] run function du-in:other/skins/frisk
execute if entity @s[scores={skinList=..0},tag=!friskSkins] run function du-in:other/skins/skin_menu/buy/frisk/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.16 with minecraft:player_head{friskHead:1b,fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Creeper","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}},lobbyItem:1b}

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!friskSkins] inventory.16 with minecraft:player_head{friskHead:1b,display:{Name:'{"text":"Frisk Skins","color":"white","bold":true,"italic":false}',Lore:['{"text":"400 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,du-in:weaponItem,headItem:1b,lobbyItem:1b} 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={friskSkin=1..}] run item replace entity @s[tag=friskSkins] inventory.16 with minecraft:player_head{friskHead:1b,fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Frisk","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1590443435,829243816,-2071605894,1474773107],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVhNWJhNWY2ZDQ1YTU2ZmRkNzZiNjJlM2RjZmFiYmZjNWYyNTZjODU4Zjc0ZDA2MjUyNDRhZTM0Y2E3NjRmIn19fQ=="}]}},lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={friskSkin=1},tag=friskSkins] inventory.16 with minecraft:player_head{friskHead:1b,fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"Kris","color":"white","bold":true,"italic":false}',Lore:['{"text":"Frisk","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-718403135,1697400233,-1681479049,-1773641401],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGY5ODJmMzY0NjE5Zjg0ZjczZDdhYWVmZjA2ZDUxZDAwNjY2YzJmMjk0ZmViMzI4MWZkOGQ0NWY5NmY2YmY2MyJ9fX0="}]}},lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={friskSkin=2},tag=friskSkins] inventory.16 with minecraft:player_head{friskHead:1b,fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"Priest","color":"white","bold":true,"italic":false}',Lore:['{"text":"Frisk","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1590443435,829243816,-2071605894,1474773107],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVhNWJhNWY2ZDQ1YTU2ZmRkNzZiNjJlM2RjZmFiYmZjNWYyNTZjODU4Zjc0ZDA2MjUyNDRhZTM0Y2E3NjRmIn19fQ=="}]}},lobbyItem:1b}

execute if entity @s[scores={skinList=15}] run scoreboard players remove @s skinList 1
