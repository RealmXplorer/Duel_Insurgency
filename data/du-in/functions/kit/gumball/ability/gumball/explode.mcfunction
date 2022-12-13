effect give @s minecraft:resistance 1 255 true
particle minecraft:flame ~ ~1 ~ 1 1 1 .3 200 force
summon minecraft:creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b,Tags:["gumballBomb"]}
#execute at @a[distance=0.05..1.5,tag=playing,gamemode=!spectator] run summon minecraft:creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b,Tags:["gumballBomb"]}
effect clear @s speed
playsound minecraft:gumball.success master @a ~ ~ ~ 1 1
scoreboard players reset @s gumballPursueTimer
tag @s[tag=stolen] add kitDone
tag @s remove pursue
