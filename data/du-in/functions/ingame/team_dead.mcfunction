#TEAM DEAD EFFECTS#
execute if entity @s[scores={deathTimer=0..}] run function du-in:ingame/teamdeath/dead_effects

#End team dead
execute if entity @s[scores={deathTimer=..0}] run function du-in:ingame/teamdeath/end_teamdead