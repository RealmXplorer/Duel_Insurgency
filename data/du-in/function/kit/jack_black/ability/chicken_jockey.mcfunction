scoreboard players set @s jockeyTimer 60

summon chicken ~ ~ ~ {Invulnerable:1b,Tags:["projectile","mapSpecific","noTimer"]}
scoreboard players set @e[type=chicken,tag=noTimer] jockeyTimer 60

ride @s mount @n[type=chicken]

tag @s remove chickenJockey