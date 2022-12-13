scoreboard players remove @s floweyHitTimer 1

clear @s

#If player is nearby#
execute unless score @a[tag=playing,distance=.5..2,limit=1] team = @s team run effect give @a[tag=playing,distance=.5..2] minecraft:poison 1 6 true
execute as @a[tag=playing,distance=.5..2,limit=1] unless score @a[scores={floweyHitTimer=0..},limit=1,sort=nearest] team = @s team at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sunflower"},Time:1,NoGravity:1b,Tags:["floweyStem"]}
execute as @a[tag=playing,distance=.5..2,limit=1] unless score @a[scores={floweyHitTimer=0..},limit=1,sort=nearest] team = @s team at @s run playsound minecraft:block.grass.place master @a ~ ~ ~ 10 1
execute as @a[tag=playing,distance=.5..2,limit=1] unless score @a[scores={floweyHitTimer=0..},limit=1,sort=nearest] team = @s team at @s run particle minecraft:block tall_grass ~ ~1 ~ 0.2 0.2 0.2 1 10 force

#Give effects#
effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:fire_resistance 1 255 true
effect give @s minecraft:weakness 1 255 true
effect give @s minecraft:speed 1 2 true
effect give @s minecraft:jump_boost 1 240 true
effect give @s minecraft:invisibility 1 1 true

#Dirt particles#
particle minecraft:block dirt ~ ~ ~ 0.05 0 0.05 1 10 force
execute if entity @s[scores={floweyHitTimer=88..}] run particle minecraft:block dirt ~ ~ ~ 0.5 0.1 0.5 1 100 force
execute if entity @s[scores={floweyHitTimer=..2}] run particle minecraft:block dirt ~ ~ ~ 0.5 0.6 0.5 2 100 force

#Sounds#
playsound minecraft:block.gravel.hit master @a ~ ~ ~ 10 1
execute if entity @s[scores={floweyHitTimer=88}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 1.2
execute if entity @s[scores={floweyHitTimer=87}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 1.1
execute if entity @s[scores={floweyHitTimer=86}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 1
execute if entity @s[scores={floweyHitTimer= 85}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 .9
execute if entity @a[scores={floweyHitTimer=84}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 .8

#End Timer#
execute if entity @s[scores={floweyHitTimer=..1}] run function du-in:kit/flowey/ability/timer_end