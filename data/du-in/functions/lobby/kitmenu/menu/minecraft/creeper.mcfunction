execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/mobs/creeper

item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head{creeperHead:1b,SkullOwner:MHF_Creeper,display:{Name:'{"text":"Creeper","color":"white","bold":true,"italic":false}',Lore:['{"text":"Minecraft","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-288171773,-902673209,-1287927237,-605975132],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyNTQ4MzhjMzNlYTIyN2ZmY2EyMjNkZGRhYWJmZTBiMDIxNWY3MGRhNjQ5ZTk0NDQ3N2Y0NDM3MGNhNjk1MiJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1