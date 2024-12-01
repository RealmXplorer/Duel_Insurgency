#Functionality
execute if entity @s[scores={skinList=..0},tag=creepSkins] run function du-in:other/skins/creeper
execute if entity @s[scores={skinList=..0},tag=!creepSkins] run function du-in:other/skins/skin_menu/buy/creeper/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.6 with minecraft:player_head[custom_data={du-in:'creeperHead'},custom_name='{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',lore=['{"text":"Creeper","color":"green","bold":true,"italic":true}'],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!creepSkins] inventory.6 with minecraft:player_head[custom_data={du-in:'creeperHead'},custom_name='{"text":"Creeper Skins","color":"white","bold":true,"italic":false}',lore=['{"text":"200 Diamonds","color":"red","bold":true,"italic":true}'],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={creepSkin=1..}] run item replace entity @s[tag=creepSkins] inventory.6 with minecraft:player_head[custom_data={du-in:'creeperHead'},custom_name='{"text":"Default","color":"white","bold":true,"italic":false}',lore=['{"text":"Creeper","color":"green","bold":true,"italic":true}'],profile={id:[I;-288171773,-902673209,-1287927237,-605975132],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyNTQ4MzhjMzNlYTIyN2ZmY2EyMjNkZGRhYWJmZTBiMDIxNWY3MGRhNjQ5ZTk0NDQ3N2Y0NDM3MGNhNjk1MiJ9fX0="}]}]
#{SkullOwner:{Id:[I;-288171773,-902673209,-1287927237,-605975132],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyNTQ4MzhjMzNlYTIyN2ZmY2EyMjNkZGRhYWJmZTBiMDIxNWY3MGRhNjQ5ZTk0NDQ3N2Y0NDM3MGNhNjk1MiJ9fX0="}]}}}
#,profile={id:[I;-288171773,-902673209,-1287927237,-605975132],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyNTQ4MzhjMzNlYTIyN2ZmY2EyMjNkZGRhYWJmZTBiMDIxNWY3MGRhNjQ5ZTk0NDQ3N2Y0NDM3MGNhNjk1MiJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={creepSkin=1},tag=creepSkins] inventory.6 with minecraft:player_head[custom_data={du-in:'creeperHead'},custom_name='{"text":"Gingerbread Man","color":"white","bold":true,"italic":false}',lore=['{"text":"Creeper","color":"green","bold":true,"italic":true}'],profile={id:[I;156266010,-1374600632,-1838645622,876962649],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RiNTQ0MjlkZWM1YjNmN2VmNDBlOGJjM2ZmMTk5NWNlZjY5NmEzNTAyOGY3ODJmNjM5MWMyYjU1MTFiYmUifX19"}]}]
#{SkullOwner:{Id:[I;156266010,-1374600632,-1838645622,876962649],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RiNTQ0MjlkZWM1YjNmN2VmNDBlOGJjM2ZmMTk5NWNlZjY5NmEzNTAyOGY3ODJmNjM5MWMyYjU1MTFiYmUifX19"}]}}}
#,profile={id:[I;156266010,-1374600632,-1838645622,876962649],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RiNTQ0MjlkZWM1YjNmN2VmNDBlOGJjM2ZmMTk5NWNlZjY5NmEzNTAyOGY3ODJmNjM5MWMyYjU1MTFiYmUifX19"}]}

execute if entity @s[scores={skinList=6}] run scoreboard players remove @s skinList 1