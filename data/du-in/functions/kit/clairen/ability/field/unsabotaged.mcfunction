#Add inField to all in field
tag @a[distance=..6,gamemode=!spectator,tag=!inField] add inField

#Remove inField from all outside of field
execute as @a[distance=6..,gamemode=!spectator,tag=inField] run function du-in:kit/clairen/ability/remove_infield

#Kill projectiles
execute as @e[tag=papyrusFind,distance=..8] at @s run kill @e[type=armor_stand,tag=papyrusBone,distance=..3]
execute as @e[tag=projectile,distance=..8] at @s run playsound minecraft:clairen.deflect master @a ~ ~ ~ 1 1
execute as @e[tag=projectile,distance=..8] run kill 