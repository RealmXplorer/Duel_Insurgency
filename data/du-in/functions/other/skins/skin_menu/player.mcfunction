execute if entity @s[scores={skinList=..0}] run function du-in:other/skins/player

execute unless entity @s[scores={steveSkin=1..}] run item replace entity @s inventory.5 with minecraft:player_head{playerHead:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Player","color":"green","bold":true,"italic":true}']},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
item replace entity @s[scores={steveSkin=1}] inventory.5 with minecraft:player_head{playerHead:1b,display:{Name:'{"text":"Alex","color":"white","bold":true,"italic":false}',Lore:['{"text":"Player","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-731408145,-304985227,-1778597514,158507129],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjNiMDk4OTY3MzQwZGFhYzUyOTI5M2MyNGUwNDkxMDUwOWIyMDhlN2I5NDU2M2MzZWYzMWRlYzdiMzc1MCJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
item replace entity @s[scores={steveSkin=2}] inventory.5 with minecraft:player_head{playerHead:1b,display:{Name:'{"text":"Herobrine","color":"white","bold":true,"italic":false}',Lore:['{"text":"Player","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-793684908,922371044,-1572341630,-1147149688],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThiN2NhM2M3ZDMxNGE2MWFiZWQ4ZmMxOGQ3OTdmYzMwYjZlZmM4NDQ1NDI1YzRlMjUwOTk3ZTUyZTZjYiJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
item replace entity @s[scores={steveSkin=3}] inventory.5 with minecraft:player_head{playerHead:1b,display:{Name:'{"text":"Goner","color":"white","bold":true,"italic":false}',Lore:['{"text":"Player","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-397089264,-2043001806,-1782867861,482285012],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmJjZTk3NTJlZjQ1N2MyYzZlZmE5M2ExYzRhYTViMmY0OTc1OGMyNjFkZTY4MTg5Mjg3ZjFhNDI1YTg0YzlkZiJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
item replace entity @s[scores={steveSkin=4}] inventory.5 with minecraft:player_head{playerHead:1b,display:{Name:'{"text":"Terraria","color":"white","bold":true,"italic":false}',Lore:['{"text":"Player","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1424340984,-242136467,-1341135019,-1786758919],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTQzYTlmYWJkZTIyMmIxODUxMmY3ZmMzZjk1ZjI4YTlkYzRmODg3MGM5ZTMyNDYxZGU5NTYwM2M4YTJhNTY3YiJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
item replace entity @s[scores={steveSkin=5}] inventory.5 with minecraft:player_head{playerHead:1b,display:{Name:'{"text":"Hypixel","color":"white","bold":true,"italic":false}',Lore:['{"text":"Player","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-772786896,167657582,-1326237280,845652956],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTVlYjBiZDg1YWFkZGYwZDI5ZWQwODJlYWMwM2ZjYWRlNDNkMGVlODAzYjBlODE2MmFkZDI4YTYzNzlmYjU0ZSJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}

execute if entity @s[scores={skinList=5}] run scoreboard players remove @s skinList 1