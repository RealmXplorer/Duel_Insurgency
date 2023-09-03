summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,powered:0b,ExplosionRadius:3.5b,Fuse:0,ignited:1b,Attributes:[{Name:generic.attackKnockback,Base:1}],Silent:1b,Tags:["projectile"]}
xp set @s[tag=!stolen] 360 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove cooldown
scoreboard players reset @s creeperTimer
