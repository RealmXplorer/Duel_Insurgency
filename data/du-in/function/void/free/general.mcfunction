#execute as @a[tag=free] at @s run function du-in:music/free/free

execute as @a[tag=free] run function du-in:void/free/credits

execute if entity @a[scores={realDeath=1..}] run function du-in:void/free/return

execute positioned 8017.2 5 279.5 if entity @a[distance=..1.2] run function du-in:void/free/return

#AT THE END OF IT ALL
#YOU FINALLY SEE
#ALL THIS FREEDOM 
#AND YET
#NOTHING TO DO WITH IT
#HOW LONG WILL IT BE
#BEFORE YOU JOIN ME
#IN PICKING UP
#WHERE WE LEFT OFF?