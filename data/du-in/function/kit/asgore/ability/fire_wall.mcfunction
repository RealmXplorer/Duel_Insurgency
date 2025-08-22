scoreboard players remove @s asgoreFire 1

#If a Goner walks into a wall
execute if entity @a[tag=void] as @e[type=skeleton,tag=gonerThing,distance=..1] at @s run function du-in:kit/asgore/ability/void/contact

#If a player walks into the fire wall.
execute unless entity @a[tag=void] as @a[gamemode=!spectator,distance=...75,tag=playing] at @s unless score @n[type=armor_stand,tag=asgoreFire,distance=...75] team = @s team run function du-in:kit/asgore/ability/contact

#Particle and sounds
particle minecraft:flame ~ ~1 ~ 0.2 0.4 0.2 0 3 force
execute if entity @s[tag=audio] run playsound minecraft:block.fire.ambient master @a[predicate=du-in:chance/ten_chance] ~ ~ ~ 10 1

#Particle and sounds when wall disappears
execute if entity @s[scores={asgoreFire=..0}] run function du-in:kit/asgore/ability/clear_wall