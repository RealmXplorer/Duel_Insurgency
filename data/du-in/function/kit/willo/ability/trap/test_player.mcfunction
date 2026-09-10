execute as @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run tag @s add willoMark
$execute as @a[tag=willoMark] if score @s team = @a[scores={player=$(current)}] team run tag @s remove willoMark
#Remove placer's damage mark unless they are 
$execute if entity @s[tag=!sabotaged] run tag @a[tag=willoMark,scores={player=$(current)}] remove willoMark

$execute if entity @a[tag=willoMark] run scoreboard players remove @a[scores={player=$(current)}] willoTrapCount 1

#Deal damage and play sounds/particles
execute store result storage du-in:willo_trap player.current int 1 run scoreboard players get @s player
execute if entity @s[tag=!empower] as @a[tag=willoMark] run function du-in:kit/willo/ability/trap/damage with storage du-in:willo_trap player
execute if entity @s[tag=empower] as @a[tag=willoMark] run function du-in:kit/willo/ability/trap/empower_damage with storage du-in:willo_trap player

execute if entity @a[tag=willoMark] run kill @n[type=block_display,tag=willoDisplay]
execute if entity @a[tag=willoMark] run kill @s
