execute if score @s Lives < @a[tag=dmIngame,gamemode=!spectator,limit=1] Lives run attribute @s[tag=!stolen,tag=!deathMark] generic.armor base set 2
execute if score @s Lives >= @a[tag=dmIngame,gamemode=!spectator,limit=1] Lives run attribute @s[tag=!stolen,tag=!deathMark] generic.armor base set 0
