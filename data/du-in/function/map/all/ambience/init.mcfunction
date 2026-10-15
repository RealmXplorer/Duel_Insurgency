#Forest
execute if score #main ambience matches 1 as @a[tag=!ambOff,tag=!void] at @s run function du-in:map/all/ambience/forest

#Desert
execute if score #main ambience matches 2 as @a[tag=!ambOff,tag=!void] at @s run function du-in:map/all/ambience/desert

#Cave
execute if score #main ambience matches 3 as @a[tag=!ambOff,tag=!void] at @s run playsound du-in:ambient.cave ambient @s ~ ~ ~ 0.25 1 1

#Wind
execute if score #main ambience matches 4 as @a[tag=!ambOff,tag=!void] at @s run playsound du-in:ambient.wind ambient @s ~ ~ ~ 0.25 1 1

#Jungle
execute if score #main ambience matches 5 as @a[tag=!ambOff,tag=!void] at @s run playsound du-in:ambient.jungle ambient @s ~ ~ ~ 1 1 1

#Free
execute if entity @a[tag=free] as @a[tag=!ambOff] at @s run function du-in:map/all/ambience/forest

#Loop
execute unless entity @a[tag=void,tag=partyLeader] run schedule function du-in:map/all/ambience/init 45s