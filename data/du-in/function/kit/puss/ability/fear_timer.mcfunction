scoreboard players remove @s pussFearTimer 1

#execute if entity @s[scores={pussFearTimer=..0}] run attribute @s[tag=!deathMark] generic.armor base set 0

attribute @s[scores={pussFearTimer=..0}] generic.knockback_resistance modifier remove puss_kb
tag @s[scores={pussFearTimer=..0}] remove pussFear
scoreboard players reset @s[scores={pussFearTimer=..0}] pussFearTimer