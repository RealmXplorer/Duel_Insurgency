

#execute if entity @s[tag=!empower] as @a[tag=vaderHit] run function du-in:kit/vader/ability/effect
#execute if entity @s[tag=empower] as @a[tag=vaderHit] run function du-in:kit/vader/ability/empowered_effect

$scoreboard players remove @a[scores={player=$(current)}] willoTrapCount 1

$execute as @e[type=skeleton,distance=..1] run damage @s 6 explosion by @p[scores={player=$(current)}]
effect give @e[type=skeleton,distance=..1] slowness 1 0 true

#Play particles and sounds

kill @n[type=block_display,tag=willoDisplay]
kill @s