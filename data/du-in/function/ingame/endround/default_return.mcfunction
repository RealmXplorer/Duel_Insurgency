tp @a -999 13 517 -90 0
spawnpoint @a -999 13 517

#Create new gamemode select label
kill @e[type=text_display,tag=gamemodeLabel]
summon text_display -983 16 517 {billboard:"center",Tags:["gamemodeLabel"],}
function du-in:lobby/theme/default/text
