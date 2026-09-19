tp @a -999 13 517 -90 0
spawnpoint @a -999 13 517

#Create new gamemode select label
kill bc991cc6-7586-4f25-ad79-4861722620dd
summon text_display -983 16 517 {billboard:"center",Tags:["gamemodeLabel"],UUID:[I;-1130816314,1971736357,-1384560543,1915101405]}
schedule function du-in:lobby/theme/default/text 5t