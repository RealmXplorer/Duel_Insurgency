scoreboard players set @s lightType 7

execute if block ~ ~ ~ verdant_froglight run scoreboard players set @s lightVariant 1
execute if block ~ ~ ~ ochre_froglight run scoreboard players set @s lightVariant 2
execute if block ~ ~ ~ pearlescent_froglight run scoreboard players set @s lightVariant 3

setblock ~ ~ ~ tinted_glass

function du-in:kit/freddy/ability/start_timer