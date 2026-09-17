#KOTH HALFWAY#
execute as @a[tag=playing,tag=!kothHalf,limit=1] if score @s kothTimer >= #main kothHalf run function du-in:ingame/koth/default/half

#KOTH END OF ROUND#
execute as @a[tag=playing,limit=1,tag=!kothEnd] if score @s kothTimer >= #main kothGoal run function du-in:ingame/koth/default/near_end

#END KOTH#
execute as @a[tag=playing,tag=kothIngame] if score @s kothTimer >= #main kothCap run function du-in:ingame/koth/default/ending

execute at 388b1f13-3fca-4318-820c-d5b05ae2fd37 run function du-in:ingame/koth/hill
