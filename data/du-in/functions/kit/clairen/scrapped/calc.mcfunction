execute if entity @s[tag=!facingPlayer] run tp @s ~ ~ ~ facing entity @p[tag=this] eyes
tag @s[tag=!facingPlayer] add facingPlayer
tp @s ^ ^ ^-1
execute unless block ~ ~ ~ air run say hi
execute unless block ~ ~ ~ air run kill @s

execute if entity @s[scores={clairenTimer=5..},predicate=du-in:player_link] anchored eyes facing entity @s eyes run summon armor_stand ~ ~ ~ {Tags:["clairenTP"],NoGravity:1}
execute store result score @e[tag=clairenTP,tag=!found,sort=nearest] player run scoreboard players get @s player
tag @e[tag=clairenTP,tag=!found,sort=nearest,predicate=du-in:player_link] add found
execute as @e[type=armor_stand,tag=clairenTP,predicate=du-in:player_link] store result entity @s Rotation[0] float 1 run data get entity @p[tag=this] Rotation[0]
tp @p[tag=this] @e[type=armor_stand,limit=1,tag=clairenTP,predicate=du-in:player_link]
kill @e[tag=clairenTP,predicate=du-in:player_link]
kill @s[scores={clairenTimer=5..}]