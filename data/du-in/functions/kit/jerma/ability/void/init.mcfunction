execute as @e[type=skeleton,sort=random,limit=1,tag=!peepedHorror] run tag @s add peepedHorror

execute as @e[type=skeleton,tag=peepedHorror] run function du-in:kit/jerma/ability/peeped_horror

#execute as @a at @s run function du-in:kit/jerma/particle

playsound minecraft:ambient.cave master @a ~ ~ ~ 100 1 1
playsound minecraft:jerma.peep master @a ~ ~ ~ 100 1 1

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 600 levels
effect give @a[distance=..4,gamemode=!spectator] minecraft:speed 3 1 true
tag @s remove kitActions
