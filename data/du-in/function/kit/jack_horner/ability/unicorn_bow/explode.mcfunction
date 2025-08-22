summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,Attributes:[{Name:attackKnockback,Base:1}],Silent:1b,Tags:["projectile"]}
#particle dust 100 100 100 1 ~ ~ ~ 2 2 2 100 300 normal
particle dust_color_transition{from_color:[0.329,0.376,1.000],scale:1,to_color:[1.000,0.000,0.000]} ~ ~ ~ 2 2 2 100 300 normal

particle minecraft:end_rod ~ ~ ~ 3 3 3 1 100 normal
playsound minecraft:jack_horner.unicorn_explode hostile @a ~ ~ ~ 1 1

scoreboard players reset @s unicornTimer
tag @s remove unicornDuration