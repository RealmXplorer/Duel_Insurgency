execute if entity @s[tag=!void] run tag @a[distance=0.05..10,tag=playing,tag=!win,tag=!lose,gamemode=!spectator,tag=!teamDead] add bogoMark
execute as @a[tag=bogoMark] if score @s team = @p[tag=playing,scores={kit=39,bogoTimer=0..},distance=..10] team run tag @s remove bogoMark

execute if entity @s[tag=void] as @e[type=skeleton,distance=0.05..10] run function du-in:kit/bogo/ability/damage

execute as @a[tag=bogoMark] run function du-in:kit/bogo/ability/damage

#End ability
#execute if entity @a[tag=bogoMark] run function du-in:kit/bogo/ability/end

#Remove bogoMark
tag @a remove bogoMark