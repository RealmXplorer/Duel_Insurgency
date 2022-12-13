#WINEND#
tag @a remove win
tag @a remove lose

#END ROUND#
tp @a[tag=!working] -999 13 517 -90 0
spawnpoint @a -999 13 517
title @a[tag=partyLeader] title {"text":"","color":"red","bold":true}
title @a[tag=partyLeader] subtitle {"text":"Open inventory for more options!","color":"red","bold":true}
title @a[tag=partyLeader] actionbar {"text":"Open inventory for more options!","color":"red","bold":true}
execute as @a run function du-in:lobby/item_reset
tag @a add givenStats
clear @a
scoreboard players reset @a[tag=lobby] killStreakDeaths
execute if score #main endTime matches ..1 run function du-in:ingame/endround/end_time