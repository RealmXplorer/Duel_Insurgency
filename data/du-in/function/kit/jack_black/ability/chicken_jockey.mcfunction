scoreboard players set @s jockeyTimer 60

#Run function as player that summons chicken and stores the player's score somewhere in the Chicken.
#A function macro pull that number and teleport the player to a chicken with their player score via matching score or tag.

execute at @s run summon chicken ~ ~ ~ {Invulnerable:1b,Tags:["projectile","mapSpecific","notSet","noTimer"]}

##RETURN HERE
#execute store result score player @n[type=chicken,tag=notSet,limit=1] run scoreboard players get @s player

scoreboard players set @e[type=chicken,tag=noTimer] jockeyTimer 60
tag @e[type=chicken,tag=noTimer,scores={jockeyTimer=0..}] remove noTimer

ride @s mount @n[type=chicken,sort=nearest,limit=1]

tag @s remove chickenJockey