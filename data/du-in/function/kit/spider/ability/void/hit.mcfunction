effect give @e[type=skeleton,tag=gonerThing,distance=0.05..3] minecraft:slowness 2 4 true
effect give @e[type=skeleton,tag=gonerThing,distance=0.05..3] minecraft:mining_fatigue 2 0 true

execute at @e[type=skeleton,tag=gonerThing,distance=0.05..3] run playsound minecraft:block.honey_block.slide master @a ~ ~ ~ 1 1
#execute if entity @s[tag=!sabotaged] run tellraw @a[distance=0.05..3,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] [{"text":"You have been caught in a spider web!","bold":true,"color":"red"}]
#tellraw @s[tag=sabotaged] [{"text":"You have been caught in your own web!","bold":true,"color":"red"}]

particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 2 200 force
particle minecraft:end_rod ~ ~1.5 ~ 1 1 1.2 0.05 240 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1
playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1
playsound minecraft:entity.vex.death master @a ~ ~ ~ 100 1.5
playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 260 levels
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone