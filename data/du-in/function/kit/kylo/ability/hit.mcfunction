tag @s add kyloHit

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 100 1.5
playsound du-in:kit.vader.choke master @a ~ ~ ~ 100 0.2
particle minecraft:smoke ~ ~1 ~ 1 1 1 1 200 force

#Empowered
execute if entity @s[tag=kyloEmpowerHit] run return run function du-in:kit/kylo/ability/empowered_start

#Default
function du-in:kit/kylo/ability/start