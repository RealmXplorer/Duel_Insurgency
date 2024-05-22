execute if entity @a[tag=playing,gamemode=!spectator,tag=!kitActions,tag=!teamDead] run function du-in:kit/saul/ability/teleport

execute unless entity @a[tag=playing,gamemode=!spectator,tag=!kitActions,tag=!teamDead] run function du-in:kit/saul/ability/fail

#End ability
tag @s remove kitActions