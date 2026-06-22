execute as @a[distance=.05..7,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/frisk/ability/hit


#Empowered effects
effect give @s minecraft:fire_resistance 3 255 true
effect give @s minecraft:instant_health 1 2 true
effect give @s minecraft:speed 4 2 true

playsound minecraft:soundeffect.cure master @a ~ ~ ~ 1 1
effect clear @s minecraft:poison
effect clear @s minecraft:wither

#If player is on team
execute as @a[distance=0.05..7,tag=playing,gamemode=!spectator,tag=!teamDead] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=15}] team run function du-in:kit/frisk/ability/team_empower
