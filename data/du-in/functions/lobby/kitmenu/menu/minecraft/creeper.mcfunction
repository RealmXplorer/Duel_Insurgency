execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/creeper

item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head{creeperHead:1b,SkullOwner:MHF_Creeper,display:{Name:'{"text":"Creeper","color":"white","bold":true,"italic":false}',Lore:['{"text":"Minecraft","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-288171773,-902673209,-1287927237,-605975132],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyNTQ4MzhjMzNlYTIyN2ZmY2EyMjNkZGRhYWJmZTBiMDIxNWY3MGRhNjQ5ZTk0NDQ3N2Y0NDM3MGNhNjk1MiJ9fX0="}]}},fixedItem:1b,du-in:weaponItem,headItem:1b,lobbyItem:1b}

# execute unless entity @s[tag=kitMenu,scores={creepSkin=1..},tag=showSkins] run item replace entity @s[tag=showSkins] inventory.4 with minecraft:player_head{creeperHead:1b,display:{Name:'{"text":"Creeper","color":"white","bold":true,"italic":false}',Lore:['{"text":"Minecraft","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-288171773,-902673209,-1287927237,-605975132],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyNTQ4MzhjMzNlYTIyN2ZmY2EyMjNkZGRhYWJmZTBiMDIxNWY3MGRhNjQ5ZTk0NDQ3N2Y0NDM3MGNhNjk1MiJ9fX0="}]}},fixedItem:1b,du-in:weaponItem,headItem:1b,lobbyItem:1b}
# item replace entity @s[tag=kitMenu,scores={creepSkin=1},tag=showSkins] inventory.4 with minecraft:player_head{creeperHead:1b,display:{Name:'{"text":"Creeper","color":"white","bold":true,"italic":false}',Lore:['{"text":"Minecraft","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;156266010,-1374600632,-1838645622,876962649],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RiNTQ0MjlkZWM1YjNmN2VmNDBlOGJjM2ZmMTk5NWNlZjY5NmEzNTAyOGY3ODJmNjM5MWMyYjU1MTFiYmUifX19"}]}},fixedItem:1b,du-in:weaponItem,headItem:1b,lobbyItem:1b}

execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1