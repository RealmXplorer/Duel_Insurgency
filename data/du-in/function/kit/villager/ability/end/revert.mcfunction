scoreboard players set @s kit 8
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s run function du-in:kit/villager/ability/end/revert_kit with storage du-in:main player

scoreboard players reset @s asrielHitTimer

xp set @s 360 levels
tag @s remove airBlock
tag @s remove stolen
tag @s remove givenStolen
tag @s remove kitDone
