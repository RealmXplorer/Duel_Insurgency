#Functionality
execute if entity @s[scores={skinList=..0},tag=flowSkins] run function du-in:skins/flowey
execute if entity @s[scores={skinList=..0},tag=!flowSkins] run function du-in:skins/skin_menu/buy/flowey/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.15 with minecraft:player_head[custom_data={du-in:'floweyHead'},custom_name='{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',lore=['{"text":"Flowey","color":"aqua","bold":true,"italic":true}'],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!flowSkins] inventory.15 with minecraft:player_head[custom_data={du-in:'floweyHead'},custom_name='{"text":"Flowey Skins","color":"white","bold":true,"italic":false}',lore=['{"text":"400 Diamonds","color":"red","bold":true,"italic":true}'],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={flowSkin=1..}] run item replace entity @s[tag=flowSkins] inventory.15 with minecraft:player_head[custom_data={du-in:'floweyHead'},custom_name='{"text":"Default","color":"white","bold":true,"italic":false}',lore=['{"text":"Flowey","color":"aqua","bold":true,"italic":true}'],profile={id:[I;-1335355653,-1617476810,-1712807685,-947254848],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTVmZGYyMmM5YmY0NGIzZWE1MzJjNGRkZTgzODk0YmI2MWExZjIwMTAxZDExNzRmOGRjYjMzOWI2ZmY0OSJ9fX0="}]}] 1
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={flowSkin=1},tag=flowSkins] inventory.15 with minecraft:player_head[custom_data={du-in:'floweyHead'},custom_name='{"text":"Christmas Tree","color":"white","bold":true,"italic":false}',lore=['{"text":"Flowey","color":"aqua","bold":true,"italic":true}'],profile={id:[I;373737913,-550616604,-1511827879,-1655937150],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhOTg1YzMxYWQ0NjFlMzIyYjM5YzQzM2VhZTc5ZmY0NmZiNjQ4MDBjZGVjYWRmMmY2ZDBmOTcyNzI1MiJ9fX0="}]}]
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={flowSkin=2},tag=flowSkins] inventory.15 with minecraft:player_head[custom_data={du-in:'floweyHead'},custom_name='{"text":"Scarecrow","color":"white","bold":true,"italic":false}',lore=['{"text":"Flowey","color":"aqua","bold":true,"italic":true}'],profile={id:[I;-1136136984,1523600937,-1461406966,-1097708017],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzYxM2U2NWVkZWZlNTY2MzgwOTE0M2RmZThhMmRlNjNiNzUwYTQ1NDc5OTRiNzllN2I5MmJhOTdiZWFlYWU0YyJ9fX0="}]}]

execute if entity @s[scores={skinList=14}] run scoreboard players remove @s skinList 1
