#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player
execute if entity @s[scores={kitList=..0}] run function du-in:kit/freddy/menu/select with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head[custom_data={du-in:'freddyHead'},custom_name={text:"Freddy Fazbear",color:white,bold:true,italic:false},lore=[{text:"Five Nights at Freddy's",color:"#3f0606",bold:true,"italic":true}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjAxZTRiZWYxZjNjYzllZWZhNzZhZDM5ZWQyOGM2NzQwODg2MWE4NGJlYTgzZWEyOTQ2ZjMzNDBiOTFlZGRlNyJ9fX0="}]}] 1