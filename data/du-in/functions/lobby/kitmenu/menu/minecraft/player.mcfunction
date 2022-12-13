execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/mobs/player

item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head{playerHead:1b,display:{Name:'{"text":"Player","color":"white","bold":true,"italic":false}',Lore:['{"text":"Minecraft","color":"green","bold":true,"italic":true}']},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1