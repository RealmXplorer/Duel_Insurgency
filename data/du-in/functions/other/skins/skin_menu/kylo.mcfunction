#Functionality
execute if entity @s[scores={skinList=..0},tag=kyloSkins] run function du-in:other/skins/kylo
execute if entity @s[scores={skinList=..0},tag=!kyloSkins] run function du-in:other/skins/skin_menu/buy/kylo/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.19 with minecraft:player_head[custom_data={du-in:'kyloHead'},custom_name='{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',lore=['{"text":"Kylo Ren","color":"#8ff0f7","bold":true,"italic":true}'],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1
#SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}}
#profile={id:[I;-1896887982,-1948695224,-1472869537,261263090],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkxMTgxM2EwNWM3NGJlMWZlMzM5YzMwODlkZDRjY2QxZjhiOGQ2NGM3YmJmMWYwYjAzNGJkNWRmY2ZiNjYifX19"}]}

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!kyloSkins] inventory.19 with minecraft:player_head[custom_data={du-in:'kyloHead'},custom_name='{"text":"Kylo Skins","color":"white","bold":true,"italic":false}',lore=['{"text":"200 Diamonds","color":"red","bold":true,"italic":true}'],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1
#SkullOwner:{Id:[I;1468365184,-1779283512,-1591494131,727618947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}}
#profile={id:[I;-1896887982,-1948695224,-1472869537,261263090],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkxMTgxM2EwNWM3NGJlMWZlMzM5YzMwODlkZDRjY2QxZjhiOGQ2NGM3YmJmMWYwYjAzNGJkNWRmY2ZiNjYifX19"}]}

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={kyloSkin=1..}] run item replace entity @s[tag=kyloSkins] inventory.19 with minecraft:player_head[custom_data={du-in:'kyloHead'},custom_name='{"text":"Default","color":"white","bold":true,"italic":false}',lore=['{"text":"Kylo Ren","color":"red","bold":true,"italic":true}']] 1
#SkullOwner:{Id:[I;-406935807,479740128,-1623587579,-2139132646],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGRkM2ZkM2U5ZDFhYzI5YjczZmZjODgxYWI2MTk1NThlN2ZjZjg4NWE4NmI5MjM3NDA2ZDM4YTUyNTExMTU4MiJ9fX0="}]}}
#profile={id:[I;-1896887982,-1948695224,-1472869537,261263090],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkxMTgxM2EwNWM3NGJlMWZlMzM5YzMwODlkZDRjY2QxZjhiOGQ2NGM3YmJmMWYwYjAzNGJkNWRmY2ZiNjYifX19"}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={kyloSkin=1},tag=kyloSkins] inventory.19 with minecraft:player_head[custom_data={du-in:'kyloHead'},custom_name='{"text":"Ben Swolo","color":"white","bold":true,"italic":false}',lore=['{"text":"Kylo Ren","color":"red","bold":true,"italic":true}']] 1
#SkullOwner:{Id:[I;-1641108404,-264158272,-2121326005,2020562800],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODM1MmU0YjdiNGNhYzlhZTE0NjZkYTBhYzVjOTIwNjdiMjY5M2Y5MzZlOWJiMGEwODZhMmZmMGZjNjBiZGI2NSJ9fX0="}]}}
#profile={id:[I;-1896887982,-1948695224,-1472869537,261263090],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkxMTgxM2EwNWM3NGJlMWZlMzM5YzMwODlkZDRjY2QxZjhiOGQ2NGM3YmJmMWYwYjAzNGJkNWRmY2ZiNjYifX19"}]}

execute if entity @s[scores={skinList=17}] run scoreboard players remove @s skinList 1