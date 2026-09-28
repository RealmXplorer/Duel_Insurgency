#Mark as not having picked kit
tag @s remove kitPicked

#Mark as picked team
tag @s add teamPicked

#Remove Vote
scoreboard players reset @s mapVote

#Tell player
#execute if entity @s[tag=!spect] run tellraw @a [{selector:"@s[tag=!spect]",bold:true},{text:" is spectating this round!",bold:true,color:gray}]
execute if entity @s[tag=!spectating,tag=!audience] run tellraw @a [{selector:"@s[tag=!spectating]",bold:true},{text:" is spectating this round!",bold:true,color:gray}]

#Reset inventory
clear @s barrier[item_model="du-in:lobby/spectate"]

#Set as ready
tag @s[tag=!playing] add ready
team join Ready @s

scoreboard players set #main kitOnline 0
execute as @a[tag=ready,tag=lobby] run scoreboard players add #main kitOnline 1

#Mark as spectator
#tag @s[tag=!playing] add spect
tag @s[tag=!playing] add spectating
execute if entity @a[tag=partyLeader,tag=specialEvent] run tag @s add audience

#Clear item if thrown item.
execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items

##