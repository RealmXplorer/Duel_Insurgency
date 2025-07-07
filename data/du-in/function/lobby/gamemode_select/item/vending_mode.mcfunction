execute if entity @s[tag=givenVending] run function du-in:lobby/gamemode_select/actions/vending_mode
clear @s minecraft:cocoa_beans
execute unless score #main pylonsDestroyed matches 3 run item replace entity @s inventory.4 with minecraft:cocoa_beans[item_model="du-in:abilities/wilde",item_name={text:"Vending Machine Mode",color:light_purple,bold:true},lore=[{text:"Click to allow all characters to use kickstarts!",color:dark_purple}]]
execute if score #main pylonsDestroyed matches 3 run item replace entity @s inventory.4 with minecraft:cocoa_beans[item_model="du-in:abilities/void_wilde",item_name={text:"SHADOWS CUTTING DEEPER",color:light_purple,bold:true},lore=[{text:"MY EXPERIMENT IS NOT COMPLETE",color:dark_purple}]]

tag @s add givenVending