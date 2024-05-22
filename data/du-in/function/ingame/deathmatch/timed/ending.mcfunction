#If a player has equal to or more than required kill amount, add tag win
execute as @a if score @s dmDeath = #main scoreMost run tag @s[tag=!teamMode] add win

#Add lose to all other players
execute as @a if score @s dmDeath > @a[tag=win,limit=1] dmDeath run tag @s[tag=dmIngame,tag=!teamMode] add lose

#Add lose to spectators
tag @a[tag=spectating] add lose