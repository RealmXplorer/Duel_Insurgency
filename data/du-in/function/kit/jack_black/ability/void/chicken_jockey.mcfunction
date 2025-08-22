scoreboard players set @s jockeyTimer 60
tag @s add jockeyDuration

summon chicken ~ ~ ~ {Invulnerable:1b,Tags:["projectile","mapSpecific","noTimer"]}
tag @e[type=chicken,tag=noTimer] add jockeyDuration
scoreboard players set @e[type=chicken,tag=noTimer] jockeyTimer 60

ride @s mount @n[type=chicken,distance=..2]

tag @s remove chickenJockey