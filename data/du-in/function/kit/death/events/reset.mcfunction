scoreboard players set #main markTimer 0
tag @s remove deathDouble
tag @s remove deathAbility
scoreboard players reset @s deathAbilityTimer
scoreboard players reset @s deathSwapTimer
scoreboard players set @s deathWeapSwitch 0

#Break Function if game is still going
execute unless entity @a[tag=win] run return fail

#Remove from all players
tag @a remove deathMark
scoreboard players set @a diedIngame 0
