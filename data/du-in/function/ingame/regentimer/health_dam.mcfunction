scoreboard players reset @s healthTimer
scoreboard players set @s regenTimer 0

execute if entity @s[tag=voidReady] run scoreboard players remove #main voidReadyOnline 1
execute if entity @s[tag=voidReady] run tellraw @a [{text:"The Void reaffirms its grasp...",bold:true,color:red}]
advancement revoke @s[tag=voidReady] only du-in:void/interact_void
tag @s[tag=voidReady] remove voidReady


execute if entity @s[scores={healthHit=1..}] run scoreboard players set @s healthHit 0