#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/zombie with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/zombie

item replace entity @s[tag=kitMenu] inventory.6 with minecraft:player_head[custom_data={du-in:'zombieHead'},custom_name={text:"Zombie",color:white,bold:true,italic:false},lore=[{text:"Minecraft",color:green,bold:true,"italic":true}],profile={id:[I;-1722163816,-273461527,-1459933222,35179936],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZmYzg1NGJiODRjZjRiNzY5NzI5Nzk3M2UwMmI3OWJjMTA2OTg0NjBiNTFhNjM5YzYwZTVlNDE3NzM0ZTExIn19fQ=="}]}] 1

execute if entity @s[scores={kitList=6}] run scoreboard players remove @s kitList 1