#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Pick / Purchase
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/beetlejuice with storage du-in:main player

#Head Displays
item replace entity @s[tag=kitMenu] inventory.7 with minecraft:player_head[custom_data={du-in:'beetlejuiceHead'},custom_name={text:"Betelgeuse",color:white,bold:true,italic:false},lore=[{text:"Beetlejuice",color:"#7d3bb3",bold:true,"italic":true}],profile={id:[I;1969051207,1670464863,-1139848698,1883063728],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjdlMDY1NjAyYjY5NWQyZGQ0YTY3NmIxYTM3ZmNiZTk0ZWZiZjA1MDc2ZDZiNDdhMzc1MzAwMTE3YzI0MmMyOCJ9fX0="}]}] 1

execute if entity @s[scores={kitList=7}] run scoreboard players remove @s kitList 1