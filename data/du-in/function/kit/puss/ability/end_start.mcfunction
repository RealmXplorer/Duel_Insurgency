scoreboard players set @s[tag=!sabotaged] pussTimer 60
effect give @s[tag=!sabotaged,tag=!empower] speed 1 0 true
effect give @s[tag=empower] speed 2 0 true
effect give @s[tag=empower] strength 2 0 true

#effect give @s[scores={gameDeaths=1..},tag=!sabotaged] strength 1 0 true
#effect give @s[scores={gameDeaths=3..},tag=!sabotaged] speed 2 1 true
#effect give @s[scores={gameDeaths=5..},tag=!sabotaged] strength 2 0 true
#effect give @s[scores={gameDeaths=7..},tag=!sabotaged] haste 2 0 true

playsound du-in:sfx.ut.ability master @a ~ ~ ~ 1 0.95
playsound du-in:kit.puss.ability master @a ~ ~ ~ 100 1
particle minecraft:crit ~ ~.1 ~ 0.1 1 0.1 0 100 force
particle minecraft:poof ~ ~.1 ~ 0.1 0.1 0.1 0.05 100 force

#Remove ability from hand
clear @s #du-in:ability

# scoreboard players set @s weapCount 0
function du-in:kit/all/weapon/init

tag @s remove sabotaged
tag @s remove empower
tag @s add cooldown
tag @s remove pussHit