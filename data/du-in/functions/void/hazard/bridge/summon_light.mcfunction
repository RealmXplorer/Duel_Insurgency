execute at @e[type=marker,tag=bridgeX] run function du-in:void/hazard/bridge/summon_x
execute at @e[type=marker,tag=bridgeZ] run function du-in:void/hazard/bridge/summon_z

kill @e[type=marker,tag=bridgeMarker]

schedule function du-in:void/hazard/bridge/pick_bridge 10s