execute as @a if score @s kothTimer = #main scoreMost run tag @s add win

#Add lose to all other players
execute as @a if score @s kothTimer < @a[tag=win,limit=1] kothTimer run tag @s[tag=kothIngame] add lose

#Add lose to spectators
tag @a[tag=spectating] add lose