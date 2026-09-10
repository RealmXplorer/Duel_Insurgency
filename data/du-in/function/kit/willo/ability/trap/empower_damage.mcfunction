#Empowered damage and effects
$damage @s 10 explosion by @a[scores={player=$(current)}]
effect give @s slowness 1 1 true

summon evoker_fangs ~ ~ ~ {Warmup:0}
tag @s remove willoMark