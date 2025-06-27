clear @s #du-in:weapon

##DATAPACK 6.0
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
#execute if entity @s[tag=!gasterInvisible,tag=!asrielSaber] unless entity @s[scores={floweyHitTimer=0..}] unless entity @s[scores={skeletonMode=1..}] at @s run function du-in:kit/all/weapon/return/find_kit with storage du-in:main player
execute at @s run function du-in:kit/all/weapon/return/find_kit with storage du-in:main player