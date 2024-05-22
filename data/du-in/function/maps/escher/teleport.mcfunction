playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1000 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1000 1.3
particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 1 30 force
execute at @e[type=minecraft:marker,tag=escherDoor,limit=1,sort=random] rotated as @e[type=minecraft:marker,tag=escherDoor,limit=1,sort=nearest] run tp @s ^ ^ ^1.5