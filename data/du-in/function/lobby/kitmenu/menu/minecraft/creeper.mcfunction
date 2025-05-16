#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/creeper with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/creeper

item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head[custom_data={du-in:'creeperHead'},custom_name={text:"Creeper",color:white,bold:true,italic:false},lore=[{text:"Minecraft",color:green,bold:true,"italic":true}],profile={id:[I;-288171773,-902673209,-1287927237,-605975132],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyNTQ4MzhjMzNlYTIyN2ZmY2EyMjNkZGRhYWJmZTBiMDIxNWY3MGRhNjQ5ZTk0NDQ3N2Y0NDM3MGNhNjk1MiJ9fX0="}]}]

execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1