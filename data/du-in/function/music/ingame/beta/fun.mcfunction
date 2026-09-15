execute unless entity @a[scores={LEVEL_OF_FUN=1..}] store result storage du-in:fun fun.timer int 1 run random value 120..6000
execute if entity @a[scores={LEVEL_OF_FUN=1..3}] store result storage du-in:fun fun.timer int 1 run random value 120..2000
execute if entity @a[scores={LEVEL_OF_FUN=4..}] store result storage du-in:fun fun.timer int 1 run random value 60..1000

scoreboard players set #main FRIEND 0
execute store result score #main FRIEND run return run function du-in:kit/all/laugh with storage du-in:fun fun

return 1