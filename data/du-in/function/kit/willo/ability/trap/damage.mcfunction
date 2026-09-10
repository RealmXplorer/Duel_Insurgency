#Default power and effects
$damage @s 6 explosion by @a[scores={player=$(current)}]
effect give @s slowness 1 0 true

summon evoker_fangs ~ ~ ~ {Warmup:0}
tag @s remove willoMark