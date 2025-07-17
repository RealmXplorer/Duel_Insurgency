scoreboard players remove #main voidReadyOnline 1
tellraw @a [{text:"The Void reaffirms its grasp...",bold:true,color:red}]
advancement revoke @s only du-in:void/interact_void
tag @s remove voidReady