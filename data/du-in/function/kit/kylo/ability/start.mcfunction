scoreboard players set @s kyloTimer 20
summon minecraft:marker ~ ~ ~ {Tags:["kyloHitPos","mapSpecific"]}
execute rotated as @s[scores={kyloTimer=20}] run tp @n[type=marker,tag=kyloHitPos,distance=..2] ~ ~ ~ ~ ~
tellraw @s [{text:"You have been frozen with the Force!",bold:true,color:red}]

tag @s remove kyloMark