tellraw @s [{text:"Default skins ",bold:true,color:green},{text:"selected!",color:yellow}]
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2

tag @s remove randomSkins

function du-in:lobby/kitmenu/skins/presets/reset
function du-in:lobby/kitmenu/skins/presets/display_reset