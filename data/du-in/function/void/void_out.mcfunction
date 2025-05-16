#Announce death
tellraw @a {selector:"@s",color:gold,bold:true,"underlined":false,extra:[{text:" was taken by the void",color:light_purple,bold:true,"underlined":false}]}

#Play sound
execute at @a[tag=void,limit=1] run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 10000000000000000000000000 2 1

#Tag and put into spectator
gamemode spectator @s
team join Spectators @s
tag @s add voidOut
