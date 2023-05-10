execute if entity @s[scores={skinList=..0}] run function du-in:other/skins/springtrap

execute unless entity @s[scores={springSkin=1..}] run item replace entity @s inventory.8 with minecraft:player_head{springHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Default","color":"white","bold":true,"italic":false}',Lore:['{"text":"Springtrap","color":"#961FFF","bold":true,"italic":true}']},SkullOwner:{Id:[I;-974232140,105529911,-1429545513,183247425],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjUwMDFhMDg3OTYzNDYyN2FkNDgzNWNmODcwYzFiY2IxYTc2NzI0ZTVjYzkyMjQxMzE3OWQwOGEyMGNkNjk2YiJ9fX0="}]}},lobbyItem:1b}
item replace entity @s[scores={springSkin=1}] inventory.8 with minecraft:player_head{springHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Stalktrap","color":"white","bold":true,"italic":false}',Lore:['{"text":"Springtrap","color":"#961FFF","bold":true,"italic":true}']},SkullOwner:{Id:[I;-708152721,-635286820,-1962902343,1554389959],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjNmMWFlMGUzZTIyNjFhZjNmNDdlZGQ2ZjE1NmYzODczODgxYzA0NGZkNGQxMzIwOWQ2ODg0MTBmZmRmMTg2In19fQ=="}]}},lobbyItem:1b}
item replace entity @s[scores={springSkin=2}] inventory.8 with minecraft:player_head{springHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Clowntrap","color":"white","bold":true,"italic":false}',Lore:['{"text":"Springtrap","color":"#961FFF","bold":true,"italic":true}']},SkullOwner:{Id:[I;1664394882,1557745189,-1253432116,-1184828302],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODUxYTUyOGZkYmYwODg0ODE1OGI3YWMwOTQ1ZGE3M2ViNTAwZmJlMDFjNGM4MTNhNmMyN2VhOWM5YmNmZWIxYSJ9fX0="}]}},lobbyItem:1b}
item replace entity @s[scores={springSkin=3}] inventory.8 with minecraft:player_head{springHead:1b,fixedItem:1b,weaponItem:1b,headItem:1b,display:{Name:'{"text":"Scraptrap","color":"white","bold":true,"italic":false}',Lore:['{"text":"Springtrap","color":"#961FFF","bold":true,"italic":true}']},SkullOwner:{Id:[I;-1700867596,-438613736,-1483607811,1396970680],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2I2OWM0MjUwNTNhZjIzMjVlMmJiMjRlNTU0ZmY1MmFmNzBiNTAwMzUzNDYwZWJjMzczNWFkOGIxZmQzNjY2In19fQ=="}]}},lobbyItem:1b} 1

execute if entity @s[scores={skinList=8}] run scoreboard players remove @s skinList 1