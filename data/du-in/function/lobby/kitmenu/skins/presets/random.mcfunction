tellraw @s [{text:"Random skins ",color:blue,bold:true},{text:"selected!",color:yellow,bold:true},{text:" (Changes each round)",color:gray,bold:false}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

tag @s add randomSkins

function du-in:lobby/kitmenu/skins/actions/random

# Safely reset display using storage wrapper
function du-in:lobby/kitmenu/skins/presets/display_reset