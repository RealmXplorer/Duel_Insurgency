execute if entity @a[tag=inRing,tag=!ring1] run tag @s[tag=inRing,tag=!ring1,tag=!ring2] add ring1
tp @a[tag=ring1] 2004 7 996 45 0
execute if entity @a[tag=inRing,tag=!ring2] run tag @s[tag=inRing,tag=!ring1,tag=!ring2] add ring2
tp @a[tag=ring2] 1996 7 1004 -135 0