tag @s add kyloHit

function du-in:kit/kylo/ability/particles

scoreboard players set @s kyloTimer 20
summon minecraft:marker ~ ~ ~ {Tags:["kyloHitPos","mapSpecific"]}
tellraw @s [{"text":"You have been frozen with the Force!","bold":true,"color":"red"}]