scoreboard players remove @s pussFearTimer 1

#execute if entity @s[scores={pussFearTimer=..0}] run attribute @s[tag=!deathMark] generic.armor base set 0
tag @s[scores={pussFearTimer=..0}] remove pussFear
scoreboard players reset @s[scores={pussFearTimer=..0}] pussFearTimer