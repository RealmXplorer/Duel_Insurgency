tellraw @s {text:"5 seconds left to vote for a map!",color:green,bold:true}
playsound minecraft:block.ancient_debris.break master @s ~ ~ ~ 0.5 1
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 1.4
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1

# tellraw @a {text:"5 seconds left to vote for a map!",color:green,bold:true}
# playsound minecraft:block.ancient_debris.break master @a 232 92 24 0.5 1
# playsound minecraft:block.note_block.bass master @a 232 92 24 0.5 1.4
# playsound minecraft:ui.button.click master @a 232 92 24 0.5 1

#schedule function du-in:lobby/map_select/timers/start 1s