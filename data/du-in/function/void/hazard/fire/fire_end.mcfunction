execute at @e[type=marker,tag=flameMarker,limit=1] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 100 1
execute at @e[type=marker,tag=flameMarker,limit=1] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 100 1
execute at @e[type=block_display,tag=flamePillar] run particle minecraft:flame ~ ~ ~ 1 0 0 .5 10
execute at @e[type=block_display,tag=flamePillar] run particle minecraft:flash ~ ~ ~ 1 0 0 .5 0


kill @e[type=marker,tag=flameMarker]
kill @e[type=block_display,tag=flamePillar]

schedule function du-in:void/hazard/fire/pick_pylon 10s