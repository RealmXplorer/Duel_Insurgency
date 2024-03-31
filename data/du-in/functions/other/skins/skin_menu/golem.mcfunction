#Functionality
execute if entity @s[scores={skinList=..0},tag=golemSkins] run function du-in:other/skins/golem
execute if entity @s[scores={skinList=..0},tag=!golemSkins] run function du-in:other/skins/skin_menu/buy/golem/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.14 with minecraft:player_head[custom_data={du-in:'golemHead'},custom_name='{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',lore=['{"text":"Golem","color":"aqua","bold":true,"italic":true}'],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!golemSkins] inventory.14 with minecraft:player_head[custom_data={du-in:'golemHead'},custom_name='{"text":"Golem Skins","color":"white","bold":true,"italic":false}',lore=['{"text":"400 Diamonds","color":"red","bold":true,"italic":true}'],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={golemSkin=1..}] run item replace entity @s[tag=golemSkins] inventory.14 with minecraft:player_head[custom_data={du-in:'golemHead'},custom_name='{"text":"Default","color":"white","bold":true,"italic":false}',lore=['{"text":"Iron Golem","color":"green","bold":true,"italic":true}'],profile={id:[I;-847629707,-1011593993,-2048760807,-2341734],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjJiY2FjZWViNDE2MmY0MDBkNDQ3NDMzMTU5MzJhYzgyMGQzMTE5YWM4OTg2YTAxNjFhNzI2MTYxY2NjOTNmYyJ9fX0="}]}]

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={golemSkin=1},tag=golemSkins] inventory.14 with minecraft:player_head[custom_data={du-in:'golemHead'},custom_name='{"text":"Nutcracker","color":"white","bold":true,"italic":false}',lore=['{"text":"Iron Golem","color":"green","bold":true,"italic":true}'],profile={id:[I;-1034086629,-1860875844,-1338317964,1870776582],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzI0MDdlNjZjODFiMTQ0M2MyZTdkZmM0ZDY1ODNlYjE5YzYyMmZhMjJmMzRmYmY5OWZlNmM0NWY3NmEifX19"}]}]

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={golemSkin=2},tag=golemSkins] inventory.14 with minecraft:player_head[custom_data={du-in:'golemHead'},custom_name='{"text":"Terraria","color":"white","bold":true,"italic":false}',lore=['{"text":"Iron Golem","color":"green","bold":true,"italic":true}'],profile={id:[I;1224490280,587221666,-2097683818,1282182721],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM5MGY0Yjg1YzkzYjZlNzUxMGFkNWE2NDQ3Y2JiN2Q2NWMxMDk5MTRlOWJkNzU2YzFkNzY2ZjIzMmNlYmNhZiJ9fX0="}]}]

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={golemSkin=3},tag=golemSkins] inventory.14 with minecraft:player_head[custom_data={du-in:'golemHead'},custom_name='{"text":"Terraria","color":"white","bold":true,"italic":false}',lore=['{"text":"Iron Golem","color":"green","bold":true,"italic":true}'],profile={id:[I;-1033824331,1807566438,-1596951633,844312900],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWY0ZmNkZmYxNTdhMzZkMzIwNjFjYjdkZDBiNjlmN2Y3ODg1ZmQzZGRmOTlkZTQ3MWI2N2E4NGNjODY3N2NiMyJ9fX0="}]}]


execute if entity @s[scores={skinList=13}] run scoreboard players remove @s skinList 1
