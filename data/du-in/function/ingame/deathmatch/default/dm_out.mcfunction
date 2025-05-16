tag @s add dmDead
tag @s remove playing
tellraw @a {selector:"@s",color:gold,bold:true,"underlined":false,extra:[{text:" has been eliminated!",color:red,bold:true,"underlined":false}]}
execute if entity @s[tag=!teamMode] run scoreboard players remove #main playerCount 1
execute at @a[tag=dmIngame,limit=1] run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 10000000000000000000000000 2 1
gamemode spectator @s
team join Spectators @s
tag @s add dmOut
