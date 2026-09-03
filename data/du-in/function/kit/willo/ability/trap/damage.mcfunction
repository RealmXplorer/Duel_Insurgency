execute as @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run tag @s add willoMark
$execute as @a[tag=willoMark] if score @s team = @a[scores={player=$(current)}] team run tag @s remove willoMark
$tag @a[tag=willoMark,scores={player=$(current)}] remove willoMark

#execute if entity @s[tag=!empower] as @a[tag=vaderHit] run function du-in:kit/vader/ability/effect
#execute if entity @s[tag=empower] as @a[tag=vaderHit] run function du-in:kit/vader/ability/empowered_effect

$execute if entity @a[tag=willoMark] run scoreboard players remove @a[scores={player=$(current)}] willoTrapCount 1

$execute as @a[tag=willoMark] run damage @s 6 explosion by @a[scores={player=$(current)}]

effect give @a[tag=willoMark] slowness 1 0 true

#Play particles and sounds

execute if entity @a[tag=willoMark] run kill @n[type=block_display,tag=willoDisplay]
execute if entity @a[tag=willoMark] run kill @s
