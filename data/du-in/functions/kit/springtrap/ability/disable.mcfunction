clear @s minecraft:carrot_on_a_stick
playsound minecraft:entity.vex.death master @a ~ ~ ~ 1 .5
function du-in:kit/springtrap/particle
effect give @s[tag=!sabotaged] minecraft:regeneration 5 2 true


clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 390 levels
tag @s[tag=stolen] add kitDone
tag @s remove sabotaged
tag @s remove springLock
tag @s remove kitActions
#scoreboard players set @s[tag=stolen,tag=givenStolen,tag=kitDone] kit 8
#tag @s[tag=kitDone,scores={kit=5}] remove kitDone