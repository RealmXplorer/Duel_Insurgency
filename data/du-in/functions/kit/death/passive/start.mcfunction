execute as @a at @s if score @s diedIngame < #main leastDeaths run scoreboard players operation #main leastDeaths = @s diedIngame

execute unless score #main markTimer matches 1.. as @a if score @s diedIngame = #main leastDeaths run function du-in:kit/death/passive/marked

execute as @a if score @s diedIngame < #main leastDeaths run function du-in:kit/death/passive/unmarked

execute if score #main markTimer matches 1.. run scoreboard players remove #main markTimer 1