execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/flowey
#clear @s player_head
item replace entity @s[tag=kitMenu] inventory.5 with minecraft:player_head{floweyHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Flowey","color":"white","bold":true,"italic":false}',Lore:['{"text":"Undertale","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1335355653,-1617476810,-1712807685,-947254848],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTVmZGYyMmM5YmY0NGIzZWE1MzJjNGRkZTgzODk0YmI2MWExZjIwMTAxZDExNzRmOGRjYjMzOWI2ZmY0OSJ9fX0="}]}},lobbyItem:1b} 1

# execute unless entity @s[tag=kitMenu,scores={flowSkin=1..},tag=showSkins] run item replace entity @s[tag=showSkins] inventory.5 with minecraft:player_head{floweyHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Flowey","color":"white","bold":true,"italic":false}',Lore:['{"text":"Undertale","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1335355653,-1617476810,-1712807685,-947254848],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTVmZGYyMmM5YmY0NGIzZWE1MzJjNGRkZTgzODk0YmI2MWExZjIwMTAxZDExNzRmOGRjYjMzOWI2ZmY0OSJ9fX0="}]}},lobbyItem:1b}
# item replace entity @s[tag=kitMenu,scores={flowSkin=1},tag=showSkins] inventory.5 with minecraft:player_head{floweyHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Flowey","color":"white","bold":true,"italic":false}',Lore:['{"text":"Undertale","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;373737913,-550616604,-1511827879,-1655937150],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhOTg1YzMxYWQ0NjFlMzIyYjM5YzQzM2VhZTc5ZmY0NmZiNjQ4MDBjZGVjYWRmMmY2ZDBmOTcyNzI1MiJ9fX0="}]}},lobbyItem:1b}
# item replace entity @s[tag=kitMenu,scores={flowSkin=2},tag=showSkins] inventory.5 with minecraft:player_head{floweyHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Flowey","color":"white","bold":true,"italic":false}',Lore:['{"text":"Undertale","color":"aqua","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1136136984,1523600937,-1461406966,-1097708017],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzYxM2U2NWVkZWZlNTY2MzgwOTE0M2RmZThhMmRlNjNiNzUwYTQ1NDc5OTRiNzllN2I5MmJhOTdiZWFlYWU0YyJ9fX0="}]}},lobbyItem:1b}


execute if entity @s[scores={kitList=5}] run scoreboard players remove @s kitList 1