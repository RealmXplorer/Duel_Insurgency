particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0 20 force

playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 1
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 .5
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 2
execute if entity @s[tag=!empower] as @a[gamemode=!spectator,tag=playing,distance=..1.25] at @s run function du-in:kit/jack_horner/ability/phoenix/hit
execute if entity @s[tag=empower] as @a[gamemode=!spectator,tag=playing,distance=..1.25] at @s run function du-in:kit/jack_horner/ability/phoenix/empowered_hit

execute positioned ^ ^ ^1 if entity @s[distance=..15] run function du-in:kit/jack_horner/ability/phoenix/raycast

#New
# scoreboard players remove @s willoBulletTravel 1

# tp @s ^ ^ ^0.65

# #Hasn't hit wood
# execute at @e[type=marker,tag=hornerBlast] run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 1 force
# execute at @e[type=marker,tag=hornerBlast] run particle dust_color_transition{from_color:[1.000,1.000,1.000],to_color:[0.412,0.412,0.412],scale:1} ~ ~ ~ 0 0 0 0 1 normal

# #Damage
# execute as @e[type=husk,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function du-in:kit/jack_horner/ability/phoenix/hit

# execute if block ~ ~ ~  run kill @s[type=marker]


# #Test Penetration
# execute if entity @s[tag=hitStone] run function du-in:kit/willo/revolver/pen/stone

# execute positioned ^ ^ ^0.65 if entity @s[scores={willoBulletTravel=1..}] run function du-in:kit/jack_horner/ability/phoenix/raycast

# execute if entity @s[scores={willoBulletTravel=..0}] run kill @s
