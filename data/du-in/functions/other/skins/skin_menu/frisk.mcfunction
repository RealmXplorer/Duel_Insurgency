execute if entity @s[scores={skinList=..0}] run function du-in:other/skins/frisk

execute unless entity @s[scores={friskSkin=1..}] run item replace entity @s inventory.16 with minecraft:player_head{friskHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Frisk","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1590443435,829243816,-2071605894,1474773107],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVhNWJhNWY2ZDQ1YTU2ZmRkNzZiNjJlM2RjZmFiYmZjNWYyNTZjODU4Zjc0ZDA2MjUyNDRhZTM0Y2E3NjRmIn19fQ=="}]}},lobbyItem:1b}
item replace entity @s[scores={friskSkin=1}] inventory.16 with minecraft:player_head{friskHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Kris","color":"white","bold":true,"italic":false}',Lore:['{"text":"Frisk","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-718403135,1697400233,-1681479049,-1773641401],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGY5ODJmMzY0NjE5Zjg0ZjczZDdhYWVmZjA2ZDUxZDAwNjY2YzJmMjk0ZmViMzI4MWZkOGQ0NWY5NmY2YmY2MyJ9fX0="}]}},lobbyItem:1b}
item replace entity @s[scores={friskSkin=2}] inventory.16 with minecraft:player_head{friskHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Priest","color":"white","bold":true,"italic":false}',Lore:['{"text":"Frisk","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1590443435,829243816,-2071605894,1474773107],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVhNWJhNWY2ZDQ1YTU2ZmRkNzZiNjJlM2RjZmFiYmZjNWYyNTZjODU4Zjc0ZDA2MjUyNDRhZTM0Y2E3NjRmIn19fQ=="}]}},lobbyItem:1b}

execute if entity @s[scores={skinList=15}] run scoreboard players remove @s skinList 1