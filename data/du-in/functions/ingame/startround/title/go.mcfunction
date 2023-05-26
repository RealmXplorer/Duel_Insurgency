execute if score #main titleTimer2 matches 20 run scoreboard players set @a titleTimer 20
execute if score #main titleTimer2 matches 20 run title @a times 0 4 5

execute if score #main titleTimer2 matches 1..15 as @a at @s run playsound minecraft:block.ancient_debris.break master @s ~ ~ ~ 1000 1

title @a[scores={titleTimer=20}] title {"text":"GO!","color":"#FF0000","bold":true}
title @a[scores={titleTimer=18}] title {"text":"GO!","color":"#FF6F00","bold":true}
title @a[scores={titleTimer=16}] title {"text":"GO!","color":"#FFD500","bold":true}
title @a[scores={titleTimer=14}] title {"text":"GO!","color":"#BBFF00","bold":true}
title @a[scores={titleTimer=12}] title {"text":"GO!","color":"#4DFF00","bold":true}
title @a[scores={titleTimer=10}] title {"text":"GO!","color":"#00FF4C","bold":true}
title @a[scores={titleTimer=8}] title {"text":"GO!","color":"#00FFDD","bold":true}
title @a[scores={titleTimer=6}] title {"text":"GO!","color":"#00A2FF","bold":true}
title @a[scores={titleTimer=4}] title {"text":"GO!","color":"#002AFF","bold":true}
title @a[scores={titleTimer=2}] title {"text":"GO!","color":"#5D00FF","bold":true}
execute as @a[scores={titleTimer=1}] at @s run function du-in:ingame/startround/title/intros
title @a[scores={titleTimer=0}] title {"text":"GO!","color":"#EE00FF","bold":true}

# execute as @a[scores={titleTimer=20}] at @s run playsound minecraft:block.ancient_debris.break master @s ~ ~ ~ 1000 2
# execute as @a[scores={titleTimer=20}] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1000 2
# execute as @a[scores={titleTimer=20}] unless entity @a[tag=partyLeader,tag=aprilFools] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1000 1
# execute as @a[scores={titleTimer=20}] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1000 1
# execute as @a[scores={kit=1002,titleTimer=20},tag=kothIngame] at @s run playsound minecraft:jerma.koth master @a ~ ~ ~ 1000 1
# execute as @a[scores={titleTimer=20}] if entity @a[tag=partyLeader,tag=aprilFools] at @s run playsound minecraft:soundeffect.fart master @s ~ ~ ~ 1000 1

execute as @a[scores={titleTimer=20}] at @s run function du-in:ingame/startround/title/sounds