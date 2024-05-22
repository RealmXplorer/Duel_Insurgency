#If a player has equal to or more than required kill amount, add tag win
execute as @a if score @s killIngame = #main scoreMost run tag @s[tag=!teamMode] add win

#Add lose to all other players
execute as @a if score @s killIngame < @a[tag=win,limit=1] killIngame run tag @s[tag=cIngame,tag=!teamMode] add lose

#Add lose to spectators
tag @a[tag=spectating] add lose