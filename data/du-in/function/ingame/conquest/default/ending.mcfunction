#If Red wins
execute if score Red capturePoints >= #main cqCap run tag @a[scores={team=1}] add win
execute if score Red capturePoints >= #main cqCap run tag @a[scores={team=2}] add lose

#If Blue wins
execute if score Blue capturePoints >= #main cqCap run tag @a[scores={team=2}] add win
execute if score Blue capturePoints >= #main cqCap run tag @a[scores={team=1}] add lose

function du-in:ingame/conquest/reset_points

#If spectators tag lose
tag @a[tag=spectating] add lose

#End function
tag @a add cqEnd