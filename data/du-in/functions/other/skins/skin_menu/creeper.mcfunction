#Functionality
execute if entity @s[scores={skinList=..0},tag=creepSkins] run function du-in:other/skins/creeper
execute if entity @s[scores={skinList=..0},tag=!creepSkins] run function du-in:other/skins/skin_menu/buy/creeper/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.6 with minecraft:player_head{creeperHead:1b,fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Creeper","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}},lobbyItem:1b}

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!creepSkins] inventory.6 with minecraft:player_head{creeperHead:1b,display:{Name:'{"text":"Creeper Skins","color":"white","bold":true,"italic":false}',Lore:['{"text":"200 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,du-in:weaponItem,headItem:1b,lobbyItem:1b} 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={creepSkin=1..}] run item replace entity @s[tag=creepSkins] inventory.6 with minecraft:player_head{creeperHead:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Creeper","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-288171773,-902673209,-1287927237,-605975132],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyNTQ4MzhjMzNlYTIyN2ZmY2EyMjNkZGRhYWJmZTBiMDIxNWY3MGRhNjQ5ZTk0NDQ3N2Y0NDM3MGNhNjk1MiJ9fX0="}]}},fixedItem:1b,du-in:weaponItem,headItem:1b,lobbyItem:1b}
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={creepSkin=1},tag=creepSkins] inventory.6 with minecraft:player_head{creeperHead:1b,display:{Name:'{"text":"Gingerbread Man","color":"white","bold":true,"italic":false}',Lore:['{"text":"Creeper","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;156266010,-1374600632,-1838645622,876962649],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RiNTQ0MjlkZWM1YjNmN2VmNDBlOGJjM2ZmMTk5NWNlZjY5NmEzNTAyOGY3ODJmNjM5MWMyYjU1MTFiYmUifX19"}]}},fixedItem:1b,du-in:weaponItem,headItem:1b,lobbyItem:1b}

execute if entity @s[scores={skinList=6}] run scoreboard players remove @s skinList 1