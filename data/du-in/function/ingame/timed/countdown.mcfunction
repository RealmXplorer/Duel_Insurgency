execute at @e[sort=random,limit=1,tag=spawnPoint,type=marker] run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["IMAGE_VESSEL"],attributes:[{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:step_height",base:100},{id:"minecraft:follow_range",base:1000}]}
execute at @e[sort=random,limit=1,tag=spawnPoint,type=marker] run summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:1b,Tags:["IMAGE"],equipment:{head:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"du-in:other/friend"}}}}

effect give @e[type=zombie,tag=IMAGE_VESSEL] invisibility infinite 1 true
playsound minecraft:me master @a ~ ~ ~ 10000 1