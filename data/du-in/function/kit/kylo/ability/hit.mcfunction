tag @s add kyloHit

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 100 1.5
playsound minecraft:vader.choke master @a ~ ~ ~ 100 0.2
particle minecraft:smoke ~ ~1 ~ 1 1 1 1 200 force

scoreboard players set @s kyloTimer 20
summon minecraft:marker ~ ~ ~ {Tags:["kyloHitPos","mapSpecific"]}
execute rotated as @s[scores={kyloTimer=20}] run tp @n[type=marker,tag=kyloHitPos,distance=..2] ~ ~ ~ ~ ~

tellraw @s [{text:"You have been frozen with the Force!",bold:true,color:red}]
#tag @s remove kyloMark