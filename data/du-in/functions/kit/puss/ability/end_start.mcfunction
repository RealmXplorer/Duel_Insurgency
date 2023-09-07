scoreboard players set @s[tag=!sabotaged] pussTimer 60
effect give @s speed 1 0 true

#effect give @s[scores={gameDeaths=1..},tag=!sabotaged] strength 1 0 true
#effect give @s[scores={gameDeaths=3..},tag=!sabotaged] speed 2 1 true
#effect give @s[scores={gameDeaths=5..},tag=!sabotaged] strength 2 0 true
#effect give @s[scores={gameDeaths=7..},tag=!sabotaged] haste 2 0 true

playsound minecraft:sans.ability master @a ~ ~ ~ 1 0.95
playsound minecraft:puss.ability master @a ~ ~ ~ 100 1
particle minecraft:crit ~ ~.1 ~ 0.1 1 0.1 0 100 force
particle minecraft:poof ~ ~.1 ~ 0.1 0.1 0.1 0.05 100 force

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick

scoreboard players set @s weapCount 0

tag @s remove sabotaged
tag @s add cooldown
tag @s remove pussHit