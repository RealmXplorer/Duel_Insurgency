#scoreboard players set @s aangShoot 190
swing @s offhand whack

#Tag shooter to exempt from damage
# tag @s add starShoot

# #Summon projectile
# summon armor_stand ^ ^1.5 ^.5 {Tags:["starMark","unset","mapSpecific","projectile","unShot"],NoGravity:1b}

# #Set step time
# scoreboard players set @e[distance=..2,tag=starMark,tag=unset,type=armor_stand] starTravelTime 600

# #Teleport and rotate
# execute as @e[distance=..2,tag=starMark,tag=unset,type=armor_stand] rotated as @p[tag=starShoot] run tp @s ~ ~1.2 ~ ~ ~

# #Add void to projectile if in the void
# execute if entity @s[tag=void] run tag @e[distance=..2,tag=starMark,tag=unset,type=armor_stand] add void

# #Remove setup tag
# tag @e[distance=..2,tag=starMark,tag=unset,type=armor_stand] remove unset

#Start raycasting for the projectile
# execute as @e[distance=..2,tag=starMark,tag=!unset,tag=unShot,type=armor_stand] at @s run function du-in:kit/rory/ability/armor_stand_raycast

#Remove shooter exemption tag.
# tag @s remove starShoot


##OLD TESTING
#summon the temporary entity
# summon marker ^ ^ ^1 {Tags:["starDirection"]}

# function du-in:kit/rory/ability/throw_star

# execute if entity @s[tag=empower] positioned ^1 ^ ^ run function du-in:kit/rory/ability/throw_star
# execute if entity @s[tag=empower] positioned ^-1 ^ ^ run function du-in:kit/rory/ability/throw_star

# kill @e[tag=starDirection]
scoreboard players set @s starCount 4


#End Ability
playsound du-in:sfx.ut.ability master @a ~ ~ ~ .5 1.15

clear @s #du-in:ability
tag @s add cooldown
tag @s remove kitActions