scoreboard players set @s[scores={music=640..},tag=!beta] music 0
execute if entity @s[scores={music=1},tag=!beta] run playsound du-in:music.tabba record @s ~ ~ ~ 1000000 1 1

#BETA#
execute if entity @s[tag=beta] run function du-in:music/lobby/beta/shop