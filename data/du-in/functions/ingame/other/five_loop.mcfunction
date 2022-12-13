#If there is a saac, set the wandering trader's offers to 0.
execute if entity @a[scores={kit=1000}] as @e[type=minecraft:wandering_trader] run data modify entity @s Offers set value {}

#Loop this function every 5 seconds
schedule function du-in:ingame/other/five_loop 5s