execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/chara
#clear @s player_head
item replace entity @s[tag=kitMenu] inventory.8 with minecraft:player_head{charaHead:1b,fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"Chara","color":"white","bold":true,"italic":false}',Lore:['{"text":"Undertale","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;867896025,-2025831227,-1696125005,-2071803774],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzkzNzM0YmMyNTY1Mzc2MzAxZmJiNzE2NmZkNGQxNGM3NjE3ZTUwOTdiM2VjMmQ0ODZhZmFkNGIwNTgifX19"}]}},lobbyItem:1b} 1

# execute unless entity @s[tag=kitMenu,scores={charaSkin=1..},tag=showSkins] run item replace entity @s[tag=showSkins] inventory.8 with minecraft:player_head{charaHead:1b,fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"Chara","color":"white","bold":true,"italic":false}',Lore:['{"text":"Undertale","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;867896025,-2025831227,-1696125005,-2071803774],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzkzNzM0YmMyNTY1Mzc2MzAxZmJiNzE2NmZkNGQxNGM3NjE3ZTUwOTdiM2VjMmQ0ODZhZmFkNGIwNTgifX19"}]}},lobbyItem:1b}
# item replace entity @s[tag=kitMenu,scores={charaSkin=1},tag=showSkins] inventory.8 with minecraft:player_head{charaHead:1b,fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"Chara","color":"white","bold":true,"italic":false}',Lore:['{"text":"Undertale","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-200033418,347359048,-1302951582,1350406878],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNiZDgyNThlZDA5OTk4ZWI5NTUxZjA0MmY5OGFmNTQ1MTJmYmYxNTBlYjk5NjAyYzQxYTcwZjVkNTlkN2VlMyJ9fX0="}]}},lobbyItem:1b}

execute if entity @s[scores={kitList=8}] run scoreboard players remove @s kitList 1