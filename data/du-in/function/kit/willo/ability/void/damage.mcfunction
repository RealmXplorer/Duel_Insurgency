#Remove 1 from placer's willo trap count
$scoreboard players remove @a[scores={player=$(current)}] willoTrapCount 1

#Default effects
$execute if entity @s[tag=!empower] as @e[type=skeleton,distance=0.5..3] run damage @s 6 explosion by @a[scores={player=$(current)}]
execute if entity @s[tag=!empower] run effect give @e[type=skeleton,distance=0.5..3] slowness 1 0 true

#Empowered effects
$execute if entity @s[tag=empower] as @e[type=skeleton,distance=0.5..3] run damage @s 10 explosion by @a[scores={player=$(current)}]
execute if entity @s[tag=empower] run effect give @e[type=skeleton,distance=0.5..3] slowness 1 1 true

#Play particles and sounds
summon evoker_fangs ~ ~ ~ {Warmup:0}

#Kill marker
kill @s
