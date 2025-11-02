#Return Beetlejuice to normal
function du-in:kit/all/attribute/reset
function du-in:kit/beetlejuice/attribute

#Activate Ender Pearls
execute as @e[type=minecraft:ender_pearl,tag=showTimeTP] run function du-in:kit/paz/ability/teleport

#Teleport Spectators
tp @a[gamemode=spectator] @r[tag=playing]

playsound minecraft:entity.creaking.death master @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2

effect clear @a weakness

xp set @s[tag=!stolen] 500 levels
tag @s remove cooldown

#End
tag @s remove showTimeDuration
scoreboard players reset @s showTimer
tag @s remove maxBeetleDamage
tag @a remove inTheModel