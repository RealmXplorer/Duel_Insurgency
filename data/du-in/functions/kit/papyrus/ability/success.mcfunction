tag @a[distance=0.05..5,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead,tag=!sabotaged] add papyrusHit
tag @s[tag=sabotaged] add papyrusHit
function du-in:kit/papyrus/particle
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 250 levels


execute as @a[tag=papyrusHit] at @s run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,Tags:["papyrusFind","projectile"]}
scoreboard players set @e[type=marker,tag=papyrusFind,tag=!papyrusStart] papyrusHitTimer 30
tag @e[type=marker,tag=papyrusFind,tag=!papyrusStart] add papyrusStart
tag @a[tag=papyrusHit] remove papyrusHit
execute as @e[type=marker,scores={papyrusHitTimer=30}] run execute as @e[tag=papyrusFind] at @s run function du-in:kit/papyrus/ability/spawn_bones

tag @s remove sabotaged
tag @s[tag=stolen] add kitDone