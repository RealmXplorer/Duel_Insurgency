execute if entity @s[scores={skinList=..0}] run function du-in:other/skins/gaster

execute unless entity @s[scores={gastSkin=1..}] run item replace entity @s inventory.4 with minecraft:player_head{gasterHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Gaster","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;1144803015,773998093,-2103491651,-2103585732],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWM4MDQ0YzdjN2U1MjdkNDMyYjRhZTcxYjFjNDg2NWM4NzZkOGFjODIzZjE0Njc0OTNiYWM4MmE2OTZmOTZkNSJ9fX0="}]}},lobbyItem:1b}
item replace entity @s[scores={gastSkin=1}] inventory.4 with minecraft:player_head{gasterHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Ghost","color":"white","bold":true,"italic":false}',Lore:['{"text":"Gaster","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;823472050,-887208509,-2032291265,2048960248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjhkMjE4MzY0MDIxOGFiMzMwYWM1NmQyYWFiN2UyOWE5NzkwYTU0NWY2OTE2MTllMzg1NzhlYTRhNjlhZTBiNiJ9fX0="}]}},lobbyItem:1b}
item replace entity @s[scores={gastSkin=2}] inventory.4 with minecraft:player_head{gasterHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Spamton","color":"white","bold":true,"italic":false}',Lore:['{"text":"Gaster","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;1899722801,667436481,-1217557732,278473987],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzk5MTA5M2NlNjdiNjY4ZWY1NGQ5NjJmM2I2ZTFjOGFhMTE3ZTAyYjc0OTJiMzVkOWY5MmFhYmFlMmIxZTY3YyJ9fX0="}]}},lobbyItem:1b}

execute if entity @s[scores={skinList=4}] run scoreboard players remove @s skinList 1