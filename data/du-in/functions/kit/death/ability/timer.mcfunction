scoreboard players remove @s flameTimer 1

execute as @a[gamemode=!spectator,distance=..2,tag=playing,nbt={Fire:-20s}] unless entity @s[scores={deathAbilityTimer=1..}] at @s unless block ~ ~ ~ water unless score @e[tag=flame,limit=1,sort=nearest] team = @s team run function du-in:kit/asgore/ability/contact

particle minecraft:flame ~ ~1 ~ 0.2 0.4 0.2 0 3 force
playsound minecraft:block.fire.ambient master @a[predicate=du-in:five_chance] ~ ~ ~ 10 1

#Particle and sounds when wall disappears
execute if entity @s[scores={flameTimer=..1}] run particle minecraft:large_smoke ~ ~2 ~ 0.1 0.5 0.1 0 20 force
execute if entity @s[tag=audio,scores={flameTimer=..1}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 10 1

#Destroy firewall
kill @s[scores={flameTimer=..-1}]