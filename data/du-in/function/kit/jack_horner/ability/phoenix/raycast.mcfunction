particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0 20 force

playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 1
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 .5
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 2
execute as @a[gamemode=!spectator,tag=playing,distance=..1.25] at @s run function du-in:kit/jack_horner/ability/phoenix/hit

execute positioned ^ ^ ^1 if entity @s[distance=..15] run function du-in:kit/jack_horner/ability/phoenix/raycast
