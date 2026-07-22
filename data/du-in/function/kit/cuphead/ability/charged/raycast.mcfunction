particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0 20 force

execute if entity @s[tag=!empower] as @a[tag=!inField,gamemode=!spectator,tag=playing,distance=..1.25] run damage @s 5 minecraft:generic
execute if entity @s[tag=empower] as @a[tag=!inField,gamemode=!spectator,tag=playing,distance=..1.25] run damage @s 10 minecraft:generic

execute as @a[tag=inField,gamemode=!spectator,tag=playing,distance=..1.25] run playsound du-in:kit.clairen.deflect master @a ~ ~ ~ 1 1


execute positioned ^ ^ ^1 if entity @s[distance=..15] run function du-in:kit/cuphead/ability/charged/raycast
