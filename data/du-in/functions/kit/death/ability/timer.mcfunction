scoreboard players remove @s flameTimer 1

execute if entity @a[tag=void] as @e[type=skeleton,tag=gonerThing,distance=..1] at @s run function du-in:kit/asgore/ability/void/contact
execute unless entity @a[tag=void] as @a[gamemode=!spectator,distance=..2,tag=playing] unless entity @s[scores={deathAbilityTimer=1..}] at @s unless score @e[type=block_display,tag=flame,limit=1,sort=nearest] team = @s team run function du-in:kit/death/ability/contact

particle minecraft:flame ~ ~1 ~ 0.2 0.4 0.2 0 3 force
playsound minecraft:block.fire.ambient master @a[predicate=du-in:chance/five_chance] ~ ~ ~ 10 1

#Particle and sounds when wall disappears
execute if entity @s[scores={flameTimer=..1}] run particle minecraft:large_smoke ~ ~2 ~ 0.1 0.5 0.1 0 20 force
execute if entity @s[tag=audio,scores={flameTimer=..1}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 10 1

#Destroy firewall
kill @s[scores={flameTimer=..-1}]