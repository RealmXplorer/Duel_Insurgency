#"$current" is a macro running the score of the current, executing player. This score is set upon trap creation to match the placer.
$execute at @n[distance=..10,tag=willoRemove,scores={player=$(current)},type=interaction] as @n[distance=..1,tag=willoTrap,type=marker] run function du-in:kit/willo/ability/trap/clear with storage du-in:willo_trap player
$execute unless entity @e[distance=..10,tag=willoRemove,scores={player=$(current)},type=interaction] run function du-in:kit/willo/ability/not_owner

#Current issue: If a player interacts with a trap that is not theirs but has traps nearby that ARE, then it will remove their nearest trap.