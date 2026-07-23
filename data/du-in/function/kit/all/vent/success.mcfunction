#Teleport to vent
execute rotated as @s at @e[type=minecraft:marker,tag=vent,sort=random,limit=1] run tp @s ~ ~ ~

#Start cooldown
scoreboard players set @s ventCooldown 60

#Play sounds
playsound du-in:kit.sus.vent master @a ~ ~ ~ 10000 1
playsound du-in:kit.sus.vent master @a ~ ~ ~ 10000 1
