particle minecraft:crit ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:dust{color:[1.000,1.000,1.000],scale:0.75} ~ ~1 ~ 0 0 0 0 10

execute if entity @s[tag=!empower] as @a[gamemode=!spectator,tag=playing,distance=..1.5,sort=nearest,limit=1] at @s run function du-in:kit/judy/ability/hit
execute if entity @s[tag=empower] as @a[gamemode=!spectator,tag=playing,distance=..1.5] at @s run function du-in:kit/judy/ability/hit

#execute if entity @s[tag=!empower] positioned ^ ^ ^1 if entity @s[distance=..60] unless entity @a[gamemode=!spectator,tag=playing,distance=..1.25,tag=judySleep] if block ~ ~ ~ #du-in:sans_valid run function du-in:kit/judy/ability/raycast
#execute if entity @s[tag=empower] positioned ^ ^ ^1 if entity @s[distance=..60] if block ~ ~ ~ #du-in:sans_valid run function du-in:kit/judy/ability/raycast

execute if entity @s[tag=!empower] positioned ^ ^ ^1 unless entity @a[gamemode=!spectator,tag=playing,distance=..1.25,tag=judySleep] if block ~ ~ ~ #du-in:sans_valid run function du-in:kit/judy/ability/raycast
execute if entity @s[tag=empower] positioned ^ ^ ^1 if block ~ ~ ~ #du-in:sans_valid run function du-in:kit/judy/ability/raycast
