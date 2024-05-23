#Add inField to all in field
tag @a[distance=..6,gamemode=!spectator,tag=!inField] add inField
tag @a[tag=inField] add glowing

#Remove inField from all outside of field
execute as @a[distance=6..,gamemode=!spectator,tag=inField] run function du-in:kit/clairen/ability/remove_infield

#Kill projectiles
execute as @e[tag=papyrusFind,distance=..8] at @s run kill @e[type=armor_stand,tag=papyrusBone,distance=..3]
execute as @e[tag=projectile,distance=..8] at @s run function du-in:kit/clairen/ability/field/kill_projectile