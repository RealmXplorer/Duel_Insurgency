execute if score @s killIngame < @a[tag=mostKills,limit=1] killIngame run attribute @s[tag=!stolen,tag=!deathMark] generic.armor base set 2
execute if score @s killIngame >= @a[tag=mostKills,limit=1] killIngame run attribute @s[tag=!stolen,tag=!deathMark] generic.armor base set 0