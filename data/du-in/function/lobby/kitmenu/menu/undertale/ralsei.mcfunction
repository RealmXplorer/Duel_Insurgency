#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/ralsei with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/ralsei

item replace entity @s[tag=kitMenu] inventory.10 with minecraft:player_head[custom_data={du-in:'ralseiHead'},custom_name={text:"Ralsei",color:white,bold:true,italic:false},lore=[{text:"Deltarune",color:"#17FFB9",bold:true,"italic":true}],profile={id:[I;1694033945,-1566817452,-1958054767,-65585814],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2ZmZmUxZDFjM2E2NTk5ZDZmNGI4MzZiZTUxNDhlNjFiOTdmNTJiNzlmODMzNWUwZjFkMDA1OTU5MjMyMTc2NCJ9fX0="}]}] 1

execute if entity @s[scores={kitList=9}] run scoreboard players remove @s kitList 1