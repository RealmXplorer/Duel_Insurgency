#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/springtrap with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/springtrap

item replace entity @s[tag=kitMenu] inventory.1 with minecraft:player_head[custom_data={du-in:'springHead'},custom_name={text:"Springtrap",color:white,bold:true,italic:false},lore=[{text:"Five Nights at Freddy's 3",color:"#961FFF",bold:true,"italic":true}],profile={id:[I;-974232140,105529911,-1429545513,183247425],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjUwMDFhMDg3OTYzNDYyN2FkNDgzNWNmODcwYzFiY2IxYTc2NzI0ZTVjYzkyMjQxMzE3OWQwOGEyMGNkNjk2YiJ9fX0="}]}] 1

execute if entity @s[scores={kitList=1}] run scoreboard players remove @s kitList 1