scoreboard players set @s lightType 6

execute if block ~ ~ ~ campfire[lit=true] run scoreboard players set @s lightVariant 1
execute if block ~ ~ ~ soul_campfire[lit=true] run scoreboard players set @s lightVariant 2

execute if entity @s[scores={lightVariant=1}] run setblock ~ ~ ~ campfire[lit=false]
execute if entity @s[scores={lightVariant=2}] run setblock ~ ~ ~ soul_campfire[lit=false]

function du-in:kit/freddy/ability/start_timer