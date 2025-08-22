scoreboard players set @s jockeyTimer 60

#Summon Chicken
execute at @s run summon chicken ~ ~ ~ {Tags:["projectile","mapSpecific","notSet","noTimer"]}

#Set player score into chicken
execute store result score @n[type=chicken,tag=notSet,limit=1,distance=..1] player run scoreboard players get @s player
tag @e[type=chicken,tag=notSet,scores={player=0..}] remove notSet

#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Ride chicken
execute at @s run function du-in:kit/jack_black/ability/ride_chicken with storage du-in:main player

#Set score into chicken
scoreboard players set @e[type=chicken,tag=noTimer] jockeyTimer 60
tag @e[type=chicken,tag=noTimer] add jockeyDuration
tag @e[type=chicken,tag=noTimer,scores={jockeyTimer=0..}] remove noTimer

#ride @s mount @n[type=chicken,sort=nearest,limit=1]

tag @s remove chickenJockey