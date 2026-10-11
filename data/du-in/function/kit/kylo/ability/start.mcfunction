scoreboard players set @s kyloTimer 20
summon minecraft:marker ~ ~ ~ {Tags:["kyloHitPos","mapSpecific"]}
execute rotated as @s[scores={kyloTimer=20}] run tp @n[type=marker,tag=kyloHitPos,distance=..2] ~ ~ ~ ~ ~
tellraw @s [{text:"You have been frozen with the Force!",bold:true,color:red}]
tag @s remove kyloMark

scoreboard players set @e[type=marker,tag=kyloHitPos,tag=!set] kyloPosTimer 20
tag @e[type=marker,tag=kyloHitPos,scores={kyloPosTimer=1..}] add set

#Start timer
execute unless score #kyloPOS running matches 1 run function du-in:kit/kylo/ability/pos_loop
execute unless score #freeze running matches 1 run function du-in:kit/kylo/ability/freeze_loop
