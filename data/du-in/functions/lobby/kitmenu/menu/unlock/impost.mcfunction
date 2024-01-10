#Pick / Purchase
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/sus
#execute if entity @s[scores={kitList=..0},tag=!impostUnlocked] run function du-in:kit/impostor/buy/buy

#Head Displays
#item replace entity @s[tag=kitMenu,tag=!impostUnlocked] inventory.2 with minecraft:player_head{susHead:1b,display:{Name:'{"text":"The Impostor","color":"white","bold":true,"italic":false}',Lore:['{"text":"1250 Diamonds","color":"red","bold":true,"italic":true}']},SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1
item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head{susHead:1b,display:{Name:'{"text":"The Impostor","color":"white","bold":true,"italic":false}',Lore:['{"text":"Among Us","color":"#C91048","bold":true,"italic":true}']},SkullOwner:{Id:[I;-662073347,1607614868,-1528156711,-1436011716],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdkNWViMGFlYTVkNjFiYTNmZjQ5OTY0MTZhOTAwOTZhOWQ3NzYwOWViY2QzYjMwOGY5MDZhZTg4OGE0NWY2ZCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b} 1

execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1