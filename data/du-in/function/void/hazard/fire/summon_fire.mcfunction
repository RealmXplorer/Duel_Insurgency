execute at @e[type=marker,tag=flamePillarX] run function du-in:void/hazard/fire/summon_fire_x
execute at @e[type=marker,tag=flamePillarZ] run function du-in:void/hazard/fire/summon_fire_z

execute at @e[type=marker,tag=flameMarker] run function du-in:void/hazard/fire/particle_and_sound

# execute at @e[type=marker,tag=flameMarker] run particle minecraft:flame ~ ~ ~ 1 0 0 .5 50
# execute at @e[type=marker,tag=flameMarker] run particle minecraft:flash{color:0xffffff} ~ ~ ~ 1 0 0 .5 0

# execute at @e[type=marker,tag=flameMarker] run playsound minecraft:soundeffect.parry master @a ~ ~ ~ 100 1
# execute at @e[type=marker,tag=flameMarker] run playsound minecraft:soundeffect.parry master @a ~ ~ ~ 100 .5
# execute at @e[type=marker,tag=flameMarker] run playsound minecraft:soundeffect.parry master @a ~ ~ ~ 100 2

# execute at @e[type=marker,tag=flameMarker] run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 100 1
# execute at @e[type=marker,tag=flameMarker] run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 100 .5
# execute at @e[type=marker,tag=flameMarker] run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 100 2

schedule function du-in:void/hazard/fire/fire_end 5s