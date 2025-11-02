tag @s add showTimeDuration

effect give @a[tag=!showTimeDuration] weakness infinite 1 true

#Summon enderpearl where the players were before
execute unless entity @s[tag=sabotaged] as @a[gamemode=!spectator,tag=!inTheModel] at @s run summon ender_pearl ~ ~ ~ {NoGravity:1b,Owner:[I;0,0,0,0],Tags:["showTimeTP","notAssigned"],Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:item_model":"du-in:abilities/disconnect"}}}

#Set Enderpearls to player's UUIDs
execute as @e[type=ender_pearl,tag=showTimeTP,tag=notAssigned] at @s run function du-in:kit/paz/ability/set_uuid

#Add tag to indicate player is in the model.
tag @a add inTheModel

#Beetlejuice start
tp @s -7300 6 -8404

#Player starts
execute as @a store result score @s spawnpoint run random roll 1..8
tp @a[tag=!showTimeDuration,scores={spawnpoint=1..4}] -7319 5 -8390
tp @a[tag=!showTimeDuration,scores={spawnpoint=5..8}] -7295 5 -8383

tp @a[gamemode=spectator] @r[tag=playing]

playsound minecraft:sans.ability master @a ~ ~ ~ .25 0.75
playsound minecraft:entity.creaking.spawn master @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 1
playsound minecraft:soundeffect.laugh master @a ~ ~ ~ 100 0.5

#Make Beetlejuice big and invincible
attribute @s scale base set 2
attribute @s armor base set 1000
attribute @s armor_toughness base set 1000
attribute @s attack_damage base set 1000
attribute @s minecraft:block_interaction_range base set 5
attribute @s minecraft:entity_interaction_range base set 5

#Message
tellraw @a[tag=!showTimeDuration] {text:"It's Showtime!",bold:true,color:red}

#Start timer#
scoreboard players set @s showTimer 150

##ABILITY
#Give Beetlejuice bonus effects
#effect give @s strength 2 0 true

#Remove ability from hand
clear @s #du-in:ability

#Start cooldown
tag @s add cooldown
#xp set @s[tag=!stolen] 500 levels

#Remove Beetlejuice exemption
tag @s remove beetleJuice

#Remove sabotaged
tag @s remove sabotaged

#End ability
tag @s remove kitActions