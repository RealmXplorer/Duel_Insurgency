execute if entity @s[tag=givenTimed] run function du-in:lobby/actions/timed_mode
clear @s minecraft:iron_ingot
execute unless score #main pylonsDestroyed matches 3 run item replace entity @s inventory.13 with minecraft:iron_ingot[item_model="clock",item_name={text:"Timed Mode",color:light_purple,bold:true},lore=[{text:"Game runs on timer rather than scores!",color:dark_purple}]]
execute if score #main pylonsDestroyed matches 3 run item replace entity @s inventory.13 with minecraft:iron_ingot[item_model="du-in:lobby/void_clock",item_name={text:"YOUR TIME IS GONE",color:light_purple,bold:true},lore=[{text:"I AM IN CONTROL!",color:dark_purple}]]

tag @s add givenTimed

#[gamemode=!creative,tag=!playing]