scoreboard players set @s kyloTimer 40
summon minecraft:marker ~ ~ ~ {Tags:["kyloHitPos","mapSpecific"]}
execute rotated as @s[scores={kyloTimer=40}] run tp @n[type=marker,tag=kyloHitPos,distance=..2] ~ ~ ~ ~ ~
tellraw @s [{text:"You have been COMPLETELY frozen with the Force!",bold:true,color:red}]

scoreboard players set @e[type=marker,tag=kyloHitPos,tag=!set] kyloPosTimer 30
tag @e[type=marker,tag=kyloHitPos,scores={kyloPosTimer=1..}] add set

tag @s remove kyloMark
tag @s remove kyloEmpowerHit

execute unless score #kyloPOS running matches 1 run function du-in:kit/kylo/ability/pos_loop
execute unless score #freeze running matches 1 run function du-in:kit/kylo/ability/freeze_loop
