summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,powered:0b,ExplosionRadius:3.5b,Fuse:0,ignited:1b,Attributes:[{Name:generic.attackKnockback,Base:1}],Silent:1b,Tags:["projectile"]}
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
scoreboard players reset @s creeperTimer
