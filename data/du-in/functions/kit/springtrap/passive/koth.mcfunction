execute if score @s kothTimer < @a[tag=kothIngame,gamemode=!spectator,limit=1] kothTimer run attribute @s[tag=!stolen,tag=!deathMark] generic.armor base set 2
execute if score @s kothTimer >= @a[tag=kothIngame,gamemode=!spectator,limit=1] kothTimer run attribute @s[tag=!stolen,tag=!deathMark] generic.armor base set 0
