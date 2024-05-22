scoreboard players remove @s pussFearTimer 1

#execute if entity @s[scores={pussFearTimer=..0}] run attribute @s[tag=!deathMark] generic.armor base set 0

attribute @s[scores={pussFearTimer=..0}] generic.knockback_resistance modifier remove cd29f460-195f-43fe-8c60-48ef046cc7fa
tag @s[scores={pussFearTimer=..0}] remove pussFear
scoreboard players reset @s[scores={pussFearTimer=..0}] pussFearTimer