#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/nick with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/nick

item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name='{"text":"Nick Wilde","color":"white","bold":true,"italic":false}',lore=['{"text":"Zootopia","color":"light_purple","bold":true,"italic":true}'],profile={id:[I;-2089979935,-97038555,-1183453249,822254303],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDljOTAyMjNkYzI0MTU2YzAxZTY1NGQyMmEwZWU5OTQ1NWQ1ODRhNjFkZjEwN2Y2YTdhZTJjNjA3ZjUxZmM5NyJ9fX0="}]}] 1

execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1