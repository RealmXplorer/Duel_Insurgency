scoreboard players remove @s asgoreFire 1

#If a player walks into the fire wall.
execute as @a[gamemode=!spectator,distance=..1,tag=playing,nbt={Fire:-20s}] at @s unless block ~ ~ ~ water unless score @e[tag=asgoreFire,limit=1,sort=nearest] team = @s team run function du-in:kit/asgore/ability/contact
#execute as @e[type=minecraft:arrow,distance=..2] run data modify entity @s {Fire:100}
#execute as @e[type=minecraft:trident,distance=..2] run data modify entity @s {Fire:100} merge

#Particle and sounds
particle minecraft:flame ~ ~1 ~ 0.2 0.4 0.2 0 3 force
execute if entity @s[tag=audio] run playsound minecraft:block.fire.ambient master @a[predicate=du-in:ten_chance] ~ ~ ~ 10 1

#Particle and sounds when wall disappears
execute if entity @s[scores={asgoreFire=..1}] run particle minecraft:large_smoke ~ ~2 ~ 0.1 0.5 0.1 0 20 force
execute if entity @s[tag=audio,scores={asgoreFire=..1}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 10 1

#Destroy firewall
kill @s[scores={asgoreFire=..-1}]
