tag @s add random



playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 1.5


title @s actionbar ["",{text:"Random kit selected!",bold:true,color:blue}]
function du-in:lobby/kitmenu/select/common

tellraw @s [{text:"Selected a ",bold:true,color:gray},{text:"Random ",bold:true,color:dark_blue},{text:"kit!",bold:true,color:gray}]

clear @s barrier[item_model="du-in:lobby/random"]
execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items
