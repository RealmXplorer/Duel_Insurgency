#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/kylo with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/starwars/kylo

item replace entity @s[tag=kitMenu] inventory.1 with minecraft:player_head[custom_data={du-in:'kyloHead'},custom_name={text:"Kylo Ren",color:white,bold:true,italic:false},lore=[{text:"Sequel Trilogy",color:red,bold:true,"italic":true}],profile={id:[I;-406935807,479740128,-1623587579,-2139132646],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGRkM2ZkM2U5ZDFhYzI5YjczZmZjODgxYWI2MTk1NThlN2ZjZjg4NWE4NmI5MjM3NDA2ZDM4YTUyNTExMTU4MiJ9fX0="}]}] 1

execute if entity @s[scores={kitList=1}] run scoreboard players remove @s kitList 1