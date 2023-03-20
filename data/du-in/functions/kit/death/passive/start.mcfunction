execute as @a at @s if score @s matchKills > #main matchKills run scoreboard players operation #main matchKills = @s matchKills

execute unless score #main markTimer matches 1.. as @a if score @s matchKills = #main matchKills run function du-in:kit/death/passive/marked

execute as @a if score @s matchKills < #main matchKills run function du-in:kit/death/passive/unmarked

execute if score #main markTimer matches 1.. run scoreboard players remove #main markTimer 1