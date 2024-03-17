execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/palps
#clear @s player_head

item replace entity @s[tag=kitMenu] inventory.3 with minecraft:player_head[custom_data={du-in:'palpsHead'}]{fixedItem:1b,du-in:weaponItem,headItem:1b,display:{Name:'{"text":"Palpatine","color":"white","bold":true,"italic":false}',Lore:['{"text":"Original Trilogy","color":"green","bold":true,"italic":true}']},SkullOwner:{Id:[I;1802316670,791628963,-1622859676,677073006],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2MxZjIxMjgzZDc3NTAzYjJlYzY0MWE3N2E4ZTY3YTJjNGViYjU4N2Q1M2MyYjRmMDg2NGExNjk3NjUxMGU3In19fQ=="}]}},lobbyItem:1b} 1

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1

#item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Dracula\"}"},SkullOwner:{Id:[I;610656535,580406886,-2138910999,-1171886517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdmZGFiOWE1ZTMyOGRjOWNmOTYzZmMzNWMzODNiNzEzYjBkOTgzYjliMzEwNjA0ZDk1Njc0YWI4MTE3NjYyZiJ9fX0="}]}},du-in:weaponItem} 1
