tag @n[type=skeleton,tag=gonerThing,distance=0.05..5] add papyrusHit
function du-in:kit/papyrus/particle
clear @s #du-in:ability
xp set @s[tag=!stolen] 250 levels


execute as @e[type=skeleton,tag=gonerThing,tag=papyrusHit] at @s run summon minecraft:marker ~ ~ ~ {Tags:["papyrusFind","projectile"]}
scoreboard players set @e[type=marker,tag=papyrusFind,tag=!papyrusStart] papyrusHitTimer 30
tag @e[type=marker,tag=papyrusFind,tag=!papyrusStart] add papyrusStart
tag @e[type=skeleton,tag=gonerThing,tag=papyrusHit] remove papyrusHit
execute as @e[type=marker,scores={papyrusHitTimer=30}] as @e[tag=papyrusFind] at @s run function du-in:kit/papyrus/ability/bones/spawn

#tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone