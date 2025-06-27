#Mark as not having picked kit
tag @s remove kitPicked

#Mark as picked team
tag @s add teamPicked

#Remove Vote
scoreboard players reset @s mapVote

#Tell player
execute if entity @s[tag=!spect] run tellraw @a [{selector:"@s[tag=!spect]",bold:true},{text:" is spectating this round!",bold:true,color:gray}]

#Reset inventory
clear @s barrier[item_model="du-in:lobby/spectate"]

#Set as ready
tag @s[tag=!playing] add ready
team join Ready @s

#Mark as spectator
tag @s[tag=!playing] add spect

#Clear item if thrown item.
execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items

##