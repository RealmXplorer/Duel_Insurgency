#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/susie with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.11 with minecraft:player_head[custom_data={du-in:'susieHead'},custom_name={text:"Susie",color:white,bold:true,italic:false},lore=[{text:"Deltarune",color:"#17FFB9",bold:true,"italic":true}],profile={id:[I;-2107299540,-1725546460,-1107271048,-735092357],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzYxNDEzYTFmMzA2YjA3MzEyYmQ4ZTc2YjJlNGExYjlmNDU3ZmFiODhlY2U3ZmI2ZjVmY2E2ODhhY2NhMjc4NCJ9fX0="}]}] 1

execute if entity @s[scores={kitList=10}] run scoreboard players remove @s kitList 1