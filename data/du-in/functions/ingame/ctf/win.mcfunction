#If Red wins
execute if score #main redPoints >= #main ctfMax run tag @a[scores={team=1}] add win
execute if score #main redPoints >= #main ctfMax run tag @a[scores={team=2}] add lose

#If Blue wins
execute if score #main bluePoints >= #main ctfMax run tag @a[scores={team=2}] add win
execute if score #main bluePoints >= #main ctfMax run tag @a[scores={team=1}] add lose

#Add tag lose to spectators
tag @a[tag=spectating] add lose

#End function
tag @a add ctfEnd