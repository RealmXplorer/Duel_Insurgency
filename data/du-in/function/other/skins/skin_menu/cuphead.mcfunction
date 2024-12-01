#Functionality 
execute if entity @s[scores={skinList=..0},tag=cupSkins] run function du-in:other/skins/cuphead
execute if entity @s[scores={skinList=..0},tag=!cupSkins] run function du-in:other/skins/skin_menu/buy/cuphead/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.1 with minecraft:player_head[custom_data={du-in:'cupHead'},custom_name='{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',lore=['{"text":"Cuphead","color":"#FAE900","bold":true,"italic":true}'],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!cupSkins] inventory.1 with minecraft:player_head[custom_data={du-in:'cupHead'},custom_name='{"text":"Cuphead Skins","color":"white","bold":true,"italic":false}',lore=['{"text":"400 Diamonds","color":"red","bold":true,"italic":true}'],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={cupSkin=1..}] run item replace entity @s[tag=cupSkins] inventory.1 with minecraft:player_head[custom_data={du-in:'cupHead'},custom_name='{"text":"Default","color":"white","bold":true,"italic":false}',lore=['{"text":"Cuphead","color":"#FAE900","bold":true,"italic":true}'],profile={id:[I;-1338006069,2041596448,-1132796168,-93113296],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}]
#{SkullOwner:{Id:[I;-1338006069,2041596448,-1132796168,-93113296],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}}}
#,profile={id:[I;-1338006069,2041596448,-1132796168,-93113296],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={cupSkin=1},tag=cupSkins] inventory.1 with minecraft:player_head[custom_data={du-in:'cupHead'},custom_name='{"text":"Mugman","color":"white","bold":true,"italic":false}',lore=['{"text":"Cuphead","color":"#FAE900","bold":true,"italic":true}'],profile={id:[I;-1338006069,2041596448,-1132796168,-93113296],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}]
#{SkullOwner:{Id:[I;-1338006069,2041596448,-1132796168,-93113296],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}}}
#,profile={id:[I;-1338006069,2041596448,-1132796168,-93113296],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={cupSkin=2},tag=cupSkins] inventory.1 with minecraft:player_head[custom_data={du-in:'cupHead'},custom_name='{"text":"Ms. Chalice","color":"white","bold":true,"italic":false}',lore=['{"text":"Cuphead","color":"#FAE900","bold":true,"italic":true}'],profile={id:[I;-1338006069,2041596448,-1132796168,-93113296],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}]
#{SkullOwner:{Id:[I;-1338006069,2041596448,-1132796168,-93113296],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}}}
#,profile={id:[I;-1338006069,2041596448,-1132796168,-93113296],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}

execute if entity @s[scores={skinList=1}] run scoreboard players remove @s skinList 1