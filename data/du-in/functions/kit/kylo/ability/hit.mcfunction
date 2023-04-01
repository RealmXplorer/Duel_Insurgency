
tag @s add kyloHit

function du-in:kit/kylo/ability/particles

#execute as @a[tag=kyloHit] unless entity @s[scores={kyloTimer=-1..}] run scoreboard players set @s kyloTimer 30
#execute as @a[tag=kyloHit,scores={kyloTimer=30}] at @s run summon minecraft:marker ~ ~ ~ {Tags:["kyloHitPos"]}
#tellraw @a[tag=kyloHit,scores={kyloTimer=30},tag=playing,gamemode=!spectator,tag=!teamDead] ["",{"text":"You have been frozen with the Force!","bold":true,"color":"red"}]

scoreboard players set @s kyloTimer 30
summon minecraft:marker ~ ~ ~ {Tags:["kyloHitPos"]}
tellraw @s [{"text":"You have been frozen with the Force!","bold":true,"color":"red"}]