scoreboard players set @s lightType 10
scoreboard players set @s waterLogged 0

execute if block ~ ~ ~ lantern run scoreboard players set @s lightVariant 1
execute if block ~ ~ ~ soul_lantern run scoreboard players set @s lightVariant 2
execute if block ~ ~ ~ copper_lantern run scoreboard players set @s lightVariant 3

execute if block ~ ~ ~ lantern[hanging=true] run scoreboard players set @s lightVariant 4
execute if block ~ ~ ~ soul_lantern[hanging=true] run scoreboard players set @s lightVariant 5
execute if block ~ ~ ~ copper_lantern[hanging=true] run scoreboard players set @s lightVariant 6

execute if block ~ ~ ~ lantern[waterlogged=true] run scoreboard players set @s waterLogged 1
execute if block ~ ~ ~ soul_lantern[waterlogged=true] run scoreboard players set @s waterLogged 1
execute if block ~ ~ ~ copper_lantern[waterlogged=true] run scoreboard players set @s waterLogged 1

execute if score @s lightVariant matches ..3 run setblock ~ ~ ~ air
execute if score @s lightVariant matches 4..5 run setblock ~ ~ ~ iron_chain
execute if score @s lightVariant matches 6 run setblock ~ ~ ~ copper_chain

execute if score @s waterLogged matches 1 if score @s lightVariant matches ..3 run setblock ~ ~ ~ water
execute if score @s waterLogged matches 1 if score @s lightVariant matches 4..5 run setblock ~ ~ ~ iron_chain[waterlogged=true]
execute if score @s waterLogged matches 1 if score @s lightVariant matches 6 run setblock ~ ~ ~ copper_chain[waterlogged=true]

function du-in:kit/freddy/ability/start_timer