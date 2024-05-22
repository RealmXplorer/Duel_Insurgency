execute if score #main markTimer matches 1.. run scoreboard players remove #main markTimer 1

execute as @a[gamemode=!spectator,tag=playing] at @s if score @s diedIngame >= #main leastDeaths run scoreboard players operation #main leastDeaths = @s diedIngame
execute as @a[gamemode=!spectator,tag=playing] at @s unless entity @a[tag=deathMark] if score @s diedIngame < #main leastDeaths run scoreboard players operation #main leastDeaths = @s diedIngame

execute unless score #main markTimer matches 1.. as @r unless entity @a[tag=deathMark] if score @s diedIngame = #main leastDeaths run function du-in:kit/death/passive/marked

execute as @a[tag=deathMark] if score @s diedIngame > #main leastDeaths run function du-in:kit/death/passive/unmarked