scoreboard players remove @s floweyHitTimer 1

clear @s

#If player is nearby#
#execute unless entity @a[tag=void] run function du-in:kit/flowey/ability/default_hit
execute unless entity @a[tag=void] unless entity @s[tag=sabotaged] as @a[gamemode=!spectator,tag=playing,distance=.5..2,limit=1] unless score @p[scores={floweyHitTimer=0..}] team = @s team at @s run function du-in:kit/flowey/ability/default_hit

execute if entity @a[tag=void] as @e[type=skeleton,distance=.5..2,tag=gonerThing] at @s run function du-in:kit/flowey/ability/void_hit

#Give effects#
effect give @s[tag=!sabotaged] minecraft:resistance 1 255 true
effect give @s[tag=!sabotaged] minecraft:fire_resistance 1 255 true
effect give @s minecraft:weakness 1 255 true
effect give @s[tag=!sabotaged] minecraft:speed 1 2 true
effect give @s[tag=sabotaged] minecraft:slowness 1 200 true
attribute @s minecraft:jump_strength modifier add flowey_jump -100 add_value

effect give @s[tag=!sabotaged] minecraft:invisibility 1 1 true

#Dirt particles#
execute unless entity @s[tag=sabotaged] run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 0.05 0 0.05 1 10 force

execute if entity @s[scores={floweyHitTimer=88..}] run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 0.5 0.1 0.5 1 100 force

tellraw @s[scores={floweyHitTimer=88},tag=sabotaged] [{"text":"You have been rooted into the ground!","bold":true,"color":"red"}]

#Sounds#
execute unless entity @s[tag=sabotaged] run playsound minecraft:block.gravel.hit master @a ~ ~ ~ 10 1
execute if entity @s[scores={floweyHitTimer=88}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 1.2
execute if entity @s[scores={floweyHitTimer=87}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 1.1
execute if entity @s[scores={floweyHitTimer=86}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 1
execute if entity @s[scores={floweyHitTimer= 85}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 .9
execute if entity @s[scores={floweyHitTimer=84}] run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 10 .8

#End Timer#
execute if entity @s[scores={floweyHitTimer=..2}] run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 0.5 0.6 0.5 2 100 force

execute if entity @s[scores={floweyHitTimer=..1}] run function du-in:kit/flowey/ability/timer_end