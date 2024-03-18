#Functionality
execute if entity @s[scores={skinList=..0},tag=springSkins] run function du-in:other/skins/springtrap
execute if entity @s[scores={skinList=..0},tag=!springSkins] run function du-in:other/skins/skin_menu/buy/springtrap/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.8 with minecraft:player_head[custom_data={du-in:'springHead'},custom_name='{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',lore=['{"text":"Springtrap","color":"aqua","bold":true,"italic":true}'],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!springSkins] inventory.8 with minecraft:player_head[custom_data={du-in:'springHead'},custom_name='{"text":"Springtrap Skins","color":"white","bold":true,"italic":false}',lore=['{"text":"800 Diamonds","color":"red","bold":true,"italic":true}'],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={springSkin=1..}] run item replace entity @s[tag=springSkins] inventory.8 with minecraft:player_head[custom_data={du-in:'springHead'},custom_name='{"text":"Default","color":"white","bold":true,"italic":false}',lore=['{"text":"Springtrap","color":"#961FFF","bold":true,"italic":true}'],profile={id:[I;-974232140,105529911,-1429545513,183247425],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjUwMDFhMDg3OTYzNDYyN2FkNDgzNWNmODcwYzFiY2IxYTc2NzI0ZTVjYzkyMjQxMzE3OWQwOGEyMGNkNjk2YiJ9fX0="}]}]
#{SkullOwner:{Id:[I;-974232140,105529911,-1429545513,183247425],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjUwMDFhMDg3OTYzNDYyN2FkNDgzNWNmODcwYzFiY2IxYTc2NzI0ZTVjYzkyMjQxMzE3OWQwOGEyMGNkNjk2YiJ9fX0="}]}}}
#,profile={id:[I;-974232140,105529911,-1429545513,183247425],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjUwMDFhMDg3OTYzNDYyN2FkNDgzNWNmODcwYzFiY2IxYTc2NzI0ZTVjYzkyMjQxMzE3OWQwOGEyMGNkNjk2YiJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={springSkin=1},tag=springSkins] inventory.8 with minecraft:player_head[custom_data={du-in:'springHead'},custom_name='{"text":"Stalktrap","color":"white","bold":true,"italic":false}',lore['{"text":"Springtrap","color":"#961FFF","bold":true,"italic":true}'],profile={id:[I;-708152721,-635286820,-1962902343,1554389959],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjNmMWFlMGUzZTIyNjFhZjNmNDdlZGQ2ZjE1NmYzODczODgxYzA0NGZkNGQxMzIwOWQ2ODg0MTBmZmRmMTg2In19fQ=="}]}]
#{SkullOwner:{Id:[I;-708152721,-635286820,-1962902343,1554389959],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjNmMWFlMGUzZTIyNjFhZjNmNDdlZGQ2ZjE1NmYzODczODgxYzA0NGZkNGQxMzIwOWQ2ODg0MTBmZmRmMTg2In19fQ=="}]}}}
#,profile={id:[I;-708152721,-635286820,-1962902343,1554389959],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjNmMWFlMGUzZTIyNjFhZjNmNDdlZGQ2ZjE1NmYzODczODgxYzA0NGZkNGQxMzIwOWQ2ODg0MTBmZmRmMTg2In19fQ=="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={springSkin=2},tag=springSkins] inventory.8 with minecraft:player_head[custom_data={du-in:'springHead'},custom_name='{"text":"Clowntrap","color":"white","bold":true,"italic":false}',lore=['{"text":"Springtrap","color":"#961FFF","bold":true,"italic":true}'],profile={id:[I;1664394882,1557745189,-1253432116,-1184828302],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODUxYTUyOGZkYmYwODg0ODE1OGI3YWMwOTQ1ZGE3M2ViNTAwZmJlMDFjNGM4MTNhNmMyN2VhOWM5YmNmZWIxYSJ9fX0="}]}]
#{SkullOwner:{Id:[I;1664394882,1557745189,-1253432116,-1184828302],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODUxYTUyOGZkYmYwODg0ODE1OGI3YWMwOTQ1ZGE3M2ViNTAwZmJlMDFjNGM4MTNhNmMyN2VhOWM5YmNmZWIxYSJ9fX0="}]}}}
#,profile={id:[I;1664394882,1557745189,-1253432116,-1184828302],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODUxYTUyOGZkYmYwODg0ODE1OGI3YWMwOTQ1ZGE3M2ViNTAwZmJlMDFjNGM4MTNhNmMyN2VhOWM5YmNmZWIxYSJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={springSkin=3},tag=springSkins] inventory.8 with minecraft:player_head[custom_data={du-in:'springHead'},custom_name='{"text":"Scraptrap","color":"white","bold":true,"italic":false}',lore=['{"text":"Springtrap","color":"#961FFF","bold":true,"italic":true}'],profile={id:[I;-1700867596,-438613736,-1483607811,1396970680],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2I2OWM0MjUwNTNhZjIzMjVlMmJiMjRlNTU0ZmY1MmFmNzBiNTAwMzUzNDYwZWJjMzczNWFkOGIxZmQzNjY2In19fQ=="}]}] 1
#{SkullOwner:{Id:[I;-1700867596,-438613736,-1483607811,1396970680],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2I2OWM0MjUwNTNhZjIzMjVlMmJiMjRlNTU0ZmY1MmFmNzBiNTAwMzUzNDYwZWJjMzczNWFkOGIxZmQzNjY2In19fQ=="}]}}}
#,profile={id:[I;-1700867596,-438613736,-1483607811,1396970680],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2I2OWM0MjUwNTNhZjIzMjVlMmJiMjRlNTU0ZmY1MmFmNzBiNTAwMzUzNDYwZWJjMzczNWFkOGIxZmQzNjY2In19fQ=="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={springSkin=4},tag=springSkins] inventory.8 with minecraft:player_head[custom_data={du-in:'springHead'},custom_name='{"text":"Flametrap","color":"white","bold":true,"italic":false}',lore=['{"text":"Springtrap","color":"#961FFF","bold":true,"italic":true}'],profile={id:[I;-1743240953,962805853,-1677212989,-125648568],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQzYWU3ZmI2YzliNDFlN2E4NjgwYzRiNDYwNzVlOTNmYjBjZTkzNjhlNzBlM2Q1N2M0Mzc1M2RiMDdkMDk2YiJ9fX0="}]}] 1
#{SkullOwner:{Id:[I;-1743240953,962805853,-1677212989,-125648568],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQzYWU3ZmI2YzliNDFlN2E4NjgwYzRiNDYwNzVlOTNmYjBjZTkzNjhlNzBlM2Q1N2M0Mzc1M2RiMDdkMDk2YiJ9fX0="}]}}}
#,profile={id:[I;-1743240953,962805853,-1677212989,-125648568],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQzYWU3ZmI2YzliNDFlN2E4NjgwYzRiNDYwNzVlOTNmYjBjZTkzNjhlNzBlM2Q1N2M0Mzc1M2RiMDdkMDk2YiJ9fX0="}]}

execute if entity @s[scores={skinList=8}] run scoreboard players remove @s skinList 1
