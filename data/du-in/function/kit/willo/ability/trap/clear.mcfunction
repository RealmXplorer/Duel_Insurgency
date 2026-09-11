$scoreboard players remove @a[scores={player=$(current)}] willoTrapCount 1

#$kill @n[type=block_display,tag=willoDisplay,scores={player=$(current)}]
$kill @e[distance=..1,tag=willoMark,scores={player=$(current)}]
#kill @s