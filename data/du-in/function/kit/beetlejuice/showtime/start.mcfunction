tag @s add showTimeDuration

#Summon enderpearl where the players were before
execute unless entity @s[tag=sabotaged] as @a[gamemode=!spectator] at @s run summon ender_pearl ~ ~ ~ {NoGravity:1b,Owner:[I;0,0,0,0],Tags:["showTimeTP","notAssigned"],Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:item_model":"du-in:abilities/disconnect"}}}

#Set Enderpearls to player's UUIDs
execute as @e[type=ender_pearl,tag=showTimeTP,tag=notAssigned] at @s run function du-in:kit/paz/ability/set_uuid

#Beetlejuice start
tp @s -7300 6 -8404

#Player starts
tp @a[tag=!showTimeDuration] -7319 5 -8390
tp @a[tag=!showTimeDuration] -7295 5 -8383

tp @a[gamemode=spectator] @r[tag=playing]

playsound minecraft:sans.ability master @a ~ ~ ~ .25 0.75
playsound minecraft:entity.creaking.spawn master @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 1

#Make Beetlejuice big and invincible
attribute @s scale base set 2
attribute @s armor base set 1000
attribute @s armor_toughness base set 1000
attribute @s attack_damage base set 1000

#Message
tellraw @a[tag=!showTimeDuration] {text:"It's Showtime!",bold:true,color:red}

#Start timer#
scoreboard players set @s showTimer 100