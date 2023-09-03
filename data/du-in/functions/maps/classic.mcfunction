#execute if score #main map matches 1 run function du-in:maps/mountain_castle/constant
execute if score #main map matches 2 run function du-in:maps/hive/constant
#execute if score #main map matches 3 run function du-in:maps/desert_arena/constant
#execute if score #main map matches 4 run function du-in:maps/cave_update/constant
#Mustafar has ambience in biome
#execute if score #main map matches 6 run function du-in:maps/ebbot/constant
#Arena needs no ambience
#execute if score #main map matches 8 run function du-in:maps/dust_two/constant
#execute if score #main map matches 9 run function du-in:maps/maze/constant
#execute if score #main map matches 10 run function du-in:maps/cliffside/constant
#execute if score #main map matches 11 run function du-in:maps/mirage/constant
#execute if score #main map matches 12 run function du-in:maps/wishing_star/constant
#execute if score #main map matches 13 run function du-in:maps/saac_house/constant
#execute if score #main map matches 14 run function du-in:maps/haunted_house/constant
#execute if score #main map matches 15 run function du-in:maps/harvest/constant
execute if score #main map matches 13 run function du-in:maps/jermall/constant
execute if score #main map matches 14 as @a[gamemode=!spectator] at @s if entity @s[distance=..100,y=5,dy=-2,tag=!working] run kill @s

execute if score #main map matches 16 run function du-in:maps/escher/constant

#execute if predicate du-in:ambience/night_start run function du-in:ingame/scheduled/ambience/night_start

#execute if predicate du-in:ambience/night_end run function du-in:ingame/scheduled/ambience/night_end