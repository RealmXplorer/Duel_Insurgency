execute if entity @s[scores={skinList=..0}] run function du-in:other/skins/chara

execute unless entity @s[scores={charaSkin=1..}] run item replace entity @s inventory.10 with minecraft:player_head{charaHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Chara","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;867896025,-2025831227,-1696125005,-2071803774],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzkzNzM0YmMyNTY1Mzc2MzAxZmJiNzE2NmZkNGQxNGM3NjE3ZTUwOTdiM2VjMmQ0ODZhZmFkNGIwNTgifX19"}]}},lobbyItem:1b}
item replace entity @s[scores={charaSkin=1}] inventory.10 with minecraft:player_head{charaHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Michael Myers","color":"white","bold":true,"italic":false}',Lore:['{"text":"Chara","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-200033418,347359048,-1302951582,1350406878],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNiZDgyNThlZDA5OTk4ZWI5NTUxZjA0MmY5OGFmNTQ1MTJmYmYxNTBlYjk5NjAyYzQxYTcwZjVkNTlkN2VlMyJ9fX0="}]}},lobbyItem:1b}

execute if entity @s[scores={skinList=9}] run scoreboard players remove @s skinList 1