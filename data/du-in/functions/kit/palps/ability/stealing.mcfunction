scoreboard players remove @s palpTimer 1

particle minecraft:crit ~ ~.5 ~ 0 1 0 0.5 3 force @a
attribute @s[tag=!deathMark,tag=!parry] minecraft:generic.armor base set -2

execute if entity @s[scores={palpTimer=..1}] run function du-in:kit/palps/ability/end
# attribute @s[scores={palpTimer=..1},tag=!deathMark] minecraft:generic.armor base set 0
# xp set @s[scores={palpTimer=..1},tag=!stolen] 360 levels
# tag @s[scores={palpTimer=..1},tag=stolen] add kitDone
# tag @s[scores={palpTimer=..1},tag=sabotaged] remove sabotaged
# scoreboard players reset @s[scores={palpTimer=..0}] palpTimer