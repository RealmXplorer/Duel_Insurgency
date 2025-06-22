#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/zootopia/judy with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/nick

item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head[custom_data={du-in:'judyHead'},custom_name={text:"Judy Hopps",color:white,bold:true,italic:false},lore=[{text:"Zootopia",color:light_purple,bold:true,"italic":true}],profile={id:[I;-267060183,-62371937,-1539958360,-1656485615],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjAyZDdlMzExNmFlYWM5YWNmMjlkZmViZmVkZjRmZDkyMzg1YThlOWE1NTYxZjE2NTg4ZmZlNWU5ZjhmNTk1OSJ9fX0="}]}] 1

execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1