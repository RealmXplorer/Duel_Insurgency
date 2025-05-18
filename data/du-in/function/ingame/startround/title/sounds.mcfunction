playsound minecraft:block.ancient_debris.break master @s ~ ~ ~ 1000 2
playsound minecraft:block.bell.use master @s ~ ~ ~ 1000 2
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1000 1

execute unless entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ .4 1
execute if entity @a[tag=partyLeader,tag=aprilFools] run playsound minecraft:soundeffect.fart master @s ~ ~ ~ 1000 1