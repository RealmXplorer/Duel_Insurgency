execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/last_wish/puss
#clear @s player_head
item replace entity @s[tag=kitMenu,tag=!showSkins] inventory.1 with minecraft:player_head{pussHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b,display:{Name:'{"text":"Puss in Boots","color":"white","bold":true,"italic":false}',Lore:['{"text":"Shrek 2","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-519165600,-420199686,-1290829664,-623163008],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWEwYWEwMjIzMTU1OGEzYTAxNjNhNTIwMTFlNWRmOTRiOTRhNGNiNGM1OWZjZmMyNDUxNjU1ZTViMjY5ZTlmNCJ9fX0="}]}}} 1

execute unless entity @s[tag=kitMenu,scores={pussSkin=1..},tag=showSkins] run item replace entity @s[tag=showSkins] inventory.1 with minecraft:player_head{pussHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b,display:{Name:'{"text":"Puss in Boots","color":"white","bold":true,"italic":false}',Lore:['{"text":"Shrek 2","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-519165600,-420199686,-1290829664,-623163008],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWEwYWEwMjIzMTU1OGEzYTAxNjNhNTIwMTFlNWRmOTRiOTRhNGNiNGM1OWZjZmMyNDUxNjU1ZTViMjY5ZTlmNCJ9fX0="}]}}}
item replace entity @s[tag=kitMenu,scores={pussSkin=1},tag=showSkins] inventory.1 with minecraft:player_head{pussHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b,display:{Name:'{"text":"Puss in Boots","color":"white","bold":true,"italic":false}',Lore:['{"text":"Shrek 2","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1838143044,-29146820,-1697818104,-251943077],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTM1ZWI3ZmVlZDU3YTQ3M2Q3Y2JlMWU4ZWQ1MDEzODA0MTFlZmE1ZTY5ZjFkOTRiMTEzZjFmMmI5ZWQxNGNmMCJ9fX0="}]}}}

execute if entity @s[scores={kitList=1}] run scoreboard players remove @s kitList 1