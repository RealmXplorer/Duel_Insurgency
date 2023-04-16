scoreboard players set @s[tag=!sabotaged] pussTimer 60
execute if entity @s[tag=!sabotaged] as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=27}] team run function du-in:kit/puss/ability/hit

scoreboard players set @s weapCount 0

#execute anchored eyes facing entity @s eyes run summon marker ^ ^ ^1.25 {Tags:["tpMark"]}

#execute if entity @s[tag=!sabotaged] as @e[type=marker,tag=tpMark] run function du-in:kit/puss/ability/raycast

execute if entity @s[tag=sabotaged] run function du-in:kit/puss/ability/hit

effect give @s speed 2 0 true
effect give @s[scores={gameDeaths=1..},tag=!sabotaged] strength 2 0 true
effect give @s[scores={gameDeaths=2..},tag=!sabotaged] speed 2 1 true
effect give @s[scores={gameDeaths=3..},tag=!sabotaged] strength 3 0 true
effect give @s[scores={gameDeaths=5..},tag=!sabotaged] haste 3 0 true
effect give @s[scores={gameDeaths=6..},tag=!sabotaged] speed 3 1 true

playsound minecraft:sans.ability master @a ~ ~ ~ 100 0.95
particle minecraft:crit ~ ~.1 ~ 0.1 1 0.1 0 100 force
particle minecraft:poof ~ ~.1 ~ 0.1 0.1 0.1 0.05 100 force

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
#xp set @s[tag=!stolen] 270 levels

#Switch villager back to their ability
#tag @s[tag=stolen] add kitDone
tag @s remove sabotaged
#End ability
tag @s remove kitActions