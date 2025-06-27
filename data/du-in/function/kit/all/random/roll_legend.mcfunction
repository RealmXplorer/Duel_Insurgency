execute store result score @s kit run random value 1000..1005

execute if entity @s[predicate=du-in:chance/saul_chance,tag=!playing] run scoreboard players set @s kit 2015
execute if entity @s[predicate=du-in:chance/chungus_chance,tag=!playing] run scoreboard players set @s kit 42069

#Set to current player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s run function du-in:kit/all/random/set with storage du-in:main player

tag @s remove randomLeg